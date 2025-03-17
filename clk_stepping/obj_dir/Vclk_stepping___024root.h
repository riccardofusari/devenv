// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vclk_stepping.h for the primary calling header

#ifndef VERILATED_VCLK_STEPPING___024ROOT_H_
#define VERILATED_VCLK_STEPPING___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vclk_stepping__Syms;
class Vclk_stepping_VerilatedVcd;


//----------

VL_MODULE(Vclk_stepping___024root) {
  public:

    // PORTS
    VL_IN8(clk_i,0,0);
    VL_IN8(rst_ni,0,0);
    VL_IN8(en_i,0,0);
    VL_IN8(cycle_start_i,0,0);
    VL_OUT8(clk_o,0,0);
    VL_OUT8(running_o,0,0);
    VL_IN(cycles_i,31,0);
    VL_OUT(cycles_left_o,31,0);

    // LOCAL SIGNALS
    CData/*1:0*/ clk_stepping__DOT__current_state;
    CData/*1:0*/ clk_stepping__DOT__next_state;
    IData/*31:0*/ clk_stepping__DOT__cycle_counter;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk_i;
    CData/*0:0*/ __Vclklast__TOP__rst_ni;

    // INTERNAL VARIABLES
    Vclk_stepping__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vclk_stepping___024root);  ///< Copying not allowed
  public:
    Vclk_stepping___024root(const char* name);
    ~Vclk_stepping___024root();

    // INTERNAL METHODS
    void __Vconfigure(Vclk_stepping__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
