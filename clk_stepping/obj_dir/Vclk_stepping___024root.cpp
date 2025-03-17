// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vclk_stepping.h for the primary calling header

#include "Vclk_stepping___024root.h"
#include "Vclk_stepping__Syms.h"

//==========

VL_INLINE_OPT void Vclk_stepping___024root___sequent__TOP__1(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___sequent__TOP__1\n"); );
    // Variables
    IData/*31:0*/ __Vdly__clk_stepping__DOT__cycle_counter;
    // Body
    __Vdly__clk_stepping__DOT__cycle_counter = vlSelf->clk_stepping__DOT__cycle_counter;
    if (vlSelf->rst_ni) {
        if (((0U == (IData)(vlSelf->clk_stepping__DOT__current_state)) 
             & (1U == (IData)(vlSelf->clk_stepping__DOT__next_state)))) {
            __Vdly__clk_stepping__DOT__cycle_counter 
                = vlSelf->cycles_i;
        } else if (((1U == (IData)(vlSelf->clk_stepping__DOT__current_state)) 
                    & (0U < vlSelf->clk_stepping__DOT__cycle_counter))) {
            __Vdly__clk_stepping__DOT__cycle_counter 
                = (vlSelf->clk_stepping__DOT__cycle_counter 
                   - (IData)(1U));
        }
    } else {
        __Vdly__clk_stepping__DOT__cycle_counter = 0U;
    }
    vlSelf->clk_stepping__DOT__cycle_counter = __Vdly__clk_stepping__DOT__cycle_counter;
    vlSelf->cycles_left_o = vlSelf->clk_stepping__DOT__cycle_counter;
    vlSelf->clk_stepping__DOT__current_state = ((IData)(vlSelf->rst_ni)
                                                 ? (IData)(vlSelf->clk_stepping__DOT__next_state)
                                                 : 0U);
    vlSelf->running_o = (1U == (IData)(vlSelf->clk_stepping__DOT__current_state));
}

VL_INLINE_OPT void Vclk_stepping___024root___combo__TOP__3(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___combo__TOP__3\n"); );
    // Body
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

void Vclk_stepping___024root___eval(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk_i) & (~ (IData)(vlSelf->__Vclklast__TOP__clk_i))) 
         | ((~ (IData)(vlSelf->rst_ni)) & (IData)(vlSelf->__Vclklast__TOP__rst_ni)))) {
        Vclk_stepping___024root___sequent__TOP__1(vlSelf);
    }
    Vclk_stepping___024root___combo__TOP__3(vlSelf);
    // Final
    vlSelf->__Vclklast__TOP__clk_i = vlSelf->clk_i;
    vlSelf->__Vclklast__TOP__rst_ni = vlSelf->rst_ni;
}

QData Vclk_stepping___024root___change_request_1(Vclk_stepping___024root* vlSelf);

VL_INLINE_OPT QData Vclk_stepping___024root___change_request(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___change_request\n"); );
    // Body
    return (Vclk_stepping___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData Vclk_stepping___024root___change_request_1(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vclk_stepping___024root___eval_debug_assertions(Vclk_stepping___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vclk_stepping__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vclk_stepping___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk_i & 0xfeU))) {
        Verilated::overWidthError("clk_i");}
    if (VL_UNLIKELY((vlSelf->rst_ni & 0xfeU))) {
        Verilated::overWidthError("rst_ni");}
    if (VL_UNLIKELY((vlSelf->en_i & 0xfeU))) {
        Verilated::overWidthError("en_i");}
    if (VL_UNLIKELY((vlSelf->cycle_start_i & 0xfeU))) {
        Verilated::overWidthError("cycle_start_i");}
}
#endif  // VL_DEBUG
