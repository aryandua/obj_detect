#!/bin/bash

cd yolov3-tf2

for image_file in $(ls ../../dataset_gen/data_pictures)
do
    image=${image_file%.*}
    cp ../../dataset_gen/data_pictures/$image_file input  

    cd ../canny/
    cp ../yolov3-tf2/input .
    mv input file
    python canny.py
    python supimp.py
    cp out2.png ../yolov3-tf2/input
    cd ../yolov3-tf2
    
    python detect.py --image input
    image_txt=($image.txt)
    mv new_result.txt ../../gens/
    cd ../../gens/
    mv new_result.txt $image_txt
    cd ../objdetect/yolov3-tf2/
done
