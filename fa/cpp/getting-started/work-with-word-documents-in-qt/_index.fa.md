---
title: کار با اسناد ورد در Qt
second_title: Aspose.Words برای C++
articleTitle: کار با اسناد ورد در Qt
linktitle: کار با اسناد ورد در Qt
type: docs
description: "Aspose.Words برای C++ می تواند در Qt برای ایجاد و دستکاری اسناد ورد در Qt برنامه ها ادغام شود."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /fa/cpp/work-with-word-documents-in-qt/
---

Qt یک چارچوب توسعه برنامه های چند پلتفرم مبتنی بر C++ است که به طور گسترده ای برای توسعه انواع برنامه های کاربردی دسکتاپ، تلفن همراه و سیستم جاسازی شده استفاده می شود. Aspose.Words برای C++ می تواند در Qt ادغام شود تا اسناد ورد را در برنامه های Qt شما ایجاد و دستکاری کند.
شما می توانید نمونه کامل Qt را در [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## استفاده از Aspose.Words برای C++ درون Qt خالق

برای استفاده Aspose.Words برای C++ در برنامه Qt خود آخرین نسخه API را از [دانلود فیلم ها](https://releases.aspose.com/words/cpp/) بخش. وقتی API دانلود شد، می توانید از integrate the C++ library در Qt Creator استفاده کنید یا می توانید با Visual Studio استفاده کنید.

به منظور ادغام و استفاده از Aspose.Words برای C++ کتابخانه در یک برنامه کنسول Qt که در Qt Creator توسعه یافته است، لطفا مراحل زیر را دنبال کنید:

- Qt Creator را باز کنید و یک *Qt Console Application*جدید ایجاد کنید

- گزینه `QMake` را از فهرست کشویی *Build System* انتخاب کنید

- کیت مناسب را انتخاب کنید و جادوگر را تمام کنید.
- پوشه های *Aspose.Words.Cpp* و *CodePorting.Native.Cs2Cpp* را از بسته استخراج شده کپی کنید Aspose.Words برای C++ به ریشه پروژه

- برای اضافه کردن مسیرها به lib و شامل پوشه ها، روی پروژه در پانل LHS کلیک راست کنید و *Add Library*را انتخاب کنید

- گزینه External Library را انتخاب کنید و مسیرها را مرور کنید تا پوشه های include و lib را یکی یکی قرار دهید

- پس از انجام، فایل پروژه .pro شما شامل ورودی های زیر خواهد بود

- برنامه را بسازید و با ادغام کارتان تمام شده است

- گزینه External Library را انتخاب کنید و مسیرها را مرور کنید تا پوشه های include و lib را یکی یکی قرار دهید

- پس از انجام، فایل پروژه .pro شما شامل ورودی های زیر خواهد بود

- برنامه را بسازید و با ادغام کارتان تمام شده است

## استفاده از Aspose.Words برای C++ در Qt برنامه های کاربردی در Visual Studio

برای توسعه یک برنامه Qt با استفاده از Visual Studio، شما نیاز به نصب [Qt Visual Studio ابزار](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). پس از نصب، آخرین نسخه API را از [دانلود فیلم ها](https://releases.aspose.com/pdf/cpp/) بخش و مراحل زیر را دنبال کنید:

- دانلود و نصب [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- دانلود و باز کردن بسته [Aspose.Words برای C++](https://releases.aspose.com/words/cpp/).
- یک پوشه جدید برای فایل های پروژه خود ایجاد کنید و پوشه های *Aspose.Words.Cpp* و *CodePorting.Native.Cs2Cpp* را از بسته بندی نشده کپی/چسبانید.
- یک فایل جدید با نام *CMakeLists.txt* در همان پوشه ایجاد کنید.
- محتوای زیر را در فایل *CMakeLists.txt* کپی و چسبانید.

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

- *Command Prompt* و *cd* را به پوشه پروژه باز کنید.
- دستور زیر را با جایگزینی *<path-to-qt5>* با مسیر به فایل *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- پس از اتمام مراحل فوق، یک راه حل Visual Studio در پوشه ایجاد می شود. شما اکنون آماده استفاده هستید Aspose.Words برای C++ ویژگی های درون برنامه Qt.


