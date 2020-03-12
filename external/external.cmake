cmake_minimum_required(VERSION 3.16)
project(EXTERNAL_DEPS)
include(cmake/mimick_find.cmake)

# To prevent libpng and freetype2 from exporting targets
# which cause ugly error as zlib does not export
set(SKIP_INSTALL_ALL TRUE)

set(ZLIB_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/external/zlib)
set(PNG_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/external/libpng)
set(FREETYPE_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/external/freetype2)

add_subdirectory(${ZLIB_DIRECTORY})
mimick_find("ZLIB" zlibstatic)

add_subdirectory(${PNG_DIRECTORY})

# Disbale all the freetype2 optional dependencies
set(CMAKE_DISABLE_FIND_PACKAGE_HarfBuzz TRUE)
set(CMAKE_DISABLE_FIND_PACKAGE_BZip2 TRUE)
set(CMAKE_DISABLE_FIND_PACKAGE_ZLIB TRUE)
set(CMAKE_DISABLE_FIND_PACKAGE_PNG TRUE)
unset_mimick_find("ZLIB")
add_subdirectory(${FREETYPE_DIRECTORY})


