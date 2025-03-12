#include <stdlib.h>
#include <iostream>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include <cstdlib>
#include <cassert>
#include <bitset>
#include "Vbus_sniffer.h"
#include "Vbus_sniffer___024root.h"
#include "Vbus_sniffer___024unit.h"


#define MAX_SIM_TIME 10000

vluint64_t sim_time = 0;


double sc_time_stamp() {
    return sim_time;
}

// Function to generate a random frame
void generate_random_frame(Vbus_sniffer::bus_sniff_bundle_t &frame) {
    frame.core_instr_req.req = rand() % 2;
    frame.core_instr_req.addr = rand();
    frame.core_instr_req.wdata = rand();
    frame.core_instr_req.be = rand() % 16;
    frame.core_instr_req.we = rand() % 2;
    frame.core_instr_resp.rvalid = rand() % 2;
    frame.core_instr_resp.rdata = rand();
    frame.core_instr_resp.gnt = rand() % 2;
    // Initialize other fields as needed...
}

// Function to convert a frame to a 128-bit binary string
std::string frame_to_binary(const Vbus_sniffer::bus_sniff_bundle_t &frame) {
    std::string binary_string = "";
    binary_string += std::bitset<8>(frame.core_instr_req.req).to_string();
    binary_string += std::bitset<32>(frame.core_instr_req.addr).to_string();
    binary_string += std::bitset<32>(frame.core_instr_req.wdata).to_string();
    binary_string += std::bitset<4>(frame.core_instr_req.be).to_string();
    binary_string += std::bitset<1>(frame.core_instr_req.we).to_string();
    binary_string += std::bitset<1>(frame.core_instr_resp.rvalid).to_string();
    binary_string += std::bitset<32>(frame.core_instr_resp.rdata).to_string();
    binary_string += std::bitset<1>(frame.core_instr_resp.gnt).to_string();
    // Add other fields as needed...
    return binary_string;
}

// Function to check the correctness of the output frame
void check_frame(const std::string &expected, const std::string &actual) {
    assert(actual == expected && "Frame mismatch!");
}

int main(int argc, char** argv, char** env) {
    // Initialize Verilator
    Verilated::commandArgs(argc, argv);
    Vbus_sniffer *dut = new Vbus_sniffer;

    Verilated::traceEverOn(true);
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open("waveform.vcd");

    // Seed the random number generator
    srand(time(0));

    vluint64_t sim_time = 0;
    std::string expected_frame_binary = "";
    std::string captured_frame_binary = "";
    bool capturing_frame = false;

    while (sim_time < MAX_SIM_TIME) {
        // Generate a new frame every 128 clock cycles
        if (sim_time % 128 == 0) {
            Vbus_sniffer::bus_sniff_bundle_t frame;
            generate_random_frame(frame);
            dut->bus_sniff_bundle_i = frame;
            expected_frame_binary = frame_to_binary(frame);
            capturing_frame = true;
        }

        // Apply reset for the first few cycles
        if (sim_time < 5) {
            dut->rst_ni = 0;
        } else {
            dut->rst_ni = 1;
        }

        // Toggle clock
        dut->clk_i ^= 1;
        dut->eval();
        m_trace->dump(sim_time);

        // Capture the serialized output
        if (capturing_frame && dut->sniffer_tdo_o != 0) {
            captured_frame_binary += (dut->sniffer_tdo_o ? '1' : '0');
        }

        // Check if we have captured a full frame
        if (captured_frame_binary.size() == 128) {
            check_frame(expected_frame_binary, captured_frame_binary);
            capturing_frame = false;
            captured_frame_binary = "";
        }

        sim_time++;
    }

    m_trace->close();
    delete dut;
    return 0;
}






// #include <verilated.h>
// #include <verilated_vcd_c.h>
// #include "Vbus_sniffer.h"

// vluint64_t main_time = 0;
// double sc_time_stamp() {
//     return main_time;
// }

// int main(int argc, char** argv, char** env) {
//     // Initialize Verilator
//     Verilated::commandArgs(argc, argv);
//     Vbus_sniffer* top = new Vbus_sniffer;

//     // Initialize trace dump
//     Verilated::traceEverOn(true);
//     VerilatedVcdC* tfp = new VerilatedVcdC;
//     top->trace(tfp, 99);
//     tfp->open("bus_sniffer.vcd");

//     // Initialize inputs
//     top->clk_i = 0;
//     top->rst_ni = 0;
//     top->bus_sniff_bundle_i.core_instr_req.req = 0;
//     top->bus_sniff_bundle_i.core_instr_req.addr = 0;
//     top->bus_sniff_bundle_i.core_instr_req.wdata = 0;
//     top->bus_sniff_bundle_i.core_instr_req.be = 0;
//     top->bus_sniff_bundle_i.core_instr_req.we = 0;
//     top->bus_sniff_bundle_i.core_instr_resp.rvalid = 0;
//     top->bus_sniff_bundle_i.core_instr_resp.rdata = 0;
//     top->bus_sniff_bundle_i.core_instr_resp.gnt = 0;
//     // Initialize other signals as needed...

//     // Run the simulation
//     while (main_time < 1000) {
//         // Toggle clock
//         top->clk_i = !top->clk_i;
//         top->eval();
//         tfp->dump(main_time);
//         main_time++;

//         // Apply test vectors at specific times
//         if (main_time == 10) {
//             top->rst_ni = 1;
//         }
//         if (main_time == 20) {
//             top->bus_sniff_bundle_i.core_instr_req.req = 1;
//             top->bus_sniff_bundle_i.core_instr_req.addr = 0x12345678;
//             top->bus_sniff_bundle_i.core_instr_req.wdata = 0xDEADBEEF;
//             top->bus_sniff_bundle_i.core_instr_req.be = 0xF;
//             top->bus_sniff_bundle_i.core_instr_req.we = 1;
//         }
//         if (main_time == 30) {
//             top->bus_sniff_bundle_i.core_instr_req.req = 0;
//         }
//         if (main_time == 40) {
//             top->bus_sniff_bundle_i.core_instr_resp.rvalid = 1;
//             top->bus_sniff_bundle_i.core_instr_resp.rdata = 0xCAFEBABE;
//             top->bus_sniff_bundle_i.core_instr_resp.gnt = 1;
//         }
//         if (main_time == 50) {
//             top->bus_sniff_bundle_i.core_instr_resp.rvalid = 0;
//         }
//         // Add more transactions as needed...

//         // Check outputs
//         if (top->sniffer_tdo_o) {
//             std::cout << "Time: " << main_time << ", sniffer_tdo_o: " << top->sniffer_tdo_o << std::endl;
//         }
//     }

//     // Clean up and exit
//     tfp->close();
//     delete top;
//     return 0;
// }


