---
title: Konfigurace produktu v projektu CMake
second_title: Aspose.Words pro C++
articleTitle: Konfigurace Aspose.Words pro C++ v projektu CMake
linktitle: Konfigurace Aspose.Words pro C++ v projektu CMake
description: "Nakonfigurujte Aspose.Words pro C++ ve svém CMake a vytvořte si aplikaci."
type: docs
weight: 90
url: /cs/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words pro C++ API pracuje s CMake pro jakýkoli operační systém GNU/Linux. Může to být [staženo z oficiálních webových stránek](https://cmake.org/download/).

## Daný CMake Projekt

Předpokládejme, že máte následující CMake projekt:

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

## Konfigurovat Ručně

Postupujte podle pokynů níže a ručně nakonfigurujte Aspose.Words pro C++ ve vašem CMake:

1. [Stáhněte si nejnovější balíček Aspose.Words pro C++ ](https://releases.aspose.com/words/cpp/)

2. Zkopírujte složky Aspose.Words.Cpp a `CodePorting.Native.Cs2Cpp_api_*.*` tam, kde máte CMakeLists.txt

3. Přidejte k sobě následující řádky CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Nyní můžete vytvořit aplikaci pomocí Aspose.Words pro C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
