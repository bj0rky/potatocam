#!/bin/sh

###
##
## potatocapture v01
##
## Blatant copy/paste from different sources by bj0rky
##
## Should capture one frame from the potatocam, append a timestamp to the filename
## and upload to the interwebs if not handeled by another script
##
##
##
###

## Potato Setup
potato_name=potatocam
current_time=$(date "+%Y.%m.%d-%H.%M.%S")

image_dir=~/potatocam/images
## future sensor stuff
##sensor_data=~/potatocam/sensors

echo "Current Time : $current_time"

new_potatoName=$potato_name.$current_time

echo "FileName: " "$new_potatoName"

ffmpeg -y -i http://1.3.3.2/ -vframes 1 $image_dir/$potato_name.$current_time.jpg 2> /dev/null


echo "You should see new potato image grabbed from the url with timestamp.."

## Potato Upload
## find a nice way to upload these files somewhere
## 
## more to come
