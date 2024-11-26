---
title: Konfigurieren Sie das Produkt im CMake-Projekt
second_title: Aspose.Words für C++
articleTitle: Konfigurieren Aspose.Words für C++ im CMake Projekt
linktitle: Konfigurieren Aspose.Words für C++ im CMake Projekt
description: "Konfigurieren Aspose.Words für C++ in Ihrer CMake und erstellen Sie Ihre Anwendung."
type: docs
weight: 90
url: /de/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words für C++ API funktioniert mit CMake für jedes GNU/Linux Betriebssystem. Es kann sein [von der offiziellen Website heruntergeladen](https://cmake.org/download/).

## Gegebenes CMake Projekt

Nehmen wir an, Sie haben das folgende CMake -Projekt:

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

## Manuell konfigurieren

Befolgen Sie die nachstehenden Anweisungen, um manuell zu konfigurieren Aspose.Words für C++ in deinem CMake:

1. [Laden Sie die neuesten Aspose.Words für C++ Paket](https://releases.aspose.com/words/cpp/)

2. Kopieren Sie die Ordner Aspose.Words.Cpp und `CodePorting.Native.Cs2Cpp_api_*.*`, in denen Sie CMakeLists haben.txt

3. Fügen Sie die folgenden Zeilen zu Ihnen CMakeLists hinzu.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Jetzt können Sie Ihre Anwendung mit erstellen Aspose.Words für C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
