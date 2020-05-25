#include "stdio.h"

int fib(int seq) {
    if (seq == 0 || seq == 1) {
        return 1;
    } else {
        return fib(seq - 1) + fib(seq - 2);
    }
}

int length(char* arr) {
    int count = 0;
    while (arr[count] != '\0') count++;
    return count;
}

int _pow(base, exp) {
    if (exp == 0) return 1;
    if (exp == 1) return base;
    int retval = base;
    for (int i = 0; i < exp - 1; i++) {
        retval *= base;
    }
    return retval;
}

int char_to_int(char c) {
    return c - 48;
}

int main(int argc, char** argn) {
    char *_in = argn[1];
    int seq = 0;
    int _length = length(_in);
    int tmp;
    scanf("%i", &tmp);
    for (int i = _length - 1; i >= 0; i--) {
        int ci_i = char_to_int(_in[i]);
        int power = _length - (i+1);
        int pos = _pow(10, power);
        printf("ith_iter: %i\nci_i: %i\npower: %i\npos: %i\nci_i*pos: %i\n\n", i, ci_i, power, pos, ci_i*pos);
        seq += ci_i * pos;
    }

    printf("seq: %i\n", seq);
    printf("fib[seq]: %i\n", fib(seq));
}
