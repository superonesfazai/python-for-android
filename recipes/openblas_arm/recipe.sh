#!/bin/bash

VERSION_openblas_arm=
URL_openblas_arm=http://sourceforge.net/projects/openblas/files/v0.2.9-rc2-lapacktest/optimized-lapack/openblas-v0.2.9-rc2-lapack-armv7.tar.gz
MD5_openblas_arm=0a4ae5b8c1eceddd0fcfd52941f2b1df
BUILD_openblas_arm=$BUILD_PATH/openblas_arm/$(get_directory $URL_openblas_arm)
RECIPE_openblas_arm=$RECIPES_PATH/openblas_arm

function prebuild_openblas_arm() {
	true
}

function build_openblas_arm() {
	#cd $SRC_PATH/jni
	cd $BUILD_openblas_arm
	cp -rf include $BUILD_PATH/python-install
	cp -rf lib $BUILD_PATH/python-install
	#push_arm
	#try ndk-build V=1 openblas_arm
	#try ./Configure no-dso no-krb5 linux-armv4
	#try make build_libs
	#make BINARY=64 CC=arm-linux-androideabi-gcc FC=arm-linux-androideabi-gfortran HOSTCC=gcc TARGET=armv7
	#(Optional) make install PREFIX=your_directory
	#pop_arm
}

function postbuild_openblas_arm() {
	true
}
