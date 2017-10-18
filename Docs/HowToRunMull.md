# How to run Mull

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Step 1: Building Mull](#step-1-building-mull)
- [Step 2: Getting LLVM bitcode](#step-2-getting-llvm-bitcode)
  - [Example: Fmt library](#example-fmt-library)
- [Step 3: Creating config.yml file](#step-3-creating-configyml-file)
- [Step 4: Running Mull](#step-4-running-mull)
- [Known issues](#known-issues)
  - [LLVM ERROR: Program used external function which could not be resolved!](#llvm-error-program-used-external-function-which-could-not-be-resolved)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Step 1: Building Mull

You need to have a `mull-driver` binary on your machine. We don't distribute
Mull as binary yet so you have to build it yourself.

See:

- [Getting started on Mac OS](/Docs/GettingStartedMacOS.md)
- [Getting started on Ubuntu](/Docs/GettingStartedUbuntu.md)
- [Getting started on CentOS](/Docs/GettingStartedCentOS7.md)

## Step 2: Getting LLVM bitcode

TODO: describe at least 3 different options to obtain LLVM bitcode:

- LTO
- `-emit-llvm -S`
- LTO or emit-llvm integrated to a build system

### Example: Fmt library

> fmt is an open-source formatting library for C++. It can be used as a safe alternative to printf or as a fast alternative to IOStreams.

```
git clone https://github.com/fmtlib/fmt.git
mkdir fmt-build
cd fmt-build
export CC=/opt/llvm-3.9.0/bin/clang
export CXX=/opt/llvm-3.9.0/bin/clang++
export CFLAGS="-flto -g "
export CXXFLAGS="-flto -g "
export CPPFLAGS="-flto -g "
cmake -G "Unix Makefiles" ../fmt
find `pwd` -iname "*.o" > ../fmt.bitcode.list
```

## Step 3: Creating config.yml file

TODO

## Step 4: Running Mull

TODO

## Known issues

### LLVM ERROR: Program used external function which could not be resolved!

TODO

```
LLVM ERROR: Program used external function '__ZN7testing4TestD2Ev' which could not be resolved!
```