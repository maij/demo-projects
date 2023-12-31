#!/usr/bin/bash
if [ $# -eq 0 ]; then
    echo "Programming file must be provided."
    exit
fi

FILE=$1

if ! [ -f $FILE ]; then
    echo "File $FILE does not exist."
    exit
fi

vivado -mode tcl <<EOF
open_hw_manager
connect_hw_server
open_hw_target
get_hw_target
set_property PROGRAM.FILE {$FILE} [current_hw_device]
program_hw_device 
disconnect_hw_server
close_hw_manager
q
EOF

