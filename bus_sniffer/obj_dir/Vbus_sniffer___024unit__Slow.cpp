// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbus_sniffer.h for the primary calling header

#include "Vbus_sniffer___024unit.h"
#include "Vbus_sniffer__Syms.h"

//==========


void Vbus_sniffer___024unit___ctor_var_reset(Vbus_sniffer___024unit* vlSelf);

Vbus_sniffer___024unit::Vbus_sniffer___024unit(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vbus_sniffer___024unit___ctor_var_reset(this);
}

void Vbus_sniffer___024unit::__Vconfigure(Vbus_sniffer__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vbus_sniffer___024unit::~Vbus_sniffer___024unit() {
}

void Vbus_sniffer___024unit___ctor_var_reset(Vbus_sniffer___024unit* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        Vbus_sniffer___024unit___ctor_var_reset\n"); );
}
