// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vbus_sniffer.h for the primary calling header

#ifndef VERILATED_VBUS_SNIFFER___024UNIT_H_
#define VERILATED_VBUS_SNIFFER___024UNIT_H_  // guard

#include "verilated_heavy.h"

//==========

class Vbus_sniffer__Syms;
class Vbus_sniffer_VerilatedVcd;


//----------

VL_MODULE(Vbus_sniffer___024unit) {
  public:

    // TYPEDEFS
    // That were declared public




    // INTERNAL VARIABLES
    Vbus_sniffer__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vbus_sniffer___024unit);  ///< Copying not allowed
  public:
    Vbus_sniffer___024unit(const char* name);
    ~Vbus_sniffer___024unit();

    // INTERNAL METHODS
    void __Vconfigure(Vbus_sniffer__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
