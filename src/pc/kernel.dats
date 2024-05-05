#include "share/atspre_staload.hats"

staload "prelude/SATS/unsafe.sats"
staload "prelude/SATS/string.sats"
dynload "kernel.dats"

val uart: ptr = int2ptr(0x10000000)

fun print {n:nat} (str: string (n)) :void = 
  let
      fun loop {i:nat | i <= n} .<n-i>.
        (str: string n, i: size_t i): void =
          if string_isnot_atend (str, i) 
            then
              let
                val v = string_get_at(str,i)
                val () = ptr0_set(uart,v)
              in
                loop (str, succ(i)) 
              end
            else ()
          in
            loop (str, i2sz(0))
  end 

fun kmain (): void = print("Hello from RISC-V ATS\n")

val () = kmain()


