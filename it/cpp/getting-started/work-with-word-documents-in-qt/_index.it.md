---
title: Lavorare con documenti Word in Qt
second_title: Aspose.Words per C++
articleTitle: Lavorare con documenti Word in Qt
linktitle: Lavorare con documenti Word in Qt
type: docs
description: "Aspose.Words per C++ può essere integrato in Qt per creare e manipolare documenti Word nelle applicazioni Qt."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /it/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt è un framework di sviluppo di applicazioni multipiattaforma basato su C++ che è ampiamente utilizzato per sviluppare una varietà di applicazioni desktop, mobili e di sistema embedded. Aspose.Words per C++ può essere integrato in Qt per creare e manipolare documenti Word nelle applicazioni Qt.
Puoi trovare l'esempio completo di Qt su [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Servendosi Aspose.Words per C++ all'interno di Qt Creator

Per l'utilizzo Aspose.Words per C++ nella tua applicazione Qt scarica l'ultima versione dell'API dal [scaricare](https://releases.aspose.com/words/cpp/) sezione. Una volta scaricata l'API, puoi utilizzare integra la libreria C++ all'interno di Qt Creator o puoi usare con Visual Studio.

Per integrare e utilizzare Aspose.Words per C++ libreria all'interno di un'applicazione console Qt sviluppata in Qt Creator, seguire i passaggi indicati di seguito:

- Apri Qt Creator e crea un nuovo *Qt Console Application*

- Selezionare l'opzione `QMake` dal menu a discesa *Build System*

- Selezionare il kit appropriato e completare la procedura guidata.
- Copiare le cartelle *Aspose.Words.Cpp* e *CodePorting.Native.Cs2Cpp* dal pacchetto estratto di Aspose.Words per C++ nella radice del progetto

- Per aggiungere percorsi a lib e includere cartelle, fare clic con il pulsante destro del mouse sul progetto nel pannello LHS e selezionare *Add Library*

- Selezionare l'opzione Libreria esterna e sfogliare i percorsi per includere e lib cartelle uno per uno

- Una volta fatto, il file di progetto .pro conterrà le seguenti voci

- Costruisci l'applicazione e hai finito con l'integrazione

- Selezionare l'opzione Libreria esterna e sfogliare i percorsi per includere e lib cartelle uno per uno

- Una volta fatto, il file di progetto .pro conterrà le seguenti voci

- Costruisci l'applicazione e hai finito con l'integrazione

## Servendosi Aspose.Words per C++ nelle applicazioni Qt all'interno di Visual Studio

Per lo sviluppo di un'applicazione Qt utilizzando Visual Studio, è necessario installare [Strumenti Qt Visual Studio ](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Una volta completata l'installazione, scaricare l'ultima versione dell'API dal [scaricare](https://releases.aspose.com/pdf/cpp/) sezione e seguire i passaggi indicati di seguito:

- Scaricare e installare [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Scaricare e decomprimere [Aspose.Words per C++](https://releases.aspose.com/words/cpp/).
- Creare una nuova cartella per i file di progetto e copiare / incollare le cartelle *Aspose.Words.Cpp* e *CodePorting.Native.Cs2Cpp* dal pacchetto decompresso.
- Creare un nuovo file denominato *CMakeLists.txt* nella stessa cartella.
- Copiare e incollare il contenuto seguente all'interno del file *CMakeLists.txt*.

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

- Aprire *Command Prompt* e *cd* nella cartella del progetto.
- Eseguire il seguente comando sostituendo *<path-to-qt5>* con il percorso del file *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Una volta completati i passaggi sopra menzionati, verrà creata una soluzione Visual Studio nella cartella. Ora sei pronto per l'uso Aspose.Words per C++ caratteristiche all'interno dell'applicazione Qt.


