include config.mak

TARGET = build/libbrickredcodec
SRCS = \
src/brickred/codec/base64.cc \
src/brickred/codec/md5.cc \
src/brickred/codec/mt19937.cc \
src/brickred/codec/sha1.cc \
src/brickred/codec/sha256.cc \
src/brickred/codec/url.cc \

LINK_TYPE = static
INCLUDE = -Isrc
CPP_FLAG = $(BRICKRED_COMPILE_FLAG)
BUILD_DIR = build

include mak/main.mak

.PHONY: install

install:
	@mkdir -p "$(BRICKRED_INSTALL_PREFIX)"/include/brickred/codec
	@cp src/brickred/codec/*.h \
		"$(BRICKRED_INSTALL_PREFIX)"/include/brickred/codec
	@mkdir -p "$(BRICKRED_INSTALL_PREFIX)"/lib
	@cp "$(FINAL_TARGET)" "$(BRICKRED_INSTALL_PREFIX)"/lib
