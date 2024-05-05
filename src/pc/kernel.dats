#include "share/atspre_staload.hats"

staload "uart.sats"
dynload "uart.dats"
dynload "kernel.dats"

fun kmain (): void = putStr("Hello from RISC-V ATS\n")

val () = kmain()


