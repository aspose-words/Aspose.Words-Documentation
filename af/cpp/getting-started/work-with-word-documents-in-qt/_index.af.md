---
title: Werk Met Word Dokumente in Qt
second_title: Aspose.Words vir C++
articleTitle: Werk Met Word Dokumente in Qt
linktitle: Werk Met Word Dokumente in Qt
type: docs
description: "Aspose.Words vir C++ kan geïntegreer word binne Qt Om Word dokumente in Qt aansoeke te skep en te manipuleer."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /af/cpp/work-with-word-documents-in-qt/
---

Qt is'n C++ gebaseerde kruis-platform aansoek ontwikkeling raamwerk wat wyd gebruik word om'n verskeidenheid van lessenaar, mobiele, en ingebedde stelsel programme te ontwikkel. Aspose.Words vir C++ kan geïntegreer word binne Qt ten einde Te skep en te manipuleer Word dokumente in jou Qt aansoeke.
Jy kan volledige Qt voorbeeld vind by [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Gebruik Aspose.Words vir C++ binne Qt Skepper

Vir gebruik Aspose.Words vir C++ in jou Qt aansoek laai die nuutste weergawe van die API van die [aflaai](https://releases.aspose.com/words/cpp/) afdeling. Sodra die API afgelaai is, kan jy gebruik integreer die C++ biblioteek binne Qt Skepper of jy kan gebruik met Visual Studio.

Om te integreer en te gebruik Aspose.Words vir C++ biblioteek binne'n Qt Konsole Aansoek ontwikkel in Qt Skepper, volg asseblief die stappe hieronder gegee:

- Open Qt Skepper en skep'n nuwe *Qt Console Application*

- Kies die `QMake` opsie uit die *Build System* aftreklys

- Kies die toepaslike kit en voltooi die towenaar.
- Kopieer *Aspose.Words.Cpp* en *CodePorting.Native.Cs2Cpp* dopgehou uit die onttrek pakket van Aspose.Words vir C++ in die wortel van die projek

- Om paaie by lib te voeg en dopgehou in te sluit, klik met die rechtermuisknop op die projek in die LHS paneel en kies *Add Library*

- Kies Die Eksterne Biblioteek opsie en blaai paaie om in te sluit en lib dopgehou een vir een

- Sodra dit gedoen is, sal your. pro project file die volgende inskrywings bevat

- Bou die aansoek en jy is klaar met die integrasie

- Kies Die Eksterne Biblioteek opsie en blaai paaie om in te sluit en lib dopgehou een vir een

- Sodra dit gedoen is, sal your. pro project file die volgende inskrywings bevat

- Bou die aansoek en jy is klaar met die integrasie

## Gebruik Aspose.Words vir C++ in Qt Aansoeke binne Visual Studio

Vir die ontwikkeling van'n Qt aansoek met behulp van Visual Studio, moet jy installeer [Qt Visual Studio Gereedskap](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Sodra u die installasie het, laai die nuutste weergawe van die API van die [aflaai](https://releases.aspose.com/pdf/cpp/) afdeling en volg die stappe wat hieronder gegee word:

- Aflaai en installeer [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Aflaai en pak [Aspose.Words vir C++](https://releases.aspose.com/words/cpp/).
- Skep'n nuwe gids vir u projeklêers en kopieer/plak *Aspose.Words.Cpp* en *CodePorting.Native.Cs2Cpp* dopgehou vanaf die uitgepakte pakket.
- Skep'n nuwe lêer genaamd *CMakeLists.txt* in dieselfde gids.
- Kopieer en plak die volgende inhoud binne die *CMakeLists.txt* lêer.

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

- Open *Command Prompt* en *cd* na die projek gids.
- Begin die volgende opdrag deur die vervanging *<path-to-qt5>* met die pad na *Qt5Config.cmake* lêer.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Sodra jy die bogenoemde stappe voltooi het, sal'n Visual Studio oplossing in die gids geskep word. Nou is jy gereed om te gebruik Aspose.Words vir C++ kenmerke binne die Qt aansoek.


