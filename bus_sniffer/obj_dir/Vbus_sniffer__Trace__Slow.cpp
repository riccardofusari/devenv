// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vbus_sniffer__Syms.h"


void Vbus_sniffer___024root__traceInitSub0(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep) VL_ATTR_COLD;

void Vbus_sniffer___024root__traceInitTop(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    {
        Vbus_sniffer___024root__traceInitSub0(vlSelf, tracep);
    }
}

void Vbus_sniffer___024root__traceInitSub0(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    const int c = vlSymsp->__Vm_baseCode;
    if (false && tracep && c) {}  // Prevent unused
    // Body
    {
        tracep->declBit(c+144,"clk_i", false,-1);
        tracep->declBit(c+145,"rst_ni", false,-1);
        tracep->declBit(c+146,"sniffer_tdo_o", false,-1);
        tracep->declArray(c+147,"bus_sniff_bundle_i", false,-1, 1039,0);
        tracep->declBus(c+180,"bus_sniffer FRAME_WIDTH", false,-1, 31,0);
        tracep->declBus(c+181,"bus_sniffer FIFO_DEPTH", false,-1, 31,0);
        tracep->declBit(c+144,"bus_sniffer clk_i", false,-1);
        tracep->declBit(c+145,"bus_sniffer rst_ni", false,-1);
        tracep->declBit(c+146,"bus_sniffer sniffer_tdo_o", false,-1);
        tracep->declArray(c+147,"bus_sniffer bus_sniff_bundle_i", false,-1, 1039,0);
        tracep->declBus(c+1,"bus_sniffer timestamp_q", false,-1, 31,0);
        tracep->declArray(c+2,"bus_sniffer fifo_mem(0)", false,-1, 127,0);
        tracep->declArray(c+6,"bus_sniffer fifo_mem(1)", false,-1, 127,0);
        tracep->declArray(c+10,"bus_sniffer fifo_mem(2)", false,-1, 127,0);
        tracep->declArray(c+14,"bus_sniffer fifo_mem(3)", false,-1, 127,0);
        tracep->declArray(c+18,"bus_sniffer fifo_mem(4)", false,-1, 127,0);
        tracep->declArray(c+22,"bus_sniffer fifo_mem(5)", false,-1, 127,0);
        tracep->declArray(c+26,"bus_sniffer fifo_mem(6)", false,-1, 127,0);
        tracep->declArray(c+30,"bus_sniffer fifo_mem(7)", false,-1, 127,0);
        tracep->declArray(c+34,"bus_sniffer fifo_mem(8)", false,-1, 127,0);
        tracep->declArray(c+38,"bus_sniffer fifo_mem(9)", false,-1, 127,0);
        tracep->declArray(c+42,"bus_sniffer fifo_mem(10)", false,-1, 127,0);
        tracep->declArray(c+46,"bus_sniffer fifo_mem(11)", false,-1, 127,0);
        tracep->declArray(c+50,"bus_sniffer fifo_mem(12)", false,-1, 127,0);
        tracep->declArray(c+54,"bus_sniffer fifo_mem(13)", false,-1, 127,0);
        tracep->declArray(c+58,"bus_sniffer fifo_mem(14)", false,-1, 127,0);
        tracep->declArray(c+62,"bus_sniffer fifo_mem(15)", false,-1, 127,0);
        tracep->declArray(c+66,"bus_sniffer fifo_mem(16)", false,-1, 127,0);
        tracep->declArray(c+70,"bus_sniffer fifo_mem(17)", false,-1, 127,0);
        tracep->declArray(c+74,"bus_sniffer fifo_mem(18)", false,-1, 127,0);
        tracep->declArray(c+78,"bus_sniffer fifo_mem(19)", false,-1, 127,0);
        tracep->declArray(c+82,"bus_sniffer fifo_mem(20)", false,-1, 127,0);
        tracep->declArray(c+86,"bus_sniffer fifo_mem(21)", false,-1, 127,0);
        tracep->declArray(c+90,"bus_sniffer fifo_mem(22)", false,-1, 127,0);
        tracep->declArray(c+94,"bus_sniffer fifo_mem(23)", false,-1, 127,0);
        tracep->declArray(c+98,"bus_sniffer fifo_mem(24)", false,-1, 127,0);
        tracep->declArray(c+102,"bus_sniffer fifo_mem(25)", false,-1, 127,0);
        tracep->declArray(c+106,"bus_sniffer fifo_mem(26)", false,-1, 127,0);
        tracep->declArray(c+110,"bus_sniffer fifo_mem(27)", false,-1, 127,0);
        tracep->declArray(c+114,"bus_sniffer fifo_mem(28)", false,-1, 127,0);
        tracep->declArray(c+118,"bus_sniffer fifo_mem(29)", false,-1, 127,0);
        tracep->declArray(c+122,"bus_sniffer fifo_mem(30)", false,-1, 127,0);
        tracep->declArray(c+126,"bus_sniffer fifo_mem(31)", false,-1, 127,0);
        tracep->declBus(c+130,"bus_sniffer wr_ptr", false,-1, 4,0);
        tracep->declBus(c+131,"bus_sniffer rd_ptr", false,-1, 4,0);
        tracep->declBus(c+132,"bus_sniffer used_count", false,-1, 31,0);
        tracep->declBus(c+182,"bus_sniffer SOURCE_CORE_INSTR_REQ", false,-1, 7,0);
        tracep->declBus(c+183,"bus_sniffer SOURCE_CORE_INSTR_RESP", false,-1, 7,0);
        tracep->declBus(c+184,"bus_sniffer SOURCE_CORE_DATA_REQ", false,-1, 7,0);
        tracep->declBus(c+185,"bus_sniffer SOURCE_CORE_DATA_RESP", false,-1, 7,0);
        tracep->declBus(c+186,"bus_sniffer SOURCE_DMA_READ_REQ", false,-1, 7,0);
        tracep->declBus(c+187,"bus_sniffer SOURCE_DMA_READ_RESP", false,-1, 7,0);
        tracep->declBus(c+188,"bus_sniffer SOURCE_DMA_WRITE_REQ", false,-1, 7,0);
        tracep->declBus(c+189,"bus_sniffer SOURCE_DMA_WRITE_RESP", false,-1, 7,0);
        tracep->declBus(c+190,"bus_sniffer SOURCE_DMA_ADDR_REQ", false,-1, 7,0);
        tracep->declBus(c+191,"bus_sniffer SOURCE_DMA_ADDR_RESP", false,-1, 7,0);
        tracep->declBus(c+192,"bus_sniffer SOURCE_AO_PERIPH_REQ", false,-1, 7,0);
        tracep->declBus(c+193,"bus_sniffer SOURCE_AO_PERIPH_RESP", false,-1, 7,0);
        tracep->declBus(c+194,"bus_sniffer SOURCE_PERIPH_REQ", false,-1, 7,0);
        tracep->declBus(c+195,"bus_sniffer SOURCE_PERIPH_RESP", false,-1, 7,0);
        tracep->declBus(c+196,"bus_sniffer SOURCE_RAM_REQ_0", false,-1, 7,0);
        tracep->declBus(c+197,"bus_sniffer SOURCE_RAM_RESP_0", false,-1, 7,0);
        tracep->declBus(c+198,"bus_sniffer SOURCE_RAM_REQ_1", false,-1, 7,0);
        tracep->declBus(c+199,"bus_sniffer SOURCE_RAM_RESP_1", false,-1, 7,0);
        tracep->declBus(c+200,"bus_sniffer SOURCE_FLASH_REQ", false,-1, 7,0);
        tracep->declBus(c+201,"bus_sniffer SOURCE_FLASH_RESP", false,-1, 7,0);
        tracep->declBus(c+133,"bus_sniffer shift_count", false,-1, 31,0);
        tracep->declBit(c+134,"bus_sniffer shifting", false,-1);
        tracep->declArray(c+135,"bus_sniffer shift_reg", false,-1, 127,0);
        tracep->declBit(c+139,"bus_sniffer shift_bit", false,-1);
        tracep->declArray(c+140,"bus_sniffer unnamedblk1 out_frame", false,-1, 127,0);
    }
}

void Vbus_sniffer___024root__traceFullTop0(void* voidSelf, VerilatedVcd* tracep) VL_ATTR_COLD;
void Vbus_sniffer___024root__traceChgTop0(void* voidSelf, VerilatedVcd* tracep);
void Vbus_sniffer___024root__traceCleanup(void* voidSelf, VerilatedVcd* /*unused*/);

void Vbus_sniffer___024root__traceRegister(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    {
        tracep->addFullCb(&Vbus_sniffer___024root__traceFullTop0, vlSelf);
        tracep->addChgCb(&Vbus_sniffer___024root__traceChgTop0, vlSelf);
        tracep->addCleanupCb(&Vbus_sniffer___024root__traceCleanup, vlSelf);
    }
}

void Vbus_sniffer___024root__traceFullSub0(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep) VL_ATTR_COLD;

void Vbus_sniffer___024root__traceFullTop0(void* voidSelf, VerilatedVcd* tracep) {
    Vbus_sniffer___024root* const __restrict vlSelf = static_cast<Vbus_sniffer___024root*>(voidSelf);
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    {
        Vbus_sniffer___024root__traceFullSub0((&vlSymsp->TOP), tracep);
    }
}

void Vbus_sniffer___024root__traceFullSub0(Vbus_sniffer___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VlWide<4>/*127:0*/ __Vtemp42;
    VlWide<4>/*127:0*/ __Vtemp43;
    VlWide<4>/*127:0*/ __Vtemp44;
    VlWide<4>/*127:0*/ __Vtemp45;
    VlWide<4>/*127:0*/ __Vtemp46;
    VlWide<4>/*127:0*/ __Vtemp47;
    VlWide<4>/*127:0*/ __Vtemp48;
    VlWide<4>/*127:0*/ __Vtemp49;
    VlWide<4>/*127:0*/ __Vtemp50;
    VlWide<4>/*127:0*/ __Vtemp51;
    VlWide<4>/*127:0*/ __Vtemp52;
    VlWide<4>/*127:0*/ __Vtemp53;
    VlWide<4>/*127:0*/ __Vtemp54;
    VlWide<4>/*127:0*/ __Vtemp55;
    VlWide<4>/*127:0*/ __Vtemp56;
    VlWide<4>/*127:0*/ __Vtemp57;
    VlWide<4>/*127:0*/ __Vtemp58;
    VlWide<4>/*127:0*/ __Vtemp59;
    VlWide<4>/*127:0*/ __Vtemp60;
    VlWide<4>/*127:0*/ __Vtemp61;
    VlWide<4>/*127:0*/ __Vtemp62;
    VlWide<4>/*127:0*/ __Vtemp63;
    VlWide<4>/*127:0*/ __Vtemp64;
    VlWide<4>/*127:0*/ __Vtemp65;
    VlWide<4>/*127:0*/ __Vtemp66;
    VlWide<4>/*127:0*/ __Vtemp67;
    VlWide<4>/*127:0*/ __Vtemp68;
    VlWide<4>/*127:0*/ __Vtemp69;
    VlWide<4>/*127:0*/ __Vtemp70;
    VlWide<4>/*127:0*/ __Vtemp71;
    VlWide<4>/*127:0*/ __Vtemp72;
    VlWide<4>/*127:0*/ __Vtemp73;
    vluint32_t* const oldp = tracep->oldp(vlSymsp->__Vm_baseCode);
    if (false && oldp) {}  // Prevent unused
    // Body
    {
        tracep->fullIData(oldp+1,(vlSelf->bus_sniffer__DOT__timestamp_q),32);
        __Vtemp42[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0U][0U];
        __Vtemp42[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0U][1U];
        __Vtemp42[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0U][2U];
        __Vtemp42[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0U][3U];
        tracep->fullWData(oldp+2,(__Vtemp42),128);
        __Vtemp43[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [1U][0U];
        __Vtemp43[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [1U][1U];
        __Vtemp43[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [1U][2U];
        __Vtemp43[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [1U][3U];
        tracep->fullWData(oldp+6,(__Vtemp43),128);
        __Vtemp44[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [2U][0U];
        __Vtemp44[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [2U][1U];
        __Vtemp44[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [2U][2U];
        __Vtemp44[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [2U][3U];
        tracep->fullWData(oldp+10,(__Vtemp44),128);
        __Vtemp45[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [3U][0U];
        __Vtemp45[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [3U][1U];
        __Vtemp45[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [3U][2U];
        __Vtemp45[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [3U][3U];
        tracep->fullWData(oldp+14,(__Vtemp45),128);
        __Vtemp46[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [4U][0U];
        __Vtemp46[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [4U][1U];
        __Vtemp46[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [4U][2U];
        __Vtemp46[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [4U][3U];
        tracep->fullWData(oldp+18,(__Vtemp46),128);
        __Vtemp47[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [5U][0U];
        __Vtemp47[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [5U][1U];
        __Vtemp47[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [5U][2U];
        __Vtemp47[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [5U][3U];
        tracep->fullWData(oldp+22,(__Vtemp47),128);
        __Vtemp48[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [6U][0U];
        __Vtemp48[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [6U][1U];
        __Vtemp48[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [6U][2U];
        __Vtemp48[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [6U][3U];
        tracep->fullWData(oldp+26,(__Vtemp48),128);
        __Vtemp49[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [7U][0U];
        __Vtemp49[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [7U][1U];
        __Vtemp49[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [7U][2U];
        __Vtemp49[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [7U][3U];
        tracep->fullWData(oldp+30,(__Vtemp49),128);
        __Vtemp50[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [8U][0U];
        __Vtemp50[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [8U][1U];
        __Vtemp50[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [8U][2U];
        __Vtemp50[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [8U][3U];
        tracep->fullWData(oldp+34,(__Vtemp50),128);
        __Vtemp51[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [9U][0U];
        __Vtemp51[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [9U][1U];
        __Vtemp51[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [9U][2U];
        __Vtemp51[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [9U][3U];
        tracep->fullWData(oldp+38,(__Vtemp51),128);
        __Vtemp52[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xaU][0U];
        __Vtemp52[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xaU][1U];
        __Vtemp52[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xaU][2U];
        __Vtemp52[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xaU][3U];
        tracep->fullWData(oldp+42,(__Vtemp52),128);
        __Vtemp53[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xbU][0U];
        __Vtemp53[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xbU][1U];
        __Vtemp53[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xbU][2U];
        __Vtemp53[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xbU][3U];
        tracep->fullWData(oldp+46,(__Vtemp53),128);
        __Vtemp54[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xcU][0U];
        __Vtemp54[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xcU][1U];
        __Vtemp54[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xcU][2U];
        __Vtemp54[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xcU][3U];
        tracep->fullWData(oldp+50,(__Vtemp54),128);
        __Vtemp55[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xdU][0U];
        __Vtemp55[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xdU][1U];
        __Vtemp55[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xdU][2U];
        __Vtemp55[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xdU][3U];
        tracep->fullWData(oldp+54,(__Vtemp55),128);
        __Vtemp56[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xeU][0U];
        __Vtemp56[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xeU][1U];
        __Vtemp56[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xeU][2U];
        __Vtemp56[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xeU][3U];
        tracep->fullWData(oldp+58,(__Vtemp56),128);
        __Vtemp57[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xfU][0U];
        __Vtemp57[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xfU][1U];
        __Vtemp57[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xfU][2U];
        __Vtemp57[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0xfU][3U];
        tracep->fullWData(oldp+62,(__Vtemp57),128);
        __Vtemp58[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x10U][0U];
        __Vtemp58[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x10U][1U];
        __Vtemp58[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x10U][2U];
        __Vtemp58[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x10U][3U];
        tracep->fullWData(oldp+66,(__Vtemp58),128);
        __Vtemp59[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x11U][0U];
        __Vtemp59[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x11U][1U];
        __Vtemp59[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x11U][2U];
        __Vtemp59[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x11U][3U];
        tracep->fullWData(oldp+70,(__Vtemp59),128);
        __Vtemp60[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x12U][0U];
        __Vtemp60[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x12U][1U];
        __Vtemp60[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x12U][2U];
        __Vtemp60[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x12U][3U];
        tracep->fullWData(oldp+74,(__Vtemp60),128);
        __Vtemp61[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x13U][0U];
        __Vtemp61[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x13U][1U];
        __Vtemp61[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x13U][2U];
        __Vtemp61[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x13U][3U];
        tracep->fullWData(oldp+78,(__Vtemp61),128);
        __Vtemp62[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x14U][0U];
        __Vtemp62[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x14U][1U];
        __Vtemp62[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x14U][2U];
        __Vtemp62[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x14U][3U];
        tracep->fullWData(oldp+82,(__Vtemp62),128);
        __Vtemp63[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x15U][0U];
        __Vtemp63[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x15U][1U];
        __Vtemp63[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x15U][2U];
        __Vtemp63[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x15U][3U];
        tracep->fullWData(oldp+86,(__Vtemp63),128);
        __Vtemp64[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x16U][0U];
        __Vtemp64[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x16U][1U];
        __Vtemp64[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x16U][2U];
        __Vtemp64[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x16U][3U];
        tracep->fullWData(oldp+90,(__Vtemp64),128);
        __Vtemp65[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x17U][0U];
        __Vtemp65[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x17U][1U];
        __Vtemp65[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x17U][2U];
        __Vtemp65[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x17U][3U];
        tracep->fullWData(oldp+94,(__Vtemp65),128);
        __Vtemp66[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x18U][0U];
        __Vtemp66[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x18U][1U];
        __Vtemp66[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x18U][2U];
        __Vtemp66[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x18U][3U];
        tracep->fullWData(oldp+98,(__Vtemp66),128);
        __Vtemp67[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x19U][0U];
        __Vtemp67[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x19U][1U];
        __Vtemp67[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x19U][2U];
        __Vtemp67[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x19U][3U];
        tracep->fullWData(oldp+102,(__Vtemp67),128);
        __Vtemp68[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1aU][0U];
        __Vtemp68[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1aU][1U];
        __Vtemp68[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1aU][2U];
        __Vtemp68[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1aU][3U];
        tracep->fullWData(oldp+106,(__Vtemp68),128);
        __Vtemp69[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1bU][0U];
        __Vtemp69[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1bU][1U];
        __Vtemp69[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1bU][2U];
        __Vtemp69[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1bU][3U];
        tracep->fullWData(oldp+110,(__Vtemp69),128);
        __Vtemp70[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1cU][0U];
        __Vtemp70[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1cU][1U];
        __Vtemp70[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1cU][2U];
        __Vtemp70[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1cU][3U];
        tracep->fullWData(oldp+114,(__Vtemp70),128);
        __Vtemp71[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1dU][0U];
        __Vtemp71[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1dU][1U];
        __Vtemp71[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1dU][2U];
        __Vtemp71[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1dU][3U];
        tracep->fullWData(oldp+118,(__Vtemp71),128);
        __Vtemp72[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1eU][0U];
        __Vtemp72[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1eU][1U];
        __Vtemp72[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1eU][2U];
        __Vtemp72[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1eU][3U];
        tracep->fullWData(oldp+122,(__Vtemp72),128);
        __Vtemp73[0U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1fU][0U];
        __Vtemp73[1U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1fU][1U];
        __Vtemp73[2U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1fU][2U];
        __Vtemp73[3U] = vlSelf->bus_sniffer__DOT__fifo_mem
            [0x1fU][3U];
        tracep->fullWData(oldp+126,(__Vtemp73),128);
        tracep->fullCData(oldp+130,(vlSelf->bus_sniffer__DOT__wr_ptr),5);
        tracep->fullCData(oldp+131,(vlSelf->bus_sniffer__DOT__rd_ptr),5);
        tracep->fullIData(oldp+132,(vlSelf->bus_sniffer__DOT__used_count),32);
        tracep->fullIData(oldp+133,(vlSelf->bus_sniffer__DOT__shift_count),32);
        tracep->fullBit(oldp+134,(vlSelf->bus_sniffer__DOT__shifting));
        tracep->fullWData(oldp+135,(vlSelf->bus_sniffer__DOT__shift_reg),128);
        tracep->fullBit(oldp+139,((1U & (vlSelf->bus_sniffer__DOT__shift_reg[
                                         (3U & (vlSelf->bus_sniffer__DOT__shift_count 
                                                >> 5U))] 
                                         >> (0x1fU 
                                             & vlSelf->bus_sniffer__DOT__shift_count)))));
        tracep->fullWData(oldp+140,(vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame),128);
        tracep->fullBit(oldp+144,(vlSelf->clk_i));
        tracep->fullBit(oldp+145,(vlSelf->rst_ni));
        tracep->fullBit(oldp+146,(vlSelf->sniffer_tdo_o));
        tracep->fullWData(oldp+147,(vlSelf->bus_sniff_bundle_i),1040);
        tracep->fullIData(oldp+180,(0x80U),32);
        tracep->fullIData(oldp+181,(0x20U),32);
        tracep->fullCData(oldp+182,(1U),8);
        tracep->fullCData(oldp+183,(2U),8);
        tracep->fullCData(oldp+184,(3U),8);
        tracep->fullCData(oldp+185,(4U),8);
        tracep->fullCData(oldp+186,(5U),8);
        tracep->fullCData(oldp+187,(6U),8);
        tracep->fullCData(oldp+188,(7U),8);
        tracep->fullCData(oldp+189,(8U),8);
        tracep->fullCData(oldp+190,(9U),8);
        tracep->fullCData(oldp+191,(0xaU),8);
        tracep->fullCData(oldp+192,(0xbU),8);
        tracep->fullCData(oldp+193,(0xcU),8);
        tracep->fullCData(oldp+194,(0xdU),8);
        tracep->fullCData(oldp+195,(0xeU),8);
        tracep->fullCData(oldp+196,(0x10U),8);
        tracep->fullCData(oldp+197,(0x11U),8);
        tracep->fullCData(oldp+198,(0x12U),8);
        tracep->fullCData(oldp+199,(0x13U),8);
        tracep->fullCData(oldp+200,(0x14U),8);
        tracep->fullCData(oldp+201,(0x15U),8);
    }
}
