#!/bin/bash

cd /data

ghdl -a *.vhdl
ghdl -e sim 
ghdl -r sim --stop-time=4us --vcd=wave.vcd



