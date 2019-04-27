cmake_minimum_required(VERSION 3.5)
project (mull)
enable_language (Fortran)


# Default to Release build
if(NOT CMAKE_BUILD_TYPE)
  message(STATUS "No build type selected, default to Release")
  set(CMAKE_BUILD_TYPE "Release")
#  set(CMAKE_BUILD_TYPE "Debug")
endif()



# FFLAGS depend on the compiler
get_filename_component (Fortran_COMPILER_NAME ${CMAKE_Fortran_COMPILER} NAME)

if(CMAKE_Fortran_COMPILER_ID MATCHES "Intel")
    set(dialect "-std08  -module . -implicitnone -fpp -pedantic")
    set(bounds " -check bounds")
    set(realeaseopts "-funroll-all-loops -O2")
    set(debugopts "-O0 -g -traceback -check all -debug extended -debug-parameters all")
endif()

set(CMAKE_Fortran_FLAGS_DEBUG "${CMAKE_Fortran_FLAGS_DEBUG} ${bounds}")
set(CMAKE_Fortran_FLAGS_DEBUG "${CMAKE_Fortran_FLAGS_DEBUG} ${debugopts}")
set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} ${dialect}")
set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_RELEASE_FLAGS} ${realeaseopts}")

include_directories("${PROJECT_SOURCE_DIR}/src")

set(SRC src)
set(mull_SRC
  ${SRC}/naivemath.F90
  ${SRC}/bettermath.F90
  ${SRC}/dotmath.F90
  ${SRC}/main.F90
  )



# Target definition
add_executable(mull ${mull_SRC})


