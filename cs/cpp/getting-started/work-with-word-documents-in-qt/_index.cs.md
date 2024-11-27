---
title: Práce s Word dokumenty v Qt
second_title: Aspose.Words pro C++
articleTitle: Práce s Word dokumenty v Qt
linktitle: Práce s Word dokumenty v Qt
type: docs
description: "Aspose.Words pro C++ lze integrovat do Qt a vytvářet a manipulovat s Word dokumenty v Qt aplikacích."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /cs/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt je C++ založený multiplatformní rámec pro vývoj aplikací, který je široce používán k vývoji různých desktopových, mobilních a vestavěných systémových aplikací. Aspose.Words pro C++ lze integrovat do Qt za účelem vytváření a manipulace s Word dokumenty ve vašich Qt aplikacích.
Kompletní Qt Příklad najdete na [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Použití Aspose.Words pro C++ v rámci Qt tvůrce

Pro použití Aspose.Words pro C++ ve vaší aplikaci Qt Stáhněte nejnovější verzi API z [stažení](https://releases.aspose.com/words/cpp/) oddíl. Jakmile je API stažen, můžete použít integrovat knihovnu C++ do Qt Creator nebo můžete použít s Visual Studio.

Chcete-li integrovat a používat knihovnu Aspose.Words pro C++ v konzolové aplikaci Qt vyvinuté v aplikaci Qt Creator, postupujte podle níže uvedených kroků:

- Otevřete Qt Creator a vytvořte nový *Qt Console Application*

- V rozevíracím seznamu *Build System* vyberte možnost `QMake`

- Vyberte příslušnou sadu a dokončete průvodce.
- Zkopírujte složky *Aspose.Words.Cpp* a *CodePorting.Native.Cs2Cpp* z extrahovaného balíčku Aspose.Words pro C++ do kořenového adresáře projektu

- Chcete-li přidat cesty k lib a zahrnout složky, klikněte pravým tlačítkem na projekt v panelu LHS a vyberte *Add Library*

- Vyberte možnost Externí knihovna a procházejte cesty k zahrnutí složek a složek lib jeden po druhém

- Po dokončení bude váš soubor projektu .pro obsahovat následující položky

- Sestavte aplikaci a jste hotovi s integrací

- Vyberte možnost Externí knihovna a procházejte cesty k zahrnutí složek a složek lib jeden po druhém

- Po dokončení bude váš soubor projektu .pro obsahovat následující položky

- Sestavte aplikaci a jste hotovi s integrací

## Použití Aspose.Words pro C++ v Qt aplikacích v Visual Studio

Pro vývoj aplikace Qt pomocí Visual Studio je třeba nainstalovat [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Jakmile budete mít instalaci, Stáhněte si nejnovější verzi API z [stažení](https://releases.aspose.com/pdf/cpp/) sekce a postupujte podle níže uvedených kroků:

- Stáhnout a nainstalovat [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Stáhnout a rozbalit [Aspose.Words pro C++](https://releases.aspose.com/words/cpp/).
- Vytvořte novou složku pro soubory projektu a zkopírujte / vložte složky *Aspose.Words.Cpp* a *CodePorting.Native.Cs2Cpp* z rozbaleného balíčku.
- Vytvořte nový soubor s názvem *CMakeLists.txt* ve stejné složce.
- Zkopírujte a vložte následující obsah do souboru *CMakeLists.txt*.

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

- Otevřete *Command Prompt* a *cd* do složky projektu.
- Spusťte následující příkaz nahrazením *<path-to-qt5>* s cestou k souboru *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Po dokončení výše uvedených kroků se ve složce vytvoří řešení Visual Studio. Nyní jste připraveni k použití Aspose.Words pro funkce C++ v aplikaci Qt.


