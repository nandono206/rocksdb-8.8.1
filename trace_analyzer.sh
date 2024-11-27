trace_analyzer_exec="cmake-build-debug/trace_analyzer"
trace_data_dir="trace_data_Dir"
key_space_dir="trace_data_Dir"
trace_path="/tmp/op_trace_file"

$trace_analyzer_exec \
  -analyze_get \
  -analyze_put \
  -analyze_delete \
  -analyze_iterator \
  -analyze_merge \
  -analyze_multiget \
  -analyze_range_delete \
  -analyze_single_delete \
  -convert_to_human_readable_trace\
  -output_dir="$trace_data_dir" \
  -trace_path="$trace_path"
#  -output_ml_features \
