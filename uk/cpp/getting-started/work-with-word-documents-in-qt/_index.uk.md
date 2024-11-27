---
title: Робота з Word документами в Qt
second_title: Aspose.Words для C++
articleTitle: Робота з Word документами в Qt
linktitle: Робота з Word документами в Qt
type: docs
description: "Aspose.Words для C++ може бути інтегрований в Qt для створення Word документів і управління ними в Qt додатках."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /uk/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt - це міжплатформенний фреймворк для розробки додатків на основі C++, який широко використовується для розробки різних настільних, мобільних та вбудованих системних додатків. Aspose.Words для C++ можна інтегрувати в Qt для створення Word документів та управління ними у ваших Qt додатках.
Ви можете знайти повний Приклад Qt за адресою [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Використання Aspose.Words для C++ у творці Qt

Щоб використовувати Aspose.Words для C++ у вашому додатку Qt, завантажте останню версію API з [завантаження](https://releases.aspose.com/words/cpp/) розділ. Після завантаження API Ви зможете використовувати інтеграцію бібліотеки C++ в Qt творець або ви можете використовувати за допомогою Visual Studio.

Щоб інтегрувати та використовувати бібліотеку Aspose.Words для C++ у консольній програмі Qt, розробленій у програмі Qt Creator, будь ласка, виконайте такі дії:

- Відкрийте Qt Creator і створіть новий *Qt Console Application*

- Виберіть опцію `QMake` зі спадного списку *Build System*

- Виберіть відповідний набір і завершіть роботу майстра.
- Скопіюйте папки *Aspose.Words.Cpp* та *CodePorting.Native.Cs2Cpp* із витягнутого пакета Aspose.Words для C++ у корінь проекту

- Щоб додати шляхи до бібліотеки lib та включених папок, клацніть правою кнопкою миші на проекті на панелі LHS та виберіть *Add Library*

- Виберіть опцію зовнішня бібліотека та перегляньте шляхи до папок include та lib по черзі

- Як тільки це буде зроблено, ваш файл проекту. pro буде містити такі записи

- Створіть додаток, і ви завершите інтеграцію

- Виберіть опцію зовнішня бібліотека та перегляньте шляхи до папок include та lib по черзі

- Як тільки це буде зроблено, ваш файл проекту. pro буде містити такі записи

- Створіть додаток, і ви завершите інтеграцію

## Використання Aspose.Words для C++ у Qt додатках у межах Visual Studio

Для розробки програми Qt за допомогою Visual Studio вам потрібно встановити [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Після завершення встановлення завантажте останню версію API з веб-сайту [завантаження](https://releases.aspose.com/pdf/cpp/) розділ і дотримуйтесь інструкцій, наведених нижче:

- Скачайте і встановіть [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Завантажити та розпакувати [Aspose.Words для C++](https://releases.aspose.com/words/cpp/).
- Створіть нову папку для файлів вашого проекту та скопіюйте/вставте папки *Aspose.Words.Cpp* та *CodePorting.Native.Cs2Cpp* із розпакованого пакета.
- Створіть новий файл із назвою *CMakeLists.txt* у тій самій папці.
- Скопіюйте та вставте наступний вміст у файл *CMakeLists.txt*.

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

- Відкрийте *Command Prompt* та *cd* у папці проекту.
- Виконайте наступну команду, замінивши *<path-to-qt5>* на шлях до файлу *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Після виконання вищевказаних дій в папці буде створено рішення Visual Studio. Тепер ви готові використовувати Aspose.Words для C++ функцій Програми Qt.


