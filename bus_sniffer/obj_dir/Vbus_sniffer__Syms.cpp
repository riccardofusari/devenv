// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vbus_sniffer__Syms.h"
#include "Vbus_sniffer.h"
#include "Vbus_sniffer___024root.h"
#include "Vbus_sniffer___024unit.h"

// FUNCTIONS
Vbus_sniffer__Syms::~Vbus_sniffer__Syms()
{
}

Vbus_sniffer__Syms::Vbus_sniffer__Syms(VerilatedContext* contextp, const char* namep,Vbus_sniffer* modelp)
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
