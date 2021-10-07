#!/bin/sh

# loop over all notebooks and run nbconvert over them
for i in $(find . | grep -F .ipynb); do
  jupyter nbconvert --to pdf $i
  echo $i
done

