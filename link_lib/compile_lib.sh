clang++ -DNUM_INST=$(cat /tmp/meta.txt) -emit-llvm -c -S link_lib.cpp -o link_lib.ll
clang++  -c link_lib.cpp -o link_lib.o