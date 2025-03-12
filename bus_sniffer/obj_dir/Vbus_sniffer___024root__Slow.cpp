// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbus_sniffer.h for the primary calling header

#include "Vbus_sniffer___024root.h"
#include "Vbus_sniffer__Syms.h"

//==========


void Vbus_sniffer___024root___ctor_var_reset(Vbus_sniffer___024root* vlSelf);

Vbus_sniffer___024root::Vbus_sniffer___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vbus_sniffer___024root___ctor_var_reset(this);
}

void Vbus_sniffer___024root::__Vconfigure(Vbus_sniffer__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vbus_sniffer___024root::~Vbus_sniffer___024root() {
}

void Vbus_sniffer___024root___settle__TOP__2(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___settle__TOP__2\n"); );
    // Body
    vlSelf->sniffer_tdo_o = ((IData)(vlSelf->bus_sniffer__DOT__shifting) 
                             & (vlSelf->bus_sniffer__DOT__shift_reg[
                                (3U & (vlSelf->bus_sniffer__DOT__shift_count 
                                       >> 5U))] >> 
                                (0x1fU & vlSelf->bus_sniffer__DOT__shift_count)));
}

void Vbus_sniffer___024root___eval_initial(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk_i = vlSelf->clk_i;
    vlSelf->__Vclklast__TOP__rst_ni = vlSelf->rst_ni;
}

void Vbus_sniffer___024root___eval_settle(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___eval_settle\n"); );
    // Body
    Vbus_sniffer___024root___settle__TOP__2(vlSelf);
}

void Vbus_sniffer___024root___final(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___final\n"); );
}

void Vbus_sniffer___024root___ctor_var_reset(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk_i = VL_RAND_RESET_I(1);
    vlSelf->rst_ni = VL_RAND_RESET_I(1);
    vlSelf->sniffer_tdo_o = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(1040, vlSelf->bus_sniff_bundle_i);
    vlSelf->bus_sniffer__DOT__timestamp_q = VL_RAND_RESET_I(32);
    for (int __Vi0=0; __Vi0<32; ++__Vi0) {
        VL_RAND_RESET_W(128, vlSelf->bus_sniffer__DOT__fifo_mem[__Vi0]);
    }
    vlSelf->bus_sniffer__DOT__wr_ptr = VL_RAND_RESET_I(5);
    vlSelf->bus_sniffer__DOT__rd_ptr = VL_RAND_RESET_I(5);
    vlSelf->bus_sniffer__DOT__used_count = 0;
    vlSelf->bus_sniffer__DOT__shift_count = 0;
    vlSelf->bus_sniffer__DOT__shifting = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(128, vlSelf->bus_sniffer__DOT__shift_reg);
    VL_RAND_RESET_W(128, vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame);
    for (int __Vi0=0; __Vi0<2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = VL_RAND_RESET_I(1);
    }
}
