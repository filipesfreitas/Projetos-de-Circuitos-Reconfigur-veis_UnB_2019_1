onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xir_rom_opt

do {wave.do}

view wave
view structure
view signals

do {xir_rom.udo}

run -all

quit -force
