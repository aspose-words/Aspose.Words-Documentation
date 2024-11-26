---
title: PDF로 변환할 때 렌더링 옵션 지정
second_title: Aspose.WordsJava
articleTitle: PDF로 변환할 때 렌더링 옵션 지정
linktitle: PDF로 변환할 때 렌더링 옵션 지정
description: "고급 옵션을 사용하여 문서를PDF로 변환합니다. PdfSaveOptions을 사용하여Java을 사용하여 문서를PDF형식으로 저장한 결과를 변경합니다."
type: docs
weight: 20
url: /ko/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

PDF형식은PDF문서가 모든 장치에서 동일하게 보이기 때문에 사용자들 사이에서 매우 인기가 있고 다양한 응용 프로그램에서 널리 지원되는 고정 페이지 형식입니다. 따라서PDF로 변환하는 것은Aspose.Words의 중요한 기능입니다.

PDF은 복잡한 형식입니다. 레이아웃 계산을 포함하여 문서를PDF으로 변환하는 과정에서 여러 단계의 계산이 필요합니다. 이 단계들은 복잡한 계산을 포함하기 때문에 시간이 많이 걸립니다. 또한PDF형식은 그 자체로 다소 복잡합니다. 특정 파일 구조,그래픽 모델 및 글꼴 임베딩이 있습니다. 또한 문서 구조 태그,암호화,디지털 서명 및 편집 가능한 양식과 같은 복잡한 출력 기능을 갖추고 있습니다.

Aspose.Words레이아웃 엔진은Microsoft Word의 페이지 레이아웃 엔진이 작동하는 방식을 모방합니다. 따라서Aspose.Words는PDF출력 문서를Microsoft Word에서 볼 수 있는 것과 최대한 가깝게 보이게 합니다. 때로는 문서를PDF형식으로 저장 한 결과에 영향을 줄 수있는 추가 옵션을 지정해야합니다. 이러한 옵션은PDF출력을 표시하는 방법을 결정하는 속성을 포함하는[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)클래스를 사용하여 지정할 수 있습니다.

**PdfSaveOptions**을 사용하는 몇 가지 예가 아래에 나와 있습니다.

{{% alert color="primary" %}}

현재 다음을 저장할 수 있습니다PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, 그리고PDF/UA-1형식. [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)열거를 사용하여PDF표준 준수 수준을 설정합니다. PDF/A형식을 사용하면 출력 파일 크기가 일반PDF파일 크기보다 큽니다.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17)및[PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17)는 구식으로 표시됩니다.

PDF/A에 대한 자세한 내용은 다음 문서인"PDF/A으로의 변환 기능 알아보기"를 참조하십시오.

{{% /alert %}}

## 작성 가능한 양식을 사용하여PDF문서 만들기

또한Microsoft Word문서에서 일반 텍스트 대신 채울 수 있는 양식을 가진 출력PDF로 채울 수 있는 양식을 내보낼 수도 있습니다. [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields)속성을 사용하여 문서를 채울 수 있는 양식을 사용하여PDF로 저장합니다.

Microsoft Word과 달리PDF형식에는 텍스트 상자,콤보 상자 및checkbox과 같이 편집 가능한 양식에 대한 옵션이 제한되어 있습니다. Microsoft Word에는 더 많은 유형의 양식(예:달력 날짜 선택기)이 있습니다. 일반적으로PDF에서Microsoft Word동작을 완전히 모방하는 것은 불가능합니다. 따라서 일부 복잡한 경우PDF출력은Microsoft Word에서 보는 것과 다를 수 있습니다.

아래 코드 예제에서는 문서를PDF으로 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## 문서 구조 및 사용자 지정 속성 내보내기

[ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure)속성을 사용하면 문서 구조를PDF출력으로 내보낼 수 있습니다.

PDF논리 구조 시설은 문서 내용 구조에 관한 정보를PDF파일에 통합하는 메커니즘을 제공합니다. Aspose.Words단락,목록,표,각주/미주 등과 같은Microsoft Word문서의 구조에 대한 정보를 보존합니다.

다음 예제에서는 문서 구조를 유지하면서PDF형식으로 문서를 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words또한 문서 사용자 지정 속성을PDF로 내보낼 수 있습니다.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## 출력PDF의 책갈피 및 제목에서 윤곽선 내보내기

출력PDF에서 책갈피를 윤곽선으로 내보내려면[DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel)속성을 사용할 수 있습니다. 이 속성은Microsoft Word책갈피가 표시되는 문서 개요의 기본 수준을 지정합니다. 문서의 머리글/바닥글에 책갈피가 있는 경우[HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode)속성을[First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST)또는[All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL)로 설정하여 출력PDF에서 책갈피를 내보내는 방법을 지정할 수 있습니다. **HeaderFooterBookmarksExportMode**값이[None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE)이면 머리글/바닥글의 책갈피가 내보내지지 않습니다.

아래 코드 예제에서는 섹션의 첫 번째 머리글/바닥글에서 책갈피를 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

이 예제의 출력PDF은 다음과 같습니다:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

**HeaderFooterBookmarksExportMode**이[First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST)으로 설정되어 있고 문서에 짝수 및 홀수 머리글/바닥글 또는 다른 첫 페이지 머리글/바닥글이 있는 경우 섹션의 첫 번째 고유한 머리글/바닥글에 대해 책갈피가 내보내집니다.

[HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels)속성을 사용하여 출력PDF에서 제목을 내보낼 수도 있습니다. 이 속성은 문서 개요에 포함되는 머리글 수준의 수를 지정합니다.

아래 코드 예제에서는 세 가지 수준의 제목을 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

이 예제의 출력PDF은 아래에 나와 있습니다:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

책갈피 또는 제목 탐색은 다양한PDF뷰어에서 다른 모양을 가질 수 있습니다. 또한 일부 응용 프로그램에서는UI에서 책갈피 및 제목 탐색을 사용할 수 없습니다.

{{% /alert %}}

## 문서 크기를 줄이기 위한 이미지 다운샘플링

Aspose.Words는[DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions)속성을 사용하여 출력PDF크기를 줄이기 위해 이미지를 다운샘플하는 기능을 제공합니다. 다운샘플링은[DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages)속성에서 기본적으로 활성화되어 있습니다.

[Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution)속성에서 특정 해상도를 설정하거나[ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold)속성에서 해상도 임계값을 설정할 수도 있습니다. 두 번째 경우,이미지 해상도가 임계값보다 작다면,다운샘플링은 적용되지 않습니다.

아래 코드 예제에서는 출력PDF문서에서 이미지의 해상도를 변경하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

해상도는 페이지의 실제 이미지 크기에 따라 계산됩니다.

## 어도비PDF형식으로 글꼴 포함

Aspose.Words을 사용하면 결과 PDF 문서에 글꼴을 임베드하는 방법을 제어할 수도 있습니다. 글꼴은 모든 Adobe PDF 문서에 임베드되어야 문서가 모든 컴퓨터에서 올바르게 렌더링될 수 있습니다(글꼴 렌더링에 대한 자세한 내용은 섹션 참조).[ TrueType 글꼴 사용](/words/java/using-truetype-fonts/) ). 기본적으로 Aspose.Words은 문서에서 사용된 글꼴의 하위 집합을 생성된 PDF에 포함합니다. 이 경우 문서에서 사용된 글리프(문자)만 PDF에 저장됩니다.

### 전체 글꼴 사용 시기 및 하위 집합 사용 시기

전체 글꼴을 포함하는Aspose.Words에 대한 옵션을 지정하는 방법이 있습니다. 각 설정의 몇 가지 장단점과 함께 더 자세한 내용은 아래 표에 설명되어 있습니다.

| 글꼴 모드 포함 | 장점 | 단점 |
| :- | :- | :- |
| `Full` | 나중에 텍스트를 추가하거나 수정하여 결과PDF을 편집할 때 유용합니다. 모든 글꼴이 포함되어 있으므로 모든 글리프가 있습니다. | 일부 글꼴은 크기가 크기 때문에(몇 메가바이트)하위 설정 없이 삽입하면 큰 출력 파일이 발생할 수 있습니다. |
| `Subset` | 하위 설정은 출력 파일 크기를 작게 유지하려는 경우에 유용합니다. | <p>사용자는 출력PDF문서의 하위 집합 글꼴을 사용하여 텍스트를 완전히 추가하거나 편집할 수 없습니다. 글꼴의 모든 글리프가 존재하지 않기 때문입니다.</p><p>여러PDFs이 하위 집합 글꼴로 저장되고 함께 조립되면 결합된PDF문서에는 불필요한 하위 집합이 많이 포함된 글꼴이 있을 수 있습니다.</p> |

### PDF에 전체 글꼴 포함

[EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts)속성을 사용하면Aspose.Words이 출력PDF문서에 글꼴을 포함하는 방법을 지정할 수 있습니다.

- 출력PDF문서에 전체 글꼴을 포함하려면**EmbedFullFonts**을 참으로 설정합니다
- PDF에 저장할 때 글꼴을 하위 집합하려면**EmbedFullFonts**을 거짓으로 설정합니다

다음 예제에서는 출력PDF문서에 전체 글꼴을 포함하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

다음 예제에서는Aspose.Words을 출력PDF의 하위 집합 글꼴로 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

다음에서 이러한 예제에 대한 템플릿 파일을 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## 코어 글꼴 및Windows표준 글꼴 임베딩을 제어하는 방법

코어 폰트와Windows표준 폰트는 일반적으로 타겟 머신에 존재하거나 문서 리더에 의해 제공되는"표준"폰트 세트입니다.따라서 출력PDF에 내장 할 필요가 없습니다. 이러한 글꼴을 포함하지 않으면 렌더링된PDF문서의 크기를 줄이고 이식성을 유지할 수 있습니다.

Aspose.Words은 글꼴을PDF로 내보내는 방법을 선택할 수 있는 옵션을 제공합니다. 출력PDF에 코어 및 표준 글꼴을 포함 시키거나 임베딩을 건너 뛰고 대신 대상 컴퓨터에서 표준 코어PDF글꼴 또는 시스템 글꼴을 사용하도록 선택할 수 있습니다. 이러한 옵션 중 하나를 사용하면 일반적으로Aspose.Words에 의해 생성된PDF문서의 파일 크기가 크게 줄어듭니다.

- 이러한 옵션은 상호 배타적이기 때문에 한 번에 하나만 선택해야 합니다.
- PDF/A-1준수로 저장할 때 사용된 모든 글꼴은PDF문서에 포함되어야 합니다. 이 규정을 준수하여 저장할 때는[UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts)속성을 거짓으로 설정하고[FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode)속성을[EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)로 설정해야 합니다

### 코어 글꼴 포함

[UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts)속성을 사용하여 코어 글꼴을 포함하는 옵션을 사용하거나 사용하지 않도록 설정할 수 있습니다. 이 글꼴이 참으로 설정되면 다음과 같이 가장 많이 사용되는"참 유형"글꼴(기본 14 글꼴)이 출력PDF문서에 포함되지 않습니다:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

이러한 글꼴은PDF을 열 때 리더가 제공하는 해당 코어 타입 1 글꼴로 대체됩니다.

아래 제공된 예제는 핵심 글꼴을 포함하지 않도록Aspose.Words을 설정하고 독자가PDF유형 1 글꼴로 대체하도록 하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

PDF뷰어는 지원되는 모든 플랫폼에서 핵심 글꼴을 제공하기 때문에 이 옵션은 문서 이식성이 더 필요한 경우에도 유용합니다. 그러나 핵심 글꼴은 시스템 글꼴과 다를 수 있습니다.

{{% alert color="primary" %}}

이 설정은ANSI(Windows-1252)인코딩 텍스트에만 적용됩니다. ANSI이 아닌 텍스트를PDF에 쓰면 항상 해당 글꼴을 포함해야 합니다.

{{% /alert %}}

### 시스템 글꼴 포함

이 옵션은[FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode)속성을 사용하여 사용하거나 사용하지 않도록 설정할 수 있습니다. 이 속성을[EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD)으로 설정하면"굴림"및"타임스 뉴 로만"참 유형 글꼴은PDF문서에 포함되지 않습니다. 이 경우 클라이언트 뷰어는 클라이언트 운영 체제에 설치된 글꼴을 사용합니다. **FontEmbeddingMode**속성을[EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE)로 설정하면Aspose.Words글꼴을 포함하지 않습니다.

아래 예제에서는Aspose.Words을 설정하여PDF문서에 굴림 및 번 새 로마 글꼴 임베딩을 건너뛰는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

이 모드는 출력PDF에서 글꼴의 정확한 모양을 유지하면서 동일한 플랫폼에서 문서를 보고 싶을 때 가장 유용합니다.

{{% alert color="primary" %}}

이 설정은ANSI(Windows-1252)인코딩 텍스트에만 적용됩니다. ANSI이 아닌 텍스트를PDF에 작성하려면 해당 글꼴을 포함해야 합니다.

{{% /alert %}}
