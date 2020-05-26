include config.mak

TARGET = bin/md5_sum_binary
SRCS = src/test/md5_sum_binary.cc
LINK_TYPE = exec
INCLUDE = $(BRICKRED_COMPILE_FLAG) -Isrc
LIB = $(BRICKRED_LINK_FLAG) -Lbuild -lbrickredcodec -lbrickredcore -pthread -lrt
DEPFILE = build/libbrickredcodec.a
BUILD_DIR = build

include mak/main.mak
