---
title: Het product configureren in CMake Project
second_title: Aspose.Words voor C++
articleTitle: Aspose.Words configureren voor C++ in CMake Project
linktitle: Aspose.Words configureren voor C++ in CMake Project
description: "Configureer Aspose.Words voor C++ in uw CMake en bouw uw toepassing."
type: docs
weight: 90
url: /nl/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words voor C++ API werkt met CMake voor elk GNU/Linux besturingssysteem. Het kan zijn [gedownload van de officiële website](https://cmake.org/download/).

## Gegeven CMake Project

Stel dat je het volgende CMake project hebt:

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

## Handmatig Configureren

Volg de onderstaande instructies om Aspose.Words handmatig te configureren voor C++ in uw CMake:

1. [Download Het Laatste Aspose.Words voor C++ pakket](https://releases.aspose.com/words/cpp/)

2. Kopieer Aspose.Words.Cpp en `CodePorting.Native.Cs2Cpp_api_*.*` mappen waar u CMakeLists.txt

3. Voeg de volgende regels toe aan CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Nu kunt u uw toepassing bouwen met behulp van Aspose.Words voor C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
