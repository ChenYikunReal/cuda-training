#include <iostream>
#include <cstdio>
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

using namespace std;

void main()
{
    int dev = 0;
    cudaDeviceProp devProp;
    cudaGetDeviceProperties(&devProp, dev);
    cout << "使用GPU device " << dev << ": " << devProp.name << endl;
    cout << "SM的数量：" << devProp.multiProcessorCount << endl;
    cout << "每个线程块的共享内存大小：" << devProp.sharedMemPerBlock / 1024.0 << " KB" << endl;
    cout << "每个线程块的最大线程数：" << devProp.maxThreadsPerBlock << endl;
    cout << "每个EM的最大线程数：" << devProp.maxThreadsPerMultiProcessor << endl;
    cout << "每个EM的最大线程束数：" << devProp.maxThreadsPerMultiProcessor / 32 << endl;
}