#!/bin/bash

VERSION_plotly=${VERSION_plotly:-1.1.4}
URL_plotly=http://pypi.python.org/packages/source/p/plotly/plotly-$VERSION_plotly.tar.gz
DEPS_plotly=(pyrequests python)
MD5_plotly=96161687279503abb6b1f7befcce0fc7
BUILD_plotly=$BUILD_PATH/plotly/$(get_directory $URL_plotly)
RECIPE_plotly=$RECIPES_PATH/plotly

function prebuild_plotly() {
	cd $BUILD_plotly
	true
}

function shouldbuild_plotly() {
	if [ -d "$SITEPACKAGES_PATH/plotly" ]; then
		DO_BUILD=0
	fi
}

function build_plotly() {
	cd $BUILD_plotly

	push_arm

	try $HOSTPYTHON setup.py build
	#try find build/lib.* -name "*.o" -exec $STRIP {} \;

	try $HOSTPYTHON setup.py install -O2

	pop_arm
}

function postbuild_plotly() {
	true
}
