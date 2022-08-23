#include "../Calculator.hpp"

#include <gtest/gtest.h>

TEST(CalculatorTests, sum) {
    int x = 15;
    int y = 6;
    EXPECT_EQ(sum(15, 6), 21);
}

TEST(CalculatorTests, substract) {
    int x = 15;
    int y = 6;
    EXPECT_EQ(substract(15, 6), 9);
}

TEST(CalculatorTests, multiply) {
    int x = 15;
    int y = 6;
    EXPECT_EQ(multiply(15, 6), 90);
}

TEST(CalculatorTests, division) {
    int x = 15;
    int y = 6;
    EXPECT_EQ(division(x, y), 2.5);
}
