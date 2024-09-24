---
title: Configure the product in CMake Project
second_title: Aspose.Words for C++
articleTitle: Configure Aspose.Words for C++ in CMake Project
linktitle: Configure Aspose.Words for C++ in CMake Project
description: "Configure Aspose.Words for C++ in your CMake and build you application."
type: docs
weight: 90
url: /cpp/configure-aspose-words-for-cpp-in-cmake-project/
---

Aspose.Words for C++ API works with CMake for any GNU/Linux operating system. It can be [downloaded from the official website](https://cmake.org/download/).

## Given CMake Project

Let's suppose you have the following CMake project:

*CMakeLists.txt:*
{{< highlight bash >}}
cmake_minimum_required(VERSION 3.18 FATAL_ERROR)
project(app CXX)
add_executable(app main.cpp)
{{< /highlight >}}

*main.cpp:*
{{< highlight bash >}}
int main()
{
    return 0;
}
{{< /highlight >}}

## Configure Manually

Follow the instructions below to manually configure Aspose.Words for C++ in your CMake:

1. [Download the latest Aspose.Words for C++ package](https://releases.aspose.com/words/cpp/)

2. Copy Aspose.Words.Cpp and `CodePorting.Native`.Cs2Cpp_api_*.* folders where you have CMakeLists.txt

3. Add the following lines to you CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Now you can build you application using Aspose.Words for C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
