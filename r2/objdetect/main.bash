#!/bin/bash
echo "Enter file name"
read file

cd yolov3-tf2
cp ../$file input

python detect.py --image input
mv new_result.txt ../yolov3-tf2/old_result.txt
mv output.jpg ../yolov3-tf2/old_output.jpg

cd ../canny
cp ../$file file
python canny.py
python supimp.py

cd ../yolov3-tf2
cp ../canny/out2.png input
python detect.py --image input
mv ../yolov3-tf2/output.jpg ../yolov3-tf2/new_output.jpg


echo "MY RESULT:"
cat new_result.txt
echo
echo
echo

echo "THEIR RESULT:"
cat old_result.txt
echo
echo
echo


cd ..


