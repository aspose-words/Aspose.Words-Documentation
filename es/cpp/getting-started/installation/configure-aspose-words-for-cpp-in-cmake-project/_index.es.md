---
title: Configurar el producto en el proyecto CMake
second_title: Aspose.Words para C++
articleTitle: Configurar Aspose.Words para C++ en CMake Proyecto
linktitle: Configurar Aspose.Words para C++ en CMake Proyecto
description: "Configurar Aspose.Words para C++ en su CMake y cree su aplicación."
type: docs
weight: 90
url: /es/cpp/configure-aspose-words-for-cpp-in-cmake-project/
---

Aspose.Words para C++ La API funciona con CMake para cualquier sistema operativo GNU / Linux. Puede ser [descargado desde el sitio web oficial](https://cmake.org/download/).

## Dado CMake Proyecto

Supongamos que tiene el siguiente proyecto CMake:

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

## Configurar manualmente

Siga las instrucciones a continuación para configurar manualmente Aspose.Words para C++ en tu CMake:

1. [Descargue la última versión Aspose.Words para C++ paquete](https://releases.aspose.com/words/cpp/)

2. Copiar Aspose.Words.Cpp y `CodePorting.Native`.Cs2Cpp_api_*.* carpetas donde tenga CMakeLists.txt

3. Agregue las siguientes líneas a usted CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Ahora puedes crear tu aplicación usando Aspose.Words para C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
