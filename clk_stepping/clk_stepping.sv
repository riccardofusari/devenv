
// File: hw/core-v-mini-mcu/clock_stepping_module.sv

module clk_stepping (
    input  logic        clk_i,
    input  logic        rst_ni,
    input  logic        en_i,          // Enable clock stepping mode
    input  logic [31:0] cycles_i,      // Number of cycles to run
    input  logic        cycle_start_i, // Trigger to start counting cycles
    output logic        clk_o,         // Gated clock output
    output logic        running_o,     // Indicates if cycles are being counted
    output logic [31:0] cycles_left_o  // Cycles remaining before clock stops
);

    logic [31:0]    cycle_counter;
    // logic        clk_en;

    // State of the clock stepping module
    typedef enum logic [1:0] {
        IDLE,      // Clock stepping disabled or waiting for trigger
        RUNNING,   // Counting down cycles
        STOPPED    // Finished counting, clock stopped
    } stepping_state_e;

    stepping_state_e current_state, next_state;

    // State transition logic
    always_comb begin
        // next_state = current_state;

        case (current_state)
            IDLE: begin
                if (en_i && cycle_start_i /*&& !stopped*/) 
                    next_state = RUNNING;
            end

            RUNNING: begin
                if (cycle_counter == 0)
                    next_state = STOPPED;
                else if (!en_i)
                    next_state = IDLE;
            end

            STOPPED: begin
                if (!en_i || cycle_start_i)
                    next_state = IDLE;
            end

            default: next_state = IDLE;
        endcase
    end

    // Counter logic and fsm
    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            cycle_counter <= '0;
            current_state <= IDLE;
        end else begin
            current_state <= next_state;

            if (current_state == IDLE && next_state == RUNNING) begin
                // Load counter when transitioning to RUNNING
                cycle_counter <= cycles_i;
            end else if (current_state == RUNNING && cycle_counter > 0) begin
                // Decrement counter while running
                cycle_counter <= cycle_counter - 1;
            end
        end
    end

    //In x-heep architecture with the gating cell
    // // Clock enable logic
    // always_comb begin
    //     if (!en_i) begin
    //         // Normal operation when stepping is disabled
    //         clk_en = 1'b1;
    //     end else begin
    //         // Enable clock during RUNNING state
    //         clk_en = (current_state == RUNNING);
    //     end
    // end

    // // Instantiate the core-v-mini-mcu clock gate
    // tc_clk_gating clk_gate (
    //     .clk_i(clk_i),
    //     .en_i(clk_en),
    //     .test_en_i(1'b0),
    //     .clk_o(clk_o)
    // );


    assign clk_o = (current_state == RUNNING) ? clk_i : 1'b0;
    // Output assignments
    assign running_o = (current_state == RUNNING);
    assign cycles_left_o = cycle_counter;

endmodule
