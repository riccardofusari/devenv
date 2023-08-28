class test extends uvm_test;
    `uvm_component_utils(test)

    env env_h;                  /* Testbench Environment*/
    rf_config rf_config_0;      /* Configuration object*/

    function new(string name, uvm_component parent);
        super.new(name, parent)
    endfunction: new

    /* Build component declared above */
    function build_phase (uvm_phase phase);


        rf_config_0 = rf_config::type_id::create("rf_config_0", this);
        env_h       = env::type_id::create("env_h", this);


        if(!uvm_config_db #(virtual rf_if)::get(this, "", "rf_vi", rf_config_0.rf_vi))
        {
            `uvm_fatal("MY_TEST", "no dut interface found");
        }

        /* Make the object available for all the components using the wildcard */
        uvm_config_db #(rf_config)::set(this, "*", rf_config_0);
    endfunction: build_phase


    virtual function void end_of_elaboration_phase (uvm_phase phase);
        uvm_top.print_topology();
    endfunction



    task run_phase (uvm_phase phase);

        /* sequence*/
    endtask

endclass
