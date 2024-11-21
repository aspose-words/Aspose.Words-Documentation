---
title: 제품 구성 CMake 프로젝트
second_title: Aspose.Words 에 대한 C++
articleTitle: 구성 Aspose.Words 에 대한 C++ 그 안에 CMake 프로젝트
linktitle: 구성 Aspose.Words 에 대한 C++ 그 안에 CMake 프로젝트
description: "구성 Aspose.Words 에 대한 C++ 당신의 CMake 그리고 당신에게 응용 프로그램을 구축 할 수 있습니다."
type: docs
weight: 90
url: /ko/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words 에 대한 C++ API 함께 작동 CMake 어떤 GNU/Linux 운영 체제. 그것은 될 수 있습니다 [공식 웹 사이트에서 다운로드](https://cmake.org/download/).

## 주어진 CMake 프로젝트

다음을 가지고 있다고 가정해 봅시다. CMake 프로젝트:

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

## 수동으로 구성

아래 지침에 따라 수동으로 구성하십시오 Aspose.Words 에 대한 C++ 당신의 CMake:

1. [최신 다운로드 Aspose.Words 에 대한 C++ 패키지](https://releases.aspose.com/words/cpp/)

2. 복사 Aspose.Words.Cpp 그리고 `CodePorting.Native.Cs2Cpp_api_*.*` 당신이 가지고있는 폴더 CMakeLists.2015 년

3. 다음 줄을 추가합니다 CMakeLists.2015 년:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. 이제 다음을 사용하여 응용 프로그램을 구축 할 수 있습니다 Aspose.Words 에 대한 C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
