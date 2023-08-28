class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)

    uvm_analysis_imp #(transaction, scoreboard) item_collect_export;
    transaction item_q[$];
    virtual interface p4_if p4_vi;

    function new(string name = "scoreboard", uvm_component parent = null);
        super.new(name, parent);
        item_collect_export = new("item_collect_export", this);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        p4_vi = p4_pkg::global_aif;
    endfunction

    function void write(transaction req);
        item_q.push_back(req);
    endfunction

    task run_phase (uvm_phase phase);
    transaction sb_item;
    forever begin
        @(posedge p4_vi.clk);
        @(posedge p4_vi.clk);
        /*
        wait(item_q.size > 0);

        if(item_q.size > 0) begin
            sb_item = item_q.pop_front();
            $display("----------------------------------------------------------------------------------------------------------");
            if(sb_item.stimuli.a + sb_item.stimuli.b == sb_item.sum_tb) begin
                `uvm_info(get_type_name, $sformatf("Matched: a = %0d, b = %0d, sum = %0d", sb_item.stimuli.a, sb_item.stimuli.b, sb_item.sum_tb),UVM_LOW);
            end
            else begin
                `uvm_error(get_name, $sformatf("NOT matched: a = %0d, b = %0d, sum = %0d", sb_item.stimuli.a, sb_item.stimuli.b, sb_item.sum_tb));
            end
            $display("----------------------------------------------------------------------------------------------------------");
        end*/

$display("----------------------------------------------------------------------------------------------------------");

         if (p4_vi.cin == 0) begin
                /*assert(p4_vi.sum_tb == p4_vi.a + p4_vi.b) else 
                  `uvm_error("run", 
                  $psprintf("expected %h  actual: %h", p4_vi.a + p4_vi.b, p4_vi.sum_tb));*/
                if (p4_vi.sum_tb == p4_vi.a + p4_vi.b) begin
                    `uvm_info(get_type_name, $sformatf("Matched: a = %0d, b = %0d, sum = %0d", p4_vi.a, p4_vi.b, p4_vi.sum_tb),UVM_LOW);
                end
                else begin
                    `uvm_error(get_type_name, $sformatf("NOT Matched: a = %0d, b = %0d, sum = %0d", p4_vi.a, p4_vi.b, p4_vi.sum_tb));
                end
         end
        else if (p4_vi.cin == 1) begin
            if (p4_vi.sum_tb == p4_vi.a - p4_vi.b) begin
                `uvm_info(get_type_name, $sformatf("Matched: a = %0d, b = %0d, sum = %0d", p4_vi.a, p4_vi.b, p4_vi.sum_tb),UVM_LOW);
            end
            else begin
                `uvm_error(get_type_name, $sformatf("NOT Matched: a = %0d, b = %0d, sum = %0d", p4_vi.a, p4_vi.b, p4_vi.sum_tb));
            end
            end     
$display("----------------------------------------------------------------------------------------------------------");

    end
    endtask
  
endclass