---
title: 로 변환할 때 렌더링 옵션 지정 PDF
second_title: Aspose.Words 에 대한 C++
articleTitle: 로 변환할 때 렌더링 옵션 지정 PDF
linktitle: 로 변환할 때 렌더링 옵션 지정 PDF
description: "문서를 다음으로 변환 PDF 고급 옵션을 사용하여 C++. 사용 PdfSaveOptions 문서를 저장한 결과를 다음으로 변경하려면 PDF 형식"
type: docs
weight: 30
url: /ko/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

그 PDF 형식은 사용자들 사이에서 매우 인기가 있고 다양한 응용 프로그램에서 널리 지원되는 고정 페이지 형식입니다. PDF 문서는 모든 장치에서 동일하게 보입니다. 그 이유로, PDF 의 중요한 기능입니다 Aspose.Words.

PDF 복잡한 형식입니다. 문서를 PDF,레이아웃 계산을 포함합니다. 이 단계들은 복잡한 계산을 포함하기 때문에 시간이 많이 걸립니다. 또한, PDF 형식은 그 자체로 다소 복잡합니다. 특정 파일 구조,그래픽 모델 및 글꼴 임베딩이 있습니다. 또한 문서 구조 태그,암호화,디지털 서명 및 편집 가능한 양식과 같은 복잡한 출력 기능을 갖추고 있습니다.

Aspose.Words 레이아웃 엔진은 방법을 모방 Microsoft Word페이지 레이아웃 엔진이 작동합니다. 따라서, Aspose.Words 만드는 PDF 출력 문서는 당신이 볼 수있는 가능한 한 가까이 봐 Microsoft Word. 때로는 문서를 저장 한 결과에 영향을 줄 수있는 추가 옵션을 지정해야합니다. PDF 형식 이러한 옵션은 다음을 사용하여 지정할 수 있습니다 [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members) 클래스,방법을 결정하는 속성을 포함 PDF 출력이 표시됩니다.

사용의 몇 가지 예 **PdfSaveOptions** 아래에 제공됩니다.

{{% alert color="primary" %}}

현재 다음을 저장할 수 있습니다 PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2유,그리고 PDF/UA-1 형식 사용 [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) 를 설정하는 열거 PDF 표준 준수 수준. 참고: PDF/A 형식,출력 파일 크기가 일반 파일보다 큽니다. PDF 파일 크기.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) 그리고 [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) 구식이라고 표시되어 있습니다.

에 대한 자세한 내용은 PDF/A,다음 기사 참조,"변환의 특징을 알아보기 PDF/A".

{{% /alert %}}

## 만들기 PDF 채울 수 있는 양식이 있는 문서

또한, Microsoft Word 출력으로 문서 PDF,일반 텍스트 대신 채울 수 있는 형태를 가지고 있습니다. 사용 [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) 문서를 다른 이름으로 저장하는 속성 PDF 채울 수있는 양식.

참고로, Microsoft Word, PDF 형식에는 텍스트 상자,콤보 상자 및 확인란과 같은 편집 가능한 양식에 대한 제한된 수의 옵션이 있습니다. Microsoft Word 더 많은 유형의 양식(예:달력 날짜 선택기)이 있습니다. 일반적으로 완전히 모방 할 수는 없습니다 Microsoft Word 행동 PDF. 따라서 일부 복잡한 경우, PDF 출력은 당신이 보는 것과 다를 수 있습니다 Microsoft Word.

아래 코드 예제에서는 문서를 다른 이름으로 저장하는 방법을 보여 줍니다 PDF 지정된 압축 및 품질로 채울 수있는 양식:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## 문서 구조 및 사용자 지정 속성 내보내기

그 [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) 속성을 사용하면 문서 구조를 다음과 같이 내보낼 수 있습니다 PDF 출력.

PDF 논리 구조 시설은 문서 내용 구조에 관한 정보를 PDF 파일 Aspose.Words 구조에 대한 정보를 보존합니다. Microsoft Word 단락,목록,표,각주/미주 등과 같은 문서

다음 예제에서는 다음에 문서를 저장하는 방법을 보여 줍니다 PDF 형식,문서 구조 보존:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words 또한 문서 사용자 지정 속성을 내보낼 수 있습니다 PDF,다음 예에서 보여집니다.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## 출력의 책갈피 및 제목에서 개요 내보내기 PDF

출력에서 책갈피를 윤곽선으로 내보내려면 PDF,당신은 사용할 수 있습니다 [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/) 재산. 이 속성은 문서 개요의 기본 수준을 지정합니다. Microsoft Word 책갈피가 표시됩니다. 문서의 머리글/바닥글에 책갈피가 포함된 경우 다음을 설정할 수 있습니다 [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) 재산 [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) 또는 [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) 출력에서 내보내는 방법을 지정하려면 PDF. 머리글/바닥글의 책갈피는 값이 **HeaderFooterBookmarksExportMode** 이 [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

아래 코드 예제에서는 섹션의 첫 번째 머리글/바닥글에서 책갈피를 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

출력 PDF 이 예는 아래에서 보여집니다.:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

언제 **HeaderFooterBookmarksExportMode** 첫 번째로 설정되어 있고 문서에 짝수 및 홀수 머리글/바닥글 또는 다른 첫 페이지 머리글/바닥글이 있으며 섹션의 첫 번째 고유 머리글/바닥글에 대해 책갈피가 내보내집니다.

출력에서 제목을 내보낼 수도 있습니다 PDF,를 사용하여 [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/) 재산. 이 속성은 문서 개요에 포함되는 머리글 수준의 수를 지정합니다.

아래 코드 예제에서는 세 가지 수준의 제목을 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

출력 PDF 이 예는 아래에서 보여집니다.:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

책갈피 또는 제목 탐색은 다양한 형태로 다른 모양을 가질 수 있습니다. PDF 시청자. 또한 일부 응용 프로그램에서는 책갈피 및 제목 탐색을 사용할 수 없습니다 UI.

{{% /alert %}}

## 문서 크기를 줄이기 위한 이미지 다운샘플링

Aspose.Words 출력을 줄이기 위해 이미지를 다운 샘플링 할 수있는 기능을 제공합니다 PDF 크기를 사용하여 [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/) 재산. 다운샘플링은 기본적으로 [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/) 재산.

또한 특정 해상도를 설정할 수도 있습니다. [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) 속성 또는 해상도 임계값 [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/) 재산. 두 번째 경우,이미지 해상도가 임계값보다 작다면,다운샘플링은 적용되지 않습니다.

아래 코드 예제에서는 출력에서 이미지의 해상도를 변경하는 방법을 보여 줍니다 PDF 문서:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

해상도는 페이지의 실제 이미지 크기에 따라 계산됩니다.

## 어도비에 글꼴 포함 PDF 형식

Aspose.Words 또한 글꼴이 결과에 포함되는 방법을 제어 할 수 있습니다 PDF 문서. 글꼴은 어도비에 포함 할 필요가 PDF 모든 컴퓨터에서 문서를 올바르게 렌더링할 수 있도록 문서(섹션의 글꼴 렌더링에 대한 자세한 내용 참조 [사용 TrueType 글꼴](/words/cpp/using-truetype-fonts/)). 기본적으로, Aspose.Words 문서에 사용된 글꼴의 하위 집합을 생성된 글꼴에 포함합니다. PDF. 이 경우 문서에 사용된 글리프(문자)만 다음에 저장됩니다 PDF.

### 전체 글꼴 사용 시기 및 하위 집합 사용 시기

에 대한 옵션을 지정하는 방법이 있습니다 Aspose.Words 전체 글꼴을 포함합니다. 각 설정의 몇 가지 장단점과 함께 더 자세한 내용은 아래 표에 설명되어 있습니다.

| 글꼴 모드 포함 | 장점 | 단점 |
| :- | :- | :- |
| `Full` | 결과를 편집할 때 유용합니다 PDF 나중에 텍스트를 추가하거나 수정합니다. 모든 글꼴이 포함되어 있으므로 모든 글리프가 있습니다. | 일부 글꼴은 크기가 크기 때문에(몇 메가바이트)하위 설정 없이 삽입하면 큰 출력 파일이 발생할 수 있습니다. |
| `Subset` | 하위 설정은 출력 파일 크기를 작게 유지하려는 경우에 유용합니다. | <p>사용자가 출력에서 하위 집합 글꼴을 사용하여 텍스트를 완전히 추가하거나 편집할 수 없습니다 PDF 문서 글꼴의 모든 글리프가 존재하지 않기 때문입니다.</p><p>다중 인 경우 PDFs 하위 집합된 글꼴로 저장되고 함께 조립된 다음 결합된 PDF 문서에는 불필요한 하위 집합이 많이 포함 된 글꼴이있을 수 있습니다.</p> |

### 전체 글꼴 포함 PDF

그 [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) 속성을 사용하면 방법을 지정할 수 있습니다 Aspose.Words 출력에 글꼴 포함 PDF 문서

- 출력에 전체 글꼴을 포함하려면 PDF 문서,세트 **EmbedFullFonts** 사실
- 에 저장할 때 글꼴을 하위 집합하려면 PDF,세트 **EmbedFullFonts** 거짓

다음 예제에서는 출력에 전체 글꼴을 포함하는 방법을 보여 줍니다 PDF 문서:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

다음 예제에서는 설정하는 방법을 보여 줍니다 Aspose.Words 출력에서 글꼴을 하위 집합하려면 PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

다음에서 이러한 예제에 대한 템플릿 파일을 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 내장 코어 글꼴을 제어하는 방법 및 Windows 표준 글꼴

핵심 글꼴 및 Windows 표준 글꼴은 일반적으로 대상 시스템에 존재하거나 문서 판독기에서 제공하는"표준"글꼴 집합이므로 출력에 포함 할 필요가 없습니다 PDF. 이러한 글꼴을 포함하지 않으면 렌더링의 크기를 줄일 수 있습니다 PDF 문서 및 아직 이식성을 유지한다.

Aspose.Words 글꼴을 내보내는 방법을 선택할 수 있는 옵션을 제공합니다 PDF. 코어 및 표준 글꼴을 출력에 포함 시키도록 선택할 수 있습니다 PDF 또는 임베딩을 건너 뛰고 표준 코어를 사용하려면 PDF 대신 대상 컴퓨터의 글꼴 또는 시스템 글꼴. 이 옵션 중 하나를 사용하면 일반적으로 파일 크기가 크게 줄어 듭니다. PDF 에 의해 생성 된 문서 Aspose.Words.

- 이러한 옵션은 상호 배타적이기 때문에 한 번에 하나만 선택해야 합니다.
- 함께 저장할 때 PDF/A-1 준수,모든 사용 된 글꼴은 PDF 문서 이 규정 준수로 저장할 때 [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) 속성은 거짓으로 설정되어야 합니다. [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) 속성을 다음으로 설정해야 합니다 [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### 코어 글꼴 포함

코어 글꼴을 포함하는 옵션은 다음을 사용하여 활성화 또는 비활성화 할 수 있습니다 `UseCoreFonts` 재산. "참"으로 설정하면 다음과 같은 가장 인기 있는"참 유형"글꼴(기본 14 글꼴)이 출력에 포함되지 않습니다 PDF 문서:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

이러한 글꼴은 해당 코어 유형으로 대체됩니다 1 독자가 제공하는 글꼴, PDF 열립니다.

아래 제공된 예제에서는 설정 방법을 보여 줍니다 Aspose.Words 핵심 글꼴을 내장하지 않고 독자가 PDF 유형 1 글꼴:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

그 이후로 PDF 뷰어는 지원되는 모든 플랫폼에서 핵심 글꼴을 제공합니다.이 옵션은 문서 이식성이 더 필요한 경우에도 유용합니다. 그러나 핵심 글꼴은 시스템 글꼴과 다를 수 있습니다.

{{% alert color="primary" %}}

이 설정은 다음에 대해서만 작동합니다 ANSI (Windows-1252)텍스트를 인코딩합니다. 비 쓰기-ANSI 텍스트 PDF 항상 해당 글꼴을 포함해야 합니다.

{{% /alert %}}

### 시스템 글꼴 포함

이 옵션은 다음을 사용하여 활성화 또는 비활성화 할 수 있습니다 [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/) 재산. 이 속성이 로 설정된 경우 [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/),"아리알"과"타임즈 뉴 로만"의 트루 타입 폰트는 PDF 문서 이 경우 클라이언트 뷰어는 클라이언트의 운영 체제에 설치된 글꼴을 사용합니다. 때 **FontEmbeddingMode** 속성이 설정됨 [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words 어떤 글꼴을 포함하지 마십시오.

아래 예제에서는 설정 방법을 보여 줍니다 Aspose.Words 에 굴림 및 시간 새로운 로마 글꼴을 포함 건너 뛰려면 PDF 문서:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

이 모드는 출력에서 글꼴의 정확한 모양을 유지하면서 동일한 플랫폼에서 문서를 보고 싶을 때 가장 유용합니다 PDF.

{{% alert color="primary" %}}

이 설정은 다음에 대해서만 작동합니다 ANSI (Windows-1252)텍스트를 인코딩합니다. 비 쓰기-ANSI 텍스트 PDF 해당 글꼴을 포함해야 합니다.

{{% /alert %}}
