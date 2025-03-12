package bus_sniffer_pkg;

  // -----------------------------------------------------------------------------
  // This structure bundles all bus signals from the core_v_mini_mcu
  // -----------------------------------------------------------------------------

  typedef struct packed {
    logic        req;
    logic        we;
    logic [3:0]  be;
    logic [31:0] addr;
    logic [31:0] wdata;
  } obi_req_t;

  typedef struct packed {
    logic        gnt;
    logic        rvalid;
    logic [31:0] rdata;
  } obi_resp_t;


  typedef struct packed {
    // Core-related signals
    obi_req_t  core_instr_req;
    obi_resp_t core_instr_resp;
    obi_req_t  core_data_req;
    obi_resp_t core_data_resp;

    // DMA-related signals (arrays size [0:0] are effectively single element)
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
  } bus_sniff_bundle_t;

  //--------------------------------------------------------------------------
  //    128 bits
  //--------------------------------------------------------------------------
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
  } sniffer_frame_t;


endpackage : bus_sniffer_pkg
