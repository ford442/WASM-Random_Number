#pragma once
#include <cstdlib>
#include <ctime>
#include <emscripten.h>
#undef RAND_MAX
// #define RAND_MAX (38D7EA4C68000) // quadrillion
#define RAND_MAX (64)  //  hundred
