#!/bin/sh

echo 
echo "Removing output dir ..."
rm -rf output_dir

echo 
echo "Creating output dir ..."
mkdir output_dir

echo
echo "Generating a file with date in output_dir ..."
echo > output_dir/curr_date.txt
date >> output_dir/curr_date.txt
echo >> output_dir/curr_date.txt

echo
echo
