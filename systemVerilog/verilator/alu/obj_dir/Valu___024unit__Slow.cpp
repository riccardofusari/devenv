// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Valu.h for the primary calling header

#include "Valu___024unit.h"
#include "Valu__Syms.h"

//==========


void Valu___024unit___ctor_var_reset(Valu___024unit* vlSelf);

Valu___024unit::Valu___024unit(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Valu___024unit___ctor_var_reset(this);
}

void Valu___024unit::__Vconfigure(Valu__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Valu___024unit::~Valu___024unit() {
}

void Valu___024unit___ctor_var_reset(Valu___024unit* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Valu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        Valu___024unit___ctor_var_reset\n"); );
}
