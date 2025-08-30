all: docs/cvbasic.js

docs/cvbasic.js: CVBasic/cvbasic.c CVBasic/node.c CVBasic/driver.c CVBasic/cpu6502.c CVBasic/cpuz80.c CVBasic/cpu9900.c
	cd CVBasic && emcc -s INVOKE_RUN=0 -s NO_EXIT_RUNTIME=1 --embed-file ../src/embed/@/ --shell-file ../src/shell_minimal.html cvbasic.c node.c driver.c cpu6502.c cpuz80.c cpu9900.c -o ../docs/cvbasic.html 
