---
title: Ürünü CMake Projesinde yapılandırın
second_title: Aspose.Words için C++
articleTitle: Yapılandır Aspose.Words için C++ CMake Projesinde
linktitle: Yapılandır Aspose.Words için C++ CMake Projesinde
description: "Yapılandır Aspose.Words için C++ CMake 'inizde ve uygulamanızı oluşturun."
type: docs
weight: 90
url: /tr/cpp/configure-aspose-words-for-cpp-in-cmake-project/
---

Aspose.Words için C++ API herhangi bir GNU / Linux işletim sistemi için CMake ile çalışır. Olabilir [resmi web sitesinden indirildi](https://cmake.org/download/).

## Verilen CMake Proje

Aşağıdaki CMake projeniz olduğunu varsayalım:

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

## Manuel Olarak Yapılandır

Manuel olarak yapılandırmak için aşağıdaki talimatları izleyin Aspose.Words için C++ içinde CMake:

1. [En son haberleri indirin Aspose.Words için C++ paket](https://releases.aspose.com/words/cpp/)

2. Aspose.Words.Cpp ve `CodePorting.Native.Cs2Cpp_api_*.*` klasörlerini CMakeLists klasörüne sahip olduğunuz yere kopyalayın.txt

3. Aşağıdaki satırları size ekleyin CMakeLists.txt:
	{{< highlight cpp >}}
	# find Aspose.Words for C++ package and it's dependencies
	find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
	find_package(Threads REQUIRED)

	# Link target application with Aspose.Words for C++
	target_link_libraries(app PRIVATE Aspose::Words Threads::Threads)
	{{< /highlight >}}

4. Şimdi kullanarak uygulama oluşturabilirsiniz Aspose.Words için C++:
	{{< highlight bash >}}
	cd <path_to_dir_with_CMakeLists.txt>
	cmake -S . -B build -D CMAKE_BUILD_TYPE=Release
	cmake --build build
	./build/app
	{{< /highlight >}}
