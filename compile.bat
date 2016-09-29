@echo off

quartus_sh -t compile.tcl
pause

set /p name=< project.tmp  
del project.tmp

cd output_files
quartus_pgm -c USB-Blaster -m JTAG -o P;%name%.sof
pause