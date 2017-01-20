include config.mak

MAKE = make --no-print-directory

define ECHO
	@printf "\033[;31m"; printf $1; printf "\033[0m\n"
endef

.PHONY: debug release profile clean install

debug release profile clean:
	@$(call ECHO, "[build libbrickredcodec]")
	@$(MAKE) -f mak/libbrickredcodec.mak $@
ifeq ($(BR_BUILD_TEST), yes)
	@$(call ECHO, "[build base64_encode]")
	@$(MAKE) -f mak/test/base64_encode.mak $@
	@$(call ECHO, "[build base64_decode]")
	@$(MAKE) -f mak/test/base64_decode.mak $@
	@$(call ECHO, "[build sha1_sum]")
	@$(MAKE) -f mak/test/sha1_sum.mak $@
	@$(call ECHO, "[build sha1_sum_binary]")
	@$(MAKE) -f mak/test/sha1_sum_binary.mak $@
	@$(call ECHO, "[build sha256_sum]")
	@$(MAKE) -f mak/test/sha256_sum.mak $@
	@$(call ECHO, "[build sha256_sum_binary]")
	@$(MAKE) -f mak/test/sha256_sum_binary.mak $@
	@$(call ECHO, "[build url_encode]")
	@$(MAKE) -f mak/test/url_encode.mak $@
	@$(call ECHO, "[build url_decode]")
	@$(MAKE) -f mak/test/url_decode.mak $@
endif

install:
	@$(call ECHO, "[install libbrickredcodec]")
	@$(MAKE) -f mak/libbrickredcodec.mak $@
