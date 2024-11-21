---
title: 예제를 실행하는 방법
second_title: Aspose.Words 에 대한 C++
articleTitle: 예제를 실행하는 방법
linktitle: 예제를 실행하는 방법
description: "다운로드 Aspose.Words 에 대한 C++ 우리의 예 GitHub 저장소와 더 익숙해지기 위해 그들을 실행하는 방법에 대해 알아보십시오 Aspose.Words 가능성과 기능."
type: docs
weight: 110
url: /ko/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

더 익숙해지려면 Aspose.Words 가능성과 기능 우리는 우리의 다운로드 할 수있는 예를 제공합니다 GitHub 저장소,실행 및 자세히 알아보십시오.

이 문서에서는 시스템 요구 사항과 예제를 실행하는 방법에 대한 정보를 찾을 수 있습니다.

## Windows 함께 Nuget 패키지

### 소프트웨어 요구 사항 및 전제 조건

예제를 다운로드하고 실행하기 전에 다음 요구 사항을 충족하는지 확인하십시오:

1. Visual Studio 코드, Visual Studio 2022.
2. 설치 NuGet 패키지 관리자 및 최신 NuGet API 버전 Visual Studio. (선택 사항)
3. 선택된 **nuget.org** "도구 옵션"대화 상자의"도구 옵션"에서 옵션을 선택합니다.NuGet 패키지 관리자→패키지원".
4. 사용 가능한 인터넷 연결 `NuGet` 예제 프로젝트의 자동 패키지 복원 기능. 예제를 실행할 컴퓨터에 활성 인터넷 연결이 없는 경우 다음 지침을 따릅니다 Windows 함께 Cmake 패키지.

### 예제 다운로드 및 실행

모두 Aspose.Words 에 대한 C++ 예제는 [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). 즐겨찾기를 사용하여 저장소를 복제할 수 있습니다 GitHub 클라이언트 또는 다운로드 [그 ZIP 파일](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

저장소의 복사본을 얻은 후 다음을 찾을 수 있습니다:

- 모든 예는 **Examples** 폴더
- 여기 있습니다. Visual Studio 솔루션 파일 C++ 만든 Visual Studio 2022.

예제를 실행하려면 다음 위치에서 솔루션 파일을 엽니다 Visual Studio 그리고 프로젝트를 구축:

- 에 대한 **API Reference** 예를 들어,구조는 클래스 이름을 기반으로 합니다. **Docs** 예는 대부분 [개발자 길드](/words/cpp/developer-guide/) 문서 섹션.
- 첫 번째 실행에서 종속성은 다음을 통해 자동으로 다운로드됩니다 NuGet.
- 그 **Data** 루트 폴더의 폴더 **Examples** 예제에서 사용된 입력 파일을 포함합니다.
- 모든 예제는 단위 테스트로 실행할 수 있습니다.

## Windows 함께 CMake 패키지

### 소프트웨어 요구 사항 및 전제 조건

예제를 다운로드하고 실행하기 전에 다음 요구 사항을 충족하는지 확인하십시오:

1. Visual Studio 코드, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. 최신 다운로드 CMake 패키지 https://downloads.aspose.com/words/cpp

### 예제 다운로드 및 실행

모두 Aspose.Words 에 대한 C++ 예제는 [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). 즐겨찾기를 사용하여 저장소를 복제할 수 있습니다 GitHub 클라이언트 또는 다운로드 [그 ZIP 파일](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

폴더 배치 `Aspose.Words.Cpp` 그리고 `CodePorting.Native.Cs2Cpp_*` 저장소의 복사본의 루트에 있습니다.

모든 예는 **Examples** 폴더

예제를 실행하려면 리포지토리 복사본의 루트에서 다음 명령을 실행합니다:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

에 대한 솔루션 Visual Studio 에서 생성 될 것이다 `Examples\DocsExamples\build`

예제를 실행하려면 다음 위치에서 솔루션 파일을 엽니다 Visual Studio 그리고 프로젝트를 구축:

- 에 대한 **API Reference** 예를 들어,구조는 클래스 이름을 기반으로 합니다. **Docs** 예는 대부분 [개발자 길드](/words/cpp/developer-guide/) 문서 섹션.
- 그 **Data** 루트 폴더의 폴더 **Examples** 예제에서 사용된 입력 파일을 포함합니다.
- 모든 예제는 단위 테스트로 실행할 수 있습니다.

## Linux

### 소프트웨어 요구 사항 및 전제 조건

예제를 다운로드하고 실행하기 전에 다음 요구 사항을 충족하는지 확인하십시오:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. 최신 다운로드 CMake 패키지 https://downloads.aspose.com/words/cpp

### 예제 다운로드 및 실행

모두 Aspose.Words 에 대한 C++ 예제는 [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). 즐겨찾기를 사용하여 저장소를 복제할 수 있습니다 GitHub 클라이언트 또는 다운로드 [그 ZIP 파일](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

폴더 배치 `Aspose.Words.Cpp` 그리고 `CodePorting.Native.Cs2Cpp_*` 저장소의 복사본의 루트에 있습니다.

모든 예는 **Examples** 폴더

예제를 실행하려면 리포지토리 복사본의 루트에서 다음 명령을 실행합니다:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- 에 대한 **API Reference** 예를 들어,구조는 클래스 이름을 기반으로 합니다. **Docs** 예는 대부분 [개발자 길드](/words/cpp/developer-guide/) 문서 섹션.
- 그 **Data** 루트 폴더의 폴더 **Examples** 예제에서 사용된 입력 파일을 포함합니다.
- 모든 예제는 단위 테스트로 실행할 수 있습니다.

{{% alert color="primary" %}}

사용 하 여 밖으로 도달 하 게 자유롭게 느끼 십시오 [Aspose.Words 제품 가족 포럼](https://forum.aspose.com/c/words/8) 예제를 설정하거나 실행하는 데 문제가 있는 경우.

{{% /alert %}}

## 예제 개선에 기여

예를 추가하거나 개선하려는 경우 프로젝트에 기여하는 것이 좋습니다. 이 저장소의 모든 예제 및 쇼케이스 프로젝트는 오픈 소스이며 응용 프로그램에서 자유롭게 사용할 수 있습니다.

리포지토리를 포크하고,소스 코드를 편집하고,기여할 풀 요청을 만들 수 있습니다. 우리는 변경 사항을 검토하고 도움이 발견되면 저장소에 포함 할 것이다.

## 또한 참조

- [설치 방법에 대한 세부 정보 NuGet 패키지 관리자](https://docs.microsoft.com/nuget/guides/install-nuget)
