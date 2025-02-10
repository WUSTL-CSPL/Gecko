current_path=$(pwd)
cd $LLVM_DIR 
make -j
cd $current_path

cp $LLVM_DIR/lib/analysis.so ./
cp $LLVM_DIR/lib/do_comp.so ./