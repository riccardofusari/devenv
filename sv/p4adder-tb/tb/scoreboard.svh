class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)

    uvm_analysis_imp #(transaction, scoreboard) item_collect_export;
    transaction item_q[$];
    logic flag = 0;

    virtual interface p4_if p4_vi;
    localparam NBITS = 32;
    function new(string name = "scoreboard", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        item_collect_export = new("item_collect_export", this);
        p4_vi = p4_pkg::global_aif;
    endfunction

    function void write(transaction item);
        item_q.push_back(item);
    endfunction

    task run_phase (uvm_phase phase);
        super.run_phase(phase);
        $display("--------------------------------------------------------------------------------------------------------");
        forever begin
            transaction sb_item;
            wait((item_q.size() != 0));

            if(item_q.size > 0) begin
                sb_item= item_q.pop_front();
                compare(sb_item);
            end
        end
    endtask

    task compare(transaction sb_tx);
        logic [NBITS - 1 : 0] expected;
        logic [NBITS - 1 : 0] actual;

        case(sb_tx.cin)
        0: begin //A + B
            expected = sb_tx.a + sb_tx.b;
        end
        1: begin //A - B
            expected = sb_tx.a - sb_tx.b;
        end
        endcase

        actual = sb_tx.sum_tb;

        if (flag == 1) begin
            if (actual == expected) begin
                `uvm_info(get_type_name, $sformatf("Matched: a = %0d, b = %0d, sum EXPECTED= %0d, ACTUAL = %0d", sb_tx.a, 
                                                                                                                  sb_tx.b,
                                                                                                                  expected,
                                                                                                                  actual),
                                                                                                                  UVM_LOW);
            end
            else begin
                `uvm_error(get_type_name, $sformatf("NOT Matched: a = %0d, b = %0d, sum EXPECTED= %0d, ACTUAL = %0d", sb_tx.a, 
                                                                                                                       sb_tx.b,
                                                                                                                       expected,
                                                                                                                       actual));
            end
        end
        else begin
            `uvm_info(get_type_name(), "First cycle doesn't count", UVM_LOW);
            flag = 1;
        end
        $display("----------------------------------------------------------------------------------------------------------");

    endtask
endclass
