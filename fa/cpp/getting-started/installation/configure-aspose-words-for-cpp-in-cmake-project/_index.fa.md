---
title: پیکربندی محصول در پروژه CMake
second_title: Aspose.Words برای C++
articleTitle: پیکربندی Aspose.Words برای C++ در CMake پروژه
linktitle: پیکربندی Aspose.Words برای C++ در CMake پروژه
description: "پیکربندی Aspose.Words برای C++ در CMake خود را و ساخت برنامه شما."
type: docs
weight: 90
url: /fa/cpp/configure-aspose-words-for-cpp-in-cmake-project/
---

Aspose.Words برای C++ API با CMake برای هر سیستم عاملGNU/Linux کار می کند. می تواند باشد [دانلود از سایت رسمی](https://cmake.org/download/).

## داده شده CMake پروژه

فرض کنید پروژه CMake زیر را دارید:

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

## پیکربندی دستی

دستورالعمل های زیر را برای تنظیم دستی دنبال کنید Aspose.Words برای C++ در CMakeشما:

1. [دانلود جدیدترین ها Aspose.Words برای C++ بسته بندی](https://releases.aspose.com/words/cpp/)

2. پوشه های Aspose.Words.Cpp و `CodePorting.Native.Cs2Cpp_api_*.*` را که در آن CMakeLists دارید کپی کنید.txt

3. خطوط زیر را به شما اضافه کنید CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. حالا شما می توانید برنامه خود را با استفاده از Aspose.Words برای C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
