#include <stdlib.h>
#include <iostream>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vclk_stepping.h"
#include "Vclk_stepping___024root.h"

#define MAX_SIM_TIME 500
vluint64_t sim_time = 0;

int main(int argc, char** argv, char** env) {
    Vclk_stepping *dut = new Vclk_stepping;

    Verilated::traceEverOn(true);
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open("waveform.vcd");

    dut->clk_i = 0;
    dut->rst_ni = 0;
    dut->en_i = 0;
    dut->cycles_i = 0;
    dut->cycle_start_i = 0;

    while (sim_time < MAX_SIM_TIME) {
        dut->clk_i ^= 1;
        dut->eval();
        m_trace->dump(sim_time);

        // Apply reset
        if (sim_time < 10) {
            dut->rst_ni = 0;
        } else if (sim_time == 10) {
            dut->rst_ni = 1;
        }

        // Enable clock stepping mode and set cycles
        if (sim_time == 20) {
            dut->en_i = 1;
            dut->cycles_i = 25;
        }

        // Start cycle count
        if (sim_time == 30) {
            dut->cycle_start_i = 1;
        }

        // Deassert cycle start
        if (sim_time == 31) {
            dut->cycle_start_i = 0;
        }

        // Disable clock stepping mode before finishing
        if (sim_time == 50) {
            dut->en_i = 0;
        }

        // Re-enable clock stepping mode and set new cycles
        if (sim_time == 100) {
            dut->en_i = 1;
            dut->cycles_i = 17;
        }

        // Start cycle count again
        if (sim_time == 110) {
            dut->cycle_start_i = 1;
        }

        // Deassert cycle start
        if (sim_time == 111) {
            dut->cycle_start_i = 0;
        }

        // Let the cycle count finish
        if (sim_time == 150) {
            dut->en_i = 0;
        }

        // Re-enable clock stepping mode and set new cycles
        if (sim_time == 200) {
            dut->en_i = 1;
            dut->cycles_i = 30;
        }

        // Start cycle count again
        if (sim_time == 210) {
            dut->cycle_start_i = 1;
        }

        // Deassert cycle start
        if (sim_time == 211) {
            dut->cycle_start_i = 0;
        }

        // Disable clock stepping mode before finishing
        if (sim_time == 250) {
            dut->en_i = 0;
        }

        sim_time++;
    }

    m_trace->close();
    delete dut;
    exit(EXIT_SUCCESS);
}
