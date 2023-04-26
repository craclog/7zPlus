# Test 7zplus.sh

# Save result of pwd
current_dir=$(pwd)
echo "Current directory : $current_dir"

# Execute 7zplus.sh
sh ../src/7zplus.sh -x ../test/A.7z ../test/tmp

# Check result
target_dir="../test/tmp"
if [ -d $target_dir ]; then
    echo "Test passed."
else
    echo "Test failed. No directory: $target_dir"
fi

# Clean up the result
echo "Clean up the result."
rm -rf ../test/tmp


