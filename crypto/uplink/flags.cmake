# SPDX-License-Identifier: Unlicense

if ( OPENSSL_TARGET_ARCH STREQUAL "x64" )
    set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DOPENSSL_USE_UPLINK")
elseif ( OPENSSL_TARGET_ARCH STREQUAL "x86" )
    if (NOT MSVC)
        if (NOT OPENSSL_386)
            set(LIBCRYPTO_CFLAGS ${LIBCRYPTO_CFLAGS} "-DOPENSSL_USE_UPLINK")
        endif()
    endif()
elseif ( OPENSSL_TARGET_ARCH STREQUAL "arm32" )
    # no-asm
elseif ( OPENSSL_TARGET_ARCH STREQUAL "arm64" )
    # no-asm
endif()
