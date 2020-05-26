include config.mak

TARGET = bin/sha256_sum
SRCS = src/test/sha256_sum.cc
LINK_TYPE = exec
INCLUDE = $(BRICKRED_COMPILE_FLAG) -Isrc
LIB = $(BRICKRED_LINK_FLAG) -Lbuild -lbrickredcodec -lbrickredcore -pthread -lrt
DEPFILE = build/libbrickredcodec.a
BUILD_DIR = build

include mak/main.mak
