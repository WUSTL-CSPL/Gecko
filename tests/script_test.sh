#!/bin/bash

curr_dir=$(pwd)

analysis_pass="$curr_dir/SVF/Release-build/tools/recovery_pass/cmpt_analysis/libCMPTAnalysis.so"
# analysis_pass="$curr_dir/lib_llvmpass/svf_pass/libHexboxAnalysis.so"
enforce_pass="$curr_dir/SVF/Release-build/tools/recovery_pass/cmpt_enforce/libEnforceCMPT.so"
checkpoint_pass="$curr_dir/SVF/Release-build/tools/recovery_pass/checkpointing/libPassCheckpointing.so"
input_source_file="$curr_dir/tests/test.cpp"
input_ll_file="$curr_dir/tests/test.ll"
output_bc_file="$curr_dir/outputs/after.bc"
llvm_output_json_file="$curr_dir/outputs/analysis_result.json"
cmpt_output_json_file="$curr_dir/outputs/compartments_result.json"
template_ld_file="$curr_dir/compartment/ld_templates/x86-template-link-script.ld"
output_ld_file="$curr_dir/outputs/output-link-script.ld"



## Generate ll file
clang -S -emit-llvm -o $input_ll_file $input_source_file

## Generate CMPT
opt -f -enable-new-pm=0 -load "$analysis_pass" -HexboxAnaysis --task-names-file="/tmp/task_cmpt.txt" --hexbox-analysis-results="${llvm_output_json_file}" < "$input_ll_file" > "$output_bc_file"

## Compartementalize
## Generate a link script
python3 "$curr_dir/compartment/scripts/analyzer.py" \
    -j="$llvm_output_json_file" \
    -s="../ardupilot/size_result.json" \
    -o="$cmpt_output_json_file" \
    -m=task \
    -T="$template_ld_file" \
    -L="$output_ld_file"


### Emforce CMPT

# opt -f -enable-new-pm=0 -load "$enforce_pass" -HexboxApplication --hexbox-policy="${cmpt_output_json_file}"  "$input_ll_file" -o "$output_bc_file"

echo "Add checkpoints"
opt -f -enable-new-pm=0 -load "$checkpoint_pass" -Checkpointing  "$input_ll_file" -o "$output_bc_file"

# TODO
# llvm-dis $output_bc_file  


### Link all libs
dir_rt="$curr_dir/SVF/Release-build/tools/recovery_pass/link_lib"
# source compile_lib.sh

### Generate executable
cd $curr_dir

## To change another command
clang++ -flto "$output_bc_file"  "$dir_rt/link_lib.ll" -Wl,-T,outputs/md_output-link-script.ld
# clang++ -flto "$output_bc_file"  "$dir_rt/link_lib.ll" -Wl,-T,outputs/output-link-script.ld
