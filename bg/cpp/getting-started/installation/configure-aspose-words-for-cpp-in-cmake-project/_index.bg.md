---
title: Конфигуриране на продукта в CMake проект
second_title: Aspose.Words за C++
articleTitle: Конфигуриране на Aspose.Words за C++ в CMake проект
linktitle: Конфигуриране на Aspose.Words за C++ в CMake проект
description: "Конфигурирайте Aspose.Words за C++ във вашия CMake и изградете приложение."
type: docs
weight: 90
url: /bg/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words за C++ API работи с CMake за всяка GNU/Linux операционна система. Може да бъде [изтеглено от официалния сайт](https://cmake.org/download/).

## Даден CMake Проект

Да предположим, че имате следния CMake проект:

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

## Настройване Ръчно

Следвайте инструкциите по-долу, за да конфигурирате ръчно Aspose.Words за C++ във вашия CMake:

1. [Изтеглете последния Aspose.Words за C++ пакет](https://releases.aspose.com/words/cpp/)

2. Копирайте папките Aspose.Words.Cpp и `CodePorting.Native.Cs2Cpp_api_*.*`, където имате CMakeLists.txt

3. Добавете следните редове към вас CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Сега можете да създадете приложение, като използвате Aspose.Words за C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
