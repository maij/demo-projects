#!/usr/bin/bash
INTERFACE=spix4
BUSWIDTH=4

if [ $# -eq 0 ]; then
    echo "Programming file must be provided."
    exit
fi

bitfile=$1
mcsfile="${bitfile%.*}.mcs"
if ! [ -f $bitfile ]; then
    echo "File $bitfile does not exist."
    exit
fi



vivado -mode tcl <<EOF
write_cfgmem -format mcs -interface $INTERFACE -size $BUSWIDTH \
   -loadbit "up 0x0 $bitfile" -loaddata "" \
   -file $mcsfile -force
q
EOF

