[![Build CI](https://github.com/ashutoshvarma/libxpdf/workflows/Build%20CI/badge.svg?branch=master)](https://github.com/ashutoshvarma/libxpdf/actions?query=workflow%3A%22Build+CI%22)
# libxpdf

Static library build from [xpdf reader](http://www.xpdfreader.com/download.html) source with most dependencies(`zlib`, `libpng`, `freetype2`) included within.

## Linking against libxpdf
All the optional dependencies (`fontconfig` and `libpaper`) are disabled. 

Only `Threads` are required dependency.

## Building
CMake is used throughout the whole configuration and building process. You can get more information about CMake in the documentation.

CMake encourages to use out-of-source builds to not to pollute the directory with source code with compiled binaries. Typical building scenario on UNIX-like system looks as following:
```Shell
mkdir ./libxpdf-build
cd ./libxpdf-build
cmake -DCMAKE_BUILD_TYPE=Release ../libxpdf
make
```

Use -G option to select build system other than based on Makefile. To pass any variable to CMake use -D option.

Use CMAKE_C_COMPILER variable to override default C compiler, and CMAKE_CXX_COMPILER variable to override default C++ compiler.

Use CMAKE_C_FLAGS variable to add specific compilation flags to C compiler, and CMAKE_CXX_FLAGS variable for C++ compiler.

#### Other Options
To set other xpdf build options read their   [INSTALL](https://github.com/ashutoshvarma/libxpdf/blob/master/xpdf-4.02/INSTALL)

Xpdf tools can be build along library using `BUILD_TOOLS` cmake option. Disabled by default.




