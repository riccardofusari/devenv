// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VBUS_SNIFFER__SYMS_H_
#define VERILATED_VBUS_SNIFFER__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "Vbus_sniffer.h"

// INCLUDE MODULE CLASSES
#include "Vbus_sniffer___024root.h"
#include "Vbus_sniffer___024unit.h"

// SYMS CLASS (contains all model state)
class Vbus_sniffer__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vbus_sniffer* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vbus_sniffer___024root         TOP;

    // CONSTRUCTORS
    Vbus_sniffer__Syms(VerilatedContext* contextp, const char* namep, Vbus_sniffer* modelp);
    ~Vbus_sniffer__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
