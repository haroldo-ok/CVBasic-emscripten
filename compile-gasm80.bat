copy src\FileSaver.js build
setlocal
cd gasm80
emcc -s INVOKE_RUN=0 -s NO_EXIT_RUNTIME=1 -s MODULARIZE=1 -s EXPORT_NAME="'Gasm80'" --embed-file ../src/embed_gasm80/@/ --shell-file ../src/shell_minimal_gasm80.html gasm80.c -o ../build/gasm80.html 
cd ..
endlocal