cmake_minimum_required(VERSION 3.1)
project(clpeak)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/common.cmake)

if (NOT CMAKE_BUILD_TYPE)
  message(STATUS "Setting build type to Release")
  set(CMAKE_BUILD_TYPE "Release")
endif()


include_directories(${CMAKE_CURRENT_SOURCE_DIR}/cl_hpp/include)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/cl_hpp/lib)
set(CMAKE_CXX_STANDARD "11")
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CLPEAK_SOURCE_FILES
    src/common.cpp
    src/clpeak.cpp
    src/options.cpp
    src/logger.cpp
    src/global_bandwidth.cpp
    src/local_bandwidth.cpp
    src/tex_bandwidth.cpp
    src/compute_sp.cpp
    src/dw.cpp
    src/compute_hp.cpp
    src/compute_dp.cpp
    src/compute_integer.cpp
    src/transfer_bandwidth.cpp
    src/kernel_latency.cpp
    src/entry.cpp
)

add_executable(clpeak ${CLPEAK_SOURCE_FILES})
target_link_libraries(clpeak OpenCL)
target_include_directories(clpeak PRIVATE ${OpenCL_INCLUDE_DIRS} "include" "src/kernels")
target_compile_definitions(clpeak PRIVATE CL_TARGET_OPENCL_VERSION=120)

if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang" OR
   CMAKE_CXX_COMPILER_ID STREQUAL "GNU"   OR
   CMAKE_CXX_COMPILER_ID STREQUAL "AppleClang")
  target_compile_options(clpeak PRIVATE -fPIC -Wall -Wextra -Wconversion -Wno-deprecated-declarations -Wno-unused-parameter -Wno-ignored-attributes)
elseif(MSVC)
  target_compile_options(clpeak PRIVATE /wd4996)
endif()

install(TARGETS clpeak RUNTIME DESTINATION bin)
install(FILES LICENSE DESTINATION share/clpeak)

enable_testing()
add_test(clpeak_test_run clpeak)

set(CPACK_PACKAGE_FILE_NAME "${CMAKE_PROJECT_NAME}-${CMAKE_SYSTEM_NAME}-${CMAKE_SYSTEM_PROCESSOR}-${VERSION_STR}")
set(CPACK_GENERATOR "ZIP")
include (CPack)
