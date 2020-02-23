MSTRINGIFY(

\n#undef FETCH_2
\n#undef FETCH_8
\n
\n#define FETCH_2(sum, id, A, jumpBy)      sum += A[id];   id += jumpBy;   sum += A[id];   id += jumpBy;
\n#define FETCH_4(sum, id, A, jumpBy)      FETCH_2(sum, id, A, jumpBy);   FETCH_2(sum, id, A, jumpBy);
\n#define FETCH_8(sum, id, A, jumpBy)      FETCH_4(sum, id, A, jumpBy);   FETCH_4(sum, id, A, jumpBy);
\n
\n
\n

// Kernels fetching by local_size offset
__kernel void local_bandwidth_v1_local_offset(__global float *A, __global float *B, const int inc)
{
    int id =  get_local_id(0);
    float sum = 0;

    // for(int j=0; j<16; j++)
    for(int i=0; i<64; i++)
    {
        FETCH_4(sum, id, A, inc);
    }

    B[get_global_id(0)] = sum;
}


__kernel void local_bandwidth_v2_local_offset(__global float2 *A, __global float *B, const int inc)
{
    int id =  get_local_id(0);
    float2 sum = 0;
    // for(int j=0; j<16; j++)
    for(int i=0; i<64; i++)
    {
        FETCH_4(sum, id, A, inc);
    }

    B[get_group_id(0)] = (sum.S0) + (sum.S1);
}


__kernel void local_bandwidth_v4_local_offset(__global float4 *A, __global float *B, const int inc)
{
    int id =  get_local_id(0);
    float4 sum = 0;
    // for(int j=0; j<16; j++)
    for(int i=0; i<64; i++)
    {
        FETCH_4(sum, id, A, inc);   
    }
    B[get_group_id(0)] = (sum.S0) + (sum.S1) + (sum.S2) + (sum.S3);
}


__kernel void local_bandwidth_v8_local_offset(__global float8 *A, __global float *B, const int inc)
{
    int id =  get_local_id(0);
    float8 sum = 0;

    // for(int j=0; j<16; j++)/
    for(int i=0; i<64; i++)
    {
        FETCH_4(sum, id, A, inc);
    }

    B[get_global_id(0)] = (sum.S0) + (sum.S1) + (sum.S2) + (sum.S3) + (sum.S4) + (sum.S5) + (sum.S6) + (sum.S7);
}

__kernel void local_bandwidth_v16_local_offset(__global float16 *A, __global float *B, const int inc)
{
    int id =  get_local_id(0);
    float16 sum = 0;

    // for(int j=0; j<16; j++)
    for(int i=0; i<64; i++)
    {
        FETCH_4(sum, id, A, inc);
    }

    float t = (sum.S0) + (sum.S1) + (sum.S2) + (sum.S3) + (sum.S4) + (sum.S5) + (sum.S6) + (sum.S7);
    t += (sum.S8) + (sum.S9) + (sum.SA) + (sum.SB) + (sum.SC) + (sum.SD) + (sum.SE) + (sum.SF);
    B[get_global_id(0)] = t;
}



)
