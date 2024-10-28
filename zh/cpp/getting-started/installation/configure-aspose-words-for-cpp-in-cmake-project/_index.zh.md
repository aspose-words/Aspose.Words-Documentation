---
title: 在CMake项目中配置产品
second_title: Aspose.Words为C++
articleTitle: 配置 Aspose.Words为C++ 在CMake项目中
linktitle: 配置 Aspose.Words为C++ 在CMake项目中
description: "配置 Aspose.Words为C++ 在你的CMake并构建你的应用程序。"
type: docs
weight: 90
url: /zh/cpp/configure-aspose-words-for-cpp-in-cmake-project/
---

Aspose.Words为C++ API适用于任何GNU/Linux操作系统的CMake。 它可以是 [从官方网站下载](https://cmake.org/download/).

## 给定CMake项目

假设您有以下CMake项目:

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

## 手动配置

按照以下说明手动配置 Aspose.Words为C++ 在你的CMake:

1. [下载最新版本 Aspose.Words为C++ 包裹](https://releases.aspose.com/words/cpp/)

2. 复制Aspose.Words.Cpp和`CodePorting.Native.Cs2Cpp_api_*.*`文件夹，您有CMakeLists。txt的

3. 将以下行添加到您CMakeLists。txt的:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. 现在您可以使用以下方法构建应用程序 Aspose.Words为C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
