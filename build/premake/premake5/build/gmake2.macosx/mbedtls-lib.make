# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

ifeq ($(origin CC), default)
  CC = clang
endif
ifeq ($(origin CXX), default)
  CXX = clang++
endif
ifeq ($(origin AR), default)
  AR = ar
endif
INCLUDES += -I../../contrib/mbedtls/include -I../../contrib/zlib
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
ALL_LDFLAGS += $(LDFLAGS)
LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),release)
TARGETDIR = bin/Release
TARGET = $(TARGETDIR)/libmbedtls-lib.a
OBJDIR = obj/Release/mbedtls-lib
DEFINES += -DPREMAKE_COMPRESSION -DCURL_STATICLIB -DPREMAKE_CURL -DNDEBUG -DMBEDTLS_ZLIB_SUPPORT
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O3 -w
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O3 -w -fno-stack-protector

else ifeq ($(config),debug)
TARGETDIR = bin/Debug
TARGET = $(TARGETDIR)/libmbedtls-lib.a
OBJDIR = obj/Debug/mbedtls-lib
DEFINES += -DPREMAKE_COMPRESSION -DCURL_STATICLIB -DPREMAKE_CURL -D_DEBUG -DMBEDTLS_ZLIB_SUPPORT
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g -w
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g -w

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/aes.o
GENERATED += $(OBJDIR)/aesni.o
GENERATED += $(OBJDIR)/arc4.o
GENERATED += $(OBJDIR)/asn1parse.o
GENERATED += $(OBJDIR)/asn1write.o
GENERATED += $(OBJDIR)/base64.o
GENERATED += $(OBJDIR)/bignum.o
GENERATED += $(OBJDIR)/blowfish.o
GENERATED += $(OBJDIR)/camellia.o
GENERATED += $(OBJDIR)/ccm.o
GENERATED += $(OBJDIR)/certs.o
GENERATED += $(OBJDIR)/cipher.o
GENERATED += $(OBJDIR)/cipher_wrap.o
GENERATED += $(OBJDIR)/ctr_drbg.o
GENERATED += $(OBJDIR)/debug.o
GENERATED += $(OBJDIR)/des.o
GENERATED += $(OBJDIR)/dhm.o
GENERATED += $(OBJDIR)/ecdh.o
GENERATED += $(OBJDIR)/ecdsa.o
GENERATED += $(OBJDIR)/ecjpake.o
GENERATED += $(OBJDIR)/ecp.o
GENERATED += $(OBJDIR)/ecp_curves.o
GENERATED += $(OBJDIR)/entropy.o
GENERATED += $(OBJDIR)/entropy_poll.o
GENERATED += $(OBJDIR)/error.o
GENERATED += $(OBJDIR)/gcm.o
GENERATED += $(OBJDIR)/havege.o
GENERATED += $(OBJDIR)/hmac_drbg.o
GENERATED += $(OBJDIR)/md.o
GENERATED += $(OBJDIR)/md2.o
GENERATED += $(OBJDIR)/md4.o
GENERATED += $(OBJDIR)/md5.o
GENERATED += $(OBJDIR)/md_wrap.o
GENERATED += $(OBJDIR)/memory_buffer_alloc.o
GENERATED += $(OBJDIR)/net.o
GENERATED += $(OBJDIR)/oid.o
GENERATED += $(OBJDIR)/padlock.o
GENERATED += $(OBJDIR)/pem.o
GENERATED += $(OBJDIR)/pk.o
GENERATED += $(OBJDIR)/pk_wrap.o
GENERATED += $(OBJDIR)/pkcs11.o
GENERATED += $(OBJDIR)/pkcs12.o
GENERATED += $(OBJDIR)/pkcs5.o
GENERATED += $(OBJDIR)/pkparse.o
GENERATED += $(OBJDIR)/pkwrite.o
GENERATED += $(OBJDIR)/platform.o
GENERATED += $(OBJDIR)/ripemd160.o
GENERATED += $(OBJDIR)/rsa.o
GENERATED += $(OBJDIR)/sha1.o
GENERATED += $(OBJDIR)/sha256.o
GENERATED += $(OBJDIR)/sha512.o
GENERATED += $(OBJDIR)/ssl_cache.o
GENERATED += $(OBJDIR)/ssl_ciphersuites.o
GENERATED += $(OBJDIR)/ssl_cli.o
GENERATED += $(OBJDIR)/ssl_cookie.o
GENERATED += $(OBJDIR)/ssl_srv.o
GENERATED += $(OBJDIR)/ssl_ticket.o
GENERATED += $(OBJDIR)/ssl_tls.o
GENERATED += $(OBJDIR)/threading.o
GENERATED += $(OBJDIR)/timing.o
GENERATED += $(OBJDIR)/version.o
GENERATED += $(OBJDIR)/version_features.o
GENERATED += $(OBJDIR)/x509.o
GENERATED += $(OBJDIR)/x509_create.o
GENERATED += $(OBJDIR)/x509_crl.o
GENERATED += $(OBJDIR)/x509_crt.o
GENERATED += $(OBJDIR)/x509_csr.o
GENERATED += $(OBJDIR)/x509write_crt.o
GENERATED += $(OBJDIR)/x509write_csr.o
GENERATED += $(OBJDIR)/xtea.o
OBJECTS += $(OBJDIR)/aes.o
OBJECTS += $(OBJDIR)/aesni.o
OBJECTS += $(OBJDIR)/arc4.o
OBJECTS += $(OBJDIR)/asn1parse.o
OBJECTS += $(OBJDIR)/asn1write.o
OBJECTS += $(OBJDIR)/base64.o
OBJECTS += $(OBJDIR)/bignum.o
OBJECTS += $(OBJDIR)/blowfish.o
OBJECTS += $(OBJDIR)/camellia.o
OBJECTS += $(OBJDIR)/ccm.o
OBJECTS += $(OBJDIR)/certs.o
OBJECTS += $(OBJDIR)/cipher.o
OBJECTS += $(OBJDIR)/cipher_wrap.o
OBJECTS += $(OBJDIR)/ctr_drbg.o
OBJECTS += $(OBJDIR)/debug.o
OBJECTS += $(OBJDIR)/des.o
OBJECTS += $(OBJDIR)/dhm.o
OBJECTS += $(OBJDIR)/ecdh.o
OBJECTS += $(OBJDIR)/ecdsa.o
OBJECTS += $(OBJDIR)/ecjpake.o
OBJECTS += $(OBJDIR)/ecp.o
OBJECTS += $(OBJDIR)/ecp_curves.o
OBJECTS += $(OBJDIR)/entropy.o
OBJECTS += $(OBJDIR)/entropy_poll.o
OBJECTS += $(OBJDIR)/error.o
OBJECTS += $(OBJDIR)/gcm.o
OBJECTS += $(OBJDIR)/havege.o
OBJECTS += $(OBJDIR)/hmac_drbg.o
OBJECTS += $(OBJDIR)/md.o
OBJECTS += $(OBJDIR)/md2.o
OBJECTS += $(OBJDIR)/md4.o
OBJECTS += $(OBJDIR)/md5.o
OBJECTS += $(OBJDIR)/md_wrap.o
OBJECTS += $(OBJDIR)/memory_buffer_alloc.o
OBJECTS += $(OBJDIR)/net.o
OBJECTS += $(OBJDIR)/oid.o
OBJECTS += $(OBJDIR)/padlock.o
OBJECTS += $(OBJDIR)/pem.o
OBJECTS += $(OBJDIR)/pk.o
OBJECTS += $(OBJDIR)/pk_wrap.o
OBJECTS += $(OBJDIR)/pkcs11.o
OBJECTS += $(OBJDIR)/pkcs12.o
OBJECTS += $(OBJDIR)/pkcs5.o
OBJECTS += $(OBJDIR)/pkparse.o
OBJECTS += $(OBJDIR)/pkwrite.o
OBJECTS += $(OBJDIR)/platform.o
OBJECTS += $(OBJDIR)/ripemd160.o
OBJECTS += $(OBJDIR)/rsa.o
OBJECTS += $(OBJDIR)/sha1.o
OBJECTS += $(OBJDIR)/sha256.o
OBJECTS += $(OBJDIR)/sha512.o
OBJECTS += $(OBJDIR)/ssl_cache.o
OBJECTS += $(OBJDIR)/ssl_ciphersuites.o
OBJECTS += $(OBJDIR)/ssl_cli.o
OBJECTS += $(OBJDIR)/ssl_cookie.o
OBJECTS += $(OBJDIR)/ssl_srv.o
OBJECTS += $(OBJDIR)/ssl_ticket.o
OBJECTS += $(OBJDIR)/ssl_tls.o
OBJECTS += $(OBJDIR)/threading.o
OBJECTS += $(OBJDIR)/timing.o
OBJECTS += $(OBJDIR)/version.o
OBJECTS += $(OBJDIR)/version_features.o
OBJECTS += $(OBJDIR)/x509.o
OBJECTS += $(OBJDIR)/x509_create.o
OBJECTS += $(OBJDIR)/x509_crl.o
OBJECTS += $(OBJDIR)/x509_crt.o
OBJECTS += $(OBJDIR)/x509_csr.o
OBJECTS += $(OBJDIR)/x509write_crt.o
OBJECTS += $(OBJDIR)/x509write_csr.o
OBJECTS += $(OBJDIR)/xtea.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking mbedtls-lib
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning mbedtls-lib
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) rmdir /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/aes.o: ../../contrib/mbedtls/library/aes.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/aesni.o: ../../contrib/mbedtls/library/aesni.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/arc4.o: ../../contrib/mbedtls/library/arc4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/asn1parse.o: ../../contrib/mbedtls/library/asn1parse.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/asn1write.o: ../../contrib/mbedtls/library/asn1write.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/base64.o: ../../contrib/mbedtls/library/base64.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/bignum.o: ../../contrib/mbedtls/library/bignum.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/blowfish.o: ../../contrib/mbedtls/library/blowfish.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/camellia.o: ../../contrib/mbedtls/library/camellia.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ccm.o: ../../contrib/mbedtls/library/ccm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/certs.o: ../../contrib/mbedtls/library/certs.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cipher.o: ../../contrib/mbedtls/library/cipher.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cipher_wrap.o: ../../contrib/mbedtls/library/cipher_wrap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ctr_drbg.o: ../../contrib/mbedtls/library/ctr_drbg.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/debug.o: ../../contrib/mbedtls/library/debug.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/des.o: ../../contrib/mbedtls/library/des.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dhm.o: ../../contrib/mbedtls/library/dhm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ecdh.o: ../../contrib/mbedtls/library/ecdh.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ecdsa.o: ../../contrib/mbedtls/library/ecdsa.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ecjpake.o: ../../contrib/mbedtls/library/ecjpake.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ecp.o: ../../contrib/mbedtls/library/ecp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ecp_curves.o: ../../contrib/mbedtls/library/ecp_curves.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/entropy.o: ../../contrib/mbedtls/library/entropy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/entropy_poll.o: ../../contrib/mbedtls/library/entropy_poll.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/error.o: ../../contrib/mbedtls/library/error.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gcm.o: ../../contrib/mbedtls/library/gcm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/havege.o: ../../contrib/mbedtls/library/havege.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hmac_drbg.o: ../../contrib/mbedtls/library/hmac_drbg.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md.o: ../../contrib/mbedtls/library/md.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md2.o: ../../contrib/mbedtls/library/md2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md4.o: ../../contrib/mbedtls/library/md4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md5.o: ../../contrib/mbedtls/library/md5.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md_wrap.o: ../../contrib/mbedtls/library/md_wrap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/memory_buffer_alloc.o: ../../contrib/mbedtls/library/memory_buffer_alloc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/net.o: ../../contrib/mbedtls/library/net.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/oid.o: ../../contrib/mbedtls/library/oid.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/padlock.o: ../../contrib/mbedtls/library/padlock.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pem.o: ../../contrib/mbedtls/library/pem.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pk.o: ../../contrib/mbedtls/library/pk.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pk_wrap.o: ../../contrib/mbedtls/library/pk_wrap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pkcs11.o: ../../contrib/mbedtls/library/pkcs11.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pkcs12.o: ../../contrib/mbedtls/library/pkcs12.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pkcs5.o: ../../contrib/mbedtls/library/pkcs5.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pkparse.o: ../../contrib/mbedtls/library/pkparse.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pkwrite.o: ../../contrib/mbedtls/library/pkwrite.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/platform.o: ../../contrib/mbedtls/library/platform.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ripemd160.o: ../../contrib/mbedtls/library/ripemd160.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/rsa.o: ../../contrib/mbedtls/library/rsa.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/sha1.o: ../../contrib/mbedtls/library/sha1.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/sha256.o: ../../contrib/mbedtls/library/sha256.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/sha512.o: ../../contrib/mbedtls/library/sha512.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_cache.o: ../../contrib/mbedtls/library/ssl_cache.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_ciphersuites.o: ../../contrib/mbedtls/library/ssl_ciphersuites.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_cli.o: ../../contrib/mbedtls/library/ssl_cli.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_cookie.o: ../../contrib/mbedtls/library/ssl_cookie.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_srv.o: ../../contrib/mbedtls/library/ssl_srv.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_ticket.o: ../../contrib/mbedtls/library/ssl_ticket.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_tls.o: ../../contrib/mbedtls/library/ssl_tls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/threading.o: ../../contrib/mbedtls/library/threading.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/timing.o: ../../contrib/mbedtls/library/timing.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/version.o: ../../contrib/mbedtls/library/version.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/version_features.o: ../../contrib/mbedtls/library/version_features.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509.o: ../../contrib/mbedtls/library/x509.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509_create.o: ../../contrib/mbedtls/library/x509_create.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509_crl.o: ../../contrib/mbedtls/library/x509_crl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509_crt.o: ../../contrib/mbedtls/library/x509_crt.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509_csr.o: ../../contrib/mbedtls/library/x509_csr.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509write_crt.o: ../../contrib/mbedtls/library/x509write_crt.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509write_csr.o: ../../contrib/mbedtls/library/x509write_csr.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/xtea.o: ../../contrib/mbedtls/library/xtea.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif