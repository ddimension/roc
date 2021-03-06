#! /bin/bash
set -euxo pipefail

TOOLCHAIN="aarch64-linux-android"

scons -Q clean

scons -Q \
    --enable-werror \
    --disable-tools \
    --disable-examples \
    --build-3rdparty=libuv,openfec,cpputest \
    --compiler=clang \
    --host=${TOOLCHAIN}
