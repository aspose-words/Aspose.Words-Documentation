---
title: Работа с Word документи в Qt
second_title: Aspose.Words за C++
articleTitle: Работа с Word документи в Qt
linktitle: Работа с Word документи в Qt
type: docs
description: "Aspose.Words за C++ може да бъде интегриран в Qt за създаване и манипулиране на Word документи в Qt приложения."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /bg/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt е C++ базирана платформа за разработка на приложения, която се използва широко за разработване на различни настолни, мобилни и вградени системни приложения. Aspose.Words за C++ могат да бъдат интегрирани в Qt, за да създават и манипулират Word документи във вашите Qt приложения.
Можете да намерите Пълен Qt Пример в [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Използване на Aspose.Words за C++ в рамките на Qt създател

За да използвате Aspose.Words за C++ във вашето приложение Qt Изтеглете последната версия на API от [за сваляне](https://releases.aspose.com/words/cpp/) отдел. След като API е изтеглен, можете да използвате интегриране на C++ библиотека в Qt създател или можете да използвате с Visual Studio.

За да интегрирате и използвате Aspose.Words за C++ библиотека в Qt конзолно приложение, разработено в Qt създател, моля, следвайте стъпките, дадени по-долу:

- Отворете Qt създател и създайте нов *Qt Console Application*

- Изберете опцията `QMake` от падащото меню *Build System*

- Изберете подходящия комплект и завършете съветника.
- Копиране на папки *Aspose.Words.Cpp* и *CodePorting.Native.Cs2Cpp* от извлечения пакет от Aspose.Words за C++ в основата на проекта

- За да добавите пътища към свобода и да включите папки, кликнете с десния бутон върху проекта в панела LHS и изберете *Add Library*

- Изберете опцията за външна библиотека и прегледайте пътеките, за да включите и освободите папките една по една

- След като направите това, вашият файл ще съдържа следните записи

- Изградете приложението и сте готови с интеграцията

- Изберете опцията за външна библиотека и прегледайте пътеките, за да включите и освободите папките една по една

- След като направите това, вашият файл ще съдържа следните записи

- Изградете приложението и сте готови с интеграцията

## Използване на Aspose.Words за C++ в Qt приложения в рамките на Visual Studio

За да разработите приложение Qt, използвайки Visual Studio, трябва да инсталирате [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). След като имате инсталацията, изтеглете най-новата версия на API от [за сваляне](https://releases.aspose.com/pdf/cpp/) раздел и следвайте стъпките, дадени по-долу:

- Изтегляне и инсталиране [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Изтегляне и разопаковане [Aspose.Words за C++](https://releases.aspose.com/words/cpp/).
- Създайте нова папка за вашите файлове на проекта и копирайте/поставете папки *Aspose.Words.Cpp* и *CodePorting.Native.Cs2Cpp* от разопакован пакет.
- Създайте нов файл с име *CMakeLists.txt* в същата папка.
- Копирайте и поставете следното съдържание във файла *CMakeLists.txt*.

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

- Отворете *Command Prompt* и *cd* в папката на проекта.
- Изпълнете следната команда чрез заместване *<path-to-qt5>* с пътя към файл *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- След като изпълните горепосочените стъпки, в папката ще бъде създадено решение Visual Studio. Вече сте готови да използвате Aspose.Words за C++ функции в рамките на Qt Приложението.


