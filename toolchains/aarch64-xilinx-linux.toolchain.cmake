# Xilinx Zync: zcu102

# set cross-compiled system type, it's better not use the type which cmake cannot recognized.
SET (CMAKE_SYSTEM_NAME Linux)
SET (CMAKE_SYSTEM_PROCESSOR aarch64)

# aarch64-xilinx-linux-gcc DO NOT need to be installed, so make sure aarch64-xilinx-linux-gcc and aarch64-xilinx-linux-g++ can be found in $PATH:
SET (CMAKE_C_COMPILER   "aarch64-xilinx-linux-gcc")
SET (CMAKE_CXX_COMPILER "aarch64-xilinx-linux-g++")

# set searching rules for cross-compiler
SET (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# other needed options
SET (CMAKE_C_FLAGS --sysroot=${SDKTARGETSYSROOT})
SET (CMAKE_CXX_FLAGS --sysroot=${SDKTARGETSYSROOT})

# do not skip OpenMP check as default
SET (TENGINE_FORCE_SKIP_OPENMP OFF)
