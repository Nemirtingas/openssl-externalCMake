# SPDX-License-Identifier: Unlicense

if (OPENSSL_ASM)
    if ( OPENSSL_TARGET_ARCH STREQUAL "x64" )
        set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DAES_ASM" "-DVPAES_ASM" "-DBSAES_ASM")
    elseif ( OPENSSL_TARGET_ARCH STREQUAL "x86" )
        set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DAES_ASM")
        if (OPENSSL_SSE2)
            set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DVPAES_ASM")
        endif()
    elseif ( OPENSSL_TARGET_ARCH STREQUAL "arm32" )
        set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DAES_ASM" "-DBSAES_ASM")
    elseif ( OPENSSL_TARGET_ARCH STREQUAL "arm64" )
        # no flags set for ASM
    endif()
endif()
