#!/usr/bin/env bash

# GENERATE csv files for each tool and benchmark (# of found known NPEs)
current=$(pwd)

${current}/scripts/check_log_file.sh ./result/evosuite/evosuite_simple ./result/evosuite_result.csv
${current}/scripts/check_log_file.sh ./result/npetest/npetest_simple ./result/npetest_result.csv
${current}/scripts/check_log_file.sh ./result/randoop/randoop_simple ./result/randoop_result.csv

${current}/scripts/merge_csv_files.sh ${current}/result/merge.csv
