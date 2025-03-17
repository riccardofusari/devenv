// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vclk_stepping.h"
#include "Vclk_stepping__Syms.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

Vclk_stepping::Vclk_stepping(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vclk_stepping__Syms(_vcontextp__, _vcname__, this)}
    , clk_i{vlSymsp->TOP.clk_i}
    , rst_ni{vlSymsp->TOP.rst_ni}
    , en_i{vlSymsp->TOP.en_i}
    , cycles_i{vlSymsp->TOP.cycles_i}
    , cycle_start_i{vlSymsp->TOP.cycle_start_i}
    , clk_o{vlSymsp->TOP.clk_o}
    , running_o{vlSymsp->TOP.running_o}
    , cycles_left_o{vlSymsp->TOP.cycles_left_o}
    , rootp{&(vlSymsp->TOP)}
{
}

Vclk_stepping::Vclk_stepping(const char* _vcname__)
    : Vclk_stepping(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vclk_stepping::~Vclk_stepping() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vclk_stepping___024root___eval_initial(Vclk_stepping___024root* vlSelf);
void Vclk_stepping___024root___eval_settle(Vclk_stepping___024root* vlSelf);
void Vclk_stepping___024root___eval(Vclk_stepping___024root* vlSelf);
QData Vclk_stepping___024root___change_request(Vclk_stepping___024root* vlSelf);
#ifdef VL_DEBUG
void Vclk_stepping___024root___eval_debug_assertions(Vclk_stepping___024root* vlSelf);
#endif  // VL_DEBUG
void Vclk_stepping___024root___final(Vclk_stepping___024root* vlSelf);

static void _eval_initial_loop(Vclk_stepping__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vclk_stepping___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    vlSymsp->__Vm_activity = true;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vclk_stepping___024root___eval_settle(&(vlSymsp->TOP));
        Vclk_stepping___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vclk_stepping___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("clk_stepping.sv", 4, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vclk_stepping___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vclk_stepping::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vclk_stepping::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vclk_stepping___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    vlSymsp->__Vm_activity = true;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vclk_stepping___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vclk_stepping___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("clk_stepping.sv", 4, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vclk_stepping___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void Vclk_stepping::final() {
    Vclk_stepping___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* Vclk_stepping::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vclk_stepping::name() const {
    return vlSymsp->name();
}

//============================================================
// Trace configuration

void Vclk_stepping___024root__traceInitTop(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep);

static void traceInit(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vclk_stepping___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vclk_stepping___024root*>(voidSelf);
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vclk_stepping___024root__traceInitTop(vlSelf, tracep);
    tracep->scopeEscape('.');
}

void Vclk_stepping___024root__traceRegister(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep);

void Vclk_stepping::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, &(vlSymsp->TOP));
    Vclk_stepping___024root__traceRegister(&(vlSymsp->TOP), tfp->spTrace());
}
