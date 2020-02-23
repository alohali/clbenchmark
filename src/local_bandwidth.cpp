#include <clpeak.h>

#define LOAD_ELE_PER_WI 256

int clPeak::runLocalBandwidthTest(cl::CommandQueue &queue, cl::Program &prog, device_info_t &devInfo)
{
  float timed, gbps;
  cl::NDRange globalSize, localSize;
  float *arr = NULL;

  if (!isGlobalBW)
    return 0;

  cl::Context ctx = queue.getInfo<CL_QUEUE_CONTEXT>();
  uint iters = devInfo.gloalBWIters;
  uint64_t numItems = 128 * 1024 *  devInfo.numCUs;

  try
  {
    arr = new float[numItems];
    populate(arr, numItems);

    log->print(NEWLINE TAB TAB "local memory bandwidth (GBPS)" NEWLINE);
    log->xmlOpenTag("local_memory_bandwidth");
    log->xmlAppendAttribs("unit", "gbps");

    cl::Buffer inputBuf = cl::Buffer(ctx, CL_MEM_READ_ONLY, (numItems * sizeof(float)));
    cl::Buffer outputBuf = cl::Buffer(ctx, CL_MEM_WRITE_ONLY, (numItems * sizeof(float)));
    queue.enqueueWriteBuffer(inputBuf, CL_TRUE, 0, (numItems * sizeof(float)), arr);

    cl::Kernel kernel_v1_l1(prog, "local_bandwidth_v1_local_offset");
    kernel_v1_l1.setArg(0, inputBuf), kernel_v1_l1.setArg(1, outputBuf), kernel_v1_l1.setArg(2, 0);
    cl::Kernel kernel_v1_l2(prog, "local_bandwidth_v1_local_offset");
    kernel_v1_l2.setArg(0, inputBuf), kernel_v1_l2.setArg(1, outputBuf), kernel_v1_l2.setArg(2, 256);

    cl::Kernel kernel_v2_l1(prog, "local_bandwidth_v2_local_offset");
    kernel_v2_l1.setArg(0, inputBuf), kernel_v2_l1.setArg(1, outputBuf), kernel_v2_l1.setArg(2, 0);
    cl::Kernel kernel_v2_l2(prog, "local_bandwidth_v2_local_offset");
    kernel_v2_l2.setArg(0, inputBuf), kernel_v2_l2.setArg(1, outputBuf), kernel_v2_l2.setArg(2, 128);

    cl::Kernel kernel_v4_l1(prog, "local_bandwidth_v4_local_offset");
    kernel_v4_l1.setArg(0, inputBuf), kernel_v4_l1.setArg(1, outputBuf), kernel_v4_l1.setArg(2, 0);
    cl::Kernel kernel_v4_l2(prog, "local_bandwidth_v4_local_offset");
    kernel_v4_l2.setArg(0, inputBuf), kernel_v4_l2.setArg(1, outputBuf), kernel_v4_l2.setArg(2, 64);

    cl::Kernel kernel_v8_l1(prog, "local_bandwidth_v8_local_offset");
    kernel_v8_l1.setArg(0, inputBuf), kernel_v8_l1.setArg(1, outputBuf), kernel_v8_l1.setArg(2, 0);
    cl::Kernel kernel_v8_l2(prog, "local_bandwidth_v8_local_offset");
    kernel_v8_l2.setArg(0, inputBuf), kernel_v8_l2.setArg(1, outputBuf), kernel_v8_l2.setArg(2, 32);

    cl::Kernel kernel_v16_l1(prog, "local_bandwidth_v16_local_offset");
    kernel_v16_l1.setArg(0, inputBuf), kernel_v16_l1.setArg(1, outputBuf), kernel_v16_l1.setArg(2, 0);
    cl::Kernel kernel_v16_l2(prog, "local_bandwidth_v16_local_offset");
    kernel_v16_l2.setArg(0, inputBuf), kernel_v16_l2.setArg(1, outputBuf), kernel_v16_l2.setArg(2, 16);

    localSize = devInfo.maxWGSize;

    ///////////////////////////////////////////////////////////////////////////
    // Vector width 1
    log->print("local size: ");
    log->print(devInfo.maxWGSize);
    log->print(NEWLINE);
    globalSize = numItems;

    log->print("global size: ");
    log->print((int)(numItems));
    log->print(NEWLINE);

    // Run 2 kind of bandwidth kernel
    // lo -- local_size offset - subsequent fetches at local_size offset
    // go -- global_size offset
    log->print(TAB TAB TAB "l1 float  : ");
    timed = run_kernel(queue, kernel_v1_l1, globalSize, localSize, iters);
    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;

    log->print(gbps);
    log->print(NEWLINE);
    log->xmlRecord("float", gbps);

    timed = run_kernel(queue, kernel_v1_l2, globalSize, localSize, iters);
    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;
    log->print(TAB TAB TAB "l2 float  : ");
    log->print(gbps);
    log->print(NEWLINE);
    ///////////////////////////////////////////////////////////////////////////

    // Vector width 2

    globalSize = (numItems / 2);

    log->print(TAB TAB TAB "l1float2  : ");
    timed = run_kernel(queue, kernel_v2_l1, globalSize, localSize, iters);
    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;
    log->print(gbps);
    log->print(NEWLINE);
    log->print(TAB TAB TAB "l2float2  : ");
    timed = run_kernel(queue, kernel_v2_l2, globalSize, localSize, iters);
    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;
    log->print(gbps);
    log->print(NEWLINE);
    log->xmlRecord("float2", gbps);
    ///////////////////////////////////////////////////////////////////////////

    // Vector width 4
    log->print(TAB TAB TAB "float4  : ");

    globalSize = (numItems / 4);

    timed = run_kernel(queue, kernel_v4_l1, globalSize, localSize, iters);
    

    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;

    log->print(gbps);
    log->print(NEWLINE);

    log->print(TAB TAB TAB "l2float4  : ");
    timed = run_kernel(queue, kernel_v4_l2, globalSize, localSize, iters);
    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;
    log->print(gbps);
    log->print(NEWLINE);
    log->xmlRecord("float4", gbps);

    log->xmlRecord("float4", gbps);
    ///////////////////////////////////////////////////////////////////////////

    // Vector width 8
    log->print(TAB TAB TAB "float8  : ");

    globalSize = (numItems / 8);

    timed = run_kernel(queue, kernel_v8_l1, globalSize, localSize, iters);
    
    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;

    log->print(gbps);
    log->print(NEWLINE);

        log->print(TAB TAB TAB "l2float8  : ");
    timed = run_kernel(queue, kernel_v8_l2, globalSize, localSize, iters);
    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;
    log->print(gbps);
    log->print(NEWLINE);
    log->xmlRecord("float8", gbps);

    log->xmlRecord("float8", gbps);
    ///////////////////////////////////////////////////////////////////////////

    // Vector width 16
    log->print(TAB TAB TAB "float16 : ");
    globalSize = (numItems / 16);

    timed = run_kernel(queue, kernel_v16_l1, globalSize, localSize, iters);
    

    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;

    log->print(gbps);
    log->print(NEWLINE);

    log->print(TAB TAB TAB "l2float16  : ");
    timed = run_kernel(queue, kernel_v16_l2, globalSize, localSize, iters);
    gbps = ((float)numItems * sizeof(float) * LOAD_ELE_PER_WI) / timed / 1e3f;
    log->print(gbps);
    log->print(NEWLINE);
    log->xmlRecord("float16", gbps);
    ///////////////////////////////////////////////////////////////////////////
    log->xmlCloseTag(); // global_memory_bandwidth

    if (arr)
    {
      delete[] arr;
    }
  }
  catch (cl::Error &error)
  {
    stringstream ss;
    ss << error.what() << " (" << error.err() << ")" NEWLINE
       << TAB TAB TAB "Tests skipped" NEWLINE;
    log->print(ss.str());

    if (arr)
    {
      delete[] arr;
    }
    return -1;
  }

  return 0;
}
