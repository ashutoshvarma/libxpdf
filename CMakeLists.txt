cmake_minimum_required(VERSION 3.16)
project(libxpdf)

include(external/external.cmake)

# Disable fontconfig and paper library 
set(NO_FONTCONFIG True)
set(NO_PAPER True)

add_subdirectory(xpdf-4.02)
