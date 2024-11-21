---
title: COM Interop를 통한 .NET용 Aspose.Words
second_title: .NET용 Aspose.Words
articleTitle: COM Interop를 통해 .NET에 Aspose.Words를 사용하는 방법
linktitle: COM Interop를 통해 .NET에 Aspose.Words를 사용하는 방법
type: docs
description: "Python, PHP, VBScript, JScript 및 기타 프로그래밍 언어에서 COM Interop를 통해 .NET용 Aspose.Words를 사용하세요."
weight: 130
url: /ko/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

이 주제의 정보는 다음 프로그래밍 언어 중 하나로 COM Interop를 통해 .NET용 Aspose.Words를 사용하려는 시나리오에 적용됩니다

- ASP
- Delphi ([예](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- J스크립트
- Perl
- PHP
- 파워빌더
- Python
- VB스크립트
- Visual Basic

## COM Interop로 작업

Aspose.Words for .NET는 .NET Framework의 제어에 따라 실행되며 이를 관리 코드라고 합니다. 위의 모든 언어로 작성된 코드는 .NET Framework 외부에서 실행되며 이를 비관리 코드라고 합니다. 비관리 코드와 Aspose.Words 간의 상호 작용은 COM Interop이라는 .NET 기능을 통해 발생합니다.

Aspose.Words 객체는 .NET 객체이지만 COM Interop를 통해 사용될 경우 프로그래밍 언어에서는 COM 객체로 나타납니다. 따라서 Aspose.Words를 사용하기 전에 프로그래밍 언어로 COM 객체를 만들고 사용하는 방법을 아는 것이 가장 좋습니다.

결국 마스터해야 할 주제는 다음과 같습니다

- 프로그래밍 언어로 COM 개체를 사용합니다. 프로그래밍 언어 설명서와 이 설명서의 언어별 항목을 자세히 참조하세요.
- .NET COM Interop에 의해 노출된 COM 객체로 작업합니다. MSDN의 [비관리 코드로 Interoperating](https://learn.microsoft.com/en-us/dotnet/framework/interop/) 및 [.NET Framework 구성 요소를 COM에 노출](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com)을 참조하세요.
- Aspose.Words 문서 객체 모델. Aspose.Words [개발자 가이드](/words/ko/net/developer-guide/) 및 [API Reference](https://reference.aspose.com/words/net/)을 참조하세요.

## COM Interop를 사용하여 .NET용 Aspose.Words 등록

[설치](/words/ko/net/installation/) 이후에는 `regasm.exe` 유틸리티를 사용하여 COM Interop용 Aspose.Words를 등록해야 합니다.

`regasm.exe`는 .NET Framework SDK에 포함된 도구입니다. 모든 .NET Framework SDK 도구는 `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` 디렉터리(예: *C:\Windows\Microsoft .NET\Framework\v4.0.30319*)에 있습니다.

tlb 파일을 얻으려면 cmd에서 `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase`를 실행하세요. 여기서 `<installdir>`는 Aspose.Words(일반적으로 `%USERPROFILE%\.nuget\packages\aspose.words\`)을 설치한 디렉터리입니다.

## COM Interop을 통해 Aspose.Words 작업

### ProgIDs

ProgID는 "Programmatic Identifier"의 약자로, 객체를 생성하기 위해 사용해야 하는 `COM` 클래스의 이름입니다.

현재 Aspose.Words는 공개적으로 생성 가능한 4개의 COM 개체를 정의합니다. 해당 ProgIDs은 다음과 같습니다

- 컴헬퍼
- 문서
- DocumentBuilder
- 라이센스

ProgIDs는 라이브러리 이름("Aspose.Words")과 클래스 이름으로 구성됩니다.

### 유형 라이브러리

설치하는 동안 Aspose.Words.tlb(COM 유형 라이브러리)가 컴퓨터의 다음 위치에 복사됩니다

- .NET Framework 4.0에서 **<installdir>\lib\net40-클라이언트**까지

프로그래밍 언어(예: Visual Basic 또는 Delphi)에서 `COM` 유형 라이브러리를 참조할 수 있는 경우 **Aspose.Words.tlb**에 대한 참조를 추가하면 개체 브라우저에서 모든 Aspose.Words 클래스, 메서드, 속성 및 열거를 볼 수 있습니다.

### COM 객체 생성

.NET 객체 생성은 일반 COM 객체 생성과 유사합니다

**VBScript**

```
희미한 도우미
도우미 설정 = CreateObject("Aspose.Words.ComHelper")
 
```

일단 생성되면 마치 `COM` 객체인 것처럼 객체의 메서드와 속성에 액세스할 수 있습니다

**VBScript**

```
희미한 문서
doc = helper.Open("C:\my.doc") 설정
 
```

일부 메소드에는 오버로드가 있으며 변경되지 않은 첫 번째 메소드를 제외하고 숫자 접미사가 추가된 COM Interop에 의해 노출됩니다. 예를 들어 `Document.Save` 메서드 오버로드는 `Document.Save`, `Document.Save_2`, `Document.Save_3` 등이 됩니다.

자세한 내용은 이 설명서의 언어별 문서를 참조하세요.

### 래퍼 어셈블리 생성

많은 Aspose.Words 클래스, 메서드 및 속성을 사용해야 하는 경우 비관리 코드에서 직접 Aspose.Words를 사용하는 것을 방지하는 데 도움이 되는 래퍼 어셈블리 생성(C# 또는 기타 .NET 프로그래밍 언어 사용)을 고려하세요.

좋은 접근 방식은 Aspose.Words를 참조하고 이를 사용하여 모든 작업을 수행하며 최소한의 클래스 및 메서드 집합만 비관리 코드에 노출하는 .NET 어셈블리를 개발하는 것입니다. 그러면 애플리케이션이 래퍼 라이브러리에서만 작동해야 합니다.

COM Interop를 통해 호출해야 하는 클래스와 메서드 수를 줄이면 프로젝트가 단순화될 수 있습니다. COM Interop를 통해 .NET 클래스를 사용하려면 고급 기술이 필요한 경우가 많기 때문입니다.
