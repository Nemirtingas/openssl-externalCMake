
get_filename_component(LIBCRYPTO_CURRENTDIR ${CMAKE_CURRENT_LIST_FILE} NAME_WE)

set(LIBCRYPTO_${LIBCRYPTO_CURRENTDIR}_SOURCES
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_gen.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_key.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_lib.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_asn1.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_vrf.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_sign.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_err.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_ossl.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_depr.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_ameth.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_pmeth.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_prn.c
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa.h
    ${CMAKE_SOURCE_DIR}/openssl/crypto/dsa/dsa_locl.h
)

set(LIBCRYPTO_SOURCES ${LIBCRYPTO_SOURCES} ${LIBCRYPTO_${LIBCRYPTO_CURRENTDIR}_SOURCES})
unset(LIBCRYPTO_CURRENTDIR)
