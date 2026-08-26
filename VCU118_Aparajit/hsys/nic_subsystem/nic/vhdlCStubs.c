#include <vhdlCStubs.h>
void ReceiveEngineDaemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call ReceiveEngineDaemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void TransmitEngineDaemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call TransmitEngineDaemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void controlDaemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call controlDaemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void free_queue_daemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call free_queue_daemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void global_storage_initializer_()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call global_storage_initializer_ ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void incrementNumberOfPacketsReceived()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call incrementNumberOfPacketsReceived ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void incrementNumberOfPacketsTransmitted()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call incrementNumberOfPacketsTransmitted ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
uint32_t incrementRegister(uint8_t reg_index)
{
char buffer[4096];  char* ss;  sprintf(buffer, "call incrementRegister ");
append_int(buffer,1); ADD_SPACE__(buffer);
append_uint8_t(buffer,reg_index); ADD_SPACE__(buffer);
append_int(buffer,1); ADD_SPACE__(buffer);
append_int(buffer,32); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
uint32_t incremented_value = get_uint32_t(buffer,&ss);
return(incremented_value);
}
void macTestDaemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call macTestDaemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void memoryTestDaemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call memoryTestDaemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void nicRxFromMacDaemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call nicRxFromMacDaemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void queueTestDaemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call queueTestDaemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void receive_queue_daemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call receive_queue_daemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void setGlobalSignals()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call setGlobalSignals ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
void transmit_queue_daemon()
{
char buffer[4096];  char* ss;  sprintf(buffer, "call transmit_queue_daemon ");
append_int(buffer,0); ADD_SPACE__(buffer);
append_int(buffer,0); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
return;
}
uint16_t writeEthernetHeaderToMem(uint8_t tag,uint64_t rx_buffer_pointer)
{
char buffer[4096];  char* ss;  sprintf(buffer, "call writeEthernetHeaderToMem ");
append_int(buffer,2); ADD_SPACE__(buffer);
append_uint8_t(buffer,tag); ADD_SPACE__(buffer);
append_uint64_t(buffer,rx_buffer_pointer); ADD_SPACE__(buffer);
append_int(buffer,1); ADD_SPACE__(buffer);
append_int(buffer,16); ADD_SPACE__(buffer);
send_packet_and_wait_for_response(buffer,strlen(buffer)+1,"localhost",9999);
uint16_t addr_offset = get_uint16_t(buffer,&ss);
return(addr_offset);
}
