#!/bin/bash

gcc fcfs.c -o fcfs || {
    echo "Compilation failed"
    exit 1
}

run_test () {
    input=$1
    expected=$2
    weight=$3

    output=$(mktemp)
    ./fcfs < "$input" > "$output"

    if diff -w "$output" "$expected" > /dev/null; then
        echo "$weight"
    else
        echo "0"
    fi
}

score=0
score=$((score + $(run_test tests/input1.txt tests/output1.txt 10)))
score=$((score + $(run_test tests/input2.txt tests/output2.txt 15)))
score=$((score + $(run_test tests/input3.txt tests/output3.txt 20)))
score=$((score + $(run_test tests/input4.txt tests/output4.txt 25)))
score=$((score + $(run_test tests/input5.txt tests/output5.txt 30)))

echo "TOTAL POINTS: $score"
