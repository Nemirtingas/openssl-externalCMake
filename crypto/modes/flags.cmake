# SPDX-License-Identifier: Unlicense

if (OPENSSL_ASM)
    if ( OPENSSL_TARGET_ARCH STREQUAL "x64" )
        set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DGHASH_ASM")
    elseif ( OPENSSL_TARGET_ARCH STREQUAL "x86" )
        set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DGHASH_ASM")
    elseif ( OPENSSL_TARGET_ARCH STREQUAL "arm32" )
        set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DGHASH_ASM")
    elseif ( OPENSSL_TARGET_ARCH STREQUAL "arm64" )
        # no flags set for ASM
    endif()
endif()
