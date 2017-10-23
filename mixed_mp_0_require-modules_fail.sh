#!/bin/bash
set -e

echo "Your code is modular"
echo "JSR-305 and @Generated's module are required (as automatic modules)"

echo " > cleaning build"
rm -rf build
mkdir build

echo " > compile"
javac \
	--module-path deps \
	-d build \
	src/module-info.java src/org/codefx/demo/java9/jsr305/MixedJsr305AndJavaxAnnotation.java
