module fifo #(
    parameter DEPTH = 8, DWIDTH = 16
) (
    input wr_en,
    input rd_en,
    input rd_clk,
    input wr_clk,
    input rstn,
    input [DWIDTH-1] data_in,
    output [DWIDTH-1] data_out,
    output full, empty;
);

    reg [$clog2(DEPTH)-1:0] wptr;
    reg [$clog2(DEPTH)-1:0] rptr;

    reg [DWIDTH-1:0] fifo[DEPTH];

    always@(posedge wr_clk or negedge rstn) begin
        if(!rstn)
            wptr <= 0;
        else if(wr_en && !full) begin
            fifo[wptr] <= data_in;
            wptr <= wptr + 1;
        end
    end


    always@(posedge rd_clk or negedge rstn) begin
        if (!rstn) begin
            rptr <= 0;
        end else if(rd_en && !empty) begin
            data_out <= fifo[rptr];
            rptr <= rptr + 1;
        end
    end

    assign full = (wptr+1 == rptr);
    assign empty = (wptr == rptr);

endmodule