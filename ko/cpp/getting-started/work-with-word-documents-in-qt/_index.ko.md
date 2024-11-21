---
title: 워드 문서 작업 Qt
second_title: Aspose.Words 에 대한 C++
articleTitle: 워드 문서 작업 Qt
linktitle: 워드 문서 작업 Qt
type: docs
description: "Aspose.Words 에 대한 C++ 안에 통합될 수 있습니다 Qt 워드 문서를 만들고 조작하려면 Qt 응용 프로그램."
keywords: "create a document Qt Creator, load a document Qt Creator, use Aspose C++ with Qt creator, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 120
url: /ko/cpp/work-with-word-documents-in-qt/
timestamp: 2024-07-11-16-13-28
---

Qt 이 C++ 다양한 데스크톱,모바일 및 임베디드 시스템 응용 프로그램을 개발하는 데 널리 사용되는 기반 크로스 플랫폼 응용 프로그램 개발 프레임 워크. Aspose.Words 에 대한 C++ 안에 통합될 수 있습니다 Qt 작성 및 워드 문서를 조작하기 위해 Qt 응용 프로그램.
당신은 완전한 찾을 수 있습니다 Qt 예제 [GitHub](https://github.com/btolfa/Aspose.Words-for-C/tree/master/Showcases/DocumentExplorer)

## 사용 Aspose.Words 에 대한 C++ 내부 Qt 창조자

사용을 위해 Aspose.Words 에 대한 C++ 당신의 Qt 응용 프로그램의 최신 버전을 다운로드 API 에서 [다운로드](https://releases.aspose.com/words/cpp/) 부문 일단 API 다운로드,당신은 통합 사용할 수 있습니다 C++ 내 도서관 Qt 작성자 또는 함께 사용할 수 있습니다 Visual Studio.

통합하고 사용하기 위해 Aspose.Words 에 대한 C++ 도서관 내 Qt 콘솔 응용 프로그램에서 개발 Qt 작성자,아래의 단계를 따르십시오:

- 오픈 Qt 창조주와 새로운 창조 *Qt Console Application*

- 선택 `QMake` 에서 옵션 *Build System* 드롭다운

- 적절한 키트를 선택하고 마법사를 마칩니다.
- 복사 *Aspose.Words.Cpp* 그리고 *CodePorting.Native.Cs2Cpp* 의 추출 된 패키지에서 폴더 Aspose.Words 에 대한 C++ 프로젝트의 루트에

- 라이브러리에 경로를 추가하고 폴더를 포함하기 위해,에서 프로젝트를 마우스 오른쪽 버튼으로 클릭 LHS 패널 및 선택 *Add Library*

- 외부 라이브러리 옵션을 선택하고 폴더를 하나씩 포함 및 라이브러리 할 경로를 찾습니다

- 프로 프로젝트 파일에는 다음 항목이 포함됩니다

- 응용 프로그램을 빌드하면 통합 작업이 완료됩니다

- 외부 라이브러리 옵션을 선택하고 폴더를 하나씩 포함 및 라이브러리 할 경로를 찾습니다

- 프로 프로젝트 파일에는 다음 항목이 포함됩니다

- 응용 프로그램을 빌드하면 통합 작업이 완료됩니다

## 사용 Aspose.Words 에 대한 C++ 그 안에 Qt 내 응용 프로그램 Visual Studio

개발을 위해 Qt 응용 프로그램 사용 Visual Studio,당신은 설치할 필요가 있습니다 [Qt Visual Studio 도구](https://marketplace.visualstudio.com/items?itemName=TheQtCompany.QtVisualStudioTools-19123). 당신은 설치를하면,의 최신 버전을 다운로드 API 에서 [다운로드](https://releases.aspose.com/pdf/cpp/) 섹션 및 아래 단계를 따르십시오:

- 다운로드 및 설치 [CMake](https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1-win64-x64.msi).
- 다운로드 및 압축 풀기 [Aspose.Words 에 대한 C++](https://releases.aspose.com/words/cpp/).
- 프로젝트 파일에 대한 새 폴더를 만들고 복사/붙여 넣기 *Aspose.Words.Cpp* 그리고 *CodePorting.Native.Cs2Cpp* 압축을 푼 패키지의 폴더.
- 이름이 지정된 새 파일 만들기 *CMakeLists.txt* 같은 폴더에 있습니다.
- 다음 내용을 복사하여 붙여넣기 *CMakeLists.txt* 파일

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

- 오픈 *Command Prompt* 그리고 *cd* 프로젝트 폴더로 이동합니다.
- 대체하여 다음 명령을 실행합니다 *<path-to-qt5>*로 가는 길 *Qt5Config.cmake* 파일

{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S . -B build -D"Qt5_DIR=<path-to-qt5>"
{{< /highlight >}}

- 위에서 언급 한 단계를 완료 한 후, Visual Studio 솔루션은 폴더에 생성됩니다. 이제 사용할 준비가 되었습니다 Aspose.Words 에 대한 C++ 내 기능 Qt 신청.


