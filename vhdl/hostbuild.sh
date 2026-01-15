#!/bin/bash

ghdl -a --std=08 *.vhdl
ghdl -e --std=08 sim 
ghdl -r --std=08 sim --stop-time=4us --vcd=wave.vcd
