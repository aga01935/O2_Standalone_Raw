copts="--configuration json://config_name --shm-segment-size 100000000000 --aod-memory-rate-limit 1000000000 -b "
start=$(date +%s.%N)
./task_name $copts --aod-writer-json OutputDirector_name
end=$(date +%s.%N)
# Calculate elapsed time
elapsed_seconds=$(echo "$end - $start" | bc)

elapsed_minutes=$(echo "scale=2; $elapsed_seconds / 60" | bc)

echo "Elapsed time: $elapsed_seconds seconds"
echo "Elapsed time: $elapsed_minutes minutes"
