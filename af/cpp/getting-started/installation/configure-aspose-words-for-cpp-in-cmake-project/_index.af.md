---
title: Konfigureer die produk in CMake Projek
second_title: Aspose.Words vir C++
articleTitle: Konfigureer Aspose.Words vir C++ in CMake Projek
linktitle: Konfigureer Aspose.Words vir C++ in CMake Projek
description: "Konfigureer Aspose.Words vir C++ in jou CMake en bou jou aansoek."
type: docs
weight: 90
url: /af/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words vir C++ API werk met CMake vir enige GNU/Linux bedryfstelsel. Dit kan wees [afgelaai vanaf die amptelike webwerf](https://cmake.org/download/).

## Gegewe CMake Projek

Kom ons veronderstel jy het die volgende CMake projek:

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

## Konfigureer Handmatig

Volg die onderstaande instruksies om handmatig te konfigureer Aspose.Words vir C++ in jou CMake:

1. [Laai die nuutste af Aspose.Words vir C++ pakket](https://releases.aspose.com/words/cpp/)

2. Kopieer Aspose.Words.Cpp en `CodePorting.Native.Cs2Cpp_api_*.*` dopgehou waar jy CMakeLists het.txt

3. Voeg die volgende reëls by jou CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Nou kan jy bou jou aansoek met behulp van Aspose.Words vir C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
