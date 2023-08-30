class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)

    uvm_analysis_imp #(transaction, scoreboard) item_collect_export;
    transaction item_q[$];
    logic flag = 0;

    virtual interface fsm_if fsm_vi;

    function new(string name = "scoreboard", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        item_collect_export = new("item_collect_export", this);
        fsm_vi = fsm_pkg::global_aif;
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

        logic [CW_SIZE-1: 0] cw_expected;
        logic [CW_SIZE-1: 0] cw_actual;
        logic [1:0] alu_expected;
        logic [1:0] alu_actual;

        case (sb_tx.opcodeBit)
            6'b000000: cw_expected = 11'b11101100101;     //RTYPE;
            6'b000001: 
                        begin
                            cw_expected = 11'b01111100101;     //ADDI1;
                            alu_expected = 2'b00;
                        end
            6'b000010: 
                        begin 
                            cw_expected = 11'b01111100101;     //SUBI1;
                            alu_expected = 2'b01;
                        end
            6'b000011: 
                        begin 
                            cw_expected = 11'b01111100101;     //AND1;
                            alu_expected = 2'b10;
                        end
            6'b000100: 
                        begin 
                            cw_expected = 11'b01111100101;     //ORI1;
                            alu_expected = 2'b11;
                        end
            6'b000101: 
                        begin 
                            cw_expected = 11'b10100100101;     //ADDI2;
                            alu_expected = 2'b00;
                        end
            6'b000110: 
                        begin 
                            cw_expected = 11'b10100100101;     //SUBI2;
                            alu_expected = 2'b01;
                        end
            6'b000111: 
                        begin 
                            cw_expected = 11'b10100100101;     //ANDI2;
                            alu_expected = 2'b10;
                        end
            6'b001000: 
                        begin 
                            cw_expected = 11'b10100100101;     //ORI2;
                            alu_expected = 2'b11;
                        end
            6'b001001: 
                        begin 
                            cw_expected = 11'b10101000111;     //MOV;
                            alu_expected = 2'b00;
                        end
            6'b001010: 
                        begin 
                            cw_expected = 11'b00011000111;     //S_REG1;
                            alu_expected = 2'b00;
                        end
            6'b001011: 
                        begin 
                            cw_expected = 11'b00000000111;     //S_REG2;
                            alu_expected = 2'b00;
                        end
            6'b001100: 
                        begin 
                            cw_expected = 11'b11111101101;     //S_MEM;
                            alu_expected = 2'b00;
                        end
            6'b001101: 
                        begin 
                            cw_expected = 11'b01111110101;     //L_MEM1;
                            alu_expected = 2'b00;
                        end
            6'b001111: 
                        begin 
                            cw_expected = 11'b10100110101;     //L_MEM2;
                            alu_expected = 2'b00;
                        end
            default:    ; // Default value or error handling
        endcase

        if (sb_tx.opcode < 4) begin
            case (sb_tx.funcBit)
                11'b00000000000: alu_expected = 2'b00;
                11'b00000000001: alu_expected = 2'b01;
                11'b00000000010: alu_expected = 2'b10;
                11'b00000000011: alu_expected = 2'b11;
                default: ;
            endcase
        end

        cw_actual = {sb_tx.rf1 , sb_tx.rf2 , sb_tx.en1 , sb_tx.s1 , sb_tx.s2 , sb_tx.en2 , sb_tx.rm ,sb_tx.wm ,sb_tx.en3 ,sb_tx.s3 ,sb_tx.wf1};
        

        alu_actual = {sb_tx.alu1, sb_tx.alu2};


`uvm_info(get_type_name, $sformatf("qui scor: %0b%0b%0b%0b%0b%0b%0b%0b%0b%0b%0b", sb_tx.rf1 , sb_tx.rf2 , sb_tx.en1 , sb_tx.s1 , sb_tx.s2 , sb_tx.en2 , sb_tx.rm ,sb_tx.wm ,sb_tx.en3 ,sb_tx.s3 ,sb_tx.wf1 
                                                                                                    ),
                                                                                                    UVM_LOW);


`uvm_info(get_type_name, $sformatf("li if: %0b%0b%0b%0b%0b%0b%0b%0b%0b%0b%0b", fsm_vi.rf1 , fsm_vi.rf2 , fsm_vi.en1 , fsm_vi.s1 , fsm_vi.s2 , fsm_vi.en2 , fsm_vi.rm ,fsm_vi.wm ,fsm_vi.en3 ,fsm_vi.s3 ,fsm_vi.wf1 
                                                                                                    ),
                                                                                                    UVM_LOW);                                                                                                    
        if (flag == 1) begin
            if (cw_actual == cw_expected) begin
                `uvm_info(get_type_name, $sformatf("Matched CW: CW expected = %0b, CW actual = %0b", cw_expected, 
                                                                                                    cw_actual),
                                                                                                    UVM_LOW);
            end
            else begin
                `uvm_error(get_type_name, $sformatf("NOT Matched CW: CW expected = %0b, CW actual = %0b", cw_expected, 
                                                                                                      cw_actual));
            end
            if (alu_actual == alu_expected) begin
                `uvm_info(get_type_name, $sformatf("Matched ALU: ALU expected = %0b, ALU actual = %0b", alu_expected, 
                                                                                                    alu_actual),
                                                                                                    UVM_LOW);
            end
            else begin
                `uvm_error(get_type_name, $sformatf("NOT Matched ALU: ALU expected = %0b, ALU actual = %0b", alu_expected, 
                                                                                                      alu_actual));
            end
        end
        else begin
            `uvm_info(get_type_name(), "First cycle doesn't count", UVM_LOW);
            flag = 1;
        end
        $display("----------------------------------------------------------------------------------------------------------");

    endtask
endclass
