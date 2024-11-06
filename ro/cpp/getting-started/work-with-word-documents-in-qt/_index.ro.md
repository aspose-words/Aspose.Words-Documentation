---
title: Lucrați cu documente Word în Qt
second_title: Aspose.Words pentru C++
articleTitle: Lucrați cu documente Word în Qt
linktitle: Lucrați cu documente Word în Qt
type: docs
description: "Aspose.Words pentru C++ poate fi integrat în Qt pentru a crea și manipula documente Word în Qt aplicații."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /ro/cpp/work-with-word-documents-in-qt/
---

Qt este un cadru de dezvoltare a aplicațiilor cross-platform bazat pe C++, Care este utilizat pe scară largă pentru a dezvolta o varietate de aplicații desktop, mobile și de sistem încorporat. Aspose.Words pentru C++ poate fi integrat în Qt pentru a crea și manipula documente Word în aplicațiile Qt.
Puteți găsi exemplul complet Qt la [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Utilizarea Aspose.Words pentru C++ în Qt Creator

Pentru utilizarea Aspose.Words pentru C++ în aplicația Qt descărcați cea mai recentă versiune a API din [descărcări](https://releases.aspose.com/words/cpp/) secțiunea. Odată ce API este descărcat, puteți utiliza integrarea bibliotecii C++ în Qt Creator sau puteți utiliza cu Visual Studio.

Pentru a integra și utiliza Aspose.Words pentru C++ bibliotecă într-o aplicație consolă Qt dezvoltată în Qt Creator, urmați pașii de mai jos:

- Deschideți Qt Creator și creați un nou *Qt Console Application*

- Selectați opțiunea `QMake` din meniul derulant *Build System*

- Selectați kitul corespunzător și terminați expertul.
- Copiați folderele *Aspose.Words.Cpp* și *CodePorting.Native.Cs2Cpp* din pachetul extras de Aspose.Words pentru C++ în rădăcina proiectului

- Pentru a adăuga căi în lib și a include foldere, faceți clic dreapta pe proiect în panoul LHS și selectați *Add Library*

- Selectați opțiunea bibliotecă externă și răsfoiți căile pentru a include și folderele lib unul câte unul

- După ce ați terminat, fișierul dvs. de proiect .pro va conține următoarele intrări

- Construiți aplicația și ați terminat cu integrarea

- Selectați opțiunea bibliotecă externă și răsfoiți căile pentru a include și folderele lib unul câte unul

- După ce ați terminat, fișierul dvs. de proiect .pro va conține următoarele intrări

- Construiți aplicația și ați terminat cu integrarea

## Utilizarea Aspose.Words pentru C++ în Qt aplicații din Visual Studio

Pentru a dezvolta o aplicație Qt folosind Visual Studio, trebuie să instalați [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Odată ce ați instalat, descărcați cea mai recentă versiune a API din [descărcări](https://releases.aspose.com/pdf/cpp/) secțiunea și urmați pașii de mai jos:

- Descărcați și instalați [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Descărcați și despachetați [Aspose.Words pentru C++](https://releases.aspose.com/words/cpp/).
- Creați un folder nou pentru fișierele de proiect și copiați / lipiți folderele *Aspose.Words.Cpp* și *CodePorting.Native.Cs2Cpp* din pachetul despachetat.
- Creați un fișier nou numit *CMakeLists.txt* în același folder.
- Copiați și lipiți următorul conținut în fișierul *CMakeLists.txt*.

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

- Deschideți *Command Prompt* și *cd* în folderul proiect.
- Rulați următoarea comandă înlocuind *<path-to-qt5>* cu calea către fișierul *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- După ce ați finalizat pașii menționați mai sus, o soluție Visual Studio va fi creată în folder. Acum sunteți gata de utilizare Aspose.Words pentru C++ caracteristici în cadrul aplicației Qt.


