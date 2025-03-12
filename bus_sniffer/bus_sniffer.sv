

  // -----------------------------
  // OBI request/response structs
  // -----------------------------
  typedef struct packed {
    logic        req;
    logic        we;
    logic [3:0]  be;
    logic [31:0] addr;
    logic [31:0] wdata;
  } obi_req_t /*verilator public*/;

  typedef struct packed {
    logic        gnt;
    logic        rvalid;
    logic [31:0] rdata;
  } obi_resp_t /*verilator public*/;

  // -----------------------------
  // Bundled signals
  // -----------------------------
  typedef struct packed {
    // Core-related signals
    obi_req_t  core_instr_req;
    obi_resp_t core_instr_resp;
    obi_req_t  core_data_req;
    obi_resp_t core_data_resp;

    // DMA-related signals
    obi_req_t  dma_read_req;
    obi_resp_t dma_read_resp;
    obi_req_t  dma_write_req;
    obi_resp_t dma_write_resp;
    obi_req_t  dma_addr_req;
    obi_resp_t dma_addr_resp;

    // Peripherals
    obi_req_t  ao_peripheral_slave_req;
    obi_resp_t ao_peripheral_slave_resp;
    obi_req_t  peripheral_slave_req;
    obi_resp_t peripheral_slave_resp;

    // RAM signals
    obi_req_t [1:0]  ram_slave_req;
    obi_resp_t [1:0] ram_slave_resp;

    // Memory Map SPI Region
    obi_req_t  flash_mem_slave_req;
    obi_resp_t flash_mem_slave_resp;
  } bus_sniff_bundle_t /*verilator public*/;

  // -----------------------------
  // Sniffer frame struct
  // -----------------------------
  typedef struct packed {
    logic [7:0]  source_id;
    logic [16:0] reserved;     // padding
    logic [31:0] timestamp;
    logic [31:0] address;
    logic [31:0] data;
    logic [3:0]  byte_enable;
    logic        we;
    logic        valid;
    logic        gnt;
  } sniffer_frame_t /*verilator public*/;



module bus_sniffer
#(
    parameter int FRAME_WIDTH = 128,  // total bits to shift out
    parameter int FIFO_DEPTH  = 32    // FIFO entries
) (
    input logic clk_i,
    input logic rst_ni,
    output logic sniffer_tdo_o,  // Output line carrying sniffed data, bit-serialized
    input bus_sniff_bundle_t bus_sniff_bundle_i  // The entire bus signals to be sniffed
);


  //--------------------------------------------------------------------------
  // timestamp
  //--------------------------------------------------------------------------
  logic [31:0] timestamp_q;
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) timestamp_q <= 32'd0;
    else timestamp_q <= timestamp_q + 32'd1;
  end

  //--------------------------------------------------------------------------
  //  Synchronous FIFO for storing frames
  //--------------------------------------------------------------------------
  sniffer_frame_t fifo_mem[FIFO_DEPTH];  // FIFO storage
  logic [$clog2(FIFO_DEPTH)-1:0] wr_ptr, rd_ptr;  // pointers
  // logic [$clog2(FIFO_DEPTH):0]   used_count;             // tracks usage
  int used_count;

  // On reset, clear pointers
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      wr_ptr     <= '0;
      rd_ptr     <= '0;
      used_count <= '0;
    end
  end
  //--------------------------------------------------------------------------
  // Task to push a frame if there's space
  //--------------------------------------------------------------------------
  task automatic push_frame(input sniffer_frame_t frame_in);
    if (used_count < FIFO_DEPTH) begin
      fifo_mem[wr_ptr] <= frame_in;
      wr_ptr           <= wr_ptr + 1'b1;
      used_count       <= used_count + 1'b1;
    end
  endtask

  //--------------------------------------------------------------------------
  // Task to pop a frame (caller must ensure used_count > 0)
  //--------------------------------------------------------------------------
  task automatic pop_frame(output sniffer_frame_t out);
    out = fifo_mem[rd_ptr];
    rd_ptr     <= rd_ptr + 1'b1;
    used_count <= used_count - 1'b1;
  endtask


  //--------------------------------------------------------------------------
  // Helper function to build a sniffer frame
  //--------------------------------------------------------------------------
  function sniffer_frame_t build_frame(input logic [7:0] source_id_i, input logic [31:0] addr_i,
                                       input logic [31:0] data_i, input logic [3:0] be_i,
                                       input logic we_i, input logic valid_i, input logic gnt_i);
    sniffer_frame_t f;
    f.source_id   = source_id_i;
    f.reserved    = 17'd0;  // can be used for padding or future expansion
    f.timestamp   = timestamp_q;
    f.address     = addr_i;
    f.data        = data_i;
    f.byte_enable = be_i;
    f.we          = we_i;
    f.valid       = valid_i;
    f.gnt         = gnt_i;
    return f;
  endfunction

  //--------------------------------------------------------------------------
  // Source IDs for each set of signals
  //--------------------------------------------------------------------------
  localparam logic [7:0] SOURCE_CORE_INSTR_REQ = 8'h01;
  localparam logic [7:0] SOURCE_CORE_INSTR_RESP = 8'h02;
  localparam logic [7:0] SOURCE_CORE_DATA_REQ = 8'h03;
  localparam logic [7:0] SOURCE_CORE_DATA_RESP = 8'h04;
  localparam logic [7:0] SOURCE_DMA_READ_REQ = 8'h05;
  localparam logic [7:0] SOURCE_DMA_READ_RESP = 8'h06;
  localparam logic [7:0] SOURCE_DMA_WRITE_REQ = 8'h07;
  localparam logic [7:0] SOURCE_DMA_WRITE_RESP = 8'h08;
  localparam logic [7:0] SOURCE_DMA_ADDR_REQ = 8'h09;
  localparam logic [7:0] SOURCE_DMA_ADDR_RESP = 8'h0A;
  localparam logic [7:0] SOURCE_AO_PERIPH_REQ = 8'h0B;
  localparam logic [7:0] SOURCE_AO_PERIPH_RESP = 8'h0C;
  localparam logic [7:0] SOURCE_PERIPH_REQ = 8'h0D;
  localparam logic [7:0] SOURCE_PERIPH_RESP = 8'h0E;
  localparam logic [7:0] SOURCE_RAM_REQ_0 = 8'h10;  // Bank0
  localparam logic [7:0] SOURCE_RAM_RESP_0 = 8'h11;  // Bank0
  localparam logic [7:0] SOURCE_RAM_REQ_1 = 8'h12;  // Bank1
  localparam logic [7:0] SOURCE_RAM_RESP_1 = 8'h13;  // Bank1
  localparam logic [7:0] SOURCE_FLASH_REQ = 8'h14;
  localparam logic [7:0] SOURCE_FLASH_RESP = 8'h15;

  //--------------------------------------------------------------------------
  //    Capture logic for each signal in bus_sniff_bundle_i
  //    Whenever (req) for a request, push a frame
  //    For a response, if .rvalid is set, we treat it as captured
  //--------------------------------------------------------------------------

  // Core Instruction Request
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // do nothing
    end else begin
      if (bus_sniff_bundle_i.core_instr_req.req) begin
        push_frame(build_frame(
                   SOURCE_CORE_INSTR_REQ,
                   bus_sniff_bundle_i.core_instr_req.addr,
                   bus_sniff_bundle_i.core_instr_req.wdata,
                   bus_sniff_bundle_i.core_instr_req.be,
                   bus_sniff_bundle_i.core_instr_req.we,
                   bus_sniff_bundle_i.core_instr_req.req,
                   1'b1
                   ));
      end
    end
  end

  // Core Instruction Response
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // do nothing
    end else begin
      if (bus_sniff_bundle_i.core_instr_resp.rvalid) begin
        push_frame(
            build_frame(
            SOURCE_CORE_INSTR_RESP,
            32'd0,  // No address available in response; use default value
            bus_sniff_bundle_i.core_instr_resp.rdata,
            4'h0,  // no byte_enable in response
            1'b0,  // no write enable in response
            bus_sniff_bundle_i.core_instr_resp.rvalid,
            bus_sniff_bundle_i.core_instr_resp.gnt
            ));
      end
    end
  end

  // Core Data Request
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // do nothing
    end else begin
      if (bus_sniff_bundle_i.core_data_req.req) begin
        push_frame(build_frame(
                   SOURCE_CORE_DATA_REQ,
                   bus_sniff_bundle_i.core_data_req.addr,
                   bus_sniff_bundle_i.core_data_req.wdata,
                   bus_sniff_bundle_i.core_data_req.be,
                   bus_sniff_bundle_i.core_data_req.we,
                   bus_sniff_bundle_i.core_data_req.req,
                   1'b1
                   ));
      end
    end
  end

  // Core Data Response
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // do nothing
    end else begin
      if (bus_sniff_bundle_i.core_data_resp.rvalid) begin
        push_frame(
            build_frame(
            SOURCE_CORE_DATA_RESP,
            32'd0,  // No address available in response; use default value
            bus_sniff_bundle_i.core_data_resp.rdata,
            4'h0,
            1'b0,
            bus_sniff_bundle_i.core_data_resp.rvalid,
            bus_sniff_bundle_i.core_data_resp.gnt
            ));
      end
    end
  end

  // DMA Read Request
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // do nothing
    end else begin
      if (bus_sniff_bundle_i.dma_read_req.req) begin
        push_frame(build_frame(
                   SOURCE_DMA_READ_REQ,
                   bus_sniff_bundle_i.dma_read_req.addr,
                   bus_sniff_bundle_i.dma_read_req.wdata,
                   bus_sniff_bundle_i.dma_read_req.be,
                   bus_sniff_bundle_i.dma_read_req.we,
                   bus_sniff_bundle_i.dma_read_req.req,
                   1'b1
                   ));
      end
    end
  end

  // DMA Read Response
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // do nothing
    end else begin
      if (bus_sniff_bundle_i.dma_read_resp.rvalid) begin
        push_frame(build_frame(
                   SOURCE_DMA_READ_RESP,
                   32'b0,
                   bus_sniff_bundle_i.dma_read_resp.rdata,
                   4'h0,
                   1'b0,
                   bus_sniff_bundle_i.dma_read_resp.rvalid,
                   bus_sniff_bundle_i.dma_read_resp.gnt
                   ));
      end
    end
  end

  // DMA Write Request
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // do nothing
    end else begin
      if (bus_sniff_bundle_i.dma_write_req.req) begin
        push_frame(build_frame(
                   SOURCE_DMA_WRITE_REQ,
                   bus_sniff_bundle_i.dma_write_req.addr,
                   bus_sniff_bundle_i.dma_write_req.wdata,
                   bus_sniff_bundle_i.dma_write_req.be,
                   bus_sniff_bundle_i.dma_write_req.we,
                   bus_sniff_bundle_i.dma_write_req.req,
                   1'b1
                   ));
      end
    end
  end

  // DMA Write Response
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // do nothing
    end else begin
      if (bus_sniff_bundle_i.dma_write_resp.rvalid) begin
        push_frame(build_frame(
                   SOURCE_DMA_WRITE_RESP,
                   32'b0,
                   bus_sniff_bundle_i.dma_write_resp.rdata,
                   4'h0,
                   1'b0,
                   bus_sniff_bundle_i.dma_write_resp.rvalid,
                   bus_sniff_bundle_i.dma_write_resp.gnt
                   ));
      end
    end
  end

  // DMA Addr Request
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.dma_addr_req.req) begin
        push_frame(build_frame(
                   SOURCE_DMA_ADDR_REQ,
                   bus_sniff_bundle_i.dma_addr_req.addr,
                   bus_sniff_bundle_i.dma_addr_req.wdata,
                   bus_sniff_bundle_i.dma_addr_req.be,
                   bus_sniff_bundle_i.dma_addr_req.we,
                   bus_sniff_bundle_i.dma_addr_req.req,
                   1'b1
                   ));
      end
    end
  end

  // DMA Addr Response
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.dma_addr_resp.rvalid) begin
        push_frame(
            build_frame(
            SOURCE_DMA_ADDR_RESP,
            32'd0,  // No address available in response; use default value
            bus_sniff_bundle_i.dma_addr_resp.rdata,
            4'h0,
            1'b0,
            bus_sniff_bundle_i.dma_addr_resp.rvalid,
            bus_sniff_bundle_i.dma_addr_resp.gnt
            ));
      end
    end
  end

  // AO Peripheral Slave Request
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.ao_peripheral_slave_req.req) begin
        push_frame(build_frame(
                   SOURCE_AO_PERIPH_REQ,
                   bus_sniff_bundle_i.ao_peripheral_slave_req.addr,
                   bus_sniff_bundle_i.ao_peripheral_slave_req.wdata,
                   bus_sniff_bundle_i.ao_peripheral_slave_req.be,
                   bus_sniff_bundle_i.ao_peripheral_slave_req.we,
                   bus_sniff_bundle_i.ao_peripheral_slave_req.req,
                   1'b1
                   ));
      end
    end
  end

  // AO Peripheral Slave Response
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.ao_peripheral_slave_resp.rvalid) begin
        push_frame(
            build_frame(
            SOURCE_AO_PERIPH_RESP,
            32'd0,  // No address available in response; use default value
            bus_sniff_bundle_i.ao_peripheral_slave_resp.rdata,
            4'h0,
            1'b0,
            bus_sniff_bundle_i.ao_peripheral_slave_resp.rvalid,
            bus_sniff_bundle_i.ao_peripheral_slave_resp.gnt
            ));
      end
    end
  end

  // Peripheral Slave Request
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.peripheral_slave_req.req) begin
        push_frame(build_frame(
                   SOURCE_PERIPH_REQ,
                   bus_sniff_bundle_i.peripheral_slave_req.addr,
                   bus_sniff_bundle_i.peripheral_slave_req.wdata,
                   bus_sniff_bundle_i.peripheral_slave_req.be,
                   bus_sniff_bundle_i.peripheral_slave_req.we,
                   bus_sniff_bundle_i.peripheral_slave_req.req,
                   1'b1
                   ));
      end
    end
  end

  // Peripheral Slave Response
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.peripheral_slave_resp.rvalid) begin
        push_frame(
            build_frame(
            SOURCE_PERIPH_RESP,
            32'd0,  // No address available in response; use default value
            bus_sniff_bundle_i.peripheral_slave_resp.rdata,
            4'h0,
            1'b0,
            bus_sniff_bundle_i.peripheral_slave_resp.rvalid,
            bus_sniff_bundle_i.peripheral_slave_resp.gnt
            ));
      end
    end
  end

  // RAM Request [0]
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.ram_slave_req[0].req) begin
        push_frame(build_frame(
                   SOURCE_RAM_REQ_0,
                   bus_sniff_bundle_i.ram_slave_req[0].addr,
                   bus_sniff_bundle_i.ram_slave_req[0].wdata,
                   bus_sniff_bundle_i.ram_slave_req[0].be,
                   bus_sniff_bundle_i.ram_slave_req[0].we,
                   bus_sniff_bundle_i.ram_slave_req[0].req,
                   1'b1
                   ));
      end
    end
  end

  // RAM Response [0]
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.ram_slave_resp[0].rvalid) begin
        push_frame(build_frame(
                   SOURCE_RAM_RESP_0,
                   32'd0,  // No address available in response; use default value
                   bus_sniff_bundle_i.ram_slave_resp[0].rdata,
                   4'h0,
                   1'b0,
                   bus_sniff_bundle_i.ram_slave_resp[0].rvalid,
                   bus_sniff_bundle_i.ram_slave_resp[0].gnt
                   ));
      end
    end
  end

  // RAM Request [1]
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.ram_slave_req[1].req) begin
        push_frame(build_frame(
                   SOURCE_RAM_REQ_1,
                   bus_sniff_bundle_i.ram_slave_req[1].addr,
                   bus_sniff_bundle_i.ram_slave_req[1].wdata,
                   bus_sniff_bundle_i.ram_slave_req[1].be,
                   bus_sniff_bundle_i.ram_slave_req[1].we,
                   bus_sniff_bundle_i.ram_slave_req[1].req,
                   1'b1
                   ));
      end
    end
  end

  // RAM Response [1]
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.ram_slave_resp[1].rvalid) begin
        push_frame(build_frame(
                   SOURCE_RAM_RESP_1,
                   32'd0,  // No address available in response; use default value
                   bus_sniff_bundle_i.ram_slave_resp[1].rdata,
                   4'h0,
                   1'b0,
                   bus_sniff_bundle_i.ram_slave_resp[1].rvalid,
                   bus_sniff_bundle_i.ram_slave_resp[1].gnt
                   ));
      end
    end
  end

  // Flash Mem Slave Request
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.flash_mem_slave_req.req) begin
        push_frame(build_frame(
                   SOURCE_FLASH_REQ,
                   bus_sniff_bundle_i.flash_mem_slave_req.addr,
                   bus_sniff_bundle_i.flash_mem_slave_req.wdata,
                   bus_sniff_bundle_i.flash_mem_slave_req.be,
                   bus_sniff_bundle_i.flash_mem_slave_req.we,
                   bus_sniff_bundle_i.flash_mem_slave_req.req,
                   1'b1
                   ));
      end
    end
  end

  // Flash Mem Slave Response
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      // ...
    end else begin
      if (bus_sniff_bundle_i.flash_mem_slave_resp.rvalid) begin
        push_frame(build_frame(
                   SOURCE_FLASH_RESP,
                   32'd0,  // No address available in response; use default value
                   bus_sniff_bundle_i.flash_mem_slave_resp.rdata,
                   4'h0,
                   1'b0,
                   bus_sniff_bundle_i.flash_mem_slave_resp.rvalid,
                   bus_sniff_bundle_i.flash_mem_slave_resp.gnt
                   ));
      end
    end
  end

  //--------------------------------------------------------------------------
  //    SHIFT OUT LOGIC
  //    Single clock approach: after capturing, we shift out the oldest frame
  //    from the FIFO, bit by bit, on sniffer_tdo_o.
  //--------------------------------------------------------------------------
  // logic [7:0]          shift_count;
  int   shift_count;
  logic shifting;
  typedef logic [FRAME_WIDTH-1:0] shift_reg_t;
  shift_reg_t shift_reg;

  // Convert a frame to a 128-bit shift register
  function automatic shift_reg_t frame_to_bits(sniffer_frame_t f);
    shift_reg_t bits;
    bits = {
      f.source_id,  // [127:120] 8 bits
      f.reserved,  // [119:103] 17 bits
      f.timestamp,  // [102 :71] 32 bits
      f.address,  // [70 :39 ] 32 bits
      f.data,  // [38 : 7 ] 
      f.byte_enable,  // [6  : 3 ] bits
      f.we,
      f.valid,
      f.gnt
    // total = 128 bits 
    };
    return bits;
  endfunction

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      shift_count <= '0;
      shifting    <= 1'b0;
      shift_reg   <= '0;
    end else begin
      if (!shifting) begin
        // if the FIFO is not empty, pop a frame and start shifting
        if (used_count > 0) begin
          sniffer_frame_t out_frame;
          pop_frame(out_frame);
          shift_reg   <= frame_to_bits(out_frame);
          shift_count <= 32'd0;
          shifting    <= 1'b1;
        end
      end else begin
        // we are currently shifting
        shift_count <= shift_count + 1'b1;
        if (shift_count == (FRAME_WIDTH - 1)) begin
          // done shifting one frame
          shifting <= 1'b0;
        end
      end
    end
  end

  // LSB-first shifting:
  wire shift_bit = shift_reg[shift_count];

  // Drive sniffer_tdo_o with the shift bit if we're shifting, else 0
  assign sniffer_tdo_o = (shifting) ? shift_bit : 1'b0;

endmodule
