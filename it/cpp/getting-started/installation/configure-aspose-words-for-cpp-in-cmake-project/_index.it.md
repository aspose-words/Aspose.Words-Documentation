---
title: Configurare il prodotto nel progetto CMake
second_title: Aspose.Words per C++
articleTitle: Configurare Aspose.Words per C++ in CMake Progetto
linktitle: Configurare Aspose.Words per C++ in CMake Progetto
description: "Configurare Aspose.Words per C++ nel tuo CMake e costruisci la tua applicazione."
type: docs
weight: 90
url: /it/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words per C++ API funziona con CMake per qualsiasi sistema operativo GNU/Linux. Può essere [scaricato dal sito ufficiale](https://cmake.org/download/).

## Dato CMake Progetto

Supponiamo di avere il seguente progetto CMake:

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

## Configurare manualmente

Seguire le istruzioni riportate di seguito per configurare manualmente Aspose.Words per C++ nel tuo CMake:

1. [Scarica le ultime Aspose.Words per C++ pacchetto](https://releases.aspose.com/words/cpp/)

2. Copia le cartelle Aspose.Words.Cpp e `CodePorting.Native.Cs2Cpp_api_*.*` in cui hai CMakeLists.txt

3. Aggiungi le seguenti righe a te CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Ora puoi costruire la tua applicazione usando Aspose.Words per C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
