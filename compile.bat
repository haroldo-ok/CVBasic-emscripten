setlocal
cd CVBasic
emcc --shell-file ../src/shell_minimal.html cvbasic.c node.c driver.c cpu6502.c cpuz80.c cpu9900.c -o ../build/cvbasic.html 
cd ..
endlocal