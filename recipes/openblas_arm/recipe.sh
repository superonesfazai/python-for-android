#!/bin/bash

VERSION_openblas_arm=
URL_openblas_arm=https://github.com/xianyi/OpenBLAS/archive/v0.2.9.rc2.zip
MD5_openblas_arm=af3b83a44ca39efabcce839fb2365d41
BUILD_openblas_arm=$SRC_PATH/jni/openblas_arm
RECIPE_openblas_arm=$RECIPES_PATH/openblas_arm

function prebuild_openblas_arm() {
	true
}

function build_openblas_arm() {
	#cd $SRC_PATH/jni
	cd $BUILD_openblas_arm
	push_arm
	#try ndk-build V=1 openblas_arm
	#try ./Configure no-dso no-krb5 linux-armv4
	#try make build_libs
	make BINARY=64 CC=arm-linux-androideabi-gcc FC=arm-linux-androideabi-gfortran HOSTCC=gcc TARGET=armv7
	#(Optional) make install PREFIX=your_directory
	pop_arm
}

function postbuild_openblas_arm() {
	true
}
