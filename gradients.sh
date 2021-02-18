#! /bin/bash

dir="gradients"

if [ ! -d "$dir" ]; then
  mkdir $dir
fi

cd $dir

for i in $(seq 1 $3); do
  r1=$(($RANDOM%256))
  g1=$(($RANDOM%256))
  b1=$(($RANDOM%256))
  
  r2=$(($RANDOM%256))
  g2=$(($RANDOM%256))
  b2=$(($RANDOM%256))

  a=$(($RANDOM%181))

  name="gradient_${i}.png"

  echo "Generating gradient $i of $3 ..."

  magick -size $1x$2 -define gradient:angle=$a gradient:'rgb('$r1','$g1','$b1')'-'rgb('$r2','$g2','$b2')' $name
done

