---
title: Làm Việc Với Tài liệu Word trong Qt
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Tài liệu Word trong Qt
linktitle: Làm Việc Với Tài liệu Word trong Qt
type: docs
description: "Aspose.Words cho C++ có thể được tích hợp trong Qt để tạo và thao Tác Tài liệu Word trong các ứng dụng Qt."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /vi/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt là một khung phát triển ứng dụng đa nền tảng dựa trên C++ được sử dụng rộng rãi để phát triển nhiều ứng dụng hệ thống máy tính để bàn, di động và nhúng. Aspose.Words cho C++ có thể được tích hợp trong Qt để tạo và thao Tác Tài liệu Word trong các ứng dụng Qt của bạn.
Bạn có thể tìm thấy hoàn thành Qt ví dụ tại [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Sử dụng Aspose.Words cho C++ trong Qt Người Sáng tạo

Để sử dụng Aspose.Words cho C++ trong ứng dụng Qt của bạn tải xuống phiên bản mới nhất của API từ [tải xuống](https://releases.aspose.com/words/cpp/) phần. Khi API được tải xuống, bạn có thể sử dụng tích hợp thư viện C++ trong trình Tạo Qt hoặc bạn có thể sử dụng với Visual Studio.

Để tích hợp và sử dụng Aspose.Words cho C++ thư viện trong Ứng dụng Bảng điều khiển Qt được phát triển trong trình Tạo Qt, vui lòng làm theo các bước được đưa ra dưới đây:

- Mở Qt Creator và tạo một *Qt Console Application*mới

- Chọn tùy chọn `QMake` từ danh sách thả xuống *Build System*

- Chọn bộ thích hợp và hoàn thành trình hướng dẫn.
- Sao chép các thư mục *Aspose.Words.Cpp* và *CodePorting.Native.Cs2Cpp* từ gói trích xuất của Aspose.Words cho C++ vào thư mục gốc của dự án

- Để thêm đường dẫn vào lib và bao gồm các thư mục, nhấp chuột phải vào dự án trong bảng LHS và chọn *Add Library*

- Chọn Tùy chọn Thư Viện Bên Ngoài và duyệt các đường dẫn để bao gồm và thư mục lib từng cái một

- Sau khi hoàn tất, tệp dự án .pro của bạn sẽ chứa các mục sau

- Xây dựng ứng dụng và bạn đã hoàn thành việc tích hợp

- Chọn Tùy chọn Thư Viện Bên Ngoài và duyệt các đường dẫn để bao gồm và thư mục lib từng cái một

- Sau khi hoàn tất, tệp dự án .pro của bạn sẽ chứa các mục sau

- Xây dựng ứng dụng và bạn đã hoàn thành việc tích hợp

## Sử dụng Aspose.Words cho C++ Trong Qt Ứng dụng trong Visual Studio

Để phát triển ứng dụng Qt bằng Visual Studio, bạn cần cài đặt [Qt Visual Studio Công Cụ](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Khi bạn đã cài đặt, hãy tải xuống phiên bản mới nhất của API từ [tải xuống](https://releases.aspose.com/pdf/cpp/) phần và làm theo các bước được đưa ra dưới đây:

- Tải xuống và cài đặt [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Tải xuống và giải nén [Aspose.Words cho C++](https://releases.aspose.com/words/cpp/).
- Tạo một thư mục mới cho các tập tin dự án của bạn và sao chép/dán *Aspose.Words.Cpp* và *CodePorting.Native.Cs2Cpp* thư mục từ gói giải nén.
- Tạo một tệp mới có tên *CMakeLists.txt* trong cùng một thư mục.
- Sao chép và dán nội dung sau trong tệp *CMakeLists.txt*.

{{< highlight cpp >}}
cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)
project(Qt_AsposeWords_CMake)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(CodePorting.Native.Cs2Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
find_package(Aspose.Words.Cpp REQUIRED CONFIG PATHS ${CMAKE_CURRENT_SOURCE_DIR} NO_DEFAULT_PATH)
add_executable(Qt_AsposeWords_CMake
    main.cpp
)
target_link_libraries(Qt_AsposeWords_CMake PRIVATE Qt5::Widgets Aspose::Words) 
set_directory_properties(PROPERTIES VS_STARTUP_PROJECT Qt_AsposeWords_CMake)
file(TO_NATIVE_PATH "${Aspose.Words.Cpp_DIR}/lib/${CMAKE_VS_PLATFORM_NAME}" Aspose.Words.Cpp_DLL_PATH)
file(TO_NATIVE_PATH "${CodePorting.Native.Cs2Cpp_DIR}/lib" CodePorting.Native.Cs2Cpp_DLL_PATH)
file(TO_NATIVE_PATH "${Qt5_DIR}/../../../bin" Qt5_DLL_PATH)
set_target_properties(Qt_AsposeWords_CMake PROPERTIES VS_DEBUGGER_ENVIRONMENT "PATH=${Aspose.Words.Cpp_DLL_PATH}\\$<CONFIG>;${CodePorting.Native.Cs2Cpp_DLL_PATH};${Qt5_DLL_PATH};$(Path)")
{{< /highlight >}}

- Mở *Command Prompt* và *cd* vào thư mục dự án.
- Chạy lệnh sau bằng cách thay thế *<path-to-qt5>* với đường dẫn đến *Qt5Config.cmake* tập tin.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Khi bạn đã hoàn thành các bước nêu trên, giải pháp Visual Studio sẽ được tạo trong thư mục. Bây giờ bạn đã sẵn sàng để sử dụng Aspose.Words cho C++ các tính năng trong ứng dụng Qt.


