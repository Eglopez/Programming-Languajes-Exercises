#include <iostream>
#include "add.h"

int main()
{
    Addition add;
    std::cout << "the sum of 3 and 4" << add.add(3.0,4.0) << '\n';
    return 0;
}