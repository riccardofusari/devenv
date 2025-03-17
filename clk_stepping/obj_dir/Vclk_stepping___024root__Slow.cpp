// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vclk_stepping.h for the primary calling header

#include "Vclk_stepping___024root.h"
#include "Vclk_stepping__Syms.h"

//==========


void Vclk_stepping___024root___ctor_var_reset(Vclk_stepping___024root* vlSelf);

Vclk_stepping___024root::Vclk_stepping___024root(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vclk_stepping___024root___ctor_var_reset(this);
}

void Vclk_stepping___024root::__Vconfigure(Vclk_stepping__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vclk_stepping___024root::~Vclk_stepping___024root() {
}

void Vclk_stepping___024root___settle__TOP__2(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___settle__TOP__2\n"); );
    // Body
    vlSelf->cycles_left_o = vlSelf->clk_stepping__DOT__cycle_counter;
    vlSelf->running_o = (1U == (IData)(vlSelf->clk_stepping__DOT__current_state));
    vlSelf->clk_o = ((1U == (IData)(vlSelf->clk_stepping__DOT__current_state)) 
                     & (IData)(vlSelf->clk_i));
    if ((0U == (IData)(vlSelf->clk_stepping__DOT__current_state))) {
        if (((IData)(vlSelf->en_i) & (IData)(vlSelf->cycle_start_i))) {
            vlSelf->clk_stepping__DOT__next_state = 1U;
        }
    } else if ((1U == (IData)(vlSelf->clk_stepping__DOT__current_state))) {
        if ((0U == vlSelf->clk_stepping__DOT__cycle_counter)) {
            vlSelf->clk_stepping__DOT__next_state = 2U;
        } else if ((1U & (~ (IData)(vlSelf->en_i)))) {
            vlSelf->clk_stepping__DOT__next_state = 0U;
        }
    } else if ((2U == (IData)(vlSelf->clk_stepping__DOT__current_state))) {
        if ((1U & ((~ (IData)(vlSelf->en_i)) | (IData)(vlSelf->cycle_start_i)))) {
            vlSelf->clk_stepping__DOT__next_state = 0U;
        }
    } else {
        vlSelf->clk_stepping__DOT__next_state = 0U;
    }
}

void Vclk_stepping___024root___eval_initial(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk_i = vlSelf->clk_i;
    vlSelf->__Vclklast__TOP__rst_ni = vlSelf->rst_ni;
}

void Vclk_stepping___024root___eval_settle(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___eval_settle\n"); );
    // Body
    Vclk_stepping___024root___settle__TOP__2(vlSelf);
}

void Vclk_stepping___024root___final(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___final\n"); );
}

void Vclk_stepping___024root___ctor_var_reset(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk_i = VL_RAND_RESET_I(1);
    vlSelf->rst_ni = VL_RAND_RESET_I(1);
    vlSelf->en_i = VL_RAND_RESET_I(1);
    vlSelf->cycles_i = VL_RAND_RESET_I(32);
    vlSelf->cycle_start_i = VL_RAND_RESET_I(1);
    vlSelf->clk_o = VL_RAND_RESET_I(1);
    vlSelf->running_o = VL_RAND_RESET_I(1);
    vlSelf->cycles_left_o = VL_RAND_RESET_I(32);
    vlSelf->clk_stepping__DOT__cycle_counter = VL_RAND_RESET_I(32);
    vlSelf->clk_stepping__DOT__current_state = VL_RAND_RESET_I(2);
    vlSelf->clk_stepping__DOT__next_state = VL_RAND_RESET_I(2);
}
