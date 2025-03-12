// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vbus_sniffer.h for the primary calling header

#include "Vbus_sniffer___024root.h"
#include "Vbus_sniffer__Syms.h"

//==========

VL_INLINE_OPT void Vbus_sniffer___024root___sequent__TOP__1(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___sequent__TOP__1\n"); );
    // Variables
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__1__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__1__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__1__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__3__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__3__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__5__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__5__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__5__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__7__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__7__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__9__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__9__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__9__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__11__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__11__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__13__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__13__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__13__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__15__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__15__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__17__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__17__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__17__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__19__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__19__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__21__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__21__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__21__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__23__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__23__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__25__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__25__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__25__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__27__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__27__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__29__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__29__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__29__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__31__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__31__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__33__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__33__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__33__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__35__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__35__gnt_i;
    CData/*3:0*/ __Vfunc_bus_sniffer__DOT__build_frame__37__be_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__37__we_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__37__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__39__valid_i;
    CData/*0:0*/ __Vfunc_bus_sniffer__DOT__build_frame__39__gnt_i;
    CData/*4:0*/ __Vdly__bus_sniffer__DOT__wr_ptr;
    CData/*4:0*/ __Vdly__bus_sniffer__DOT__rd_ptr;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v0;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v0;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v1;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v1;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v2;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v2;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v3;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v3;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v4;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v4;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v5;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v5;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v6;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v6;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v7;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v7;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v8;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v8;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v9;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v9;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v10;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v10;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v11;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v11;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v12;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v12;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v13;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v13;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v14;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v14;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v15;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v15;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v16;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v16;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v17;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v17;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v18;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v18;
    CData/*4:0*/ __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v19;
    CData/*0:0*/ __Vdlyvset__bus_sniffer__DOT__fifo_mem__v19;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__1__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__1__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__3__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__5__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__5__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__7__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__9__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__9__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__11__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__13__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__13__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__15__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__17__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__17__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__19__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__21__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__21__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__23__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__25__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__25__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__27__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__29__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__29__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__31__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__33__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__33__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__35__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__37__addr_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__37__data_i;
    IData/*31:0*/ __Vfunc_bus_sniffer__DOT__build_frame__39__data_i;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits;
    IData/*31:0*/ __Vdly__bus_sniffer__DOT__timestamp_q;
    IData/*31:0*/ __Vdly__bus_sniffer__DOT__used_count;
    IData/*31:0*/ __Vdly__bus_sniffer__DOT__shift_count;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__0__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__1__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__2__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__3__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__4__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__5__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__6__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__7__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__8__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__9__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__10__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__11__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__12__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__13__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__14__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__15__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__16__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__17__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__18__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__19__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__20__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__21__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__22__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__23__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__24__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__25__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__26__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__27__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__28__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__29__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__30__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__31__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__32__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__33__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__34__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__35__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__36__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__37__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__push_frame__38__frame_in;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__build_frame__39__f;
    VlWide<4>/*127:0*/ __Vtask_bus_sniffer__DOT__pop_frame__40__out;
    VlWide<4>/*127:0*/ __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18;
    VlWide<4>/*127:0*/ __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19;
    // Body
    __Vdly__bus_sniffer__DOT__timestamp_q = vlSelf->bus_sniffer__DOT__timestamp_q;
    __Vdly__bus_sniffer__DOT__shift_count = vlSelf->bus_sniffer__DOT__shift_count;
    __Vdly__bus_sniffer__DOT__rd_ptr = vlSelf->bus_sniffer__DOT__rd_ptr;
    __Vdly__bus_sniffer__DOT__wr_ptr = vlSelf->bus_sniffer__DOT__wr_ptr;
    __Vdly__bus_sniffer__DOT__used_count = vlSelf->bus_sniffer__DOT__used_count;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v1 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v3 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v5 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v7 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v9 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v11 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v13 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v15 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v17 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v19 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v0 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v2 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v4 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v6 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v8 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v10 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v12 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v14 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v16 = 0U;
    __Vdlyvset__bus_sniffer__DOT__fifo_mem__v18 = 0U;
    __Vdly__bus_sniffer__DOT__timestamp_q = ((IData)(vlSelf->rst_ni)
                                              ? ((IData)(1U) 
                                                 + vlSelf->bus_sniffer__DOT__timestamp_q)
                                              : 0U);
    if ((1U & (~ (IData)(vlSelf->rst_ni)))) {
        __Vdly__bus_sniffer__DOT__rd_ptr = 0U;
    }
    if ((1U & (~ (IData)(vlSelf->rst_ni)))) {
        __Vdly__bus_sniffer__DOT__wr_ptr = 0U;
    }
    if ((1U & (~ (IData)(vlSelf->rst_ni)))) {
        __Vdly__bus_sniffer__DOT__used_count = 0U;
    }
    if (vlSelf->rst_ni) {
        if (vlSelf->bus_sniffer__DOT__shifting) {
            __Vdly__bus_sniffer__DOT__shift_count = 
                ((IData)(1U) + vlSelf->bus_sniffer__DOT__shift_count);
            if ((0x7fU == vlSelf->bus_sniffer__DOT__shift_count)) {
                vlSelf->bus_sniffer__DOT__shifting = 0U;
            }
        } else if (VL_LTS_III(1,32,32, 0U, vlSelf->bus_sniffer__DOT__used_count)) {
            __Vtask_bus_sniffer__DOT__pop_frame__40__out[0U] 
                = vlSelf->bus_sniffer__DOT__fifo_mem
                [vlSelf->bus_sniffer__DOT__rd_ptr][0U];
            __Vtask_bus_sniffer__DOT__pop_frame__40__out[1U] 
                = vlSelf->bus_sniffer__DOT__fifo_mem
                [vlSelf->bus_sniffer__DOT__rd_ptr][1U];
            __Vtask_bus_sniffer__DOT__pop_frame__40__out[2U] 
                = vlSelf->bus_sniffer__DOT__fifo_mem
                [vlSelf->bus_sniffer__DOT__rd_ptr][2U];
            __Vtask_bus_sniffer__DOT__pop_frame__40__out[3U] 
                = vlSelf->bus_sniffer__DOT__fifo_mem
                [vlSelf->bus_sniffer__DOT__rd_ptr][3U];
            __Vdly__bus_sniffer__DOT__used_count = 
                (vlSelf->bus_sniffer__DOT__used_count 
                 - (IData)(1U));
            __Vdly__bus_sniffer__DOT__shift_count = 0U;
            vlSelf->bus_sniffer__DOT__shifting = 1U;
            __Vdly__bus_sniffer__DOT__rd_ptr = (0x1fU 
                                                & ((IData)(1U) 
                                                   + (IData)(vlSelf->bus_sniffer__DOT__rd_ptr)));
            vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame[0U] 
                = __Vtask_bus_sniffer__DOT__pop_frame__40__out[0U];
            vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame[1U] 
                = __Vtask_bus_sniffer__DOT__pop_frame__40__out[1U];
            vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame[2U] 
                = __Vtask_bus_sniffer__DOT__pop_frame__40__out[2U];
            vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame[3U] 
                = __Vtask_bus_sniffer__DOT__pop_frame__40__out[3U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f[0U] 
                = vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame[0U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f[1U] 
                = vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame[1U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f[2U] 
                = vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame[2U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f[3U] 
                = vlSelf->bus_sniffer__DOT__unnamedblk1__DOT__out_frame[3U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits[0U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f[0U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits[1U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f[1U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits[2U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f[2U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits[3U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__f[3U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits[0U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits[1U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits[2U];
            __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__bits[3U];
            vlSelf->bus_sniffer__DOT__shift_reg[0U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout[0U];
            vlSelf->bus_sniffer__DOT__shift_reg[1U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout[1U];
            vlSelf->bus_sniffer__DOT__shift_reg[2U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout[2U];
            vlSelf->bus_sniffer__DOT__shift_reg[3U] 
                = __Vfunc_bus_sniffer__DOT__frame_to_bits__41__Vfuncout[3U];
        }
    } else {
        __Vdly__bus_sniffer__DOT__shift_count = 0U;
        vlSelf->bus_sniffer__DOT__shifting = 0U;
        vlSelf->bus_sniffer__DOT__shift_reg[0U] = 0U;
        vlSelf->bus_sniffer__DOT__shift_reg[1U] = 0U;
        vlSelf->bus_sniffer__DOT__shift_reg[2U] = 0U;
        vlSelf->bus_sniffer__DOT__shift_reg[3U] = 0U;
    }
    if (vlSelf->rst_ni) {
        if ((0x100U & vlSelf->bus_sniff_bundle_i[0x1eU])) {
            __Vfunc_bus_sniffer__DOT__build_frame__3__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x1eU] 
                         >> 9U));
            __Vfunc_bus_sniffer__DOT__build_frame__3__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x1eU] 
                         >> 8U));
            __Vfunc_bus_sniffer__DOT__build_frame__3__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x1eU] 
                    << 0x18U) | (vlSelf->bus_sniff_bundle_i[0x1dU] 
                                 >> 8U));
            __Vfunc_bus_sniffer__DOT__build_frame__3__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__3__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__3__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__3__f[3U] 
                = (0x2000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__3__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__3__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__3__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__3__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__3__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__3__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__3__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__3__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__3__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__3__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__3__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__3__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__3__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__2__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__2__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__2__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__2__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__3__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__2__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__2__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__2__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__2__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v1 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v1 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((1U & vlSelf->bus_sniff_bundle_i[0x1bU])) {
            __Vfunc_bus_sniffer__DOT__build_frame__7__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x1bU] 
                         >> 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__7__valid_i 
                = (1U & vlSelf->bus_sniff_bundle_i[0x1bU]);
            __Vfunc_bus_sniffer__DOT__build_frame__7__data_i 
                = vlSelf->bus_sniff_bundle_i[0x1aU];
            __Vfunc_bus_sniffer__DOT__build_frame__7__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__7__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__7__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__7__f[3U] 
                = (0x4000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__7__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__7__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__7__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__7__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__7__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__7__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__7__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__7__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__7__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__7__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__7__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__7__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__7__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__6__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__6__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__6__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__6__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__7__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__6__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__6__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__6__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__6__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v3 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v3 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x1000000U & vlSelf->bus_sniff_bundle_i[0x17U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__11__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x17U] 
                         >> 0x19U));
            __Vfunc_bus_sniffer__DOT__build_frame__11__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x17U] 
                         >> 0x18U));
            __Vfunc_bus_sniffer__DOT__build_frame__11__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x17U] 
                    << 8U) | (vlSelf->bus_sniff_bundle_i[0x16U] 
                              >> 0x18U));
            __Vfunc_bus_sniffer__DOT__build_frame__11__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__11__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__11__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__11__f[3U] 
                = (0x6000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__11__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__11__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__11__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__11__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__11__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__11__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__11__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__11__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__11__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__11__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__11__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__11__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__11__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__10__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__10__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__10__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__10__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__11__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__10__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__10__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__10__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__10__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v5 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v5 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x10000U & vlSelf->bus_sniff_bundle_i[0x14U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__15__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x14U] 
                         >> 0x11U));
            __Vfunc_bus_sniffer__DOT__build_frame__15__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x14U] 
                         >> 0x10U));
            __Vfunc_bus_sniffer__DOT__build_frame__15__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x14U] 
                    << 0x10U) | (vlSelf->bus_sniff_bundle_i[0x13U] 
                                 >> 0x10U));
            __Vfunc_bus_sniffer__DOT__build_frame__15__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__15__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__15__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__15__f[3U] 
                = (0x8000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__15__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__15__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__15__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__15__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__15__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__15__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__15__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__15__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__15__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__15__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__15__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__15__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__15__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__14__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__14__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__14__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__14__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__15__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__14__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__14__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__14__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__14__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v7 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v7 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x100U & vlSelf->bus_sniff_bundle_i[0x11U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__19__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x11U] 
                         >> 9U));
            __Vfunc_bus_sniffer__DOT__build_frame__19__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x11U] 
                         >> 8U));
            __Vfunc_bus_sniffer__DOT__build_frame__19__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x11U] 
                    << 0x18U) | (vlSelf->bus_sniff_bundle_i[0x10U] 
                                 >> 8U));
            __Vfunc_bus_sniffer__DOT__build_frame__19__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__19__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__19__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__19__f[3U] 
                = (0xa000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__19__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__19__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__19__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__19__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__19__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__19__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__19__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__19__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__19__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__19__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__19__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__19__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__19__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__18__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__18__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__18__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__18__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__19__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__18__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__18__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__18__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__18__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v9 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v9 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((1U & vlSelf->bus_sniff_bundle_i[0xeU])) {
            __Vfunc_bus_sniffer__DOT__build_frame__23__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0xeU] 
                         >> 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__23__valid_i 
                = (1U & vlSelf->bus_sniff_bundle_i[0xeU]);
            __Vfunc_bus_sniffer__DOT__build_frame__23__data_i 
                = vlSelf->bus_sniff_bundle_i[0xdU];
            __Vfunc_bus_sniffer__DOT__build_frame__23__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__23__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__23__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__23__f[3U] 
                = (0xc000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__23__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__23__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__23__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__23__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__23__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__23__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__23__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__23__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__23__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__23__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__23__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__23__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__23__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__22__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__22__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__22__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__22__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__23__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__22__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__22__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__22__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__22__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v11 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v11 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x1000000U & vlSelf->bus_sniff_bundle_i[0xaU])) {
            __Vfunc_bus_sniffer__DOT__build_frame__27__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0xaU] 
                         >> 0x19U));
            __Vfunc_bus_sniffer__DOT__build_frame__27__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0xaU] 
                         >> 0x18U));
            __Vfunc_bus_sniffer__DOT__build_frame__27__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0xaU] 
                    << 8U) | (vlSelf->bus_sniff_bundle_i[9U] 
                              >> 0x18U));
            __Vfunc_bus_sniffer__DOT__build_frame__27__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__27__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__27__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__27__f[3U] 
                = (0xe000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__27__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__27__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__27__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__27__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__27__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__27__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__27__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__27__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__27__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__27__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__27__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__27__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__27__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__26__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__26__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__26__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__26__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__27__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__26__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__26__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__26__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__26__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v13 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v13 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x100U & vlSelf->bus_sniff_bundle_i[4U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__31__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[4U] 
                         >> 9U));
            __Vfunc_bus_sniffer__DOT__build_frame__31__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[4U] 
                         >> 8U));
            __Vfunc_bus_sniffer__DOT__build_frame__31__data_i 
                = ((vlSelf->bus_sniff_bundle_i[4U] 
                    << 0x18U) | (vlSelf->bus_sniff_bundle_i[3U] 
                                 >> 8U));
            __Vfunc_bus_sniffer__DOT__build_frame__31__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__31__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__31__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__31__f[3U] 
                = (0x11000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                   >> 0x19U) | ((IData)(
                                                        ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                         >> 0x20U)) 
                                                << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__31__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__31__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__31__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__31__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__31__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__31__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__31__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__31__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__31__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__31__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__31__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__31__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__31__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__30__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__30__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__30__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__30__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__31__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__30__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__30__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__30__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__30__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v15 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v15 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x400U & vlSelf->bus_sniff_bundle_i[5U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__35__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[5U] 
                         >> 0xbU));
            __Vfunc_bus_sniffer__DOT__build_frame__35__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[5U] 
                         >> 0xaU));
            __Vfunc_bus_sniffer__DOT__build_frame__35__data_i 
                = ((vlSelf->bus_sniff_bundle_i[5U] 
                    << 0x16U) | (vlSelf->bus_sniff_bundle_i[4U] 
                                 >> 0xaU));
            __Vfunc_bus_sniffer__DOT__build_frame__35__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__35__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__35__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__35__f[3U] 
                = (0x13000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                   >> 0x19U) | ((IData)(
                                                        ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                         >> 0x20U)) 
                                                << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__35__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__35__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__35__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__35__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__35__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__35__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__35__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__35__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__35__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__35__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__35__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__35__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__35__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__34__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__34__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__34__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__34__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__35__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__34__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__34__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__34__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__34__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v17 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v17 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((1U & vlSelf->bus_sniff_bundle_i[1U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__39__gnt_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[1U] 
                         >> 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__39__valid_i 
                = (1U & vlSelf->bus_sniff_bundle_i[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__39__data_i 
                = vlSelf->bus_sniff_bundle_i[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__39__f[1U] 
                = (0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__39__f[1U]);
            __Vfunc_bus_sniffer__DOT__build_frame__39__f[2U] 
                = ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                   << 7U);
            __Vfunc_bus_sniffer__DOT__build_frame__39__f[3U] 
                = (0x15000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                   >> 0x19U) | ((IData)(
                                                        ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                         >> 0x20U)) 
                                                << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__39__f[0U] 
                = (IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__39__data_i)) 
                            << 7U) | (QData)((IData)(
                                                     (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__39__valid_i) 
                                                       << 1U) 
                                                      | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__39__gnt_i))))));
            __Vfunc_bus_sniffer__DOT__build_frame__39__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__39__f[1U]) 
                   | (IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__39__data_i)) 
                                << 7U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__39__valid_i) 
                                                           << 1U) 
                                                          | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__39__gnt_i))))) 
                              >> 0x20U)));
            __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__39__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__39__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__39__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__39__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__38__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__38__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__38__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__38__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__39__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__38__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__38__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__38__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__38__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v19 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v19 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x8000U & vlSelf->bus_sniff_bundle_i[0x20U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__1__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x20U] 
                         >> 0xfU));
            __Vfunc_bus_sniffer__DOT__build_frame__1__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x20U] 
                         >> 0xeU));
            __Vfunc_bus_sniffer__DOT__build_frame__1__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[0x20U] 
                           >> 0xaU));
            __Vfunc_bus_sniffer__DOT__build_frame__1__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x1fU] 
                    << 0x16U) | (vlSelf->bus_sniff_bundle_i[0x1eU] 
                                 >> 0xaU));
            __Vfunc_bus_sniffer__DOT__build_frame__1__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[0x20U] 
                    << 0x16U) | (vlSelf->bus_sniff_bundle_i[0x1fU] 
                                 >> 0xaU));
            __Vfunc_bus_sniffer__DOT__build_frame__1__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__1__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__1__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__1__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__1__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__1__f[3U] 
                = (0x1000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__1__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__1__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__1__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__1__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__1__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__1__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__1__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__1__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__1__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__1__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__1__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__0__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__0__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__0__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__0__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__1__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__0__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__0__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__0__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__0__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v0 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v0 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x80U & vlSelf->bus_sniff_bundle_i[0x1dU])) {
            __Vfunc_bus_sniffer__DOT__build_frame__5__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x1dU] 
                         >> 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__5__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x1dU] 
                         >> 6U));
            __Vfunc_bus_sniffer__DOT__build_frame__5__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[0x1dU] 
                           >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__5__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x1cU] 
                    << 0x1eU) | (vlSelf->bus_sniff_bundle_i[0x1bU] 
                                 >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__5__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[0x1dU] 
                    << 0x1eU) | (vlSelf->bus_sniff_bundle_i[0x1cU] 
                                 >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__5__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__5__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__5__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__5__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__5__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__5__f[3U] 
                = (0x3000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__5__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__5__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__5__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__5__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__5__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__5__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__5__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__5__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__5__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__5__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__5__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__4__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__4__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__4__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__4__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__5__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__4__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__4__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__4__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__4__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v2 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v2 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((vlSelf->bus_sniff_bundle_i[0x19U] >> 0x1fU)) {
            __Vfunc_bus_sniffer__DOT__build_frame__9__valid_i 
                = (vlSelf->bus_sniff_bundle_i[0x19U] 
                   >> 0x1fU);
            __Vfunc_bus_sniffer__DOT__build_frame__9__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x19U] 
                         >> 0x1eU));
            __Vfunc_bus_sniffer__DOT__build_frame__9__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[0x19U] 
                           >> 0x1aU));
            __Vfunc_bus_sniffer__DOT__build_frame__9__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x18U] 
                    << 6U) | (vlSelf->bus_sniff_bundle_i[0x17U] 
                              >> 0x1aU));
            __Vfunc_bus_sniffer__DOT__build_frame__9__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[0x19U] 
                    << 6U) | (vlSelf->bus_sniff_bundle_i[0x18U] 
                              >> 0x1aU));
            __Vfunc_bus_sniffer__DOT__build_frame__9__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__9__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__9__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__9__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__9__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__9__f[3U] 
                = (0x5000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__9__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__9__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__9__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__9__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__9__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__9__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__9__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__9__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__9__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__9__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__9__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__8__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__8__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__8__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__8__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__9__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__8__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__8__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__8__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__8__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v4 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v4 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x800000U & vlSelf->bus_sniff_bundle_i[0x16U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__13__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x16U] 
                         >> 0x17U));
            __Vfunc_bus_sniffer__DOT__build_frame__13__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x16U] 
                         >> 0x16U));
            __Vfunc_bus_sniffer__DOT__build_frame__13__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[0x16U] 
                           >> 0x12U));
            __Vfunc_bus_sniffer__DOT__build_frame__13__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x15U] 
                    << 0xeU) | (vlSelf->bus_sniff_bundle_i[0x14U] 
                                >> 0x12U));
            __Vfunc_bus_sniffer__DOT__build_frame__13__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[0x16U] 
                    << 0xeU) | (vlSelf->bus_sniff_bundle_i[0x15U] 
                                >> 0x12U));
            __Vfunc_bus_sniffer__DOT__build_frame__13__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__13__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__13__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__13__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__13__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__13__f[3U] 
                = (0x7000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__13__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__13__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__13__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__13__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__13__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__13__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__13__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__13__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__13__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__13__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__13__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__12__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__12__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__12__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__12__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__13__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__12__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__12__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__12__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__12__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v6 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v6 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x8000U & vlSelf->bus_sniff_bundle_i[0x13U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__17__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x13U] 
                         >> 0xfU));
            __Vfunc_bus_sniffer__DOT__build_frame__17__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x13U] 
                         >> 0xeU));
            __Vfunc_bus_sniffer__DOT__build_frame__17__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[0x13U] 
                           >> 0xaU));
            __Vfunc_bus_sniffer__DOT__build_frame__17__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0x12U] 
                    << 0x16U) | (vlSelf->bus_sniff_bundle_i[0x11U] 
                                 >> 0xaU));
            __Vfunc_bus_sniffer__DOT__build_frame__17__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[0x13U] 
                    << 0x16U) | (vlSelf->bus_sniff_bundle_i[0x12U] 
                                 >> 0xaU));
            __Vfunc_bus_sniffer__DOT__build_frame__17__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__17__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__17__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__17__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__17__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__17__f[3U] 
                = (0x9000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__17__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__17__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__17__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__17__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__17__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__17__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__17__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__17__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__17__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__17__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__17__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__16__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__16__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__16__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__16__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__17__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__16__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__16__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__16__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__16__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v8 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v8 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x80U & vlSelf->bus_sniff_bundle_i[0x10U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__21__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x10U] 
                         >> 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__21__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0x10U] 
                         >> 6U));
            __Vfunc_bus_sniffer__DOT__build_frame__21__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[0x10U] 
                           >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__21__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0xfU] 
                    << 0x1eU) | (vlSelf->bus_sniff_bundle_i[0xeU] 
                                 >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__21__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[0x10U] 
                    << 0x1eU) | (vlSelf->bus_sniff_bundle_i[0xfU] 
                                 >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__21__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__21__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__21__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__21__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__21__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__21__f[3U] 
                = (0xb000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__21__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__21__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__21__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__21__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__21__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__21__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__21__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__21__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__21__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__21__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__21__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__20__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__20__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__20__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__20__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__21__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__20__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__20__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__20__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__20__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v10 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v10 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((vlSelf->bus_sniff_bundle_i[0xcU] >> 0x1fU)) {
            __Vfunc_bus_sniffer__DOT__build_frame__25__valid_i 
                = (vlSelf->bus_sniff_bundle_i[0xcU] 
                   >> 0x1fU);
            __Vfunc_bus_sniffer__DOT__build_frame__25__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[0xcU] 
                         >> 0x1eU));
            __Vfunc_bus_sniffer__DOT__build_frame__25__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[0xcU] 
                           >> 0x1aU));
            __Vfunc_bus_sniffer__DOT__build_frame__25__data_i 
                = ((vlSelf->bus_sniff_bundle_i[0xbU] 
                    << 6U) | (vlSelf->bus_sniff_bundle_i[0xaU] 
                              >> 0x1aU));
            __Vfunc_bus_sniffer__DOT__build_frame__25__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[0xcU] 
                    << 6U) | (vlSelf->bus_sniff_bundle_i[0xbU] 
                              >> 0x1aU));
            __Vfunc_bus_sniffer__DOT__build_frame__25__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__25__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__25__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__25__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__25__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__25__f[3U] 
                = (0xd000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                  >> 0x19U) | ((IData)(
                                                       ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                        >> 0x20U)) 
                                               << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__25__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__25__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__25__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__25__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__25__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__25__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__25__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__25__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__25__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__25__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__25__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__24__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__24__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__24__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__24__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__25__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__24__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__24__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__24__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__24__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v12 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v12 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x20000U & vlSelf->bus_sniff_bundle_i[7U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__29__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[7U] 
                         >> 0x11U));
            __Vfunc_bus_sniffer__DOT__build_frame__29__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[7U] 
                         >> 0x10U));
            __Vfunc_bus_sniffer__DOT__build_frame__29__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[7U] 
                           >> 0xcU));
            __Vfunc_bus_sniffer__DOT__build_frame__29__data_i 
                = ((vlSelf->bus_sniff_bundle_i[6U] 
                    << 0x14U) | (vlSelf->bus_sniff_bundle_i[5U] 
                                 >> 0xcU));
            __Vfunc_bus_sniffer__DOT__build_frame__29__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[7U] 
                    << 0x14U) | (vlSelf->bus_sniff_bundle_i[6U] 
                                 >> 0xcU));
            __Vfunc_bus_sniffer__DOT__build_frame__29__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__29__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__29__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__29__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__29__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__29__f[3U] 
                = (0x10000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                   >> 0x19U) | ((IData)(
                                                        ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                         >> 0x20U)) 
                                                << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__29__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__29__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__29__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__29__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__29__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__29__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__29__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__29__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__29__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__29__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__29__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__28__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__28__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__28__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__28__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__29__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__28__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__28__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__28__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__28__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v14 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v14 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x800000U & vlSelf->bus_sniff_bundle_i[9U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__33__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[9U] 
                         >> 0x17U));
            __Vfunc_bus_sniffer__DOT__build_frame__33__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[9U] 
                         >> 0x16U));
            __Vfunc_bus_sniffer__DOT__build_frame__33__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[9U] 
                           >> 0x12U));
            __Vfunc_bus_sniffer__DOT__build_frame__33__data_i 
                = ((vlSelf->bus_sniff_bundle_i[8U] 
                    << 0xeU) | (vlSelf->bus_sniff_bundle_i[7U] 
                                >> 0x12U));
            __Vfunc_bus_sniffer__DOT__build_frame__33__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[9U] 
                    << 0xeU) | (vlSelf->bus_sniff_bundle_i[8U] 
                                >> 0x12U));
            __Vfunc_bus_sniffer__DOT__build_frame__33__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__33__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__33__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__33__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__33__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__33__f[3U] 
                = (0x12000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                   >> 0x19U) | ((IData)(
                                                        ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                         >> 0x20U)) 
                                                << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__33__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__33__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__33__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__33__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__33__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__33__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__33__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__33__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__33__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__33__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__33__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__32__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__32__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__32__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__32__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__33__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__32__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__32__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__32__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__32__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v16 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v16 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    if (vlSelf->rst_ni) {
        if ((0x80U & vlSelf->bus_sniff_bundle_i[3U])) {
            __Vfunc_bus_sniffer__DOT__build_frame__37__valid_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[3U] 
                         >> 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__37__we_i 
                = (1U & (vlSelf->bus_sniff_bundle_i[3U] 
                         >> 6U));
            __Vfunc_bus_sniffer__DOT__build_frame__37__be_i 
                = (0xfU & (vlSelf->bus_sniff_bundle_i[3U] 
                           >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__37__data_i 
                = ((vlSelf->bus_sniff_bundle_i[2U] 
                    << 0x1eU) | (vlSelf->bus_sniff_bundle_i[1U] 
                                 >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__37__addr_i 
                = ((vlSelf->bus_sniff_bundle_i[3U] 
                    << 0x1eU) | (vlSelf->bus_sniff_bundle_i[2U] 
                                 >> 2U));
            __Vfunc_bus_sniffer__DOT__build_frame__37__f[1U] 
                = ((0x7fU & __Vfunc_bus_sniffer__DOT__build_frame__37__f[1U]) 
                   | (__Vfunc_bus_sniffer__DOT__build_frame__37__addr_i 
                      << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__37__f[2U] 
                = ((__Vfunc_bus_sniffer__DOT__build_frame__37__addr_i 
                    >> 0x19U) | ((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                 << 7U));
            __Vfunc_bus_sniffer__DOT__build_frame__37__f[3U] 
                = (0x14000000U | (((IData)((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q))) 
                                   >> 0x19U) | ((IData)(
                                                        ((QData)((IData)(vlSelf->bus_sniffer__DOT__timestamp_q)) 
                                                         >> 0x20U)) 
                                                << 7U)));
            __Vfunc_bus_sniffer__DOT__build_frame__37__f[0U] 
                = ((1U & __Vfunc_bus_sniffer__DOT__build_frame__37__f[0U]) 
                   | ((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__data_i)) 
                                << 6U) | (QData)((IData)(
                                                         (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__be_i) 
                                                           << 2U) 
                                                          | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__we_i) 
                                                              << 1U) 
                                                             | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__valid_i))))))) 
                      << 1U));
            __Vfunc_bus_sniffer__DOT__build_frame__37__f[1U] 
                = ((0xffffff80U & __Vfunc_bus_sniffer__DOT__build_frame__37__f[1U]) 
                   | (((IData)((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__data_i)) 
                                 << 6U) | (QData)((IData)(
                                                          (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__be_i) 
                                                            << 2U) 
                                                           | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__we_i) 
                                                               << 1U) 
                                                              | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__valid_i))))))) 
                       >> 0x1fU) | ((IData)(((((QData)((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__data_i)) 
                                               << 6U) 
                                              | (QData)((IData)(
                                                                (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__be_i) 
                                                                  << 2U) 
                                                                 | (((IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__we_i) 
                                                                     << 1U) 
                                                                    | (IData)(__Vfunc_bus_sniffer__DOT__build_frame__37__valid_i)))))) 
                                             >> 0x20U)) 
                                    << 1U)));
            __Vfunc_bus_sniffer__DOT__build_frame__37__f[0U] 
                = (1U | __Vfunc_bus_sniffer__DOT__build_frame__37__f[0U]);
            __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__37__f[0U];
            __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__37__f[1U];
            __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__37__f[2U];
            __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__37__f[3U];
            __Vtask_bus_sniffer__DOT__push_frame__36__frame_in[0U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout[0U];
            __Vtask_bus_sniffer__DOT__push_frame__36__frame_in[1U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout[1U];
            __Vtask_bus_sniffer__DOT__push_frame__36__frame_in[2U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout[2U];
            __Vtask_bus_sniffer__DOT__push_frame__36__frame_in[3U] 
                = __Vfunc_bus_sniffer__DOT__build_frame__37__Vfuncout[3U];
            if (VL_GTS_III(1,32,32, 0x20U, vlSelf->bus_sniffer__DOT__used_count)) {
                __Vdly__bus_sniffer__DOT__used_count 
                    = ((IData)(1U) + vlSelf->bus_sniffer__DOT__used_count);
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18[0U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__36__frame_in[0U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18[1U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__36__frame_in[1U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18[2U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__36__frame_in[2U];
                __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18[3U] 
                    = __Vtask_bus_sniffer__DOT__push_frame__36__frame_in[3U];
                __Vdlyvset__bus_sniffer__DOT__fifo_mem__v18 = 1U;
                __Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v18 
                    = vlSelf->bus_sniffer__DOT__wr_ptr;
                __Vdly__bus_sniffer__DOT__wr_ptr = 
                    (0x1fU & ((IData)(1U) + (IData)(vlSelf->bus_sniffer__DOT__wr_ptr)));
            }
        }
    }
    vlSelf->bus_sniffer__DOT__rd_ptr = __Vdly__bus_sniffer__DOT__rd_ptr;
    vlSelf->bus_sniffer__DOT__shift_count = __Vdly__bus_sniffer__DOT__shift_count;
    vlSelf->bus_sniffer__DOT__timestamp_q = __Vdly__bus_sniffer__DOT__timestamp_q;
    vlSelf->bus_sniffer__DOT__wr_ptr = __Vdly__bus_sniffer__DOT__wr_ptr;
    vlSelf->bus_sniffer__DOT__used_count = __Vdly__bus_sniffer__DOT__used_count;
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v0) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v0][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v0][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v0][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v0][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v0[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v1) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v1][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v1][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v1][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v1][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v1[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v2) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v2][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v2][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v2][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v2][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v2[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v3) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v3][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v3][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v3][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v3][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v3[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v4) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v4][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v4][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v4][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v4][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v4[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v5) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v5][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v5][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v5][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v5][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v5[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v6) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v6][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v6][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v6][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v6][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v6[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v7) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v7][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v7][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v7][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v7][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v7[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v8) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v8][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v8][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v8][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v8][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v8[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v9) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v9][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v9][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v9][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v9][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v9[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v10) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v10][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v10][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v10][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v10][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v10[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v11) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v11][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v11][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v11][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v11][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v11[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v12) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v12][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v12][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v12][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v12][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v12[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v13) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v13][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v13][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v13][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v13][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v13[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v14) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v14][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v14][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v14][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v14][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v14[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v15) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v15][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v15][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v15][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v15][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v15[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v16) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v16][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v16][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v16][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v16][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v16[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v17) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v17][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v17][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v17][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v17][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v17[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v18) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v18][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v18][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v18][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v18][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v18[3U];
    }
    if (__Vdlyvset__bus_sniffer__DOT__fifo_mem__v19) {
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v19][0U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19[0U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v19][1U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19[1U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v19][2U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19[2U];
        vlSelf->bus_sniffer__DOT__fifo_mem[__Vdlyvdim0__bus_sniffer__DOT__fifo_mem__v19][3U] 
            = __Vdlyvval__bus_sniffer__DOT__fifo_mem__v19[3U];
    }
    vlSelf->sniffer_tdo_o = ((IData)(vlSelf->bus_sniffer__DOT__shifting) 
                             & (vlSelf->bus_sniffer__DOT__shift_reg[
                                (3U & (vlSelf->bus_sniffer__DOT__shift_count 
                                       >> 5U))] >> 
                                (0x1fU & vlSelf->bus_sniffer__DOT__shift_count)));
}

void Vbus_sniffer___024root___eval(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___eval\n"); );
    // Body
    if ((((IData)(vlSelf->clk_i) & (~ (IData)(vlSelf->__Vclklast__TOP__clk_i))) 
         | ((~ (IData)(vlSelf->rst_ni)) & (IData)(vlSelf->__Vclklast__TOP__rst_ni)))) {
        Vbus_sniffer___024root___sequent__TOP__1(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
    // Final
    vlSelf->__Vclklast__TOP__clk_i = vlSelf->clk_i;
    vlSelf->__Vclklast__TOP__rst_ni = vlSelf->rst_ni;
}

QData Vbus_sniffer___024root___change_request_1(Vbus_sniffer___024root* vlSelf);

VL_INLINE_OPT QData Vbus_sniffer___024root___change_request(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___change_request\n"); );
    // Body
    return (Vbus_sniffer___024root___change_request_1(vlSelf));
}

VL_INLINE_OPT QData Vbus_sniffer___024root___change_request_1(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___change_request_1\n"); );
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void Vbus_sniffer___024root___eval_debug_assertions(Vbus_sniffer___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vbus_sniffer__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vbus_sniffer___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk_i & 0xfeU))) {
        Verilated::overWidthError("clk_i");}
    if (VL_UNLIKELY((vlSelf->rst_ni & 0xfeU))) {
        Verilated::overWidthError("rst_ni");}
}
#endif  // VL_DEBUG
