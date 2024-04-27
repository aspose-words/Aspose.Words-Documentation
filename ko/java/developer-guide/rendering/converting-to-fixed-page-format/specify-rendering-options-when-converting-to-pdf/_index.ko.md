---
title: Rendering 옵션을 지정할 때 PDF로 변환
second_title: Aspose.Words 제품정보 Java
articleTitle: Rendering 옵션을 지정할 때 PDF로 변환
linktitle: Rendering 옵션을 지정할 때 PDF로 변환
description: "고급 옵션으로 문서를 PDF로 변환합니다. PdfSaveOptions를 사용하여 문서를 PDF 형식으로 저장하는 결과를 변경합니다. Java·"
type: docs
weight: 20
url: /ko/java/specify-rendering-options-when-converting-to-pdf/
---

PDF 형식은 사용자 중 매우 인기있는 고정 페이지 형식이며 PDF 문서가 모든 장치와 동일하게 보입니다. 그 이유는 PDF로 변환하는 것은 중요한 특징입니다. Aspose.Words·

PDF는 복잡한 형식입니다. 여러 단계의 계산은 레이아웃 계산을 포함하여 문서를 PDF로 변환하는 과정에서 필요합니다. 이 단계는 복잡한 계산을 포함했기 때문에, 그들은 시간 소모입니다. 또한 PDF 형식은 오히려 복잡합니다. 특정 파일 구조, 그래픽 모델 및 글꼴 embedding. 또한 문서 구조 태그, 암호화, 디지털 서명 및 편집 가능한 형태와 같은 복잡한 출력 기능을 갖추고 있습니다.

Aspose.Words 레이아웃 엔진은 방법을 imitates Microsoft Word’ s 페이지 레이아웃 엔진 작동. 견적 요청 Aspose.Words PDF 출력 문서는 당신이 볼 수있는 것만큼 가까이 봐 Microsoft Word· 때로는 PDF 형식으로 문서를 저장하는 결과에 영향을 줄 수있는 추가 옵션을 지정해야합니다. 이 옵션은 사용할 수 있습니다. [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) PDF 출력이 어떻게 표시되는지 결정하는 속성을 포함하는 클래스.

사용 예제 **PdfSaveOptions** 아래에 제공 됩니다.

{{% alert color="primary" %}}

현재 PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u 및 PDF/UA-1 형식으로 저장할 수 있습니다. 사용 방법 [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) PDF 표준 준수 수준을 설정하는 열렬한. PDF/A 형식과 함께, 출력 파일 크기는 일반 PDF 파일 크기보다 크다.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) · [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) 사용되지 않음

PDF/A에 대한 자세한 내용은 다음 문서를 참조하십시오. "PDF/A로 변환의 특징".

{{% /alert %}}

## PDF 만들기 Fillable Form 문서

그것은 또한에서 채울 수있는 형태로 수출 가능 Microsoft Word 문서 출력 PDF로 일반 텍스트 대신 양식을 작성할 수 있습니다. 사용 방법 [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) 문서를 PDF로 작성할 수 있습니다.

관심에 관심 <span notrans="<span notrans=" Microsoft Word"=""></span>· PDF 형식은 textbox, combo 상자 및 checkbox와 같은 편집 가능한 형태를 위한 한정된 수의 선택권이 있습니다. Microsoft Word 더 많은 유형의 형태를 가지고, 예를 들면, 달력 날짜 피커. 일반적으로, 그것은 완전히 imitate 할 수 없습니다 Microsoft Word PDF의 동작. 따라서, 일부 복잡한 경우, PDF 출력은 당신이 보는 것과 다를 수 있습니다 Microsoft Word·

아래의 코드 예제는 지정된 Jpeg 압축 및 품질로 작성 가능한 양식을 PDF로 문서를 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## 문서 구조 및 사용자 정의 속성 수출

더 보기 [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) 속성을 사용하면 문서 구조를 PDF 출력에 수출 할 수 있습니다.

PDF 논리 구조 설비는 문서 내용 구조와 관련하여 정보를 통합하기위한 메커니즘을 PDF 파일로 제공합니다. Aspose.Words 구조에 대한 정보를 보존 Microsoft Word 단락, 명부, 테이블, footnotes/endnotes, 등과 같은 문서.

다음 예제는 문서를 PDF 형식으로 저장하는 방법을 설명하고 문서 구조를 보존:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words 또한 문서 사용자 정의 속성을 PDF로 내보내기 할 수 있습니다. 다음과 같은 예로 입증됩니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## 책갈피 및 출력 PDF의 제목 수출

출력 PDF의 개요로 책갈피를 내보내려면 사용할 수 있습니다. [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) 호텔 위치 이 속성은 문서 개요의 기본 레벨을 지정합니다. Microsoft Word 책갈피가 표시됩니다. 문서가 문서의 헤더/footer에 책갈피를 포함하면 설정할 수 있습니다. [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) 뚱 베어 [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) 또는 [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) 출력 PDF로 내보내는 방법을 지정하려면. headers/footers에 있는 책갈피는 가치가 때 수출되지 않습니다 **HeaderFooterBookmarksExportMode** 이름 * [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE)·

아래 코드는 섹션의 첫 번째 헤더 / 발러에서 책갈피를 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

이 예의 출력 PDF는 다음과 같습니다

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

시간: **HeaderFooterBookmarksExportMode** 설정 [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) 그리고 문서에는 심지어 이상한 우두머리/footers 또는 다른 첫번째 페이지 우두머리/footer가 있고, 책갈피는 단면도에 있는 첫번째 유일한 우두머리/footers를 위해 수출됩니다.

출력 PDF에서 headings를 수출할 수 있습니다. [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) 호텔 위치 이 속성은 문서 개요에 몇 가지 수준의 헤드링이 포함되어 있는지 확인합니다.

아래 코드는 세 가지 수준의 헤드링을 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

이 예의 출력 PDF는 아래에 묘사됩니다:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

책갈피 또는 머리 제거는 각종 PDF 구경꾼에 있는 다른 외관이 있을지도 모릅니다. 또한, 몇몇 신청에서, 책갈피 및 두는 항법은 UI에서 유효하지 않습니다.

{{% /alert %}}

## 문서 크기를 줄이기 위해 Downsampling Images

Aspose.Words 출력 PDF 크기를 줄이기 위해 downsample 이미지에 대한 기능을 제공합니다. [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) 호텔 위치 Downsampling은 기본적으로 활성화됩니다. [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) 호텔 위치

특정 해상도를 설정할 수 있음 [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) 속성, 또는 해상도 임계 값 [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) 호텔 위치 두 번째 경우, 이미지 해상도가 임계 값보다 적은 경우, downsampling은 적용되지 않습니다.

아래 코드는 출력 PDF 문서의 이미지의 해상도를 변경하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

해결책은 페이지에 진짜 이미지 크기에 따라 산출됩니다.

## Adobe PDF 형식으로 글꼴을 삽입

Aspose.Words 또한 글꼴이 결과 PDF 문서에 삽입되는 방법을 제어 할 수 있습니다. 폰트는 Adobe PDF 문서에 임베디드가 필요하며 문서가 모든 기계에서 올바르게 렌더링 될 수 있음을 보장하기 위해 Adobe PDF 문서에 임베디드가 필요합니다. [파일 형식](/words/ko/java/using-truetype-fonts/)). 기본적으로, Aspose.Words 생성된 PDF로 문서에 사용되는 글꼴의 하위 세트를 포함. 이 경우 만 glyph문서에 사용되는 s (문자)는 PDF로 저장됩니다.

### 전체 글꼴을 사용할 때 및 Subset에

옵션을 지정하는 방법이 있습니다. Aspose.Words 전체 글꼴을 embed. 각 조정의 몇몇 이점 그리고 불리와 더불어 세부사항은 아래에 테이블에서 설명됩니다.

| Embed 글꼴 형태 |  제품 정보 | 관련 상품 |
|  :-  |  :-  |  :-  |
|  `Full`  | 텍스트를 추가하거나 수정하여 PDF를 나중에 편집 할 때 유용합니다. 모든 글꼴이 포함되어 있습니다, 그러므로 모두 glyphs는 현재입니다. | 일부 글꼴이 크기 때문에 (several megabytes), 하위 설정 없이 그들을 포함 하 여 큰 출력 파일에서 발생할 수 있습니다. |
|  `Subset`  | Subsetting은 출력 파일 크기를 작게 유지하려는 경우 유용합니다. | <p>사용자는 출력 PDF 문서의 하위 설정 글꼴을 사용하여 텍스트를 완전히 추가하거나 편집 할 수 없습니다. 이것은 모든 것이 아닙니다. glyph글꼴의 s는 현재입니다.</p>

<p>여러 개의 PDF가 하위 설정된 글꼴로 저장되고 함께 조립되면, 결합된 PDF 문서에는 많은 불필요한 하위 세트가 포함 된 글꼴이있을 수 있습니다.</p>
 |

### 전체 글꼴을 PDF로

더 보기 [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) 속성을 지정할 수 있습니다. Aspose.Words 출력 PDF 문서에 글꼴을 포함.

- - - 출력 PDF 문서로 전체 글꼴을 삽입하려면 설정 **EmbedFullFonts** 이름 * true
- - - PDF로 저장할 때 글꼴을 설정하려면, 설정 **EmbedFullFonts** 이름 * false

다음 예제는 출력 PDF 문서의 전체 글꼴을 embed하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

다음 예제는 설정하는 방법을 보여줍니다. Aspose.Words 출력 PDF의 서브셋 글꼴:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{% /alert %}}

## Embedding 핵심 글꼴을 통제하는 방법 Windows 표준 글꼴

핵심 글꼴 및 Windows 표준 글꼴은 대상 기계에 일반적으로 존재하는 글꼴의 "표준"세트이며 문서 리더에 의해 제공되므로 출력 PDF에 내장 할 필요가 없습니다. 이 폰트를 삽입하지 않고 렌더링 된 PDF 문서의 크기를 줄일 수 있으며, 패시성을 유지합니다.

Aspose.Words 글꼴이 PDF로 내보내는 방법을 선택하는 옵션을 제공합니다. 출력 PDF로 코어 및 표준 글꼴을 삽입하거나 대신 대상 기계에 표준 코어 PDF 글꼴 또는 시스템 글꼴을 사용하도록 선택할 수 있습니다. 이러한 옵션 중 하나를 사용하여 일반적으로 PDF 문서의 상당한 파일 크기 감소에 결과 Aspose.Words·

- 이러한 옵션이 상호적으로 독점적이므로 한 번만 선택할 수 있습니다.
- PDF/A-1 준수를 저장할 때, 모든 사용 된 글꼴은 PDF 문서에 포함해야합니다. 이 준수를 절약 할 때, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) 의 속성은 false 그리고 [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) 의 속성은 [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Embedding 핵심 글꼴

Core 글꼴을 embed 할 수있는 옵션은 사용하거나 사용함으로써 비활성화 할 수 있습니다. [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) 호텔 위치 설정할 때 true, 다음과 같은 가장 인기있는 "True Type" 글꼴 (기본 14 글꼴)은 출력 PDF 문서에 포함되지 않습니다

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

이 글꼴은 PDF가 열릴 때 독자가 제공 한 해당 코어 유형 1 글꼴로 대체됩니다.

아래 예제는 설정 방법을 보여줍니다 Aspose.Words 코어 글꼴을 삽입하고 독자가 PDF로 대체하도록하십시오. 유형 1개의 글꼴:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{% /alert %}}

PDF 뷰어는 지원되는 플랫폼에 핵심 글꼴을 제공하므로 문서의 포트가 필요할 때도 유용합니다. 그러나 핵심 글꼴은 시스템 글꼴과 다른 것을 볼 수 있습니다.

{{% alert color="primary" %}}

이 설정은 ANSI에서만 작동합니다 (Windows-1252) 인코딩 텍스트. PDF에 비 ANSI 텍스트를 작성하면 항상 해당 글꼴이 임베디드되어야합니다.

{{% /alert %}}

### 시스템 글꼴

이 옵션을 사용할 수 있습니다 또는 사용 하 여 비활성화 [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) 호텔 위치 이 속성은 [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), "Arial"과 "Times New Roman" true 글꼴 유형은 PDF 문서에 포함되지 않습니다. 이 경우 클라이언트 뷰어는 클라이언트 운영 체제에 설치되는 글꼴에 의존합니다. 시간: **FontEmbeddingMode** 숙박 시설 [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words 어떤 글꼴을 포함하지 마십시오.

아래 예제는 설정하는 방법을 보여줍니다. Aspose.Words Arial과 Times New Roman 글꼴을 PDF 문서로 복사하려면:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

이 모드는 동일한 플랫폼에서 문서를 볼 때 가장 유용합니다. 출력 PDF의 글꼴의 정확한 외관을 보존합니다.

{{% alert color="primary" %}}

이 설정은 ANSI에서만 작동합니다 (Windows-1252) 인코딩 텍스트. non-ANSI 텍스트를 PDF로 작성하면 해당 글꼴이 임베디드되어야 합니다.

{{% /alert %}}
