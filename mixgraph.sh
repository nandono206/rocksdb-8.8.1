#!/bin/bash

exec_path="cmake-build-debug/db_bench"
db_path="/tmp/readrandom_db"

## Function to run the fillrandom benchmark
#run_fillrandom() {
#    echo "Running fillrandom benchmark to prepare the database..."
#    $exec_path --db="$db_path" --trace_file="/tmp/op_trace_file" --use_direct_io_for_flush_and_compaction \
#    --use_direct_reads --compression_type=none --stats_interval_seconds=1 --histogram \
#    --num=25000000 --benchmarks=fillrandom
#}

## TEST 1: Run the benchmark without options
#echo "Starting Test 1: No options"
#run_fillrandom  # Prepare the database
#$exec_path --use_existing_db=true --db="$db_path" --trace_file="/tmp/op_trace_file" \
#--use_direct_io_for_flush_and_compaction --use_direct_reads --compression_type=none \
#--stats_interval_seconds=1 --histogram  --num=3000000000 --benchmarks=mixgraph --duration=1000 \
#--mix_get_ratio=0.5 --mix_put_ratio=0.5 --mix_seek_ratio=0.0 > "experiment_output/no_option.txt"
#
#echo "Test 1 complete"

## TEST 2: Run the benchmark with mixgraph_default_option
#echo "Starting Test 2: mixgraph_default_option"
#run_fillrandom  # Prepare the database
#$exec_path --use_existing_db=true --db="$db_path" --trace_file="/tmp/op_trace_file" \
#--use_direct_io_for_flush_and_compaction --use_direct_reads --compression_type=none \
#--stats_interval_seconds=1 --histogram  --num=3000000000 --benchmarks=mixgraph --duration=1000 \
#--mix_get_ratio=0.5 --mix_put_ratio=0.5 --mix_seek_ratio=0.0 \
#--options_file="endure_options/mixgraph_default.ini" > "experiment_output/mixgraph_default_option.txt"

echo "Test 2 complete"

# TEST 3: Run the benchmark with mixgraph_robust_option
echo "Starting Test 3: mixgraph_robust_option"

echo "Running fillrandom benchmark to prepare the database..."
$exec_path --db="$db_path" --trace_file="/tmp/op_trace_file" --use_direct_io_for_flush_and_compaction \
--use_direct_reads --compression_type=none --stats_interval_seconds=1 --histogram \
--num=25000000 --benchmarks=fillrandom

$exec_path --use_existing_db=true --db="$db_path" --trace_file="/tmp/op_trace_file" \
--use_direct_io_for_flush_and_compaction --use_direct_reads --compression_type=none \
--stats_interval_seconds=1 --histogram  --num=3000000000 --benchmarks=mixgraph --duration=1000 \
--mix_get_ratio=0.5 --mix_put_ratio=0.5 --mix_seek_ratio=0.0
#--options_file="endure_options/mixgraph_robust.ini" > "experiment_output/mixgraph_robust_option.txt"

echo "Test 3 complete"

## TEST 4: Run the benchmark with mixgraph_nominal_option
#echo "Starting Test 4: mixgraph_nominal_option"
#run_fillrandom  # Prepare the database
#$exec_path --use_existing_db=true --db="$db_path" --trace_file="/tmp/op_trace_file" \
#--use_direct_io_for_flush_and_compaction --use_direct_reads --compression_type=none \
#--stats_interval_seconds=1 --histogram  --num=3000000000 --benchmarks=mixgraph --duration=1000 \
#--mix_get_ratio=0.5 --mix_put_ratio=0.5 --mix_seek_ratio=0.0 \
#--options_file="endure_options/mixgraph_nominal.ini" > "experiment_output/mixgraph_nominal_option.txt"
#
#echo "Test 4 complete"
