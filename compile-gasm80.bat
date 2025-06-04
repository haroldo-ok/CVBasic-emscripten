setlocal
cd gasm80
emcc -s INVOKE_RUN=0 -s NO_EXIT_RUNTIME=1 gasm80.c -o ../build/gasm80.html 
cd ..
endlocal