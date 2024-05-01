%{
  ATSdynloadflag_minit(_057_home_057_rafael_057_Documents_057_a_055_os_057_src_057_pc_057_kernel_056_dats__dynloadflag) ;
%}

%{
  void hello() {
    char *uart = 0x10000000;
    *uart='H';
    *uart='E';
    *uart='L';
    *uart='L';
    *uart='O';
  }
%}

extern fun hello (): void = "ext#hello"

fun kmain (): void = 
  begin
       hello();
  end

val () = kmain()

