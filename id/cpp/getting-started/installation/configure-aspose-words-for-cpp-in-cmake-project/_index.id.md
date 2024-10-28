---
title: Konfigurasikan produk dalam Proyek CMake
second_title: Aspose.Words untuk C++
articleTitle: Konfigurasi Aspose.Words untuk C++ dalam Proyek CMake
linktitle: Konfigurasi Aspose.Words untuk C++ dalam Proyek CMake
description: "Konfigurasi Aspose.Words untuk C++ dalam CMake Anda dan buat aplikasi Anda."
type: docs
weight: 90
url: /id/cpp/configure-aspose-words-for-cpp-in-cmake-project/
---

Aspose.Words untuk C++ API berfungsi dengan CMake untuk sistem operasi GNU / Linux apa pun. Itu bisa jadi [diunduh dari situs web resmi](https://cmake.org/download/).

## Diberikan CMake Proyek

Misalkan Anda memiliki proyek CMake berikut:

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

## Konfigurasikan Secara Manual

Ikuti petunjuk di bawah ini untuk mengonfigurasi secara manual Aspose.Words untuk C++ dalam CMakeAnda:

1. [Unduh yang terbaru Aspose.Words untuk C++ paket](https://releases.aspose.com/words/cpp/)

2. Salin folder Aspose.Words.Cpp dan `CodePorting.Native.Cs2Cpp_api_*.*` yang berisi CMakeLists.txt

3. Tambahkan baris berikut untuk Anda CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Sekarang Anda dapat membangun aplikasi Anda menggunakan Aspose.Words untuk C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
