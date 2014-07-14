#!/bin/bash

VERSION_pyrequests=${VERSION_pyrequests:-2.3.0}
URL_pyrequests=http://pypi.python.org/packages/source/r/requests/requests-$VERSION_pyrequests.tar.gz
DEPS_pyrequests=(python)
MD5_pyrequests=7449ffdc8ec9ac37bbcd286003c80f00
BUILD_pyrequests=$BUILD_PATH/pyrequests/$(get_directory $URL_pyrequests)
RECIPE_pyrequests=$RECIPES_PATH/pyrequests

function prebuild_pyrequests() {
	cd $BUILD_pyrequests
	true
}

function shouldbuild_pyrequests() {
	if [ -d "$SITEPACKAGES_PATH/pyrequests" ]; then
		DO_BUILD=0
	fi
}

function build_pyrequests() {
	cd $BUILD_pyrequests

	push_arm

	try $HOSTPYTHON setup.py build
	#try find build/lib.* -name "*.o" -exec $STRIP {} \;

	try $HOSTPYTHON setup.py install -O2

	pop_arm
}

function postbuild_pyrequests() {
	true
}
