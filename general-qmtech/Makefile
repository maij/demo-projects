FAMILY  = kintex7
PART    = xc7k325tffg676-1
BOARD   = qmtechKintex7
PROJECT = top

JTAG_LINK ?= --board ${BOARD} --cable digilent_hs3
SOURCE_DIR = ./source

#ADDITIONAL_SOURCES = $(wildcard **/*.v) $(wildcard **/*.vhd) $(wildcard **/*.sv)
ADDITIONAL_SOURCES = $(shell find $(SOURCE_DIR) -name "*.v")
ADDITIONAL_SOURCES += $(shell find $(SOURCE_DIR) -name "*.vhd")
ADDITIONAL_SOURCES += $(shell find $(SOURCE_DIR) -name "*.sv")

include ../openXC7.mk

.PHONY: program_v
program_v: ${PROJECT}.bit
	./program_vivado.sh $<
