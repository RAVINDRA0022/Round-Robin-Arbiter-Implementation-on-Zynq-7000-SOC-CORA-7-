

#############################################################################
# USER I/O for round robin arbiter
#############################################################################

# Reset (push button)
#set_property PACKAGE_PIN L20 [get_ports rst_an]
#set_property IOSTANDARD LVCMOS33 [get_ports rst_an]

# Request inputs
#set_property PACKAGE_PIN K18 [get_ports {req[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {req[0]}]

set_property PACKAGE_PIN J18 [get_ports {req[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {req[1]}]

set_property PACKAGE_PIN H18 [get_ports {req[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {req[2]}]

#set_property PACKAGE_PIN G18 [get_ports {req[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {req[3]}]

set_property PACKAGE_PIN U8 [get_ports {req[0]}]
set_property PACKAGE_PIN V7 [get_ports {req[3]}]
set_property PACKAGE_PIN T8 [get_ports {rst_an}]
set_property IOSTANDARD LVCMOS33 [get_ports {req[0] req[3] rst_an}]

# Grant outputs
set_property PACKAGE_PIN U7 [get_ports {grant[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {grant[0]}]

set_property PACKAGE_PIN W5 [get_ports {grant[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {grant[1]}]

set_property PACKAGE_PIN W6 [get_ports {grant[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {grant[2]}]

set_property PACKAGE_PIN V8 [get_ports {grant[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {grant[3]}]