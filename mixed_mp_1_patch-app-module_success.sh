#!/bin/bash
set -e

echo "Your code is modular"
echo "Only @Generated's module is required; JSR-305 is patched into it"

echo " > cleaning build"
rm -rf build
mkdir build

echo " > making sure only one module is required"
sed -i 's/requires jsr305/\/\/ requires jsr305/g' src/module-info.java

echo " > compile"
javac \
	--module-path deps/javax.annotation-api-1.3.1.jar \
	--patch-module java.annotation=deps/jsr305-3.0.2.jar \
	-d build \
	src/module-info.java src/org/codefx/demo/java9/jsr305/MixedJsr305AndJavaxAnnotation.java

sed -i 's/\/\/ requires jsr305/requires jsr305/g' src/module-info.java

echo " > execute"
java \
	--module-path build:deps/javax.annotation-api-1.3.1.jar \
	--patch-module java.annotation=deps/jsr305-3.0.2.jar \
	--module org.codefx.demo.java9_.jsr305_/org.codefx.demo.java9.jsr305.MixedJsr305AndJavaxAnnotation
