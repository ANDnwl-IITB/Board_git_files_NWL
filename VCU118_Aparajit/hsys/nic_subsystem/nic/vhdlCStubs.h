#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <Pipes.h>
#include <SocketLib.h>
void ReceiveEngineDaemon();
void TransmitEngineDaemon();
void controlDaemon();
void free_queue_daemon();
void global_storage_initializer_();
void incrementNumberOfPacketsReceived();
void incrementNumberOfPacketsTransmitted();
uint32_t incrementRegister(uint8_t reg_index);
void macTestDaemon();
void memoryTestDaemon();
void nicRxFromMacDaemon();
void queueTestDaemon();
void receive_queue_daemon();
void setGlobalSignals();
void transmit_queue_daemon();
uint16_t writeEthernetHeaderToMem(uint8_t tag,uint64_t rx_buffer_pointer);
