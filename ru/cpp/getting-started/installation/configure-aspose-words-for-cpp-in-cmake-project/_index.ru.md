---
title: Настройте продукт в проекте CMake
second_title: Aspose.Words для C++
articleTitle: Конфигурировать Aspose.Words для C++ в проекте CMake
linktitle: Конфигурировать Aspose.Words для C++ в проекте CMake
description: "Конфигурировать Aspose.Words для C++ в вашем CMake и создайте свое приложение."
type: docs
weight: 90
url: /ru/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words для C++ API работает с CMake для любой операционной системы GNU/Linux. Его можно [загрузить с официального веб-сайта](https://cmake.org/download/).

## Данный проект CMake

Давайте предположим, что у вас есть следующий проект CMake:

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

## Настройка вручную

Следуйте приведенным ниже инструкциям, чтобы вручную настроить Aspose.Words для C++ в вашем CMake:

1. [Загрузите последнюю версию Aspose.Words для C++ пакет](https://releases.aspose.com/words/cpp/)

2. Скопируйте папки Aspose.Words.Cpp и `CodePorting.Native`.Cs2Cpp_api_*.*, в которых у вас есть CMakeLists.txt

3. Добавьте следующие строки в свой CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Теперь вы можете создать свое приложение, используя Aspose.Words для C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
