// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vbus_sniffer.h for the primary calling header

#ifndef VERILATED_VBUS_SNIFFER___024ROOT_H_
#define VERILATED_VBUS_SNIFFER___024ROOT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vbus_sniffer__Syms;
class Vbus_sniffer_VerilatedVcd;
class Vbus_sniffer___024unit;


//----------

VL_MODULE(Vbus_sniffer___024root) {
  public:
    // CELLS
    Vbus_sniffer___024unit* __PVT____024unit;

    // PORTS
    VL_IN8(clk_i,0,0);
    VL_IN8(rst_ni,0,0);
    VL_OUT8(sniffer_tdo_o,0,0);
    VL_INW(bus_sniff_bundle_i,1039,0,33);

    // LOCAL SIGNALS
    CData/*4:0*/ bus_sniffer__DOT__wr_ptr;
    CData/*4:0*/ bus_sniffer__DOT__rd_ptr;
    CData/*0:0*/ bus_sniffer__DOT__shifting;
    IData/*31:0*/ bus_sniffer__DOT__timestamp_q;
    IData/*31:0*/ bus_sniffer__DOT__used_count;
    IData/*31:0*/ bus_sniffer__DOT__shift_count;
    VlWide<4>/*127:0*/ bus_sniffer__DOT__shift_reg;
    VlWide<4>/*127:0*/ bus_sniffer__DOT__unnamedblk1__DOT__out_frame;
    VlUnpacked<VlWide<4>/*127:0*/, 32> bus_sniffer__DOT__fifo_mem;

    // LOCAL VARIABLES
    CData/*0:0*/ __Vclklast__TOP__clk_i;
    CData/*0:0*/ __Vclklast__TOP__rst_ni;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;

    // INTERNAL VARIABLES
    Vbus_sniffer__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vbus_sniffer___024root);  ///< Copying not allowed
  public:
    Vbus_sniffer___024root(const char* name);
    ~Vbus_sniffer___024root();

    // INTERNAL METHODS
    void __Vconfigure(Vbus_sniffer__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
