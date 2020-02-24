# clpeak

A synthetic benchmarking tool to measure peak capabilities of opencl devices. It only measures the peak metrics that can be achieved using vector operations and does not represent a real-world use case

## Building

```console
git submodule update --init --recursive --remote
mkdir build
cd build
cmake ..
cmake --build .
```

## Sample

```text

Platform: ARM Platform
sys max wg 384
  Device: Mali-G76
    Driver version  : 2.0 (Android)
    Compute units   : 10
    Clock frequency : 5 MHz

    TEX memory bandwidth (GBPS)
local size: 256
global size: 1310720
      l1 tex float4  : 124.49
      l2 tex float4  : 71.55

    local memory bandwidth (GBPS)
local size: 256
global size: 1310720
      l1 float  : 110.27
      l2 float  : 27.37
      l1float2  : 112.49
      l2float2  : 45.09
      float4  : 111.14
      l2float4  : 50.78
      float8  : 111.93
      l2float8  : 26.19
      float16 : 69.23
      l2float16  : 13.23

    Global memory bandwidth (GBPS)
      float   : 20.83
      float2  : 21.22
      float4  : 21.65
      float8  : 11.54
      float16 : 5.63

    Single-precision compute (GFLOPS)
      float   : 340.96
      float2  : 339.92
      float4  : 341.17
      float8  : 340.00
      float16 : 332.40

    Half-precision compute (GFLOPS)
      half   : 340.23
      half2  : 673.04
      half4  : 670.97
      half8  : 666.97
      half16 : 658.51

    Transfer bandwidth (GBPS)
      enqueueWriteBuffer         : 6.78
      enqueueReadBuffer          : 8.24
      enqueueMapBuffer(for read) : 16.48
        memcpy from mapped ptr   : 9.05
      enqueueUnmap(after write)  : 15.75
        memcpy to mapped ptr     : 7.71

    Kernel launch latency : 7.12 us

