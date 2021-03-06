#include <clpeak.h>

#define FETCH_PER_WI 16

int clPeak::runKernelLatency(cl::CommandQueue &queue, cl::Program &prog, device_info_t &devInfo)
{
  if (!isKernelLatency)
    return 0;

  cl::Context ctx = queue.getInfo<CL_QUEUE_CONTEXT>();
  cl_uint numItems = 1024;
  cl::NDRange globalSize = 8;
  cl::NDRange localSize = 4;
  uint iters = 10000;
  float latency;

  try
  {
    log->print(NEWLINE TAB TAB "Kernel launch latency : ");
    log->xmlOpenTag("kernel_launch_latency");
    log->xmlAppendAttribs("unit", "us");

    cl::Buffer inputBuf = cl::Buffer(ctx, CL_MEM_READ_ONLY, (numItems * sizeof(float)));
    cl::Buffer outputBuf = cl::Buffer(ctx, CL_MEM_WRITE_ONLY, (numItems * sizeof(float)));

    cl::Kernel kernel_v1(prog, "global_bandwidth_v1_local_offset");
    kernel_v1.setArg(0, inputBuf), kernel_v1.setArg(1, outputBuf);

    // Dummy calls
    queue.enqueueNDRangeKernel(kernel_v1, cl::NullRange, globalSize, localSize);
    queue.enqueueNDRangeKernel(kernel_v1, cl::NullRange, globalSize, localSize);
    queue.finish();

    Timer timer;

    timer.start();
    latency = 0;
    cl::Event timeEvent;
    for (uint i = 0; i < iters; i++)
    {
      queue.enqueueNDRangeKernel(kernel_v1, cl::NullRange, globalSize, localSize, NULL, &timeEvent);
      queue.finish();
    }

    queue.finish();
    float timed = timer.stopAndTime();
    timed /= static_cast<float>(iters);

    log->print(timed);
    log->print(" us" NEWLINE);
    log->xmlSetContent(latency);
    log->xmlCloseTag();
  }
  catch (cl::Error &error)
  {
    stringstream ss;
    ss << error.what() << " (" << error.err() << ")" NEWLINE
       << TAB TAB TAB "Tests skipped" NEWLINE;
    log->print(ss.str());
    return -1;
  }

  return 0;
}
