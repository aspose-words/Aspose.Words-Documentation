---
title: Configure Aspose.Words for C++ With vcpkg
description: "Configure Aspose.Words for C++ with vcpkg"
type: docs
weight: 90
url: /cpp/configure-aspose-words-for-cpp-with-vcpkg/
---

This article explains how to install Aspose.Words for C++ with [vcpkg](https://vcpkg.io/en/index.html).

## About vcpkg
[vcpkg](https://vcpkg.io/en/index.html) is a free C/C++ package manager for acquiring and managing libraries. Choose from over 1500 open source libraries to download and build in a single step or add your own private libraries to simplify your build process. Maintained by the Microsoft C++ team and open source contributors.

## Prerequisites

- Install [cmake](https://cmake.org/download/)
- Install [vcpkg](https://vcpkg.io/en/index.html) according to [guide](https://vcpkg.io/en/getting-started.html)

## Add Aspose.Words for C++ Dependency to `vcpkg.json` File

Create or edit [vcpkg manifest file](https://vcpkg.io/en/docs/maintainers/manifest-files.html) in the same directory as your top-level `CMakeLists.txt` file. Add a dependency to `aspose-words-cpp` within this file:

*`vcpkg.json`*
{{< highlight json "hl_lines=5-8" >}}
{
  "name": "app",
  "version-string": "1.0",
  "dependencies": [
    {
      "name" : "aspose-words-cpp",
      "version>=" : "21.11"
    },    
  ],
  "builtin-baseline": "2169ab765b49cfc5cd7eddfc8ff3e579326776f8"
}
{{< /highlight >}}

## Add Aspose.Words for C++ Registry to `vcpkg-configuration.json` File

Since Aspose.Words for C++ has no official port, we have to add the registry to `vcpkg-configuration.json` file.

Create `vcpkg-configuration.json` file in the same directory as your top-level `CMakeLists.txt` and [vcpkg manifest file](https://vcpkg.io/en/docs/maintainers/manifest-files.html).

*`vcpkg-configuration.json`*
{{< highlight json "hl_lines="3-8"" >}}
{
  "registries": [
    {
      "kind": "git",
      "repository": "https://github.com/aspose-words/Aspose.Words-for-CPP-vcpkg-registry.git",      
      "baseline": "466a1c5d9a6ad099f847b17c79f9cc4da1bcac5a",
      "packages": [ "codeporting-native-cs2cpp-api", "aspose-words-cpp", "aspose-words-shaping-harfbuzz-cpp" ]      
    }
  ]
}
{{< /highlight >}}

## Setup CMakeLists.txt

*`CMakeLists.txt`*
{{< highlight cmake >}}
cmake_mininum_required(VERSION 3.21 FATAL_ERROR)

set(CMAKE_TOOLCHAIN_FILE "<path_to_vcpkg>/scripts/buildsystems/vcpkg.cmake")

project(app LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_STANDARD_REQUIRED TRUE)

find_package(aspose-words-cpp CONFIG REQURED)

add_executable(app main.cpp)
target_link_libraries(app PRIVATE Aspose::Words)
{{< /highlight >}}

## Configure and Build Your Application

Now you can configure and build your application using Aspose.Words for C++ with CMake and vcpkg:

{{< highlight bash >}}
cd <path_to_dir_with_CMakeLists.txt>
cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
cmake --build build
./build/app
{{< /highlight >}} 