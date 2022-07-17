#!/bin/sh

echo "Feito por NBO2001.."

sudo apt install update
sudo apt install upgrade

sudo apt install \
                  build-essential git ninja-build \
                  clang-tools lld llvm-dev libclang-dev \
                  libpng-dev libjpeg-dev libgl-dev \
                  python3-dev python3-numpy python3-scipy python3-imageio \
                  libopenblas-dev libeigen3-dev libatlas-base-dev -y

sudo wget https://github.com/halide/Halide/releases/download/v14.0.0/Halide-14.0.0-x86-64-linux-6b9ed2afd1d6d0badf04986602c943e287d44e46.tar.gz

tar -vzxf Halide-14.0.0-x86-64-linux-6b9ed2afd1d6d0badf04986602c943e287d44e46.tar.gz

mv Halide-14.0.0-x86-64-linux ~/