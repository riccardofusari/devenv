// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VCLK_STEPPING__SYMS_H_
#define VERILATED_VCLK_STEPPING__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODEL CLASS

#include "Vclk_stepping.h"

// INCLUDE MODULE CLASSES
#include "Vclk_stepping___024root.h"

// SYMS CLASS (contains all model state)
class Vclk_stepping__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vclk_stepping* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vclk_stepping___024root        TOP;

    // CONSTRUCTORS
    Vclk_stepping__Syms(VerilatedContext* contextp, const char* namep, Vclk_stepping* modelp);
    ~Vclk_stepping__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
