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
    printf("Hello, World!\n");
    int N = 8;
    float *vectorA = malloc(sizeof(float) * N);
    float *vectorB = malloc(sizeof(float) * N);
    for (int i = 0; i < N; ++i){
     vectorA[i] = (float)i;
     vectorB[i] = (float)2*(float)i;
    }
    inner2(vectorA, vectorB, N);
    return 0;
}
