//
// Created by vadim on 10.11.18.
//

#include <cmath>

double calculateK(int n, int m)
{
    double result = 0, powedN = 0, powedM = 0;

    powedN = pow(n, 2);
    powedM = pow(m, 2);

    if (powedN >= powedM)
        result = powedN - powedM;
    else
        result = powedM - powedN;

    return result;
}
