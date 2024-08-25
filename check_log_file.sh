#!/usr/bin/env bash

# console output

# ./check_log_file.sh ~/Desktop/npe/npetest_evluation/ ./npetest_final

rm ${2}

echo "Benchmark, Project, Class, NPE, Execution" >> ${2}

cnt=0
while read line
do
    if [[ "$line" == "#"* ]]; then
        continue
    fi

    parent=$(echo ${line} | cut -d ":" -f1)
    project=$(echo ${line} | cut -d ":" -f2)
    
    class=$(grep -r "npe_class" ./benchmarks/metadata/"${parent}"/"${project}"/npetest.json | rev | cut -d "\"" -f2 | cut -d "." -f1 | rev)
    line=$(grep -r "line" ./benchmarks/metadata/"${parent}"/"${project}"/npetest.json | cut -d ":" -f2)
    array=($class)
    linearray=($line)


    classlen=${#array[*]}

    for (( i=0; i<${classlen}; i++ )); do
        bug="${array[$i]}.java:${linearray[$i]}"

	bb=$(grep -r "${bug}" "${1}"/"${parent}"/"${project}"/*/*/replay_logs/* | cut -d "/" -f5 | uniq | wc -l)
	cc=$(find "${1}"/"${parent}"/"${project}"/*/*/ -type d -name "replay_logs" | wc -l)

	if [[ "$bb" != "0" ]]; then
		cnt=$(($cnt + 1))
	fi

        result="${parent}, ${project}, ${array[$i]}, ${bb}, ${cc}"

        echo ${result} >> ${2}
    done

done < ./benchmarks/benchmark_list.txt

echo "# Unique NPE, $cnt" >> ${2}
