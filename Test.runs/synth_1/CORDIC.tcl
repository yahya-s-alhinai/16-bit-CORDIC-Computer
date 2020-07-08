# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/yahya/Desktop/Test/Test.cache/wt [current_project]
set_property parent.project_path C:/Users/yahya/Desktop/Test/Test.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/yahya/Desktop/Test/Test.srcs/sources_1/new/To_Hex.v
  C:/Users/yahya/Desktop/cordic.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/yahya/Desktop/Test/Test.srcs/constrs_1/new/CORDIC.xdc
set_property used_in_implementation false [get_files C:/Users/yahya/Desktop/Test/Test.srcs/constrs_1/new/CORDIC.xdc]


synth_design -top CORDIC -part xc7a35tcpg236-1


write_checkpoint -force -noxdef CORDIC.dcp

catch { report_utilization -file CORDIC_utilization_synth.rpt -pb CORDIC_utilization_synth.pb }
