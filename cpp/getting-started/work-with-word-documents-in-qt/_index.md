---
title: Work with Word Documents in Qt
type: docs
weight: 60
url: /cpp/work-with-word-documents-in-qt/
---

Qt is a C++ based cross-platform application development framework which is widely used to develop a variety of desktop, mobile, and embedded system applications. Aspose.Words for C++ can be integrated within Qt in order to create and manipulate Word documents in your Qt applications.
## **Using Aspose.Words for C++ within Qt Creator**
For using Aspose.Words for C++ in your Qt application download the latest version of the API from the [downloads](https://downloads.aspose.com/words/cpp) section. Once the API is downloaded, you can use integrate the C++ library within Qt Creator or you can use with Visual Studio.

In order to integrate and use Aspose.Words for C++ library within a Qt Console Application developed in Qt Creator, please follow the steps given below:

- Open Qt Creator and create a new *Qt Console Application*.

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Qt-Console-Application.jpg)

- Select the QMake option from the *Build System* dropdown.

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Qt-Console-Application-QMake.jpg)

- Select the appropriate kit and finish the wizard.
- Copy *Aspose.Words.Cpp* and *CodePorting.Native.Cs2Cpp_vc14_20.3* folders from the extracted package of Aspose.Words for C++ into the root of the project.

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Aspose.Words-lib-files.jpg)

- In order to add paths to lib and include folders, right-click on the project in LHS panel and select *Add Library*.

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Add-Word-Library.jpg)

- Select the External Library option and browse paths to include and lib folders one by one.

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Add-Word-Library-2.jpg)

- Once done, your .pro project file will contain the following entries:

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Qt-PRO-File-1024x372.png)

- Build the application and you are done with the integration.

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Add-Word-Library.jpg)

- Select the External Library option and browse paths to include and lib folders one by one.

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Add-Word-Library-2.jpg)

- Once done, your .pro project file will contain the following entries:

![todo:image_alt_text](https://blog.aspose.com/wp-content/uploads/sites/2/2020/04/Qt-PRO-File-1024x372.png)

- Build the application and you are done with the integration.
## **Using Aspose.Words for C++ in Qt Applications within Visual Studio**
For developing Qt application using Visual Studio, you require to install [Qt Visual Studio Tools](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Once you have the installation, download the latest version of the API from the [downloads](https://downloads.aspose.com/pdf/cpp) section and follow the steps given below:

- Download and install [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Download and unpack [Aspose.Words for C++](https://downloads.aspose.com/words/cpp).
- Create a new folder for your project files and copy/paste *Aspose.Words.Cpp* and *CodePorting.Native.Cs2Cpp_vc14_20.4* folders from unpacked package.
- Create a new file named *CMakeLists.txt* in the same folder.
- Copy and paste the following content within the *CMakeLists.txt* file.

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



- Open *Command Prompt* and *cd* to the project folder.
- Run the following command by replacing *<path-to-qt5>* with the path to *Qt5Config.cmake* file (i.e. C:\QT\5.14.2\msvc2017_64\lib\cmake\Qt5).

{{< highlight bash >}}

 cmake -G "Visual Studio 15 2017" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"

{{< /highlight >}}

- Once you have completed the above-mentioned steps, a Visual Studio solution will be created in the folder. You are now ready to use Aspose.Words for C++ features within the Qt application.


