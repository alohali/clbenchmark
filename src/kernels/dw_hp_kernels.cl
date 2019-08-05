MSTRINGIFY(

// Stringifying requires a new line after hash defines




__kernel void dw_kernel1(__global float* restrict PaddedInput, __global float* restrict placeholder, __global float* restrict DepthwiseConv2d) {
   float DepthwiseConv2d_local[4];
  DepthwiseConv2d_local[0] = (float)0.000000e+00f;
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[(((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4))] * placeholder[((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25))]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 1)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 2)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 2)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 3)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 3)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 4)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 4)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 324)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 5)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 325)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 6)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 326)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 7)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 327)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 8)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 328)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 9)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 648)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 10)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 649)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 11)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 650)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 12)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 651)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 13)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 652)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 14)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 972)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 15)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 973)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 16)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 974)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 17)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 975)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 18)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 976)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 19)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1296)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 20)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1297)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 21)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1298)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 22)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1299)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 23)]));
  DepthwiseConv2d_local[0] = (DepthwiseConv2d_local[0] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1300)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 24)]));
  DepthwiseConv2d_local[1] = (float)0.000000e+00f;
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1)] * placeholder[((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25))]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 2)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 1)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 3)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 2)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 4)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 3)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 5)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 4)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 325)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 5)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 326)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 6)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 327)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 7)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 328)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 8)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 329)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 9)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 649)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 10)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 650)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 11)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 651)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 12)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 652)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 13)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 653)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 14)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 973)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 15)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 974)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 16)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 975)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 17)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 976)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 18)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 977)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 19)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1297)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 20)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1298)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 21)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1299)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 22)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1300)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 23)]));
  DepthwiseConv2d_local[1] = (DepthwiseConv2d_local[1] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1301)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 24)]));
  DepthwiseConv2d_local[2] = (float)0.000000e+00f;
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 2)] * placeholder[((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25))]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 3)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 1)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 4)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 2)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 5)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 3)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 6)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 4)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 326)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 5)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 327)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 6)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 328)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 7)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 329)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 8)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 330)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 9)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 650)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 10)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 651)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 11)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 652)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 12)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 653)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 13)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 654)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 14)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 974)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 15)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 975)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 16)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 976)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 17)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 977)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 18)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 978)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 19)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1298)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 20)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1299)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 21)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1300)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 22)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1301)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 23)]));
  DepthwiseConv2d_local[2] = (DepthwiseConv2d_local[2] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1302)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 24)]));
  DepthwiseConv2d_local[3] = (float)0.000000e+00f;
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 3)] * placeholder[((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25))]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 4)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 1)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 5)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 2)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 6)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 3)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 7)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 4)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 327)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 5)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 328)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 6)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 329)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 7)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 330)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 8)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 331)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 9)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 651)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 10)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 652)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 11)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 653)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 12)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 654)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 13)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 655)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 14)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 975)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 15)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 976)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 16)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 977)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 17)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 978)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 18)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 979)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 19)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1299)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 20)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1300)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 21)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1301)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 22)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1302)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 23)]));
  DepthwiseConv2d_local[3] = (DepthwiseConv2d_local[3] + (PaddedInput[((((((((int)get_group_id(2)) * 629856) + (((int)get_local_id(2)) * 104976)) + (((int)get_group_id(1)) * 324)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + 1303)] * placeholder[(((((int)get_group_id(2)) * 150) + (((int)get_local_id(2)) * 25)) + 24)]));
  for (int j_inner_inner = 0; j_inner_inner < 4; ++j_inner_inner) {
    DepthwiseConv2d[((((((((int)get_group_id(2)) * 614400) + (((int)get_local_id(2)) * 102400)) + (((int)get_group_id(1)) * 320)) + (((int)get_group_id(0)) * 8)) + (((int)get_local_id(0)) * 4)) + j_inner_inner)] = DepthwiseConv2d_local[j_inner_inner];
  }
}

__constant sampler_t SAMPLER = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP | CLK_FILTER_NEAREST;


__kernel void depthwise_conv2d_s1(__private const int global_size_dim0, __private const int global_size_dim1,
                                  __read_only image2d_t input, __read_only image2d_t filter,
                                  __write_only image2d_t output,
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

    float4 outValue0 = (float4)(0,0,0,0);
    float4 outValue1 = outValue0;
    float4 outValue2 = outValue0;
    float4 outValue3 = outValue0;

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

    float4 inValue0, inValue1, inValue2, inValue3;
    for (int kh = 0; kh < rs; kh++) {
        int inHeightIdx = select(heightIdx + outBatchIdx, -1, (heightIdx < 0 || heightIdx >= height));
        heightIdx++;
        inValue1       = read_imagef(input, SAMPLER, (int2)(inWidthIdx0, inHeightIdx));
        inValue2       = read_imagef(input, SAMPLER, (int2)(inWidthIdx1, inHeightIdx));
        inValue3       = read_imagef(input, SAMPLER, (int2)(inWidthIdx2, inHeightIdx));
        for (int kw = 0; kw < rs; kw++) {

            int filterIdx   = mad24(kh, rs, kw);
            inValue0 = inValue1;
            inValue1 = inValue2;
            inValue2 = inValue3;

            int inWidthIdx = inWidthOffset3 + kw;
            inWidthIdx = select(inCurIdx + inWidthIdx, -1, (inWidthIdx < 0 || inWidthIdx >= width));
            inValue3  = read_imagef(input, SAMPLER, (int2)(inWidthIdx, inHeightIdx));

            float4 weights = read_imagef(filter, SAMPLER, (int2)(filterIdx, inChannelBlockIdx));

            outValue0 = mad(inValue0, weights, outValue0);
            outValue1 = mad(inValue1, weights, outValue1);
            outValue2 = mad(inValue2, weights, outValue2);
            outValue3 = mad(inValue3, weights, outValue3);
        }
    }

    const int remain     = width - outWidthBlockidx4;
    int outWidthIdx       = mul24(outChannelBlockIdx, width) + outWidthBlockidx4;
    if (remain >= 4) {
        write_imagef(output, (int2)(outWidthIdx, outHeightBlockIdx), outValue0);
        write_imagef(output, (int2)(outWidthIdx + 1, outHeightBlockIdx), outValue1);
        write_imagef(output, (int2)(outWidthIdx + 2, outHeightBlockIdx), outValue2);
        write_imagef(output, (int2)(outWidthIdx + 3, outHeightBlockIdx), outValue3);
    } else if (remain == 3) {
        write_imagef(output, (int2)(outWidthIdx, outHeightBlockIdx), outValue0);
        write_imagef(output, (int2)(outWidthIdx + 1, outHeightBlockIdx), outValue1);
        write_imagef(output, (int2)(outWidthIdx + 2, outHeightBlockIdx), outValue2);
    } else if (remain == 2) {
        write_imagef(output, (int2)(outWidthIdx, outHeightBlockIdx), outValue0);
        write_imagef(output, (int2)(outWidthIdx + 1, outHeightBlockIdx), outValue1);
    } else if (remain == 1) {
        write_imagef(output, (int2)(outWidthIdx, outHeightBlockIdx), outValue0);
    }
}


)


