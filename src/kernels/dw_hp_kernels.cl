MSTRINGIFY(

// Stringifying requires a new line after hash defines



__constant sampler_t SAMPLER = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP | CLK_FILTER_NEAREST;


__kernel void depthwise_conv2d_s1(__private const int global_size_dim0, __private const int global_size_dim1,
                                  __read_only image2d_t input,
                                  __write_only image2d_t output,
                                 __global half * restrict w_ptr,
                                  __private const int height,
                                  __private const int width,
                                  __private const int rs,
                                  __private const int pad) {

    const int outChannelWidthIdx = get_global_id(0);
    const int outHeightBlockIdx     = get_global_id(1);
    
    if (outChannelWidthIdx >= global_size_dim0 || outHeightBlockIdx >= global_size_dim1) { 
        return;                                                     
    }

    int ow4              = (width + 3) / 4;
    const int outChannelBlockIdx = outChannelWidthIdx / ow4;
    const int outWidthBlockidx   = outChannelWidthIdx % ow4;

    const int inChannelBlockIdx = outChannelBlockIdx;

    half4 outValue0 = (half4)(0,0,0,0);
    half4 outValue1 = outValue0;
    half4 outValue2 = outValue0;
    half4 outValue3 = outValue0;

    const int outWidthBlockidx4 = outWidthBlockidx << 2;
    const int inWidthOffset0             = outWidthBlockidx4 - pad;
    const int inWidthOffset1             = inWidthOffset0 + 1;
    const int inWidthOffset2             = inWidthOffset0 + 2;
    const int inWidthOffset3             = inWidthOffset0 + 3;

    int heightIdx            = outHeightBlockIdx % height - pad;
    const int outBatchIdx = mul24((outHeightBlockIdx / height), height);
    const int inCurIdx = mul24(inChannelBlockIdx, width);

    const int inWidthIdx0 = select(inCurIdx + inWidthOffset0, -1, (inWidthOffset0 < 0 || inWidthOffset0 >= width));
    const int inWidthIdx1 = select(inCurIdx + inWidthOffset1, -1, (inWidthOffset1 < 0 || inWidthOffset1 >= width));
    const int inWidthIdx2 = select(inCurIdx + inWidthOffset2, -1, (inWidthOffset2 < 0 || inWidthOffset2 >= width));

    half4 inValue0, inValue1, inValue2, inValue3;
    for (int kh = 0; kh < rs; kh++) {
        int inHeightIdx = select(heightIdx + outBatchIdx, -1, (heightIdx < 0 || heightIdx >= height));
        heightIdx++;
        inValue1       = read_imageh(input, SAMPLER, (int2)(inWidthIdx0, inHeightIdx));
        inValue2       = read_imageh(input, SAMPLER, (int2)(inWidthIdx1, inHeightIdx));
        inValue3       = read_imageh(input, SAMPLER, (int2)(inWidthIdx2, inHeightIdx));
        for (int kw = 0; kw < rs; kw++) {

            int filterIdx   = mad24(kh, rs, kw);
            inValue0 = inValue1;
            inValue1 = inValue2;
            inValue2 = inValue3;

            int inWidthIdx = inWidthOffset3 + kw;
            inWidthIdx = select(inCurIdx + inWidthIdx, -1, (inWidthIdx < 0 || inWidthIdx >= width));
            inValue3  = read_imageh(input, SAMPLER, (int2)(inWidthIdx, inHeightIdx));

//            half4 weights = read_imageh(filter, SAMPLER, (int2)(filterIdx, inChannelBlockIdx));
            half4 weights = vload4(filterIdx + inChannelBlockIdx * 25, w_ptr);


            outValue0 = mad(inValue0, weights, outValue0);
            outValue1 = mad(inValue1, weights, outValue1);
            outValue2 = mad(inValue2, weights, outValue2);
            outValue3 = mad(inValue3, weights, outValue3);
        }
    }

    const int remain     = width - outWidthBlockidx4;
    int outWidthIdx       = mul24(outChannelBlockIdx, width) + outWidthBlockidx4;
    if (remain >= 4) {
        write_imageh(output, (int2)(outWidthIdx, outHeightBlockIdx), outValue0);
        write_imageh(output, (int2)(outWidthIdx + 1, outHeightBlockIdx), outValue1);
        write_imageh(output, (int2)(outWidthIdx + 2, outHeightBlockIdx), outValue2);
        write_imageh(output, (int2)(outWidthIdx + 3, outHeightBlockIdx), outValue3);
    } else if (remain == 3) {
        write_imageh(output, (int2)(outWidthIdx, outHeightBlockIdx), outValue0);
        write_imageh(output, (int2)(outWidthIdx + 1, outHeightBlockIdx), outValue1);
        write_imageh(output, (int2)(outWidthIdx + 2, outHeightBlockIdx), outValue2);
    } else if (remain == 2) {
        write_imageh(output, (int2)(outWidthIdx, outHeightBlockIdx), outValue0);
        write_imageh(output, (int2)(outWidthIdx + 1, outHeightBlockIdx), outValue1);
    } else if (remain == 1) {
        write_imageh(output, (int2)(outWidthIdx, outHeightBlockIdx), outValue0);
    }
}


)


