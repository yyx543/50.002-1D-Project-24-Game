set projDir "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/vivado"
set projName "24 Game"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/au_top_0.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/reset_conditioner_1.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/game_beta_2.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/two_seven_seg_3.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/multi_dec_ctr_4.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/four_seven_seg_5.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/button_conditioner_6.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/edge_detector_7.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/seven_seg_8.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/seven_seg_no_zero_9.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/game_regfile_10.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/final_state_machine_11.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/input_integers_12.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/game_alu_13.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/counter_14.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/decoder_15.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/decimal_counter_16.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/counter_17.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/decoder_18.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/pipeline_19.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/pn_gen_20.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/comparator_21.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/sixteen_bit_full_adder_22.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/boolean_23.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/shifter_24.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/multiplier_25.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/full_adder_26.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/shift_left_27.v" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/verilog/shift_right_28.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/work/constraint/custom.xdc" "C:/Users/Yi\ Xian/Desktop/50.002\ Computational\ Structures/1D/24\ Game/constraint/custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1