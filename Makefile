all: docs/cvbasic.js docs/gasm80.js

docs/cvbasic.js: CVBasic/cvbasic.c CVBasic/node.c CVBasic/driver.c CVBasic/cpu6502.c CVBasic/cpuz80.c CVBasic/cpu9900.c
	cd CVBasic && emcc -s INVOKE_RUN=0 -s NO_EXIT_RUNTIME=1 --embed-file ../src/embed/@/ --shell-file ../src/shell_minimal.html cvbasic.c node.c driver.c cpu6502.c cpuz80.c cpu9900.c -o ../docs/cvbasic.html 

docs/gasm80.js: gasm80/gasm80.c
	cd gasm80 && emcc -s INVOKE_RUN=0 -s NO_EXIT_RUNTIME=1 -s EXPORT_NAME="'Gasm80'" --embed-file ../src/embed_gasm80/@/ --shell-file ../src/shell_minimal_gasm80.html gasm80.c -o ../docs/gasm80.html 