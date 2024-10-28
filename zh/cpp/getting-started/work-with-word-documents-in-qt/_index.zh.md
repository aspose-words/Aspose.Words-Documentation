---
title: 使用Qt中的Word文档
second_title: Aspose.Words为C++
articleTitle: 使用Qt中的Word文档
linktitle: 使用Qt中的Word文档
type: docs
description: "Aspose.Words为C++ 可以集成在Qt中，在Qt应用程序中创建和操作Word文档。"
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /zh/cpp/work-with-word-documents-in-qt/
---

Qt是一个基于C++的跨平台应用程序开发框架，广泛用于开发各种桌面，移动和嵌入式系统应用程序。 Aspose.Words为C++ 可以集成在Qt中，以便在Qt应用程序中创建和操作Word文档。
您可以在以下位置找到完整的Qt示例 [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## 使用 Aspose.Words为C++ 在Qt造物主内

供使用 Aspose.Words为C++ 在您的Qt应用程序中，从 [下载](https://releases.aspose.com/words/cpp/) 节。 下载API后，您可以在QtCreator中使用C++库，也可以与Visual Studio一起使用。

为了集成和使用 Aspose.Words为C++ 在QtCreator中开发的Qt控制台应用程序中的库，请按照以下步骤操作:

- 打开Qt创建者并创建一个新的*Qt Console Application*

- 从*Build System*下拉列表中选择`QMake`选项

- 选择适当的工具包并完成向导。
- 从提取的包中复制*Aspose.Words.Cpp*和*CodePorting.Native.Cs2Cpp*文件夹 Aspose.Words为C++ 进入项目的根部

- 要将路径添加到lib和包含文件夹，请右键单击LHS面板中的项目并选择*Add Library*

- 选择外部库选项并逐个浏览要包含和lib文件夹的路径

- 完成后，您的.pro项目文件将包含以下条目

- 构建应用程序，您就完成了集成

- 选择外部库选项并逐个浏览要包含和lib文件夹的路径

- 完成后，您的.pro项目文件将包含以下条目

- 构建应用程序，您就完成了集成

## 使用 Aspose.Words为C++ 在Visual Studio内的Qt应用程序中

要使用Visual Studio开发Qt应用程序，您需要安装 [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). 安装完成后，请从 [下载](https://releases.aspose.com/pdf/cpp/) 节，并按照下面给出的步骤:

- 下载及安装 [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- 下载和解包 [Aspose.Words为C++](https://releases.aspose.com/words/cpp/).
- 为项目文件创建一个新文件夹，并从未打包的包中复制/粘贴*Aspose.Words.Cpp*和*CodePorting.Native.Cs2Cpp*文件夹。
- 在同一文件夹中创建一个名为*CMakeLists.txt*的新文件。
- 在*CMakeLists.txt*文件中复制并粘贴以下内容。

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

- 打开*Command Prompt*和*cd*到项目文件夹。
- 通过替换运行以下命令 *<path-to-qt5>*带有*Qt5Config.cmake*文件的路径。

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- 完成上述步骤后，将在文件夹中创建Visual Studio解决方案。 你现在可以使用了 Aspose.Words为C++ Qt应用程序中的功能。


