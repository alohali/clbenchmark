#include <clpeak.h>

#define TEX_ELE_PER_WI 256

int clPeak::runTexBandwidthTest(cl::CommandQueue &queue, cl::Program &prog, device_info_t &devInfo)
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
      localSize = devInfo.maxWGSize;
      arr = new float[numItems];
      populate(arr, numItems);

      log->print(NEWLINE TAB TAB "TEX memory bandwidth (GBPS)" NEWLINE);
      log->xmlOpenTag("local_memory_bandwidth");
      log->xmlAppendAttribs("unit", "gbps");

      cl::Image1D inputImage = cl::Image1D(ctx, CL_MEM_READ_ONLY | CL_MEM_COPY_HOST_PTR, cl::ImageFormat(CL_RGBA, CL_FLOAT), 256 * 256, arr);
      cl::Buffer outputBuf = cl::Buffer(ctx, CL_MEM_WRITE_ONLY, (numItems * sizeof(float)));

      cl::Kernel kernel_v1_l1(prog, "tex_bandwidth_v4_local_offset");
      kernel_v1_l1.setArg(0, inputImage), kernel_v1_l1.setArg(1, outputBuf), kernel_v1_l1.setArg(2, 0);
      cl::Kernel kernel_v1_l2(prog, "tex_bandwidth_v4_local_offset");
      kernel_v1_l2.setArg(0, inputImage), kernel_v1_l2.setArg(1, outputBuf), kernel_v1_l2.setArg(2, 256);

      log->print("local size: ");
      log->print(devInfo.maxWGSize);
      log->print(NEWLINE);
      globalSize = numItems;

      log->print("global size: ");
      log->print((int)(numItems));
      log->print(NEWLINE);

      // Vector width 4
      log->print(TAB TAB TAB "l1 tex float4  : ");

      globalSize = (numItems / 4);
      timed = run_kernel(queue, kernel_v1_l1, globalSize, localSize, iters);
      gbps = ((float)numItems * sizeof(float) * TEX_ELE_PER_WI) / timed / 1e3f;
      log->print(gbps);
      log->print(NEWLINE);

      log->print(TAB TAB TAB "l2 tex float4  : ");
      timed = run_kernel(queue, kernel_v1_l2, globalSize, localSize, iters);
      gbps = ((float)numItems * sizeof(float) * TEX_ELE_PER_WI) / timed / 1e3f;
      log->print(gbps);
      log->print(NEWLINE);
      log->xmlRecord("float4", gbps);

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
