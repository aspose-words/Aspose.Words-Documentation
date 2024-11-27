---
title: Praca z dokumentami Word W Qt
second_title: Aspose.Words dla C++
articleTitle: Praca z dokumentami Word W Qt
linktitle: Praca z dokumentami Word W Qt
type: docs
description: "Aspose.Words for C++ można zintegrować z Qt w celu tworzenia i manipulowania dokumentami Word w aplikacjach Qt."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /pl/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt to wieloplatformowy framework do tworzenia aplikacji oparty na C++, który jest szeroko stosowany do tworzenia różnych aplikacji komputerowych, mobilnych i wbudowanych. Aspose.Words for C++ można zintegrować z Qt w celu tworzenia i manipulowania dokumentami Word w aplikacjach Qt.
Kompletny przykład Qt można znaleźć pod adresem [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Używanie Aspose.Words dla C++ w Qt Creator

Aby użyć Aspose.Words for C++ w swojej aplikacji Qt Pobierz najnowszą wersję API z [pliki do pobrania](https://releases.aspose.com/words/cpp/) sekcji. Po pobraniu API możesz użyć zintegrować bibliotekę C++ w Qt Creator lub możesz użyć z Visual Studio.

Aby zintegrować i używać Aspose.Words dla biblioteki C++ w aplikacji konsoli Qt opracowanej w Qt Creator, wykonaj poniższe czynności:

- Otwórz Qt Creator i utwórz nowy *Qt Console Application*

- Wybierz opcję `QMake` z listy rozwijanej *Build System*

- Wybierz odpowiedni zestaw i zakończ kreatora.
- Skopiuj foldery *Aspose.Words.Cpp* i *CodePorting.Native.Cs2Cpp* z wyodrębnionego pakietu Aspose.Words dla C++ do katalogu głównego projektu

- Aby dodać ścieżki do lib i dołączyć foldery, kliknij Projekt prawym przyciskiem myszy w panelu LHS i wybierz *Add Library*

- Wybierz opcję Biblioteka zewnętrzna i przeglądaj ścieżki do dołączania i folderów lib jeden po drugim

- Po zakończeniu plik projektu. pro będzie zawierał następujące wpisy

- Zbuduj aplikację i skończysz z integracją

- Wybierz opcję Biblioteka zewnętrzna i przeglądaj ścieżki do dołączania i folderów lib jeden po drugim

- Po zakończeniu plik projektu. pro będzie zawierał następujące wpisy

- Zbuduj aplikację i skończysz z integracją

## Używanie Aspose.Words dla C++ w aplikacjach Qt w Visual Studio

Aby stworzyć aplikację Qt przy użyciu Visual Studio, musisz zainstalować [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Po zakończeniu Instalacji pobierz najnowszą wersję API z [pliki do pobrania](https://releases.aspose.com/pdf/cpp/) sekcja i postępuj zgodnie z instrukcjami podanymi poniżej:

- Pobierz i zainstaluj [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Pobierz i rozpakuj [Aspose.Words dla C++](https://releases.aspose.com/words/cpp/).
- Utwórz nowy folder dla plików projektu i skopiuj / wklej *Aspose.Words.Cpp* i *CodePorting.Native.Cs2Cpp* foldery z rozpakowanego pakietu.
- Utwórz nowy plik o nazwie *CMakeLists.txt* w tym samym folderze.
- Skopiuj i wklej następującą zawartość w pliku *CMakeLists.txt*.

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

- Otwórz *Command Prompt* i *cd* do folderu projektu.
- Uruchom następujące polecenie, zastępując *<path-to-qt5>* ze ścieżką do pliku *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Po wykonaniu powyższych kroków w folderze zostanie utworzone rozwiązanie Visual Studio. Jesteś teraz gotowy do użycia Aspose.Words dla funkcji C++ w aplikacji Qt.


