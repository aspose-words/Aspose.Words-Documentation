---
title: Bekerja dengan Dokumen Word dalam Qt
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Dokumen Word dalam Qt
linktitle: Bekerja dengan Dokumen Word dalam Qt
type: docs
description: "Aspose.Words untuk C++ dapat diintegrasikan dalam Qt untuk membuat dan memanipulasi dokumen Word dalam aplikasi Qt."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /id/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt adalah kerangka pengembangan aplikasi lintas platform berbasis C++ yang banyak digunakan untuk mengembangkan berbagai aplikasi desktop, seluler, dan sistem tertanam. Aspose.Words untuk C++ dapat diintegrasikan dalam Qt untuk membuat dan memanipulasi dokumen Word dalam aplikasi Qt Anda.
Anda dapat menemukan contoh Qt lengkap di [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Menggunakan Aspose.Words untuk C++ dalam Qt Pencipta

Untuk menggunakan Aspose.Words untuk C++ dalam aplikasi Qt Anda, unduh versi terbaru API dari [unduhan](https://releases.aspose.com/words/cpp/) bagian. Setelah API diunduh, Anda dapat menggunakan integrasikan pustaka C++ dalam Qt Creator atau Anda dapat menggunakannya dengan Visual Studio.

Untuk mengintegrasikan dan menggunakan Aspose.Words untuk C++ pustaka dalam Aplikasi Konsol Qt yang dikembangkan di Pembuat Qt, ikuti langkah-langkah yang diberikan di bawah ini:

- Buka Pembuat Qt dan buat *Qt Console Application*baru

- Pilih opsi `QMake` dari menu tarik-turun *Build System*

- Pilih kit yang sesuai dan selesaikan wizard.
- Salin folder *Aspose.Words.Cpp* dan *CodePorting.Native.Cs2Cpp* dari paket yang diekstrak Aspose.Words untuk C++ ke dalam akar proyek

- Untuk menambahkan jalur ke lib dan menyertakan folder, klik kanan pada proyek di panel LHS dan pilih *Add Library*

- Pilih opsi Perpustakaan Eksternal dan telusuri jalur untuk menyertakan dan membuat folder lib satu per satu

- Setelah selesai, file proyek. pro Anda akan berisi entri berikut

- Bangun aplikasi dan Anda selesai dengan integrasi

- Pilih opsi Perpustakaan Eksternal dan telusuri jalur untuk menyertakan dan membuat folder lib satu per satu

- Setelah selesai, file proyek. pro Anda akan berisi entri berikut

- Bangun aplikasi dan Anda selesai dengan integrasi

## Menggunakan Aspose.Words untuk C++ dalam Qt Aplikasi dalam Visual Studio

Untuk mengembangkan aplikasi Qt menggunakan Visual Studio, Anda perlu menginstal [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Setelah Anda menginstal, unduh versi terbaru API dari [unduhan](https://releases.aspose.com/pdf/cpp/) bagian dan ikuti langkah-langkah yang diberikan di bawah ini:

- Unduh dan instal [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Unduh dan buka kemasan [Aspose.Words untuk C++](https://releases.aspose.com/words/cpp/).
- Buat folder baru untuk file proyek Anda dan salin / tempel folder *Aspose.Words.Cpp* dan *CodePorting.Native.Cs2Cpp* dari paket yang belum dibongkar.
- Buat file baru bernama *CMakeLists.txt* di folder yang sama.
- Salin dan tempel konten berikut di dalam file *CMakeLists.txt*.

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

- Buka *Command Prompt* dan *cd* ke folder proyek.
- Jalankan perintah berikut dengan mengganti *<path-to-qt5>* dengan jalur ke file *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Setelah Anda menyelesaikan langkah-langkah yang disebutkan di atas, solusi Visual Studio akan dibuat di folder. Anda sekarang siap untuk menggunakan Aspose.Words untuk C++ fitur dalam aplikasi Qt.


