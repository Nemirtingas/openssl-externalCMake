# SPDX-License-Identifier: Unlicense

set(LIBCRYPTO_CURRENTDIR_SOURCES
    ${CMAKE_SOURCE_DIR}/openssl/crypto/mdc2/mdc2dgst.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/mdc2/mdc2_one.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/mdc2/mdc2.h
)

set(LIBCRYPTO_SOURCES ${LIBCRYPTO_SOURCES} ${LIBCRYPTO_CURRENTDIR_SOURCES})

unset(LIBCRYPTO_CURRENTDIR_SOURCES)
