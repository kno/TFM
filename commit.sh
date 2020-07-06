#!/bin/bash

for i in `ls output`; do
 git add models/dense-$i-*
 git commit -m "models/dense-"$i
 git push
done