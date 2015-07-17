cmake_minimum_required(VERSION 2.6)

project(quotek)

SET (CMAKE_CXX_COMPILER "/usr/bin/clang++")
SET (CMAKE_C_COMPILER "/usr/bib/clang")
SET (CMAKE_CXX_FLAGS "-O3 -std=c++11 -stdlib=libc++ -fPIC")

SET (CMAKE_LINKER_FLAGS    "-rdynamic")

SET (CMAKE_AR      "/usr/bin/llvm-ar")
SET (CMAKE_LINKER  "/usr/bin/ld")
SET (CMAKE_NM      "/usr/bin/llvm-nm")
SET (CMAKE_OBJDUMP "/usr/bin/llvm-objdump")
SET (CMAKE_RANLIB  "/usr/bin/llvm-ranlib")
SET (CMAKE_INSTALL_PREFIX  "/usr")

add_executable(
       test_quant
       src/test_quant.cpp
)

add_executable(
		test_timeutils
		src/test_timeutils.cpp
)

find_library (quotek QUOTEK) 

target_link_libraries(
        test_quant
        quotek
        pthread
)

target_link_libraries(
        test_timeutils
        quotek
        pthread
)