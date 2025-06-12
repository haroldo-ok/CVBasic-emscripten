setlocal
cd CVBasic
emcc -s INVOKE_RUN=0 -s NO_EXIT_RUNTIME=1 --embed-file ../src/embed/@/ --shell-file ../src/shell_minimal.html cvbasic.c node.c driver.c cpu6502.c cpuz80.c cpu9900.c -o ../docs/cvbasic.html 
cd ..
endlocal