//`uvm_analysis_imp_decl( _drv )
//`uvm_analysis_imp_decl( _mon )

class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)

    localparam NBITS = 32;
    uvm_analysis_imp #(transaction, scoreboard) aport_mon;
    transaction item_q[$];

    //uvm_analysis_imp_drv #(transaction, scoreboard) aport_drv;
    //uvm_analysis_imp_mon #(transaction, scoreboard) aport_mon;

    //uvm_tlm_fifo #(transaction) expfifo;
    //uvm_tlm_fifo #(transaction) outfifo;

    int VECT_CNT, PASS_CNT, ERROR_CNT;

    bit [NBITS-1:0] t_in1,t_in2;
    bit             t_add_sub;
    bit [NBITS-1:0] t_out;

    virtual interface p4_if p4_vi;

    function new(string name = "scoreboard", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        p4_vi = p4_pkg::global_aif;
        //aport_drv = new("aport_drv", this);
        aport_mon = new("aport_mon", this);
        //expfifo= new("expfifo",this);
        //outfifo= new("outfifo",this);
    endfunction

    function void write(transaction req);
        item_q.push_back(req);
    endfunction

    task run_phase (uvm_phase phase);
        transaction sb_item;
        forever begin
            wait(item_q.size > 0);

        if(item_q.size > 0) begin
            sb_item = item_q.pop_front();
            $display("----------------------------------------------------------------------------------------------------------");
            if(sb_item.stimuli.a + sb_item.stimuli.b == sb_item.sum_dut) begin
                    `uvm_info(get_type_name, $sformatf("Matched: a = %0d, b = %0d, sum = %0d", sb_item.stimuli.a, sb_item.stimuli.b, sb_item.sum_tb),UVM_LOW);
            end
            else begin
                `uvm_error(get_name, $sformatf("NOT matched: a = %0d, b = %0d, sum = %0d", sb_item.stimuli.a, sb_item.stimuli.b, sb_item.sum_tb));
            end
            $display("----------------------------------------------------------------------------------------------------------");
        end
    end
  endtask
    //function void write_drv(transaction tr);
//
    //    t_in1 = tr.stimuli.a;
    //    t_in2 = tr.stimuli.b;
    //    t_add_sub = tr.stimuli.cin;
//
    //    if(t_add_sub==0) begin 
    //        t_out = t_in1 + t_in2;
    //    end
    //    else if(t_add_sub==1) begin 
    //        t_out = t_in1 - t_in2;
    //    end
    //    else begin 
    //    `uvm_info("write_drv STIM","unknown value of add_sub detected",UVM_LOW)
    //    end
    //        tr.sum_tb = t_out;
//
    //    void'(expfifo.try_put(tr));
    //endfunction
//
    //function void write_mon(transaction tr);
    //    `uvm_info("write_mon OUT ", tr.convert2string(), UVM_MEDIUM)
    //    void'(outfifo.try_put(tr));
    //endfunction
//

    //int constraint_on_count=0;
//
    //task run_phase(uvm_phase phase);
    //    transaction exp_tr, out_tr;
    //    forever begin
    //        `uvm_info("scoreboard run task","WAITING for expected output", UVM_DEBUG)
    //        expfifo.get(exp_tr);
    //        `uvm_info("scoreboard run task","WAITING for actual output", UVM_DEBUG)
    //        outfifo.get(out_tr);
//
    //    if (out_tr.sum_tb===exp_tr.sum_dut) begin
    //            PASS();
    //        `uvm_info ("PASS ",out_tr.convert2string() , UVM_MEDIUM)
    //        end
//
    //    else if(out_tr.sum_tb!==exp_tr.sum_dut && constraint_on_count>1) begin
    //            ERROR();
    //        `uvm_info ("ERROR [ACTUAL_OP]",out_tr.convert2string() , UVM_MEDIUM)
    //        `uvm_info ("ERROR [EXPECTED_OP]",exp_tr.convert2string() , UVM_MEDIUM)
    //        `uvm_warning("ERROR",exp_tr.convert2string())
    //        end
    //        constraint_on_count++;
    //    end
    //endtask
//
    //function void report_phase(uvm_phase phase);
    //    super.report_phase(phase);
    //    if (VECT_CNT && !ERROR_CNT)
    //        `uvm_info("PASSED",
    //        $sformatf("*** TEST PASSED - %0d vectors ran, %0d vectors passed ***",
    //        VECT_CNT, PASS_CNT), UVM_LOW)
    //    else
    //        `uvm_info("FAILED",
    //        $sformatf("*** TEST FAILED - %0d vectors ran, %0d vectors passed, %0d vectors failed ***",
    //        VECT_CNT, PASS_CNT, ERROR_CNT), UVM_LOW)
    //endfunction
//
    //function void PASS();
    //    VECT_CNT++;
    //    PASS_CNT++;
    //endfunction
//
    //function void ERROR();
    //    VECT_CNT++;
    //    ERROR_CNT++;
    //endfunction


endclass