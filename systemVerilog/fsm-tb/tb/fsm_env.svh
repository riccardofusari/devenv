class env extends uvm_env;
    `uvm_component_utils(env)


    agent       agent_h;
    scoreboard  scoreboard_h;
    coverage    coverage_h;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction: new

    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        agent_h      = agent::type_id::create("agent",this);
        scoreboard_h = scoreboard::type_id::create("scoreboard", this);
        coverage_h   = coverage::type_id::create("coverage", this);        
    endfunction: build_phase


    function void connect_phase(uvm_phase phase);
        agent_h.mon_h.aport.connect( scoreboard_h.item_collect_export);
        agent_h.mon_h.aport.connect( coverage_h.analysis_export);
    endfunction: connect_phase


endclass
