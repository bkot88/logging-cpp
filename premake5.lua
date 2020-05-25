workspace "LoggingCpp"
   configurations { 
       "Debug",
       "Release"
    }

project "LoggingCpp"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"
    
    pchheader "src/pch.hpp"
    files { "src/**.cpp" }

    includedirs {
        "vendor/spdlog/include/"
    }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"