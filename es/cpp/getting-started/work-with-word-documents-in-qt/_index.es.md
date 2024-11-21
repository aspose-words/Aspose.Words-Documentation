---
title: Trabajar con Documentos de Word en Qt
second_title: Aspose.Words para C++
articleTitle: Trabajar con Documentos de Word en Qt
linktitle: Trabajar con Documentos de Word en Qt
type: docs
description: "Aspose.Words para C++ se puede integrar dentro de Qt para crear y manipular documentos de Word en aplicaciones Qt."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /es/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt es un marco de desarrollo de aplicaciones multiplataforma basado en C++ que se usa ampliamente para desarrollar una variedad de aplicaciones de escritorio, móviles y de sistemas integrados. Aspose.Words para C++ se puede integrar dentro de Qt para crear y manipular documentos de Word en sus aplicaciones Qt.
Puede encontrar un ejemplo completo de Qt en [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Usando Aspose.Words para C++ dentro de Qt Creator

Para usar Aspose.Words para C++ en su aplicación Qt, descargue la última versión de la API desde el [descargas](https://releases.aspose.com/words/cpp/) sección. Una vez que se descarga la API, puede usar integrar la biblioteca C++ dentro de Qt Creator o puede usarla con Visual Studio.

Con el fin de integrar y utilizar Aspose.Words para C++ biblioteca dentro de una aplicación de consola Qt desarrollada en Qt Creator, siga los pasos que se indican a continuación:

- Abra Qt Creator y cree un nuevo *Qt Console Application*

- Seleccione la opción `QMake` del menú desplegable *Build System*

- Seleccione el kit apropiado y finalice el asistente.
- Copie las carpetas *Aspose.Words.Cpp* y *CodePorting.Native.Cs2Cpp* del paquete extraído de Aspose.Words para C++ en la raíz del proyecto

- Para agregar rutas a lib e incluir carpetas, haga clic con el botón derecho en el proyecto en el panel LHS y seleccione *Add Library*

- Seleccione la opción Biblioteca externa y explore las rutas para incluir y las carpetas lib una por una

- Una vez hecho esto, su archivo de proyecto. pro contendrá las siguientes entradas

- Cree la aplicación y habrá terminado con la integración

- Seleccione la opción Biblioteca externa y explore las rutas para incluir y las carpetas lib una por una

- Una vez hecho esto, su archivo de proyecto. pro contendrá las siguientes entradas

- Cree la aplicación y habrá terminado con la integración

## Usando Aspose.Words para C++ en aplicaciones Qt dentro de Visual Studio

Para desarrollar una aplicación Qt usando Visual Studio, necesita instalar [Herramientas Qt Visual Studio ](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Una vez tengas la instalación, descarga la última versión de la API desde el [descargas](https://releases.aspose.com/pdf/cpp/) sección y siga los pasos que se indican a continuación:

- Descargar e instalar [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Descargar y descomprimir [Aspose.Words para C++](https://releases.aspose.com/words/cpp/).
- Cree una nueva carpeta para sus archivos de proyecto y copie/pegue las carpetas *Aspose.Words.Cpp* y *CodePorting.Native.Cs2Cpp* del paquete desempaquetado.
- Cree un nuevo archivo llamado *CMakeLists.txt* en la misma carpeta.
- Copie y pegue el siguiente contenido en el archivo *CMakeLists.txt*.

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

- Abra *Command Prompt* y *cd* en la carpeta del proyecto.
- Ejecute el siguiente comando reemplazando *<path-to-qt5>* con la ruta al archivo *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Una vez que haya completado los pasos mencionados anteriormente, se creará una solución Visual Studio en la carpeta. Ahora está listo para usar Aspose.Words para C++ funciones dentro de la aplicación Qt.


