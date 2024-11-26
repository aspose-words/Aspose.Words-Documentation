---
title: Trabalhar com documentos do Word em Qt
second_title: Aspose.Words Para C++
articleTitle: Trabalhar com documentos do Word em Qt
linktitle: Trabalhar com documentos do Word em Qt
type: docs
description: "Aspose.Words Para C++ pode ser integrado em Qt para criar e manipular documentos do Word em Qt aplicações."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /pt/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt é uma estrutura de desenvolvimento de aplicativos multiplataforma baseada em C++ que é amplamente usada para desenvolver uma variedade de aplicativos de desktop, móveis e sistemas embarcados. Aspose.Words Para C++ pode ser integrado em Qt para criar e manipular documentos do Word nas suas aplicações Qt.
Você pode encontrar o exemplo completo Qt em [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## Utilização Aspose.Words Para C++ dentro de Qt Criador

Para utilização Aspose.Words para C++ em seu aplicativo Qt baixe a versão mais recente do API do [downloads](https://releases.aspose.com/words/cpp/) secção. Uma vez que o API é baixado, você pode usar integrar a Biblioteca C++ dentro de Qt Creator ou você pode usar com Visual Studio.

A fim de integrar e utilizar Aspose.Words Para C++ biblioteca dentro de um aplicativo de console Qt desenvolvido em Qt Creator, siga as etapas abaixo:

- Abra Qt Creator e crie um novo *Qt Console Application*

- Selecione a opção `QMake` na lista suspensa *Build System*

- Selecione o kit apropriado e termine o assistente.
- Copiar *Aspose.Words.Cpp* e *CodePorting.Native.Cs2Cpp* pastas do pacote extraído de Aspose.Words para C++ na raiz do projecto

- Para adicionar caminhos às pastas lib e include, clique com o botão direito do mouse no projeto no painel LHS e selecione *Add Library*

- Selecione a opção biblioteca externa e procure caminhos para incluir e lib pastas uma a uma

- Uma vez feito isso, o arquivo de projeto .pro conterá as seguintes entradas

- Construir o aplicativo e você é feito com a integração

- Selecione a opção biblioteca externa e procure caminhos para incluir e lib pastas uma a uma

- Uma vez feito isso, o arquivo de projeto .pro conterá as seguintes entradas

- Construir o aplicativo e você é feito com a integração

## Utilização Aspose.Words para C++ em Qt aplicações dentro de Visual Studio

Para desenvolver um aplicativo Qt Usando Visual Studio, é necessário instalar [Qt Visual Studio Ferramentas](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). Depois de ter a instalação, faça o download da versão mais recente do API a partir do [downloads](https://releases.aspose.com/pdf/cpp/) seção e siga os passos abaixo:

- Baixar e instalar [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- Baixar e descompactar [Aspose.Words para C++](https://releases.aspose.com/words/cpp/).
- Crie uma nova pasta para seus arquivos de projeto e copie/cole as pastas *Aspose.Words.Cpp* e *CodePorting.Native.Cs2Cpp* Do pacote descompactado.
- Crie um novo arquivo chamado *CMakeLists.txt* na mesma pasta.
- Copie e cole o seguinte conteúdo no ficheiro *CMakeLists.txt*.

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

- Abra *Command Prompt* e *cd* para a pasta do projeto.
- Execute o seguinte comando substituindo *<path-to-qt5>* com o caminho para o ficheiro *Qt5Config.cmake*.

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- Depois de concluir as etapas acima mencionadas, uma solução Visual Studio será criada na pasta. Agora você está pronto para usar Aspose.Words para C++ recursos dentro do aplicativo Qt.


