



# while
# sort cells by some costs 
# swap cells starting from the most costly
# check constraints 
# if constraints are met 
# a. continue with opt  
# b. return  
# if not met modify the netlist to meet constraints (this may be costly)


#SECOND IMPLEMENTATION

# start with changing all to hvt 
# while timing constraints are not met
# sort cells
# size first cells from previous list to LVT

proc swap_to_hvt {} {
    foreach_in_collection cell [get_cells] {
        set ref_name [get_attribute $cell ref_name]
        set library_name "CORE65LPHVT"
        regsub {_LL} $ref_name "_LH" new_ref_name
        size_cell $cell "${library_name}/${new_ref_name}"
    }
}

proc swap_cell_to_lvt {cell} {
    set ref_name [get_attribute $cell ref_name]

    set library_name "CORE65LPLVT"

    regsub {_LH} $ref_name "_LL" new_ref_name
    size_cell $cell "${library_name}/${new_ref_name}"

}

proc check_contest_constraints {Threshold maxFanoutEndpointCost} {
    update_timing -full #essential otherwise the extimation later can be wrong
    # Check Slack
    # For checking the slack I need the most critical path 

    set msc_slack [get_attribute [get_timing_paths] slack]

    if ($msc_slack < 0) {
        return 0
    }
    # Check Fanout endpoint cost

    foreach_in_collection cell [get_cells] {
        set paths [get_timing_paths -through $cell -nworst 1 -max_paths 10000 -slack_lesser_than $slackThreshold]
        set cell_fanout_endpoint_cost 0.0
        foreach_in_collection path $paths {
        set this_cost [expr $slackThreshold - [get_attribute $path slack]]
        set cell_fanout_endpoint_cost [expr $cell_fanout_endpoint_cost + $this_cost]
    }

    if {$cell_fanout_endpoint_cost >= $maxFanoutEndpointCost} {
        set cell_name [get_attribute $cell full_name]
        set cell_ref_name [get_attribute $cell ref_name]    
        return 0
    }
}

    return 1
}

proc dualVth {slackThreshold maxFanoutEndpointCost} {

    swap_to_hvt 

    while {check_contest_constraints $slackThreshold $maxFanoutEndpointCost} {
        set hvt_cells [get_cells -filter "lib_cell.threshold_voltage_group == HVT"]

        set sorted_cells [sort_cells_by_slack $hvt_cells]

        set cell_name [lindex $sorted_cells 0 0]

        swap_cell_to_lvt [get_cells $cells_name ]
        
        #set random_cell [index_collection $hvt_cells 0]
        #swap_cell_to_lvt $random_cell
    }

    se
    return 1
}
 

# Here we are swapping one cell at the time.. suggestion is to change multiple cells and then check constraints


# Instead of do random it is possible to sort by slack

proc sort_cell_by_slack {hvt_cells} {

    set sorted_cells ""

    foreach_in_collection cell $hvt_cells {
        set cell_path [get_timing_paths -through $cell]
        set cell_slack [get_attribute $cell_path slack] 
        set cell_name [get_attribute $cell full_name]
        lappend sorted_cells "$cell_name $cell_slack"

    }

    set sorted_cells [lsort -real -increasing -index 1 $sorted_cells]

    return $sorted_cells
}



#################
# but we need to reduce number of sorting -> replace more cells in a single operation

