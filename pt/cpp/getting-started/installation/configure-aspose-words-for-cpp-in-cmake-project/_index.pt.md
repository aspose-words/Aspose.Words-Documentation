---
title: Configurar o produto no projecto CMake
second_title: Aspose.Words Para C++
articleTitle: Configurar Aspose.Words para C++ em CMake projecto
linktitle: Configurar Aspose.Words para C++ em CMake projecto
description: "Configurar Aspose.Words para C++ em seu CMake e construa seu aplicativo."
type: docs
weight: 90
url: /pt/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words para C++ API funciona com CMake para qualquer sistema operacional GNU/Linux. Pode ser [descarregado do sítio web oficial](https://cmake.org/download/).

## Dado CMake Projecto

Vamos supor que você tenha o seguinte projeto CMake:

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

## Configurar Manualmente

Siga as instruções abaixo para configurar manualmente Aspose.Words para C++ em seu CMake:

1. [Descarregue as últimas Aspose.Words para C++ pacote](https://releases.aspose.com/words/cpp/)

2. Copie as pastas Aspose.Words.Cpp e `CodePorting.Native.Cs2Cpp_api_*.*` onde tem CMakeLists.txt

3. Adicione as seguintes linhas a você CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Agora você pode construir seu aplicativo usando Aspose.Words Para C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
