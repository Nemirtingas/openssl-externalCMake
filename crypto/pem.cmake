
get_filename_component(LIBCRYPTO_CURRENTDIR ${CMAKE_CURRENT_LIST_FILE} NAME_WE)

set(LIBCRYPTO_${LIBCRYPTO_CURRENTDIR}_SOURCES
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_sign.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_seal.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_info.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_lib.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_all.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_err.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_x509.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_xaux.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_oth.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_pk8.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem_pkey.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pvkfmt.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem.h
    ${CMAKE_SOURCE_DIR}/openssl/crypto/pem/pem2.h
)

set(LIBCRYPTO_SOURCES ${LIBCRYPTO_SOURCES} ${LIBCRYPTO_${LIBCRYPTO_CURRENTDIR}_SOURCES})
unset(LIBCRYPTO_CURRENTDIR)
