FAMILY  = kintex7
PART    = xc7k325tffg676-1
BOARD   = qmtechKintex7
PROJECT = blinky

include ../openXC7.mk

.PHONY: program_v
program_v: ${PROJECT}.bit
	./program_vivado.sh $<
