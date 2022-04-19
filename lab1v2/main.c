#include<stdio.h>
#include <x86intrin.h>

#define COUNT 9999999

double calculateLatency() {

    unsigned int ui;
    unsigned long long start = __rdtscp(&ui);

    __asm__ volatile (
    "mov $0, %ecx;"
    ".L1:"
    "divps    %xmm2, %xmm1;"
    "divps    %xmm2, %xmm1;"
    "divps    %xmm2, %xmm1;"
    "divps    %xmm2, %xmm1;"
    "divps    %xmm2, %xmm1;"
    "inc    %ecx;"
    "cmp    $9999999, %ecx;"
    "jl     .L1;"
    );

    unsigned long long ticks = __rdtscp(&ui) - start;
    double latency = (double) ticks / (5 * COUNT);
    printf("\nTicks: %lld\nLatency: %lf\n", ticks, latency);

    return latency;
}

double calculateThroughput() {

    unsigned int ui;
    unsigned long long start = __rdtscp(&ui);

    __asm__ volatile (
    "mov $0, %ecx;"
    ".L6:"
    "divps    %xmm0, %xmm0;"
    "divps    %xmm1, %xmm1;"
    "divps    %xmm2, %xmm2;"
    "divps    %xmm3, %xmm3;"
    "divps    %xmm4, %xmm4;"
    "inc    %ecx;"

    "cmp    $9999999, %ecx;"
    "jl     .L6;"
    );

    unsigned long long ticks = __rdtscp(&ui) - start;
    double throughput = (double) ticks / (5 * COUNT);
    printf("\nTicks: %lld\nThroughput: %lf\n", ticks, throughput);

    return throughput;
}

int main() {
    calculateLatency();
    calculateThroughput();
}