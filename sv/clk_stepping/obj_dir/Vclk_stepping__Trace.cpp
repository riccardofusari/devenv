// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vclk_stepping__Syms.h"


void Vclk_stepping___024root__traceChgSub0(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep);

void Vclk_stepping___024root__traceChgTop0(void* voidSelf, VerilatedVcd* tracep) {
    Vclk_stepping___024root* const __restrict vlSelf = static_cast<Vclk_stepping___024root*>(voidSelf);
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        Vclk_stepping___024root__traceChgSub0((&vlSymsp->TOP), tracep);
    }
}

void Vclk_stepping___024root__traceChgSub0(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->chgBit(oldp+0,(vlSelf->clk_i));
        tracep->chgBit(oldp+1,(vlSelf->rst_ni));
        tracep->chgBit(oldp+2,(vlSelf->en_i));
        tracep->chgIData(oldp+3,(vlSelf->cycles_i),32);
        tracep->chgBit(oldp+4,(vlSelf->cycle_start_i));
        tracep->chgBit(oldp+5,(vlSelf->clk_o));
        tracep->chgBit(oldp+6,(vlSelf->running_o));
        tracep->chgIData(oldp+7,(vlSelf->cycles_left_o),32);
        tracep->chgIData(oldp+8,(vlSelf->clk_stepping__DOT__cycle_counter),32);
        tracep->chgCData(oldp+9,(vlSelf->clk_stepping__DOT__current_state),2);
        tracep->chgCData(oldp+10,(vlSelf->clk_stepping__DOT__next_state),2);
    }
}

void Vclk_stepping___024root__traceCleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VlUnpacked<CData/*0:0*/, 1> __Vm_traceActivity;
    Vclk_stepping___024root* const __restrict vlSelf = static_cast<Vclk_stepping___024root*>(voidSelf);
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        __Vm_traceActivity[0U] = 0U;
    }
}
