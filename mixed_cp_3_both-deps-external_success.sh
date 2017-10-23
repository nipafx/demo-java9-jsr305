#!/bin/bash
set -e

echo "Your code is non-modular"
echo "Patching JSR 305 JAR into @Generated's platform module works"

echo " > cleaning build"
rm -rf build
mkdir build

echo " > compile"
javac \
	--class-path deps/jsr305-3.0.2.jar:deps/javax.annotation-api-1.3.1.jar \
	-d build \
	src/org/codefx/demo/java9/jsr305/MixedJsr305AndJavaxAnnotation.java

echo " > execute"
java \
	--class-path build \
	org.codefx.demo.java9.jsr305.MixedJsr305AndJavaxAnnotation
