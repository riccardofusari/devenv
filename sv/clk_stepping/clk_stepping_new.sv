module clock_stepping (
  input  logic        clk_i,          // System clock
  input  logic        rst_ni,         // Active-low reset
  input  logic [31:0] cycles_counter, // From debug subsystem (memory-mapped)
  output logic        clk_o           // Stepped clock output
);

logic [31:0] cycle_count;
logic        clk_en;

always_ff @(posedge clk_i or negedge rst_ni) begin
  if (!rst_ni) begin
    cycle_count <= 32'h0;
    clk_en      <= 1'b0;
  end else begin
    if (cycle_count > 0) begin
      cycle_count <= cycle_count - 1;
      clk_en      <= 1'b1;
    end else begin
      clk_en      <= 1'b0;
    end
  end
end

assign clk_o = clk_en ? clk_i : 1'b0; // Example: Gate the clock
endmodule