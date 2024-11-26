---
title: Configurați produsul în CMake proiect
second_title: Aspose.Words pentru C++
articleTitle: Configurează Aspose.Words pentru C++ în proiectul CMake
linktitle: Configurează Aspose.Words pentru C++ în proiectul CMake
description: "Configurează Aspose.Words pentru C++ în CMake și construiți-vă aplicația."
type: docs
weight: 90
url: /ro/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words pentru C++ API funcționează cu CMake pentru orice sistem de operare GNU/Linux. Poate fi [descărcat de pe site-ul oficial](https://cmake.org/download/).

## Având În Vedere Proiectul CMake

Să presupunem că aveți următorul proiect CMake:

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

## Configurați Manual

Urmați instrucțiunile de mai jos pentru a configura manual Aspose.Words pentru C++ în CMake:

1. [Descărcați cele mai recente Aspose.Words pentru C++ pachet](https://releases.aspose.com/words/cpp/)

2. Copiați Aspose.Words.Cpp și `CodePorting.Native.Cs2Cpp_api_*.*` folderele în care aveți CMakeLists.txt

3. Adăugați următoarele rânduri la dvs. CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Acum vă puteți construi aplicația folosind Aspose.Words pentru C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
