#!/bin/bash

VERSION_clapack=
URL_clapack=
MD5_clapack=
BUILD_clapack=$SRC_PATH/jni/clapack
RECIPE_clapack=$RECIPES_PATH/clapack

function prebuild_clapack() {
	true
}

function build_clapack() {
	cd $SRC_PATH/jni
	push_arm
	try ndk-build V=1 clapack
	pop_arm
}

function postbuild_clapack() {
	true
}
