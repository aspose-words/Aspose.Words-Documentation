---
title: הגדר את המוצר בפרויקט CMake
second_title: Aspose.Words עבור C++
articleTitle: הגדר Aspose.Words עבור C++ ב CMake פרויקט
linktitle: הגדר Aspose.Words עבור C++ ב CMake פרויקט
description: "להגדיר Aspose.Words עבור C++ ב שלך CMake ולבנות לך יישום."
type: docs
weight: 90
url: /he/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words עבור C++ API עובד עם CMake עבור כל GNU / Linux מערכת הפעלה. זה יכול להיות [הורד מהאתר הרשמי](https://cmake.org/download/).

## נתון CMake פרויקט

נניח שיש לך את הפרויקט הבא CMake:

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

## הגדר באופן ידני

עקוב אחר ההוראות שלהלן כדי להגדיר ידנית Aspose.Words עבור C++ ב CMakeשלך:

1. [הורד את החבילה האחרונה Aspose.Words עבור C++ ](https://releases.aspose.com/words/cpp/)

2. העתק Aspose.Words.Cpp ו `CodePorting.Native.Cs2Cpp_api_*.*` תיקיות שבהן יש לך CMakeLists.txt

3. הוסף לך את השורות הבאות CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. עכשיו אתה יכול לבנות לך יישום באמצעות Aspose.Words עבור C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
