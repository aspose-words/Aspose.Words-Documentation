---
title: Arbeiten mit Word-Dokumenten in Qt
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Word-Dokumenten in Qt
linktitle: Arbeiten mit Word-Dokumenten in Qt
type: docs
description: "Aspose.Words für C++ kann in Qt integriert werden, um Word-Dokumente in Qt-Anwendungen zu erstellen und zu bearbeiten."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /de/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt ist ein auf C++ basierendes plattformübergreifendes Anwendungsentwicklungsframework, das häufig zur Entwicklung einer Vielzahl von Desktop-, Mobil- und eingebetteten Systemanwendungen verwendet wird. Aspose.Words für C++ kann in Qt integriert werden, um Word-Dokumente in Ihren Qt-Anwendungen zu erstellen und zu bearbeiten.
Das vollständige Qt Beispiel finden Sie unter [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Wobei Aspose.Words für C++ innerhalb von Qt Creator

Für die verwendung von Aspose.Words für C++ laden Sie in Ihrer Qt-Anwendung die neueste Version von API von der herunter [Downloads](https://releases.aspose.com/words/cpp/) Abschnitt. Sobald API heruntergeladen wurde, können Sie die C++ -Bibliothek in Qt Creator integrieren oder mit Visual Studio verwenden.

Um zu integrieren und zu nutzen Aspose.Words für C++ bibliothek in einer Qt Konsolenanwendung, die in Qt Creator entwickelt wurde, befolgen Sie bitte die unten angegebenen Schritte:

- Öffne Qt Creator und erstelle eine neue *Qt Console Application*

- Wählen Sie die Option `QMake` aus der Dropdown-Liste *Build System* aus

- Wählen Sie das entsprechende Kit aus und beenden Sie den Assistenten.
- Kopieren Sie die Ordner *Aspose.Words.Cpp* und *CodePorting.Native.Cs2Cpp* aus dem extrahierten Paket von Aspose.Words für C++ in die Wurzel des Projekts

- Um Pfade zu lib- und Include-Ordnern hinzuzufügen, klicken Sie mit der rechten Maustaste auf das Projekt im Bereich LHS und wählen Sie *Add Library*

- Wählen Sie die Option Externe Bibliothek und durchsuchen Sie die Pfade zu Include- und lib-Ordnern nacheinander

- Sobald Sie fertig sind, enthält Ihre .pro-Projektdatei die folgenden Einträge

- Erstellen Sie die Anwendung und Sie sind mit der Integration fertig

- Wählen Sie die Option Externe Bibliothek und durchsuchen Sie die Pfade zu Include- und lib-Ordnern nacheinander

- Sobald Sie fertig sind, enthält Ihre .pro-Projektdatei die folgenden Einträge

- Erstellen Sie die Anwendung und Sie sind mit der Integration fertig

## Wobei Aspose.Words für C++ in Qt Bewerbungen innerhalb von Visual Studio

Um eine Qt -Anwendung mit Visual Studio zu entwickeln, müssen Sie Folgendes installieren [Qt Visual Studio Werkzeuge](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Sobald Sie die Installation abgeschlossen haben, laden Sie die neueste Version von API von der [Downloads](https://releases.aspose.com/pdf/cpp/) abschnitt und befolgen Sie die unten angegebenen Schritte:

- Herunterladen und installieren [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Herunterladen und entpacken [Aspose.Words für C++](https://releases.aspose.com/words/cpp/).
- Erstellen Sie einen neuen Ordner für Ihre Projektdateien und kopieren / fügen Sie die Ordner *Aspose.Words.Cpp* und *CodePorting.Native.Cs2Cpp* aus dem entpackten Paket ein.
- Erstellen Sie eine neue Datei mit dem Namen *CMakeLists.txt* im selben Ordner.
- Kopieren Sie den folgenden Inhalt und fügen Sie ihn in die *CMakeLists.txt*-Datei ein.

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

- Öffnen Sie *Command Prompt* und *cd* im Projektordner.
- Führen Sie den folgenden Befehl aus, indem Sie ersetzen *<path-to-qt5>* mit dem Pfad zur *Qt5Config.cmake*-Datei.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Sobald Sie die oben genannten Schritte ausgeführt haben, wird eine Visual Studio -Lösung im Ordner erstellt. Sie sind jetzt einsatzbereit Aspose.Words für C++ funktionen innerhalb der Qt-Anwendung.


