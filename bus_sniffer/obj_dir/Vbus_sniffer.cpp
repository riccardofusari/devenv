// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vbus_sniffer.h"
#include "Vbus_sniffer__Syms.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

Vbus_sniffer::Vbus_sniffer(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vbus_sniffer__Syms(_vcontextp__, _vcname__, this)}
    , clk_i{vlSymsp->TOP.clk_i}
    , rst_ni{vlSymsp->TOP.rst_ni}
    , sniffer_tdo_o{vlSymsp->TOP.sniffer_tdo_o}
    , bus_sniff_bundle_i{vlSymsp->TOP.bus_sniff_bundle_i}
    , __PVT____024unit{vlSymsp->TOP.__PVT____024unit}
    , rootp{&(vlSymsp->TOP)}
{
}

Vbus_sniffer::Vbus_sniffer(const char* _vcname__)
    : Vbus_sniffer(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vbus_sniffer::~Vbus_sniffer() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vbus_sniffer___024root___eval_initial(Vbus_sniffer___024root* vlSelf);
void Vbus_sniffer___024root___eval_settle(Vbus_sniffer___024root* vlSelf);
void Vbus_sniffer___024root___eval(Vbus_sniffer___024root* vlSelf);
QData Vbus_sniffer___024root___change_request(Vbus_sniffer___024root* vlSelf);
#ifdef VL_DEBUG
void Vbus_sniffer___024root___eval_debug_assertions(Vbus_sniffer___024root* vlSelf);
#endif  // VL_DEBUG
void Vbus_sniffer___024root___final(Vbus_sniffer___024root* vlSelf);

static void _eval_initial_loop(Vbus_sniffer__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vbus_sniffer___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    vlSymsp->__Vm_activity = true;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vbus_sniffer___024root___eval_settle(&(vlSymsp->TOP));
        Vbus_sniffer___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vbus_sniffer___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("bus_sniffer.sv", 70, "",
                "Verilated model didn't DC converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vbus_sniffer___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vbus_sniffer::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vbus_sniffer::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vbus_sniffer___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    vlSymsp->__Vm_activity = true;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vbus_sniffer___024root___eval(&(vlSymsp->TOP));
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = Vbus_sniffer___024root___change_request(&(vlSymsp->TOP));
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("bus_sniffer.sv", 70, "",
                "Verilated model didn't converge\n"
                "- See https://verilator.org/warn/DIDNOTCONVERGE");
        } else {
            __Vchange = Vbus_sniffer___024root___change_request(&(vlSymsp->TOP));
        }
    } while (VL_UNLIKELY(__Vchange));
}

//============================================================
// Invoke final blocks

void Vbus_sniffer::final() {
    Vbus_sniffer___024root___final(&(vlSymsp->TOP));
}

//============================================================
// Utilities

VerilatedContext* Vbus_sniffer::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vbus_sniffer::name() const {
    return vlSymsp->name();
}

//============================================================
// Trace configuration

void Vbus_sniffer___024root__traceInitTop(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep);

static void traceInit(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vbus_sniffer___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vbus_sniffer___024root*>(voidSelf);
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->module(vlSymsp->name());
    tracep->scopeEscape(' ');
    Vbus_sniffer___024root__traceInitTop(vlSelf, tracep);
    tracep->scopeEscape('.');
}

void Vbus_sniffer___024root__traceRegister(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep);

void Vbus_sniffer::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addInitCb(&traceInit, &(vlSymsp->TOP));
    Vbus_sniffer___024root__traceRegister(&(vlSymsp->TOP), tfp->spTrace());
}
