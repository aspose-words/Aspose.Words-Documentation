---
title: العمل مع وثائق وورد في Qt
second_title: Aspose.Words ل C++
articleTitle: العمل مع وثائق وورد في Qt
linktitle: العمل مع وثائق وورد في Qt
type: docs
description: "Aspose.Words ل C++ يمكن دمجها في Qt لإنشاء ومعالجة مستندات الكلمات في Qt التطبيقات."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /ar/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt هو C++ إطار تطوير التطبيقات عبر الأنظمة الأساسية والذي يستخدم على نطاق واسع لتطوير مجموعة متنوعة من تطبيقات سطح المكتب والجوال والنظام المضمن. Aspose.Words ل C++ يمكن دمجها في Qt من أجل إنشاء ومعالجة مستندات ورد في تطبيقاتك Qt.
يمكنك العثور على مثال Qt الكامل في [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## باستخدام Aspose.Words ل C++ ضمن Qt الخالق

لاستخدام Aspose.Words ل C++ في تطبيق Qt الخاص بك، قم بتنزيل أحدث إصدار من API من [التنزيلات](https://releases.aspose.com/words/cpp/) القسم. بمجرد تحميل API، يمكنك استخدام دمج مكتبة C++ داخل Qt الخالق أو يمكنك استخدامها مع Visual Studio.

من أجل دمج واستخدام Aspose.Words ل C++ مكتبة ضمن تطبيق وحدة تحكم Qt تم تطويره في Qt منشئ المحتوى، يرجى اتباع الخطوات الواردة أدناه:

- افتح Qt منشئ وإنشاء *Qt Console Application*جديد

- حدد الخيار `QMake` من القائمة المنسدلة *Build System*

- حدد المجموعة المناسبة وإنهاء المعالج.
- نسخ *Aspose.Words.Cpp* و *CodePorting.Native.Cs2Cpp* المجلدات من الحزمة المستخرجة من Aspose.Words ل C++ في جذر المشروع

- من أجل إضافة مسارات إلى ليب وتشمل المجلدات، انقر بزر الماوس الأيمن على المشروع في لوحة LHS وحدد *Add Library*

- حدد خيار المكتبة الخارجية وتصفح المسارات لتضمينها ومجلدات ليب واحدة تلو الأخرى

- بمجرد الانتهاء من ذلك، سيحتوي ملف المشروع الخاص بك على الإدخالات التالية

- بناء التطبيق وانت فعلت مع التكامل

- حدد خيار المكتبة الخارجية وتصفح المسارات لتضمينها ومجلدات ليب واحدة تلو الأخرى

- بمجرد الانتهاء من ذلك، سيحتوي ملف المشروع الخاص بك على الإدخالات التالية

- بناء التطبيق وانت فعلت مع التكامل

## باستخدام Aspose.Words ل C++ في Qt تطبيقات داخل Visual Studio

لتطوير تطبيق Qt باستخدام Visual Studio، تحتاج إلى تثبيت [Qt Visual Studio أدوات](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). بمجرد الانتهاء من التثبيت، قم بتنزيل أحدث إصدار من API من [التنزيلات](https://releases.aspose.com/pdf/cpp/) القسم واتبع الخطوات الواردة أدناه:

- تحميل وتثبيت [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- تحميل وفك [Aspose.Words ل C++](https://releases.aspose.com/words/cpp/).
- إنشاء مجلد جديد لملفات المشروع ونسخ / لصق *Aspose.Words.Cpp* و *CodePorting.Native.Cs2Cpp* المجلدات من حزمة تفكيك.
- قم بإنشاء ملف جديد باسم *CMakeLists.txt* في نفس المجلد.
- انسخ والصق المحتوى التالي داخل ملف *CMakeLists.txt*.

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

- افتح *Command Prompt* و *cd* إلى مجلد المشروع.
- قم بتشغيل الأمر التالي عن طريق استبدال *<path-to-qt5>* مع المسار إلى *Qt5Config.cmake* ملف.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- بمجرد الانتهاء من الخطوات المذكورة أعلاه، سيتم إنشاء حل Visual Studio في المجلد. أنت الآن جاهز للاستخدام Aspose.Words ل C++ الميزات داخل تطبيق Qt.


