
get_filename_component(LIBCRYPTO_CURRENTDIR ${CMAKE_CURRENT_LIST_FILE} NAME_WE)

set(LIBCRYPTO_${LIBCRYPTO_CURRENTDIR}_SOURCES
    ${CMAKE_SOURCE_DIR}/openssl/crypto/md4/md4_dgst.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/md4/md4_one.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/md4/md4.h
    ${CMAKE_SOURCE_DIR}/openssl/crypto/md4/md4_locl.h
)

set(LIBCRYPTO_SOURCES ${LIBCRYPTO_SOURCES} ${LIBCRYPTO_${LIBCRYPTO_CURRENTDIR}_SOURCES})
unset(LIBCRYPTO_CURRENTDIR)
