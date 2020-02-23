MSTRINGIFY(

__constant sampler_t SAMPLER1D = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP | CLK_FILTER_NEAREST;

\n#undef FETCH_2
\n#undef FETCH_4
\n#undef FETCH_8
\n
\n#define FETCH_2(sum, id, A, jumpBy)      sum += read_imagef(A, SAMPLER1D, id); id += jumpBy; sum += read_imagef(A, SAMPLER1D, id); id += jumpBy;
\n#define FETCH_4(sum, id, A, jumpBy)      FETCH_2(sum, id, A, jumpBy);   FETCH_2(sum, id, A, jumpBy);
\n#define FETCH_8(sum, id, A, jumpBy)      FETCH_4(sum, id, A, jumpBy);   FETCH_4(sum, id, A, jumpBy);
\n
\n
\n

__kernel void tex_bandwidth_v4_local_offset(__read_only image1d_t input, __global float *B, const int inc)
{
    int id =  get_local_id(0);
    float4 sum = 0;
    // for(int j=0; j<16; j++)
    for(int i=0; i<64; i++)
    {
        FETCH_4(sum, id, input, inc);   
    }
    B[get_group_id(0)] = (sum.S0) + (sum.S1) + (sum.S2) + (sum.S3);
}


)
