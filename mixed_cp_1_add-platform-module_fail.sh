#!/bin/bash
set -e

echo "Your code is non-modular"
echo "Adding @Generated's platform module makes JSR-305 JAR on class path invisible"

echo " > cleaning build"
rm -rf build
mkdir build

echo " > compile"
javac \
	--class-path deps/jsr305-3.0.2.jar \
	--add-modules java.xml.ws.annotation \
	-d build \
	src/org/codefx/demo/java9/jsr305/MixedJsr305AndJavaxAnnotation.java
