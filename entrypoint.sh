#!/bin/sh

#loop over all notebooks and run nbconvert to pdf over them

for i in $(find '.' | greb -F .ipynb); do 
  jupyter nbconvert --to pdf
  echo $i
done  
