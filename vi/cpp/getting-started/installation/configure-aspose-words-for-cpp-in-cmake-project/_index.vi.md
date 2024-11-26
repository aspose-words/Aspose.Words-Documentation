---
title: Cấu hình sản phẩm trong Dự án CMake
second_title: Aspose.Words cho C++
articleTitle: Cấu hình Aspose.Words cho C++ trong Dự án CMake
linktitle: Cấu hình Aspose.Words cho C++ trong Dự án CMake
description: "Cấu hình Aspose.Words cho C++ trong CMake của bạn và xây dựng ứng dụng cho bạn."
type: docs
weight: 90
url: /vi/cpp/configure-aspose-words-for-cpp-in-cmake-project/
timestamp: 2024-10-24-11-44-28
---

Aspose.Words cho C++ API hoạt động với CMake cho bất kỳ hệ điều hành GNU/Linux nào. Nó có thể là [tải về từ trang web chính thức](https://cmake.org/download/).

## Cho Dự Án CMake

Giả sử bạn có dự án CMake sau:

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

## Cấu Hình Thủ Công

Làm theo hướng dẫn bên dưới để định cấu hình thủ công Aspose.Words cho C++ trong CMakecủa bạn:

1. [Tải về mới nhất Aspose.Words cho C++ gói](https://releases.aspose.com/words/cpp/)

2. Sao chép các thư mục Aspose.Words.Cpp và `CodePorting.Native.Cs2Cpp_api_*.*` nơi bạn có CMakeLists.txt

3. Thêm các dòng sau vào bạn CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Bây giờ bạn có thể xây dựng ứng dụng của mình bằng cách sử dụng Aspose.Words cho C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
