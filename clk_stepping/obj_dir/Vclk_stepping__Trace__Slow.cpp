// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vclk_stepping__Syms.h"


void Vclk_stepping___024root__traceInitSub0(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep) VL_ATTR_COLD;

void Vclk_stepping___024root__traceInitTop(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    {
        Vclk_stepping___024root__traceInitSub0(vlSelf, tracep);
    }
}

void Vclk_stepping___024root__traceInitSub0(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+1,"clk_i", false,-1);
        tracep->declBit(c+2,"rst_ni", false,-1);
        tracep->declBit(c+3,"en_i", false,-1);
        tracep->declBus(c+4,"cycles_i", false,-1, 31,0);
        tracep->declBit(c+5,"cycle_start_i", false,-1);
        tracep->declBit(c+6,"clk_o", false,-1);
        tracep->declBit(c+7,"running_o", false,-1);
        tracep->declBus(c+8,"cycles_left_o", false,-1, 31,0);
        tracep->declBit(c+1,"clk_stepping clk_i", false,-1);
        tracep->declBit(c+2,"clk_stepping rst_ni", false,-1);
        tracep->declBit(c+3,"clk_stepping en_i", false,-1);
        tracep->declBus(c+4,"clk_stepping cycles_i", false,-1, 31,0);
        tracep->declBit(c+5,"clk_stepping cycle_start_i", false,-1);
        tracep->declBit(c+6,"clk_stepping clk_o", false,-1);
        tracep->declBit(c+7,"clk_stepping running_o", false,-1);
        tracep->declBus(c+8,"clk_stepping cycles_left_o", false,-1, 31,0);
        tracep->declBus(c+9,"clk_stepping cycle_counter", false,-1, 31,0);
        tracep->declBus(c+10,"clk_stepping current_state", false,-1, 1,0);
        tracep->declBus(c+11,"clk_stepping next_state", false,-1, 1,0);
    }
}

void Vclk_stepping___024root__traceFullTop0(void* voidSelf, VerilatedVcd* tracep) VL_ATTR_COLD;
void Vclk_stepping___024root__traceChgTop0(void* voidSelf, VerilatedVcd* tracep);
void Vclk_stepping___024root__traceCleanup(void* voidSelf, VerilatedVcd* /*unused*/);

void Vclk_stepping___024root__traceRegister(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    {
        tracep->addFullCb(&Vclk_stepping___024root__traceFullTop0, vlSelf);
        tracep->addChgCb(&Vclk_stepping___024root__traceChgTop0, vlSelf);
        tracep->addCleanupCb(&Vclk_stepping___024root__traceCleanup, vlSelf);
    }
}

void Vclk_stepping___024root__traceFullSub0(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep) VL_ATTR_COLD;

void Vclk_stepping___024root__traceFullTop0(void* voidSelf, VerilatedVcd* tracep) {
    Vclk_stepping___024root* const __restrict vlSelf = static_cast<Vclk_stepping___024root*>(voidSelf);
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    {
        Vclk_stepping___024root__traceFullSub0((&vlSymsp->TOP), tracep);
    }
}

void Vclk_stepping___024root__traceFullSub0(Vclk_stepping___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullBit(oldp+1,(vlSelf->clk_i));
        tracep->fullBit(oldp+2,(vlSelf->rst_ni));
        tracep->fullBit(oldp+3,(vlSelf->en_i));
        tracep->fullIData(oldp+4,(vlSelf->cycles_i),32);
        tracep->fullBit(oldp+5,(vlSelf->cycle_start_i));
        tracep->fullBit(oldp+6,(vlSelf->clk_o));
        tracep->fullBit(oldp+7,(vlSelf->running_o));
        tracep->fullIData(oldp+8,(vlSelf->cycles_left_o),32);
        tracep->fullIData(oldp+9,(vlSelf->clk_stepping__DOT__cycle_counter),32);
        tracep->fullCData(oldp+10,(vlSelf->clk_stepping__DOT__current_state),2);
        tracep->fullCData(oldp+11,(vlSelf->clk_stepping__DOT__next_state),2);
    }
}
