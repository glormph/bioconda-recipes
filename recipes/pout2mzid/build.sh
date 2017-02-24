#!/bin/bash

mkdir pout2mzidbuild && cd pout2mzidbuild
cmake $SRC_DIR/CMakeLists.txt -B 
cmake -DTARGET_ARCH=x86_64 -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX -DXML_SUPPORT=ON -DCMAKE_PREFIX_PATH="$PREFIX;$PREFIX/lib" $SRC_DIR
make && make install
cd ..
