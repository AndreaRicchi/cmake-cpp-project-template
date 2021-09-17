#pragma once

#include <gtest/gtest.h>

#include "lib.hpp"

using namespace testing;

TEST(LibTest, Methods) {
    Lib lib;
    EXPECT_EQ(lib.helloWorldMsg(), "Hello World!\n");
}