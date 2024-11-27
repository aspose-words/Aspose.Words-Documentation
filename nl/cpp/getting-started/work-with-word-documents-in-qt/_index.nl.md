---
title: Werken met Word documenten in Qt
second_title: Aspose.Words voor C++
articleTitle: Werken met Word documenten in Qt
linktitle: Werken met Word documenten in Qt
type: docs
description: "Aspose.Words voor C++ kan worden geïntegreerd in Qt om Word documenten in Qt toepassingen te maken en te manipuleren."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /nl/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt is een C++ gebaseerd cross-platform applicatieontwikkelingsframework dat veel wordt gebruikt om een verscheidenheid aan desktop -, mobiele en embedded systeemtoepassingen te ontwikkelen. Aspose.Words voor C++ kan worden geïntegreerd in Qt om Word - documenten in uw Qt - toepassingen te maken en te manipuleren.
U kunt het volledige Qt voorbeeld vinden op [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Aspose.Words gebruiken voor C++ binnen Qt Creator

Voor het gebruik van Aspose.Words voor C++ in uw Qt toepassing download de nieuwste versie van de API van de [downloaden](https://releases.aspose.com/words/cpp/) sectie. Zodra de API is gedownload, kunt u de C++ bibliotheek integreren in Qt Creator of u kunt gebruiken met Visual Studio.

Om Aspose.Words te integreren en te gebruiken voor C++ bibliotheek binnen een Qt Console applicatie ontwikkeld in Qt Creator, volg dan de onderstaande stappen:

- Open Qt Creator en maak een nieuwe *Qt Console Application*

- Selecteer de optie `QMake` in de vervolgkeuzelijst *Build System*

- Selecteer de juiste kit en voltooi de wizard.
- Kopieer *Aspose.Words.Cpp* en *CodePorting.Native.Cs2Cpp* mappen uit het uitgepakte pakket van Aspose.Words voor C++ naar de hoofdmap van het project

- Om paden aan lib toe te voegen en mappen op te nemen, klikt u met de rechtermuisknop op het project in het deelvenster LHS en selecteert u *Add Library*

- Selecteer de optie externe bibliotheek en blader door paden om mappen op te nemen en te lib één voor één

- Eenmaal klaar, zal uw .pro project bestand de volgende items bevatten

- Bouw de applicatie en je bent klaar met de integratie

- Selecteer de optie externe bibliotheek en blader door paden om mappen op te nemen en te lib één voor één

- Eenmaal klaar, zal uw .pro project bestand de volgende items bevatten

- Bouw de applicatie en je bent klaar met de integratie

## Aspose.Words gebruiken voor C++ in Qt toepassingen binnen Visual Studio

Voor het ontwikkelen van een Qt toepassing met behulp van Visual Studio, moet u installeren [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Zodra u de installatie hebt, downloadt u de nieuwste versie van de API van de [downloaden](https://releases.aspose.com/pdf/cpp/) sectie en volg de onderstaande stappen:

- Downloaden en installeren [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Downloaden en uitpakken [Aspose.Words voor C++](https://releases.aspose.com/words/cpp/).
- Maak een nieuwe map voor uw projectbestanden en kopieer/plak *Aspose.Words.Cpp* en *CodePorting.Native.Cs2Cpp* mappen uit uitgepakt pakket.
- Maak een nieuw bestand met de naam *CMakeLists.txt* in dezelfde map.
- Kopieer en plak de volgende inhoud in het *CMakeLists.txt* bestand.

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

- Open *Command Prompt* en *cd* naar de projectmap.
- Voer het volgende commando uit door te vervangen *<path-to-qt5>* met het pad naar *Qt5Config.cmake* bestand.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Nadat u de bovenstaande stappen hebt voltooid, wordt er een Visual Studio - oplossing in de map gemaakt. U bent nu klaar om Aspose.Words te gebruiken voor C++ functies binnen de Qt toepassing.


