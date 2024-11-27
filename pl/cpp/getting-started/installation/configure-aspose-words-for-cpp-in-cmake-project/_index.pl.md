---
title: Konfigurowanie produktu w projekcie CMake
second_title: Aspose.Words dla C++
articleTitle: Konfiguracja Aspose.Words dla C++ w CMake Project
linktitle: Konfiguracja Aspose.Words dla C++ w CMake Project
description: "Skonfiguruj Aspose.Words dla C++ w swoim CMake i zbuduj swoją aplikację."
type: docs
weight: 90
url: /pl/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words for C++ API współpracuje z CMake dla dowolnego systemu operacyjnego GNU/Linux. Może to być [pobrane z oficjalnej strony internetowej](https://cmake.org/download/).

## Biorąc Pod Uwagę CMake Projekt

Załóżmy, że masz następujący projekt CMake:

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

## Konfiguruj Ręcznie

Postępuj zgodnie z poniższymi instrukcjami, aby ręcznie skonfigurować Aspose.Words dla C++ w CMake:

1. [Pobierz najnowszy pakiet Aspose.Words dla C++ ](https://releases.aspose.com/words/cpp/)

2. Skopiuj Aspose.Words.Cpp i `CodePorting.Native.Cs2Cpp_api_*.*` foldery, w których masz CMakeLists.txt

3. Dodaj do siebie następujące wiersze CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Teraz możesz zbudować swoją aplikację za pomocą Aspose.Words dla C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
