// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vclk_stepping__Syms.h"
#include "Vclk_stepping.h"
#include "Vclk_stepping___024root.h"

// FUNCTIONS
Vclk_stepping__Syms::~Vclk_stepping__Syms()
{
}

Vclk_stepping__Syms::Vclk_stepping__Syms(VerilatedContext* contextp, const char* namep,Vclk_stepping* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp(modelp)
    // Setup module instances
    , TOP(namep)
{
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(this, true);
}
