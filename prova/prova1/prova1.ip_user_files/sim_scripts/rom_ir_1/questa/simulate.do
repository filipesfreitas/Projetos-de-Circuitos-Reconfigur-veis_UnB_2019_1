onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rom_ir_opt

do {wave.do}

view wave
view structure
view signals

do {rom_ir.udo}

run -all

quit -force
