#include <clpeak.h>
#include <stdio.h>


int clPeak::runDW(cl::CommandQueue &queue, cl::Program &prog, device_info_t &devInfo, int w0, int w1)
{
  float timed, gflops;
  uint iters = 10000;

  try
  {
    log->print(NEWLINE TAB TAB "half-precision compute (GFLOPS)" NEWLINE);
    log->xmlOpenTag("half_precision_compute");
    log->xmlAppendAttribs("unit", "gflops");
    cl::Context ctx = queue.getInfo<CL_QUEUE_CONTEXT>();
    int c = 96, h = 320, w = 320;
    int rs = 5;
    int clwidth = w * c/4;
    int clheight = h;
    cl::Image2D inImage(ctx, CL_MEM_READ_WRITE, cl::ImageFormat(CL_RGBA, CL_HALF_FLOAT), clwidth, clheight, 0,
                        nullptr, nullptr);
    cl::Image2D outImage(ctx, CL_MEM_READ_WRITE, cl::ImageFormat(CL_RGBA, CL_HALF_FLOAT), clwidth, clheight, 0,
                         nullptr, nullptr);
    cl::Image2D weightImage(ctx, CL_MEM_READ_WRITE, cl::ImageFormat(CL_RGBA, CL_HALF_FLOAT), rs * rs, c/4, 0,
                         nullptr, nullptr);
    cl::Buffer weightBuffer = cl::Buffer(ctx, CL_MEM_READ_ONLY , (rs * rs * c * sizeof(float)));


    cl::NDRange globalSize(c/4*w/4,h);
    int wgs0 = MIN(globalSize[0] / 8, devInfo.maxWGSize);
    //cl::NDRange localSize(wgs0, MIN( devInfo.maxWGSize / wgs0, globalSize[1] / 8) );
    cl::NDRange localSize(w0, w1);


    printf("dw wgs %d %d, max %d\n", localSize[0], localSize[1], devInfo.maxWGSize);
    cl::Kernel kernel_v1(prog, "depthwise_conv2d_s1");


    int pad = 2;
    kernel_v1.setArg(0, c / 4 * w / 4);
    kernel_v1.setArg(1, h);
    kernel_v1.setArg(2, inImage);

    kernel_v1.setArg(3, outImage);
    kernel_v1.setArg(4, weightBuffer);
    kernel_v1.setArg(5, h);
    kernel_v1.setArg(6, w);
    kernel_v1.setArg(7, rs);
    kernel_v1.setArg(8, pad);

    timed = run_kernel(queue, kernel_v1, globalSize, localSize, 100);
    ///////////////////////////////////////////////////////////////////////////
    // Vector width 1
    log->print(TAB TAB TAB "half   : ");

    timed = run_kernel(queue, kernel_v1, globalSize, localSize, iters);

    gflops = timed; //(static_cast<float>(globalWIs) * static_cast<float>(workPerWI)) / timed / 1e3f;

    log->print(gflops);     log->print(NEWLINE);
    log->xmlRecord("half", gflops);
    ///////////////////////////////////////////////////////////////////////////

    log->xmlCloseTag();     // half_precision_compute
  }
  catch(cl::Error &error)
  {
    stringstream ss;
    ss << error.what() << " (" << error.err() << ")" NEWLINE
       << TAB TAB TAB "Tests skipped" NEWLINE;
    log->print(ss.str());
    return -1;
  }

  return 0;
}
