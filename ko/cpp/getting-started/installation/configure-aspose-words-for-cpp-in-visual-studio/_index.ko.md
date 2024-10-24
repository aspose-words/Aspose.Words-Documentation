---
title: 제품 구성 Visual Studio
second_title: Aspose.Words 에 대한 C++
articleTitle: 구성 Aspose.Words 에 대한 C++ 그 안에 Visual Studio
linktitle: 구성 Aspose.Words 에 대한 C++ 그 안에 Visual Studio
description: "수동으로 구성 Aspose.Words 에 대한 C++ 그 안에 Visual Studio."
type: docs
weight: 90
url: /ko/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words 에 대한 C++ API 함께 작동 Visual Studio 2022 또는 나중에. 함께 작업하려면 Visual Studio,당신은 설치할 필요가 있을지도 모릅니다 Visual C++ Redistributable 사용 가능 [Microsoft 공식 웹사이트](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## 함께 구성 MSBuild .대상 파일

다음과 같이 프로젝트를 구성하려면 다음 단계를 수행하십시오 [MSBuild .대상 파일](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**가져오기 태그 추가 Aspose.Words 에 대한 C++ 파일을 대상으로합니다.**
1. 프로젝트 열기 `*.vcxproj` 텍스트 편집기의 파일
2. 찾기 `<ImportGroup Label="ExtensionTargets"></ImportGroup>` 파일의 끝에
3. 다음을 추가합니다 `Import` 내부 태그 `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## 수동으로 구성

수동으로 구성하려면 다음 단계를 따르십시오 Aspose.Words 에 대한 C++ 그 안에 Visual Studio:

**추가 포함 디렉터리 추가:**

1. 프로젝트 속성 열기
2. 로 이동/C++ →일반
3. 다음 추가 포함 디렉터리를 추가합니다:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**추가 종속성 추가:**

1. 프로젝트 속성 열기
2. 선택 Configuration→모든 구성과 플랫폼→모든 플랫폼
2. 링커 입력으로 이동합니다.
* 릴리스 구성의 경우:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* 디버그 구성의 경우:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**명령 추가:**

1. 프로젝트 속성 열기
2. 빌드 이벤트로 이동하십시오.
3. 다음 명령을 추가합니다:
* 릴리스 구성의 경우:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* 디버그 구성의 경우:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
