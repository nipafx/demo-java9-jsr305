#!/bin/bash
set -e

echo "Your code is non-modular"
echo "JSR-305 JAR is on the class path"

echo " > cleaning build"
rm -rf build
mkdir build

echo " > compile"
javac \
	--class-path 'deps/jsr305-3.0.2.jar' \
	-d build \
	src/org/codefx/demo/java9/jsr305/PureJsr305.java

echo " > execute"
java \
	--class-path build \
	org.codefx.demo.java9.jsr305.PureJsr305
