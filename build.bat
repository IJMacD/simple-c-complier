@echo off
cd build
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
set compilerflags=/Od /Zi /EHsc
set linkerflags=/OUT:calc-llvm.exe
cl.exe %compilerflags% ../src/*.c ../src/llvm/*.c /link %linkerflags%
