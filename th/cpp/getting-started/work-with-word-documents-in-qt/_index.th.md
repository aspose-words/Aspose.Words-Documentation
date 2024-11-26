---
title: ทำงานกับเอกสารคำในQt
second_title: Aspose.WordsสำหรับC++
articleTitle: ทำงานกับเอกสารคำในQt
linktitle: ทำงานกับเอกสารคำในQt
type: docs
description: "Aspose.WordsสำหรับC++ สามารถบูรณาการภายในQtเพื่อสร้างและจัดการกับเอกสารคำในQtโปรแกรมประยุกต์."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /th/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qtเป็นC++กรอบการพัฒนาโปรแกรมข้ามแพลตฟอร์มที่ใช้กันอย่างแพร่หลายในการพัฒนาความหลากหลายของเดสก์ทอปมือถือและระบบการฝังตัว Aspose.WordsสำหรับC++ สามารถบูรณาการภายในQtเพื่อสร้างและจัดการกับเอกสารคำในการใช้งานของคุณQt.
คุณสามารถค้นหาตัวอย่างที่สมบูรณ์Qtที่ [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## ใช้ Aspose.WordsสำหรับC++ ภายในQtผู้สร้าง

สำหรับใช้ Aspose.WordsสำหรับC++ ในQtใบสมัครของคุณดาวน์โหลดรุ่นล่าสุดของAPIจาก [ดาวน์โหลด](https://releases.aspose.com/words/cpp/) มาตรา เมื่อAPIถูกดาวน์โหลด,คุณสามารถใช้บูรณาการC++ไลบรารีภายในQtผู้สร้างหรือคุณสามารถใช้กับVisual Studio.

เพื่อที่จะบูรณาการและการใช้งาน Aspose.WordsสำหรับC++ ห้องสมุดภายในQtโปรแกรมคอนโซลที่พัฒนาขึ้นในQtผู้สร้าง,โปรดทำตามขั้นตอนที่ระบุไว้ด้านล่าง:

- เปิดQtผู้สร้างและสร้างใหม่*Qt Console Application*

- เลือกตัวเลือก`QMake`จากเมนูแบบเลื่อนลง*Build System*

- เลือกชุดที่เหมาะสมและเสร็จสิ้นตัวช่วยสร้าง.
- คัดลอก*Aspose.Words.Cpp*และ*CodePorting.Native.Cs2Cpp*โฟลเดอร์จากแพคเกจที่สกัดของ Aspose.WordsสำหรับC++ เป็นรากของโครงการ

- ในการเพิ่มเส้นทางไปยังไลบรารีและรวมโฟลเดอร์ให้คลิกขวาบนโครงการในแผงLHSและเลือก*Add Library*

- เลือกตัวเลือกไลบรารีภายนอกและเรียกดูเส้นทางที่จะรวมและโฟลเดอร์ไลบรารีหนึ่งโดย

- จะมีรายการต่อไปนี้

- สร้างโปรแกรมประยุกต์และคุณจะทำกับการรวม

- เลือกตัวเลือกไลบรารีภายนอกและเรียกดูเส้นทางที่จะรวมและโฟลเดอร์ไลบรารีหนึ่งโดย

- จะมีรายการต่อไปนี้

- สร้างโปรแกรมประยุกต์และคุณจะทำกับการรวม

## ใช้ Aspose.WordsสำหรับC++ ในQtแอปพลิเคชันภายในVisual Studio

สำหรับการพัฒนาแอปพลิเคชันQtโดยใช้Visual Studioคุณต้องติดตั้ง [QtVisual Studioเครื่องมือ](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). เมื่อคุณมีการติดตั้ง,ดาวน์โหลดรุ่นล่าสุดของAPIจาก [ดาวน์โหลด](https://releases.aspose.com/pdf/cpp/) ส่วนและทำตามขั้นตอนที่ระบุด้านล่าง:

- ดาวน์โหลดและติดตั้ง [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- ดาวน์โหลดและแกะ [Aspose.WordsสำหรับC++](https://releases.aspose.com/words/cpp/).
- สร้างโฟลเดอร์ใหม่สำหรับไฟล์โครงการของคุณและคัดลอก/วาง*Aspose.Words.Cpp*และ*CodePorting.Native.Cs2Cpp*โฟลเดอร์จากแพคเก.
- สร้างแฟ้มใหม่ที่ชื่อ*CMakeLists.txt*ในโฟลเดอร์เดียวกัน.
- คัดลอกและวางเนื้อหาต่อไปนี้ภายในไฟล์*CMakeLists.txt*.

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

- เปิด*Command Prompt*และ*cd*ไปยังโฟลเดอร์โครงการ.
- เรียกใช้คำสั่งต่อไปนี้โดยการแทนที่ *<path-to-qt5>*มีเส้นทางไปยังแฟ้ม*Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- เมื่อคุณเสร็จสิ้นขั้นตอนดังกล่าวข้างต้นแล้วโซลูชันVisual Studioจะถูกสร้างขึ้นในโฟลเดอร์ ตอนนี้คุณพร้อมที่จะใช้ Aspose.WordsสำหรับC++ คุณสมบัติภายในโปรแกรมQt.


