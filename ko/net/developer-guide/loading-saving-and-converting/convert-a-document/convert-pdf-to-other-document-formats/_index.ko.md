---
title: C#에서 PDF를 다른 문서 형식으로 변환
second_title: .NET용 Aspose.Words
articleTitle: PDF를 다른 문서 형식으로 변환
linktitle: PDF를 다른 문서 형식으로 변환
type: docs
description: "PDF를 DOCX, DOC와 같은 Word 형식, JPG 또는 PNG와 같은 이미지 형식 또는 C#을 사용하여 Aspose.Words에서 지원하는 기타 형식으로 변환합니다."
keywords: convert pdf to other formats c#
weight: 45
url: /ko/net/convert-pdf-to-other-document-formats/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words는 PDF와 같은 복잡한 형식도 로드할 수 있습니다. 이는 새로운 기회를 열어줍니다. PDF를 Word 또는 다른 형식으로 변환하여 사용자가 많은 응용 문제를 훨씬 앞서게 할 수 있습니다.

## 전제 조건

* Aspose.Words 패키지 ***또는***에 대한 참조가 Aspose.Words.Pdf2Word.dll에 추가되었습니다.
* 최소 .NET Framework 4.6.1 또는 .NET Standard 2.0. .NET Core 2.x 또는 3.0, .NET 5 및 Xamarin과 같은 대상도 .NET Standard와의 호환성을 통해 지원됩니다.

## PDF를 다양한 형식으로 변환 {#convert-pdf-to-other-formats}

PDF에서 가장 널리 사용되는 변환은 DOCX, DOC와 같은 Microsoft Word 형식과 JPG 또는 PNG와 같은 이미지 형식으로의 변환입니다. 즉, 문서를 한 형식에서 다른 형식으로 변환하는 작업은 익숙한 방식으로 수행됩니다.

다음 코드 예제는 문서를 PDF에서 DOCX로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## PDF {#specify-load-options-when-importing-pdf}를 가져올 때 로드 옵션 지정

Aspose.Words는 PDF 문서가 로드되는 방식을 보다 정확하게 제어할 수 있는 [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) 클래스를 제공합니다.

대부분의 속성은 `LoadOptions` 클래스에 이미 존재하는 속성을 상속하거나 오버로드합니다. 그 외에도 PDF 형식에 대한 여러 속성이 지정됩니다. 예를 들어, [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) 및 [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) 속성을 사용하여 PDF 문서에서 로드할 페이지 범위를 정의하고, [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) 속성을 사용하여 PDF를 로드할 때 이미지를 건너뛸지 여부를 제어할 수 있습니다. 지원되는 또 다른 매개변수는 [비밀번호로 보호된 문서](/words/net/protect-documents-and-parts-of-documents/)에 제공되어야 하는 [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/)입니다.

## 지원되는 PDF 콘텐츠 {#supported-pdf-content}

PDF2Word 플러그인은 현재 다음 데이터 유형을 지원합니다:

* 텍스트 단락
* 이미지
* 테이블
* 목록
* 머리글과 바닥글
* 각주
* 페이지 번호
* 오른쪽에서 왼쪽으로 쓰는 텍스트(일부 제한 있음)
* 검색 가능한 PDF(배경 텍스트를 위해 전면 이미지가 제거됨)

## 향후 기능 {#planned-features}

일부 기능은 아직 초기 개발 단계에 있거나 개발 로드맵에 포함되어 있습니다

* 목차
* 검색 가능한 PDF와 검색 불가능한 PDF에 대한 OCR
* 진행 보고서
* 다중 열 텍스트
* 수학 공식
* 더 많은 자동 필드(`PAGE` 및 NUMPAGES 제외)

## PDF 로드 예외

PDF 문서 변환 중에 다음 예외 중 하나가 발생할 수 있습니다

|  예외 |  설명 |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  어떤 이유로 PDF 파일을 처리할 수 없습니다.<br /> {{% alert color="primary" %}}자세한 조사를 위해 [기술적 지원](/words/ko/net/technical-support/).{{% /alert %}}을 사용하여 개발팀에 문제를 보고할 수 있습니다 |
|  `DrmProtectedFileException`       |  PDF 파일은 Adobe DRM으로 보호되며 Pdf2Word로 디코딩할 수 없습니다 |
|  `PasswordProtectedFileException`  |  비밀번호로 보호된 PDF에는 올바른 비밀번호를 제공해야 합니다 |

## 또한보십시오

* [Aspose.Words에 대한 Nuget 참조](https://www.nuget.org/packages/Aspose.Words/)

