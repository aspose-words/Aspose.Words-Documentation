---
title: Налаштуйте продукт у проекті CMake
second_title: Aspose.Words для C++
articleTitle: Налаштуйте Aspose.Words для C++ у проекті CMake
linktitle: Налаштуйте Aspose.Words для C++ у проекті CMake
description: "Налаштуйте Aspose.Words для C++ у вашому CMake і створіть свій додаток."
type: docs
weight: 90
url: /uk/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words для C++ API працює з CMake для будь-якої GNU/Linux операційної системи. Його можна [завантажити з офіційного веб-сайту](https://cmake.org/download/).

## Даний проект CMake

Припустимо, у вас є наступний проект CMake:

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

## Налаштування вручну

Дотримуйтесь інструкцій нижче, щоб вручну налаштувати Aspose.Words для C++ у вашому CMake:

1. [Завантажте останню версію пакета Aspose.Words для C++](https://releases.aspose.com/words/cpp/)

2. Скопіюйте Aspose.Words.Cpp та `CodePorting.Native.Cs2Cpp_api_*.*` папки, у яких у вас є CMakeLists.txt

3. Додайте до себе наступні рядки CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Тепер ви можете створити свою програму, використовуючи Aspose.Words для C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
