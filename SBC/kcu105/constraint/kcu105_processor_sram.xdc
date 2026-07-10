# General configurations

set_property PACKAGE_PIN G10 [get_ports {clk_in_p}]  
set_property IOSTANDARD LVDS [get_ports {clk_in_p}]
set_property PACKAGE_PIN F10 [get_ports {clk_in_n}]   
set_property IOSTANDARD LVDS [get_ports {clk_in_n}]




# LEDs
set_property PACKAGE_PIN AP8     [get_ports {CPU_MODE[0]}] ;
set_property IOSTANDARD  LVCMOS18 [get_ports {CPU_MODE[0]}] ;
set_property PACKAGE_PIN H23     [get_ports {CPU_MODE[1]}] ;
set_property IOSTANDARD  LVCMOS18 [get_ports {CPU_MODE[1]}] ;



## uart0
set_property PACKAGE_PIN G25     [get_ports "DEBUG_UART_RX"] ; 
set_property IOSTANDARD  LVCMOS18 [get_ports "DEBUG_UART_RX"] ;
set_property PACKAGE_PIN K26     [get_ports "DEBUG_UART_TX"] ; 
set_property IOSTANDARD  LVCMOS18 [get_ports "DEBUG_UART_TX"] ; 

## uart1
set_property PACKAGE_PIN AM19     [get_ports "SERIAL_UART_RX"] ;
set_property IOSTANDARD  LVCMOS12 [get_ports "SERIAL_UART_RX"] ;
set_property PACKAGE_PIN AM17   [get_ports "SERIAL_UART_TX"] ;
set_property IOSTANDARD  LVCMOS12 [get_ports "SERIAL_UART_TX"] ;

set_property PACKAGE_PIN AN8      [get_ports {clk_rst}] ;
set_property IOSTANDARD  LVCMOS18  [get_ports {clk_rst}] ;


