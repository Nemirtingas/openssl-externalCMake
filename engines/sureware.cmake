# SPDX-License-Identifier: Unlicense

set(ENGINE_CURRENTDIR_SOURCES
    ${CMAKE_SOURCE_DIR}/openssl/engines/e_sureware.c
    ${CMAKE_SOURCE_DIR}/openssl/engines/e_sureware_err.h
)

set(ENGINE_SOURCES ${ENGINE_SOURCES} ${ENGINE_CURRENTDIR_SOURCES})

unset(ENGINE_CURRENTDIR_SOURCES)
