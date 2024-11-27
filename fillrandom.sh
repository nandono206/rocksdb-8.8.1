exec_path="cmake-build-debug/db_bench"
db_path="/tmp/readrandom_db"

$exec_path --compression_type=none --num=1000000 --benchmarks="fillrandom"  \
--db="$db_path" --use_direct_reads --use_direct_io_for_flush_and_compaction
#--options_file="endure_options_new/fillrandom_robust_1.ini"

#$exec_path --compression_type=none --num=1000000 --benchmarks="fillrandom" --trace_file="/tmp/op_trace_file" \
#--db="$db_path" --use_direct_reads --use_direct_io_for_flush_and_compaction --value_size=1000
##--options_file="endure_options/fillrandom_robust.ini"
##--use_existing_db=true --db="$db_path" \
##--options_file="endure_options/fillrandom_robust.ini"


$exec_path --compression_type=none --num=1000000 --benchmarks="readrandom"  \
--use_direct_reads --use_direct_io_for_flush_and_compaction \
--use_existing_db=true --db="$db_path" \
#--options_file="endure_options/readrandom_robust.ini"

#$exec_path --benchmarks="mixgraph" --use_direct_io_for_flush_and_compaction --use_existing_db -db=$db_path \
#--use_direct_reads --cache_size=268435456 --keyrange_num=1 --compression_type=none \
# --value_k=0.2615 --value_sigma=25.45 --iter_k=2.517 --iter_sigma=14.236 --mix_get_ratio=0.83 \
#--mix_put_ratio=0.14 --mix_seek_ratio=0.03 --sine_mix_rate_interval_milliseconds=5000 \
#--sine_a=1000 --sine_b=0.000000073 --sine_d=4500000 --perf_level=2 \
#--reads=4200000 --num=5000000 --key_size=48 --options_file="endure_options_new/mixgraph_robust_1.ini" \
#-trace_file="/tmp/op_trace_file_dbbench"

#--keyrange_dist_a=14.18 --keyrange_dist_b=-2.917 --keyrange_dist_c=0.0164 --keyrange_dist_d=-0.08082 \
#--keyrange_num=30 --mix_get_ratio=0.85 --mix_seek_ratio=0.01 --perf_level=1
#
#./db_bench --compression_max_wal_buffer_bytes=0 --benchmarks=mixgraph --compression_type=none --histogram \
#--statistics --stats_interval_seconds=1 --use_direct_reads --use_direct_io_for_flush_and_compaction \
#--cache_size=6442450944 --benchmarks=mixgraph --db=$DB_FOLDER_PATH --num=20000000 --keyrange_num=1 \
#--value_k=0.2615 --value_sigma=25.45 --iter_k=2.517 --iter_sigma=14.236 --mix_get_ratio=0.83 \
#--mix_put_ratio=0.14 --mix_seek_ratio=0.03 --key_size=48 --perf_level=2 --sine_a=3000000 --sine_b=0.219 \
#--sine_d=14000000 --perf_level=2 --sine_mix_rate_interval_milliseconds=5000 --use_existing_db

#$exec_path --compression_type=none --num=1000000 --benchmarks="readrandom" --trace_file="/tmp/op_trace_file" \
#--use_direct_reads --use_direct_io_for_flush_and_compaction \
#--use_existing_db=true --db="$db_path" \
#--options_file="endure_options_new/readrandom_robust_2.ini"

#$exec_path --compression_type=none --num=1000000 --benchmarks="readrandom" --trace_file="/tmp/op_trace_file" \
#--use_direct_reads --use_direct_io_for_flush_and_compaction \
#--use_existing_db=true --db="$db_path" --options_file="endure_options_new/readrandom_nominal_1.ini"
#--options_file="endure_options_new/readrandom_nominal_1.ini"


#$exec_path --compression_type=none --num=1000000 --benchmarks="readrandom" --trace_file="/tmp/op_trace_file" \
#--use_direct_reads --use_direct_io_for_flush_and_compaction \
#--options_file="endure_options/nominal_tuning.ini" \
#--use_existing_db=true --db="$db_path"