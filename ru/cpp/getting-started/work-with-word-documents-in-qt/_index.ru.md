---
title: Работа с документами Word в Qt
second_title: Aspose.Words для C++
articleTitle: Работа с документами Word в Qt
linktitle: Работа с документами Word в Qt
type: docs
description: "Aspose.Words для C++ может быть интегрирован в Qt для создания документов Word и управления ими в приложениях Qt."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /ru/cpp/work-with-word-documents-in-qt/
---

Qt - это кроссплатформенный фреймворк для разработки приложений на C++, который широко используется для разработки различных настольных, мобильных и встраиваемых системных приложений. Aspose.Words для C++ может быть интегрирован в Qt для создания документов Word и управления ими в ваших приложениях Qt.
Вы можете найти полный пример Qt по адресу [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## С помощью Aspose.Words для C++ в Qt Creator

Для использования Aspose.Words для C++ в вашем Qt-приложении загрузите последнюю версию API из [загрузки](https://releases.aspose.com/words/cpp/) раздел. Как только API будет загружен, вы можете использовать интеграцию с библиотекой C++ в Qt Creator или использовать с помощью Visual Studio.

Чтобы интегрировать и использовать библиотеку Aspose.Words для C++ в консольном приложении Qt, разработанном в Qt Creator, пожалуйста, выполните следующие действия:

- Откройте Qt Creator и создайте новый *Qt Console Application*

- Выберите опцию `QMake` из выпадающего списка *Build System*

- Выберите подходящий набор и завершите работу мастера.
- Скопируйте папки *Aspose.Words.Cpp* и *CodePorting.Native.Cs2Cpp* из извлеченного пакета Aspose.Words для C++ в корень проекта

- Чтобы добавить пути к библиотеке lib и включенным папкам, щелкните правой кнопкой мыши по проекту на панели LHS и выберите *Add Library*

- Выберите опцию Внешняя библиотека и просмотрите пути к папкам include и lib одну за другой

- Как только это будет сделано, ваш файл проекта .pro будет содержать следующие записи

- Создайте приложение, и вы завершите интеграцию

- Выберите опцию Внешняя библиотека и просмотрите пути к папкам include и lib одну за другой

- Как только это будет сделано, ваш файл проекта .pro будет содержать следующие записи

- Создайте приложение, и вы завершите интеграцию

## С помощью Aspose.Words для C++ в Qt-приложениях в рамках Visual Studio

Для разработки приложения Qt с использованием Visual Studio вам потребуется установить [Инструменты Qt Visual Studio](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). После установки загрузите последнюю версию API с веб-сайта. [загрузки](https://releases.aspose.com/pdf/cpp/) раздел и следуйте инструкциям, приведенным ниже:

- Скачайте и установите [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Скачать и распаковать [Aspose.Words для C++](https://releases.aspose.com/words/cpp/).
- Создайте новую папку для файлов вашего проекта и скопируйте/вставьте папки *Aspose.Words.Cpp* и *CodePorting.Native.Cs2Cpp* из распакованного пакета.
- Создайте новый файл с именем *CMakeLists.txt* в той же папке.
- Скопируйте и вставьте следующее содержимое в файл *CMakeLists.txt*.

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

- Откройте *Command Prompt* и *cd* в папке проекта.
- Выполните следующую команду, заменив *<path-to-qt5>* на путь к файлу *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Как только вы выполните вышеуказанные действия, в папке будет создано решение Visual Studio. Теперь вы готовы к использованию Aspose.Words для C++ функций в приложении Qt.


