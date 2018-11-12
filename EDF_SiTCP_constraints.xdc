
set SiPDMIN [get_property -min PERIOD [get_clocks -of_objects [get_pins -hier -filter {name =~ */GMII/*}]]]

set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_RXBUF/cmpWrAddr_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXBUF/smpWrStatusAddr_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/orRdAct_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/irRdAct_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/muxEndTgl_reg/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/rsmpMuxTrnsEnd_reg[0]/D}] 

set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX10Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/irMacFlowEnb_reg/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX12Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX13Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX14Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX15Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX16Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX17Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyMac_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX18Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyIp_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX19Data_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyIp_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX1AData_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyIp_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */SiTCP_INT_REG/regX1BData_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_RXCNT/muxMyIp_reg[*]/D}] 

set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/dlyBank0LastWrAddr_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/rsmpBank0LastWrAddr_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/dlyBank1LastWrAddr_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/rsmpBank1LastWrAddr_reg[*]/D}] 
set_max_delay $SiPDMIN -datapath_only -from [get_pins -hier -filter {name =~ */GMII_TXBUF/memRdReq_reg[*]/C}] -to [get_pins -hier -filter {name =~ */GMII_TXBUF/irMemRdReq_reg[*]/D}] 

set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_RXCNT/*/CLR}] 
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_RXCNT/*/PRE}] 
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_TXCNT/*/CLR}] 
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_TXCNT/*/PRE}] 
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_RXBUF/*/CLR}] 
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_TXBUF/*/CLR}] 
set_false_path -from [get_pins -hier -filter {name =~ */SiTCP_INT/SiTCP_RESET_OUT_reg_*/C}] -to [get_pins -hier -filter {name =~ */GMII/GMII_TXBUF/*/PRE}] 

