workspace "LoggingCpp"
   architecture "x64"
   configurations { "debug", "release" }


project "LoggingApp"
    kind "ConsoleApp"
    language "C++"

    targetdir "bin/%{cfg.buildcfg}"
    
    -- pchheader "src/pch.hpp"
    
    files { "src/**.h", "src/**.cpp" }
    
    includedirs { "vendor/spdlog/include/" }

    libdirs { "lib/" }
    links { "spdlog", "pthread" }

    defines { 
        "SPDLOG_COMPILED_LIB" -- required to use spdlog static library
    }

    filter "configurations:debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:release"
        defines { "NDEBUG" }
        optimize "On"