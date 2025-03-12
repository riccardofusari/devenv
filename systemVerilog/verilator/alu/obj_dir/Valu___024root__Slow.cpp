// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Valu.h for the primary calling header

#include "Valu___024root.h"
#include "Valu__Syms.h"

//==========


void Valu___024root___ctor_var_reset(Valu___024root* vlSelf);

Valu___024root::Valu___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Valu___024root___ctor_var_reset(this);
}

void Valu___024root::__Vconfigure(Valu__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Valu___024root::~Valu___024root() {
}

void Valu___024root___settle__TOP__2(Valu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Valu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Valu___024root___settle__TOP__2\n"); );
    // Body
    vlSelf->alu__DOT__result = 0U;
    if (vlSelf->alu__DOT__in_valid_r) {
        vlSelf->alu__DOT__result = (0x3fU & ((1U == (IData)(vlSelf->alu__DOT__op_in_r))
                                              ? ((IData)(vlSelf->alu__DOT__a_in_r) 
                                                 + (IData)(vlSelf->alu__DOT__b_in_r))
                                              : ((2U 
                                                  == (IData)(vlSelf->alu__DOT__op_in_r))
                                                  ? 
                                                 ((IData)(1U) 
                                                  + 
                                                  ((IData)(vlSelf->alu__DOT__a_in_r) 
                                                   + 
                                                   (~ (IData)(vlSelf->alu__DOT__b_in_r))))
                                                  : 0U)));
    }
}

void Valu___024root___eval_initial(Valu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Valu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Valu___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
    vlSelf->__Vclklast__TOP__rst = vlSelf->rst;
}

void Valu___024root___eval_settle(Valu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Valu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Valu___024root___eval_settle\n"); );
    // Body
    Valu___024root___settle__TOP__2(vlSelf);
}

void Valu___024root___final(Valu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Valu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Valu___024root___final\n"); );
}

void Valu___024root___ctor_var_reset(Valu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Valu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Valu___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst = VL_RAND_RESET_I(1);
    vlSelf->op_in = VL_RAND_RESET_I(2);
    vlSelf->a_in = VL_RAND_RESET_I(6);
    vlSelf->b_in = VL_RAND_RESET_I(6);
    vlSelf->in_valid = VL_RAND_RESET_I(1);
    vlSelf->out = VL_RAND_RESET_I(6);
    vlSelf->out_valid = VL_RAND_RESET_I(1);
    vlSelf->alu__DOT__op_in_r = VL_RAND_RESET_I(2);
    vlSelf->alu__DOT__a_in_r = VL_RAND_RESET_I(6);
    vlSelf->alu__DOT__b_in_r = VL_RAND_RESET_I(6);
    vlSelf->alu__DOT__in_valid_r = VL_RAND_RESET_I(1);
    vlSelf->alu__DOT__result = VL_RAND_RESET_I(6);
}
