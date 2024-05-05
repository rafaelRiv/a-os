#include "share/atspre_staload.hats"

staload "prelude/SATS/unsafe.sats"
dynload "kernel.dats"

val uart: ptr = int2ptr(0x10000000)

fun kmain (): void = 
  let
    val () = ptr0_set(uart, 'H')
    val () = ptr0_set(uart, 'E')
    val () = ptr0_set(uart, 'L')
    val () = ptr0_set(uart, 'L')
    val () = ptr0_set(uart, 'O')
  in
  end

val () = kmain()


