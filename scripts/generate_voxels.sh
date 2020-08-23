#!/bin/bash
SIZE=24
VOXELIZE_COMMAND="/tf/TFM/cuda_voxelizer/build/cuda_voxelizer -f"
for i in `ls`; do
  if [[ -d $i ]]; then
    mkdir -p output2/$i

    if [ ! -f "output2/$i/train.done" ]; then
      for j in `ls $i/train`
      do
        $VOXELIZE_COMMAND $i/train/$j -s $SIZE
      done
      touch output2/$i/train.done
    fi

    if [ ! -f "output2/$i/test.done" ]; then
      for j in `ls $i/test`
      do
        $VOXELIZE_COMMAND $i/test/$j -s $SIZE
      done
      touch output2/$i/test.done
    fi

  fi
done