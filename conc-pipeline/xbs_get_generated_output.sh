#!/bin/sh


echo
echo "1) Current dir:"
pwd


echo
echo "2) Dirs before getting output (current dir):"
ls -la

echo
echo "3) Getting generated output ..."

echo
cat output_dir/curr_date.txt
echo
echo

