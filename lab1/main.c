#include <stdio.h>
#include <xmmintrin.h>

float inner2(float* x, float* y, int n){
    __m128 *xx, *yy;
    __m128 p, s;
    xx = (__m128*)x;
    yy = (__m128*)y;
    s = _mm_setzero_ps();
    for(int i=0; i<n/4; ++i){
        p = _mm_mul_ps(xx[i],yy[i]);
        s = _mm_add_ps(s,p);
     }
    p = _mm_movehl_ps(p,s);
    s = _mm_add_ps(s,p);
    p = _mm_shuffle_ps(s,s,1);
    s = _mm_add_ss(s,p);
    float sum;
    _mm_store_ss(&sum,s);
    printf("%f", sum);
    return sum;
}

int main() {
    union ticks{
        unsigned long long t64;
        struct s32 { long th, tl; } t32;
    } start, end;
    double cpu_Hz = 4000000000ULL; // for 3 GHz CPU
    int N = 4;
    //float *vectorA = malloc(sizeof(float) * N);
    //float *vectorB = malloc(sizeof(float) * N);
    float vectorA[] = {2, 4, 6, 8, 10, 12, 14, 16};
    float vectorB[] = {2, 2, 2, 2, 2, 2, 2, 2};
    /*for (int i = 0; i < N; ++i){
       vectorA[i] = (float)i;
       vectorB[i] = (float)2*(float)i;
    }*/
    __m128 *xx, *yy;
    __m128 p, x, y, z;
    xx = (__m128*)vectorA;
    yy = (__m128*)vectorB;

    /*for(long long i=0; i<100000000000; ++i){
        _mm_div_ps(xx[0],yy[0]);
    }*/
    asm("rdtsc\n":"=a"(start.t32.th),"=d"(start.t32.tl));
    for(long long i=0; i<1000000; ++i){
        x = _mm_div_ps(xx[0],yy[0]);
        y = _mm_div_ps(xx[4],yy[4]);
        z = x/y;

    }
    asm("rdtsc\n":"=a"(end.t32.th),"=d"(end.t32.tl));
    printf("Time taken: %lf sec.\n",(end.t64-start.t64)/cpu_Hz);
    float sum;
    _mm_store_ss(&sum,z);
    printf("%f", sum);
    //inner2(vectorA, vectorB, N);
    return 0;
}
