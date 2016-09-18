#!/bin/bash

for file in droids_1.mp4

do no=1
nu=2
while [ $no -le 400 ]

do ffmpeg -y -i droids_$no.mp4 -strict -2 -filter_complex aecho=0.8:0.88:6:0.4 -filter_complex unsharp=luma_amount=-1.5 droids_$nu.mp4

no=$(($no + 1))

nu=$(($nu + 1))

done

done