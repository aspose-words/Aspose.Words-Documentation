---
title: تكوين المنتج في مشروع CMake
second_title: Aspose.Words ل C++
articleTitle: تكوين Aspose.Words ل C++ في CMake مشروع
linktitle: تكوين Aspose.Words ل C++ في CMake مشروع
description: "تكوين Aspose.Words ل C++ في CMake وبناء لك التطبيق."
type: docs
weight: 90
url: /ar/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words ل C++ API يعمل مع CMake لأي GNU / Linux نظام التشغيل. يمكن أن يكون [تم تنزيله من الموقع الرسمي](https://cmake.org/download/).

## معطى CMake مشروع

لنفترض أن لديك ما يلي CMake مشروع:

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

## تكوين يدويا

اتبع الإرشادات أدناه لتكوين يدويا Aspose.Words ل C++ في CMake:

1. [تحميل أحدث Aspose.Words ل C++ حزمة](https://releases.aspose.com/words/cpp/)

2. نسخ Aspose.Words.Cpp و `CodePorting.Native.Cs2Cpp_api_*.*` المجلدات حيث لديك CMakeLists.النص

3. أضف الأسطر التالية إليك CMakeLists.النص:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. الآن يمكنك بناء لك التطبيق باستخدام Aspose.Words ل C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
