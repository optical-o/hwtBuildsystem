# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z020clg484-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/nic30/Documents/workspace/hw_synthesis/hw_synthesis_helpers/cli_toolkit/vivado/samples/tmp/SampleBdProjectxc7z020clg484-2/SampleBdProjectxc7z020clg484-2.cache/wt [current_project]
set_property parent.project_path /home/nic30/Documents/workspace/hw_synthesis/hw_synthesis_helpers/cli_toolkit/vivado/samples/tmp/SampleBdProjectxc7z020clg484-2/SampleBdProjectxc7z020clg484-2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
add_files /home/nic30/Documents/workspace/hw_synthesis/hw_synthesis_helpers/cli_toolkit/vivado/samples/tmp/SampleBdProjectxc7z020clg484-2/SampleBdProjectxc7z020clg484-2.srcs/sources_1/bd/test1/test1.bd
set_property used_in_implementation false [get_files -all /home/nic30/Documents/workspace/hw_synthesis/hw_synthesis_helpers/cli_toolkit/vivado/samples/tmp/SampleBdProjectxc7z020clg484-2/SampleBdProjectxc7z020clg484-2.srcs/sources_1/bd/test1/test1_ooc.xdc]
set_property is_locked true [get_files /home/nic30/Documents/workspace/hw_synthesis/hw_synthesis_helpers/cli_toolkit/vivado/samples/tmp/SampleBdProjectxc7z020clg484-2/SampleBdProjectxc7z020clg484-2.srcs/sources_1/bd/test1/test1.bd]

read_vhdl -library xil_defaultlib /home/nic30/Documents/workspace/hw_synthesis/hw_synthesis_helpers/cli_toolkit/vivado/samples/tmp/SampleBdProjectxc7z020clg484-2/SampleBdProjectxc7z020clg484-2.srcs/sources_1/bd/test1/hdl/test1_wrapper.vhd
read_xdc /home/nic30/Documents/workspace/hw_synthesis/hw_synthesis_helpers/cli_toolkit/vivado/samples/tmp/SampleBdProjectxc7z020clg484-2/SampleBdProjectxc7z020clg484-2.srcs/sources_1/pinConstr.xdc
set_property used_in_implementation false [get_files /home/nic30/Documents/workspace/hw_synthesis/hw_synthesis_helpers/cli_toolkit/vivado/samples/tmp/SampleBdProjectxc7z020clg484-2/SampleBdProjectxc7z020clg484-2.srcs/sources_1/pinConstr.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top test1_wrapper -part xc7z020clg484-2
write_checkpoint -noxdef test1_wrapper.dcp
catch { report_utilization -file test1_wrapper_utilization_synth.rpt -pb test1_wrapper_utilization_synth.pb }