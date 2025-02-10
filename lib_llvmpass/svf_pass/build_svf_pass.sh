

SVF_DIR=~/for_Jay/SVF/Release-build/
current_path=$(pwd)
cd $SVF_DIR
make -j
cd $current_path

cp $SVF_DIR/tools/recovery_pass/cpt_analysis/libHexboxAnalysis.so ./
# cp $SVF_DIR/lib/do_comp.so ./
