#!/bin/bash
set -e
#删除编译文件
rm -rf $(pwd)/build/*
cd $(pwd)/build &&
    cmake .. &&
    make
cd ..
cp -r $(pwd)/src/include $(pwd)/lib