TARGET = bin/base64_encode
SRCS = src/test/base64_encode.cc
LINK_TYPE = exec
INCLUDE = -Isrc
LIB = -Lbuild -lbrickredcodec -lbrickredcore -pthread -lrt
DEPFILE = build/libbrickredcodec.a
BUILD_DIR = build

include mak/main.mak
