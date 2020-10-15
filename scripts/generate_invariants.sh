#!/bin/bash
SIZE=30
VOXELIZE_COMMAND="/home/kno/Documentos/Master/TFM/Modelnet/_ZernikeMoments/lib/main"
for i in `ls`; do
  if [[ -d $i ]]; then
    mkdir -p output2/$i

    if [ ! -f "output2/$i/train_binvox.done" ]; then
      for j in `ls $i/train/*binvox`
      do
        $VOXELIZE_COMMAND $j $SIZE
      done
      touch output2/$i/train_binvox.done
    fi

    if [ ! -f "output2/$i/test_binvox.done" ]; then
      for j in `ls $i/test/*binvox`
      do
        $VOXELIZE_COMMAND $j $SIZE
      done
      touch output2/$i/test_binvox.done
    fi

  fi
done
