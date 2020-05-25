# logging-cpp
Demonstration using git submodules, premake5, precompiled headers & spdlog.

## Using G++
```bash
git clone --recurse-submodules https://github.com/bkot88/logging-cpp.git
cd logging-cpp
g++ -I vendor/spdlog/include src/main.cpp
./a.out
```

## Make
```bash
git clone --recurse-submodules https://github.com/bkot88/logging-cpp.git
cd logging-cpp
make config=debug
./bin/Debug/LoggingCpp
```