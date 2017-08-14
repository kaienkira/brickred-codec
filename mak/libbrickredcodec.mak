include config.mak

TARGET = build/libbrickredcodec
SRCS = \
src/brickred/codec/base64.cc \
src/brickred/codec/mt19937.cc \
src/brickred/codec/sha1.cc \
src/brickred/codec/sha256.cc \
src/brickred/codec/url.cc \

LINK_TYPE = static
INCLUDE = -Isrc
CPP_FLAG = $(BR_CORE_CPP_FLAG)
BUILD_DIR = build

include mak/main.mak

.PHONY: install

install:
	@mkdir -p $(BR_INSTALL_PREFIX)/include/brickred/codec
	@cp src/brickred/codec/*.h $(BR_INSTALL_PREFIX)/include/brickred/codec
	@mkdir -p $(BR_INSTALL_PREFIX)/lib
	@cp $(FINAL_TARGET) $(BR_INSTALL_PREFIX)/lib
