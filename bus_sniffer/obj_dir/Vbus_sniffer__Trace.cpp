// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbus_sniffer__Syms.h"


void Vbus_sniffer___024root__traceChgSub0(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep);

void Vbus_sniffer___024root__traceChgTop0(void* voidSelf, VerilatedVcd* tracep) {
    Vbus_sniffer___024root* const __restrict vlSelf = static_cast<Vbus_sniffer___024root*>(voidSelf);
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    {
        Vbus_sniffer___024root__traceChgSub0((&vlSymsp->TOP), tracep);
    }
}

void Vbus_sniffer___024root__traceChgSub0(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VlWide<4>/*127:0*/ __Vtemp74;
    VlWide<4>/*127:0*/ __Vtemp75;
    VlWide<4>/*127:0*/ __Vtemp76;
    VlWide<4>/*127:0*/ __Vtemp77;
    VlWide<4>/*127:0*/ __Vtemp78;
    VlWide<4>/*127:0*/ __Vtemp79;
    VlWide<4>/*127:0*/ __Vtemp80;
    VlWide<4>/*127:0*/ __Vtemp81;
    VlWide<4>/*127:0*/ __Vtemp82;
    VlWide<4>/*127:0*/ __Vtemp83;
    VlWide<4>/*127:0*/ __Vtemp84;
    VlWide<4>/*127:0*/ __Vtemp85;
    VlWide<4>/*127:0*/ __Vtemp86;
    VlWide<4>/*127:0*/ __Vtemp87;
    VlWide<4>/*127:0*/ __Vtemp88;
    VlWide<4>/*127:0*/ __Vtemp89;
    VlWide<4>/*127:0*/ __Vtemp90;
    VlWide<4>/*127:0*/ __Vtemp91;
    VlWide<4>/*127:0*/ __Vtemp92;
    VlWide<4>/*127:0*/ __Vtemp93;
    VlWide<4>/*127:0*/ __Vtemp94;
    VlWide<4>/*127:0*/ __Vtemp95;
    VlWide<4>/*127:0*/ __Vtemp96;
    VlWide<4>/*127:0*/ __Vtemp97;
    VlWide<4>/*127:0*/ __Vtemp98;
    VlWide<4>/*127:0*/ __Vtemp99;
    VlWide<4>/*127:0*/ __Vtemp100;
    VlWide<4>/*127:0*/ __Vtemp101;
    VlWide<4>/*127:0*/ __Vtemp102;
    VlWide<4>/*127:0*/ __Vtemp103;
    VlWide<4>/*127:0*/ __Vtemp104;
    VlWide<4>/*127:0*/ __Vtemp105;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode + 1);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
            tracep->chgIData(oldp+0,(vlSelf->bus_sniffer__DOT__timestamp_q),32);
            __Vtemp74[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0U][0U];
            __Vtemp74[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0U][1U];
            __Vtemp74[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0U][2U];
            __Vtemp74[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0U][3U];
            tracep->chgWData(oldp+1,(__Vtemp74),128);
            __Vtemp75[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [1U][0U];
            __Vtemp75[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [1U][1U];
            __Vtemp75[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [1U][2U];
            __Vtemp75[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [1U][3U];
            tracep->chgWData(oldp+5,(__Vtemp75),128);
            __Vtemp76[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [2U][0U];
            __Vtemp76[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [2U][1U];
            __Vtemp76[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [2U][2U];
            __Vtemp76[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [2U][3U];
            tracep->chgWData(oldp+9,(__Vtemp76),128);
            __Vtemp77[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [3U][0U];
            __Vtemp77[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [3U][1U];
            __Vtemp77[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [3U][2U];
            __Vtemp77[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [3U][3U];
            tracep->chgWData(oldp+13,(__Vtemp77),128);
            __Vtemp78[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [4U][0U];
            __Vtemp78[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [4U][1U];
            __Vtemp78[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [4U][2U];
            __Vtemp78[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [4U][3U];
            tracep->chgWData(oldp+17,(__Vtemp78),128);
            __Vtemp79[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [5U][0U];
            __Vtemp79[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [5U][1U];
            __Vtemp79[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [5U][2U];
            __Vtemp79[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [5U][3U];
            tracep->chgWData(oldp+21,(__Vtemp79),128);
            __Vtemp80[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [6U][0U];
            __Vtemp80[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [6U][1U];
            __Vtemp80[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [6U][2U];
            __Vtemp80[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [6U][3U];
            tracep->chgWData(oldp+25,(__Vtemp80),128);
            __Vtemp81[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [7U][0U];
            __Vtemp81[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [7U][1U];
            __Vtemp81[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [7U][2U];
            __Vtemp81[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [7U][3U];
            tracep->chgWData(oldp+29,(__Vtemp81),128);
            __Vtemp82[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [8U][0U];
            __Vtemp82[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [8U][1U];
            __Vtemp82[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [8U][2U];
            __Vtemp82[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [8U][3U];
            tracep->chgWData(oldp+33,(__Vtemp82),128);
            __Vtemp83[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [9U][0U];
            __Vtemp83[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [9U][1U];
            __Vtemp83[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [9U][2U];
            __Vtemp83[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [9U][3U];
            tracep->chgWData(oldp+37,(__Vtemp83),128);
            __Vtemp84[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xaU][0U];
            __Vtemp84[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xaU][1U];
            __Vtemp84[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xaU][2U];
            __Vtemp84[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xaU][3U];
            tracep->chgWData(oldp+41,(__Vtemp84),128);
            __Vtemp85[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xbU][0U];
            __Vtemp85[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xbU][1U];
            __Vtemp85[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xbU][2U];
            __Vtemp85[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xbU][3U];
            tracep->chgWData(oldp+45,(__Vtemp85),128);
            __Vtemp86[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xcU][0U];
            __Vtemp86[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xcU][1U];
            __Vtemp86[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xcU][2U];
            __Vtemp86[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xcU][3U];
            tracep->chgWData(oldp+49,(__Vtemp86),128);
            __Vtemp87[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xdU][0U];
            __Vtemp87[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xdU][1U];
            __Vtemp87[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xdU][2U];
            __Vtemp87[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xdU][3U];
            tracep->chgWData(oldp+53,(__Vtemp87),128);
            __Vtemp88[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xeU][0U];
            __Vtemp88[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xeU][1U];
            __Vtemp88[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xeU][2U];
            __Vtemp88[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xeU][3U];
            tracep->chgWData(oldp+57,(__Vtemp88),128);
            __Vtemp89[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xfU][0U];
            __Vtemp89[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xfU][1U];
            __Vtemp89[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xfU][2U];
            __Vtemp89[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0xfU][3U];
            tracep->chgWData(oldp+61,(__Vtemp89),128);
            __Vtemp90[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x10U][0U];
            __Vtemp90[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x10U][1U];
            __Vtemp90[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x10U][2U];
            __Vtemp90[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x10U][3U];
            tracep->chgWData(oldp+65,(__Vtemp90),128);
            __Vtemp91[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x11U][0U];
            __Vtemp91[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x11U][1U];
            __Vtemp91[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x11U][2U];
            __Vtemp91[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x11U][3U];
            tracep->chgWData(oldp+69,(__Vtemp91),128);
            __Vtemp92[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x12U][0U];
            __Vtemp92[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x12U][1U];
            __Vtemp92[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x12U][2U];
            __Vtemp92[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x12U][3U];
            tracep->chgWData(oldp+73,(__Vtemp92),128);
            __Vtemp93[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x13U][0U];
            __Vtemp93[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x13U][1U];
            __Vtemp93[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x13U][2U];
            __Vtemp93[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x13U][3U];
            tracep->chgWData(oldp+77,(__Vtemp93),128);
            __Vtemp94[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x14U][0U];
            __Vtemp94[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x14U][1U];
            __Vtemp94[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x14U][2U];
            __Vtemp94[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x14U][3U];
            tracep->chgWData(oldp+81,(__Vtemp94),128);
            __Vtemp95[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x15U][0U];
            __Vtemp95[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x15U][1U];
            __Vtemp95[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x15U][2U];
            __Vtemp95[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x15U][3U];
            tracep->chgWData(oldp+85,(__Vtemp95),128);
            __Vtemp96[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x16U][0U];
            __Vtemp96[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x16U][1U];
            __Vtemp96[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x16U][2U];
            __Vtemp96[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x16U][3U];
            tracep->chgWData(oldp+89,(__Vtemp96),128);
            __Vtemp97[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x17U][0U];
            __Vtemp97[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x17U][1U];
            __Vtemp97[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x17U][2U];
            __Vtemp97[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x17U][3U];
            tracep->chgWData(oldp+93,(__Vtemp97),128);
            __Vtemp98[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x18U][0U];
            __Vtemp98[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x18U][1U];
            __Vtemp98[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x18U][2U];
            __Vtemp98[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x18U][3U];
            tracep->chgWData(oldp+97,(__Vtemp98),128);
            __Vtemp99[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x19U][0U];
            __Vtemp99[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x19U][1U];
            __Vtemp99[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x19U][2U];
            __Vtemp99[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x19U][3U];
            tracep->chgWData(oldp+101,(__Vtemp99),128);
            __Vtemp100[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1aU][0U];
            __Vtemp100[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1aU][1U];
            __Vtemp100[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1aU][2U];
            __Vtemp100[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1aU][3U];
            tracep->chgWData(oldp+105,(__Vtemp100),128);
            __Vtemp101[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1bU][0U];
            __Vtemp101[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1bU][1U];
            __Vtemp101[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1bU][2U];
            __Vtemp101[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1bU][3U];
            tracep->chgWData(oldp+109,(__Vtemp101),128);
            __Vtemp102[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1cU][0U];
            __Vtemp102[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1cU][1U];
            __Vtemp102[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1cU][2U];
            __Vtemp102[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1cU][3U];
            tracep->chgWData(oldp+113,(__Vtemp102),128);
            __Vtemp103[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1dU][0U];
            __Vtemp103[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1dU][1U];
            __Vtemp103[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1dU][2U];
            __Vtemp103[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1dU][3U];
            tracep->chgWData(oldp+117,(__Vtemp103),128);
            __Vtemp104[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1eU][0U];
            __Vtemp104[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1eU][1U];
            __Vtemp104[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1eU][2U];
            __Vtemp104[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1eU][3U];
            tracep->chgWData(oldp+121,(__Vtemp104),128);
            __Vtemp105[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1fU][0U];
            __Vtemp105[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1fU][1U];
            __Vtemp105[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1fU][2U];
            __Vtemp105[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
                [0x1fU][3U];
            tracep->chgWData(oldp+125,(__Vtemp105),128);
            tracep->chgCData(oldp+129,(vlSelf->bus_sniffer__DOT__wr_ptr),5);
            tracep->chgCData(oldp+130,(vlSelf->bus_sniffer__DOT__rd_ptr),5);
            tracep->chgIData(oldp+131,(vlSelf->bus_sniffer__DOT__used_count),32);
            tracep->chgIData(oldp+132,(vlSelf->bus_sniffer__DOT__shift_count),32);
            tracep->chgBit(oldp+133,(vlSelf->bus_sniffer__DOT__shifting));
            tracep->chgWData(oldp+134,(vlSelf->bus_sniffer__DOT__shift_reg),128);
            tracep->chgBit(oldp+138,((1U & (vlSelf->bus_sniffer__DOT__shift_reg[
                                            (3U & (vlSelf->bus_sniffer__DOT__shift_count 
                                                   >> 5U))] 
                                            >> (0x1fU 
                                                & vlSelf->bus_sniffer__DOT__shift_count)))));
            tracep->chgWData(oldp+139,(vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame),128);
        }
        tracep->chgBit(oldp+143,(vlSelf->clk_i));
        tracep->chgBit(oldp+144,(vlSelf->rst_ni));
        tracep->chgBit(oldp+145,(vlSelf->sniffer_tdo_o));
        tracep->chgWData(oldp+146,(vlSelf->bus_sniff_bundle_i),1040);
    }
}

void Vbus_sniffer___024root__traceCleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    Vbus_sniffer___024root* const __restrict vlSelf = static_cast<Vbus_sniffer___024root*>(voidSelf);
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    {
        vlSymsp->__Vm_activity = false;
        vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
        vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    }
}
