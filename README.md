# logging-cpp
Demonstration using git submodules, premake and spdlog.

## Using G++
Compile
```bash
git clone --recurse-submodules https://github.com/bkot88/logging-cpp.git
cd logging-cpp
g++ -I vendor/spdlog/include src/main.cpp
./a.out
```