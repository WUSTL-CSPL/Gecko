clang++ -emit-llvm -c -S  libsecsen.cpp -o libsecsen.ll
 clang++ libsecsen.cpp -fPIC -c -o libsecsen.o