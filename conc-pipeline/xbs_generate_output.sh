
#!/bin/sh

echo
echo "1) Current dir:"
pwd

echo
echo "2) Dirs before removing try (in current dir):"
ls -la 

echo 
echo "3) Removing output dir ..."
rm -rf output_dir

echo
echo "4) Dirs after removing try (in current dir):"
ls -la

echo 
echo "5) Creating output dir ..."
mkdir output_dir

echo
echo "6) Dirs after output creation try (in current dir):"
ls -la

echo
echo "7) Generating a file with date in output_dir ..."
echo > output_dir/curr_date.txt
date >> output_dir/curr_date.txt
echo >> output_dir/curr_date.txt


echo
echo "8) So all files after generating output (starting from curr dir):"
ls -la *

echo
echo
