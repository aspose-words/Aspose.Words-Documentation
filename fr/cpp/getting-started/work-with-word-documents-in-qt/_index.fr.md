---
title: Travailler avec des documents Word dans Qt
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des documents Word dans Qt
linktitle: Travailler avec des documents Word dans Qt
type: docs
description: "Aspose.Words pour C++ peut être intégré à Qt pour créer et manipuler des documents Word dans des applications Qt."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /fr/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt est un framework de développement d'applications multiplateformes basé sur C++ qui est largement utilisé pour développer une variété d'applications de bureau, mobiles et embarquées. Aspose.Words pour C++ peut être intégré dans Qt afin de créer et de manipuler des documents Word dans vos applications Qt.
Vous pouvez trouver un exemple complet de Qt sur [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## En Utilisant Aspose.Words pour C++ dans Qt Creator

Pour l'utilisation Aspose.Words pour C++ dans votre application Qt, téléchargez la dernière version de l'API à partir du [téléchargements](https://releases.aspose.com/words/cpp/) section. Une fois l'API téléchargée, vous pouvez utiliser intégrer la bibliothèque C++ dans Qt Creator ou vous pouvez l'utiliser avec Visual Studio.

Afin d'intégrer et d'utiliser Aspose.Words pour C++ bibliothèque dans une application Console Qt développée dans Qt Creator, veuillez suivre les étapes ci-dessous:

- Ouvrez Qt Creator et créez un nouveau *Qt Console Application*

- Sélectionnez l'option `QMake` dans la liste déroulante *Build System*

- Sélectionnez le kit approprié et terminez l'assistant.
- Copiez les dossiers *Aspose.Words.Cpp* et *CodePorting.Native.Cs2Cpp* à partir du package extrait de Aspose.Words pour C++ à la racine du projet

- Pour ajouter des chemins à lib et inclure des dossiers, cliquez avec le bouton droit sur le projet dans le panneau LHS et sélectionnez *Add Library*

- Sélectionnez l'option Bibliothèque externe et parcourez les chemins d'accès aux dossiers include et lib un par un

- Une fois terminé, votre fichier de projet .pro contiendra les entrées suivantes

- Créez l'application et vous avez terminé l'intégration

- Sélectionnez l'option Bibliothèque externe et parcourez les chemins d'accès aux dossiers include et lib un par un

- Une fois terminé, votre fichier de projet .pro contiendra les entrées suivantes

- Créez l'application et vous avez terminé l'intégration

## En Utilisant Aspose.Words pour C++ dans les applications Qt dans Visual Studio

Pour développer une application Qt en utilisant Visual Studio, vous devez installer [Outils Qt Visual Studio ](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Une fois l'installation terminée, téléchargez la dernière version de l'API à partir du [téléchargements](https://releases.aspose.com/pdf/cpp/) section et suivez les étapes ci-dessous:

- Télécharger et installer [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Télécharger et décompresser [Aspose.Words pour C++](https://releases.aspose.com/words/cpp/).
- Créez un nouveau dossier pour vos fichiers de projet et copiez / collez les dossiers *Aspose.Words.Cpp* et *CodePorting.Native.Cs2Cpp* à partir du package décompressé.
- Créez un nouveau fichier nommé *CMakeLists.txt* dans le même dossier.
- Copiez et collez le contenu suivant dans le fichier *CMakeLists.txt*.

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

- Ouvrez *Command Prompt* et *cd* dans le dossier du projet.
- Exécutez la commande suivante en remplaçant *<path-to-qt5>* avec le chemin d'accès au fichier *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Une fois que vous avez terminé les étapes mentionnées ci-dessus, une solution Visual Studio sera créée dans le dossier. Vous êtes maintenant prêt à utiliser Aspose.Words pour C++ fonctionnalités de l'application Qt.


