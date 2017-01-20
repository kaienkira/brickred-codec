TARGET = bin/sha1_sum
SRCS = src/test/sha1_sum.cc
LINK_TYPE = exec
INCLUDE = -Isrc
LIB = -Lbuild -lbrickredcodec -lbrickredcore -pthread -lrt
DEPFILE = build/libbrickredcodec.a
BUILD_DIR = build

include mak/main.mak
