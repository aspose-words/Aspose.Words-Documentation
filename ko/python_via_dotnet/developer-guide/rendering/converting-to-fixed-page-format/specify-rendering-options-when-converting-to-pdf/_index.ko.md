---
title: PDF로 변환 시 옵션
second_title: Python via .NET용 Aspose.Words
articleTitle: PDF로 변환 시 렌더링 옵션 지정
linktitle: PDF로 변환 시 렌더링 옵션 지정
description: "Python를 사용하여 고급 옵션을 사용하여 문서를 PDF로 변환하세요. PdfSaveOptions를 사용하여 문서 저장 결과를 PDF 형식으로 변경합니다."
type: docs
weight: 20
url: /ko/python-net/specify-rendering-options-when-converting-to-pdf/
---

PDF 형식은 PDF 문서가 모든 장치에서 동일하게 보이기 때문에 사용자들 사이에서 매우 인기가 있고 다양한 응용 프로그램에서 널리 지원되는 고정 페이지 형식입니다. 따라서 PDF로 변환하는 것은 Aspose.Words의 중요한 기능입니다.

PDF는 복잡한 형식입니다. 문서를 PDF로 변환하는 과정에는 레이아웃 계산을 포함하여 여러 단계의 계산이 필요합니다. 이러한 단계에는 복잡한 계산이 포함되므로 시간이 많이 걸립니다. 또한 PDF 형식은 그 자체로 다소 복잡합니다. 특정 파일 구조, 그래픽 모델 및 글꼴 포함이 있습니다. 또한 문서 구조 태그, 암호화, 디지털 서명 및 편집 가능한 양식과 같은 일부 복잡한 출력 기능을 갖추고 있습니다.

Aspose.Words 레이아웃 엔진은 Microsoft Word의 페이지 레이아웃 엔진 작동 방식을 모방합니다. 따라서 Aspose.Words는 PDF 출력 문서를 Microsoft Word에서 볼 수 있는 것과 최대한 비슷하게 보이게 만듭니다. 때로는 문서를 PDF 형식으로 저장한 결과에 영향을 줄 수 있는 추가 옵션을 지정해야 하는 경우도 있습니다. 이러한 옵션은 PDF 출력 표시 방법을 결정하는 속성이 포함된 [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) 클래스를 사용하여 지정할 수 있습니다.

[PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) 사용의 몇 가지 예가 아래에 제공됩니다.

{{% alert color="primary" %}}

현재 PDF/A-1 및 PDF/A-2 형식으로 저장할 수도 있습니다. PDF/A 형식의 경우 출력 파일 크기가 일반 PDF 파일 크기보다 큽니다.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) 및 [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b)는 더 이상 사용되지 않는 것으로 표시됩니다.

PDF/A에 대한 자세한 내용은 다음 문서 "PDF/A로 변환 기능 알아보기"를 참조하세요.

{{% /alert %}}

## 채울 수 있는 양식으로 PDF 문서 만들기

Microsoft Word 문서의 채울 수 있는 양식을 일반 텍스트 대신 채울 수 있는 양식이 있는 출력 PDF로 내보낼 수도 있습니다. [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) 속성을 사용하여 채울 수 있는 양식이 있는 PDF로 문서를 저장합니다.

Microsoft Word와 달리 PDF 형식에는 텍스트 상자, 콤보 상자, 확인란 등 편집 가능한 양식에 대한 옵션 수가 제한되어 있습니다. Microsoft Word에는 달력 날짜 선택기와 같은 더 많은 유형의 양식이 있습니다. 일반적으로 PDF에서 Microsoft Word 동작을 완전히 모방하는 것은 불가능합니다. 따라서 일부 복잡한 경우에는 PDF 출력이 Microsoft Word에 표시되는 것과 다를 수 있습니다.

아래 코드 예제는 지정된 Jpeg 압축 및 품질을 사용하여 채울 수 있는 양식을 사용하여 문서를 PDF로 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## 문서 구조 및 사용자 정의 속성 내보내기

[export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) 속성을 사용하면 문서 구조를 PDF 출력으로 내보낼 수 있습니다.

PDF 논리 구조 기능은 문서 내용 구조와 관련된 정보를 PDF 파일에 통합하는 메커니즘을 제공합니다. Aspose.Words는 단락, 목록, 표, 각주/미주 등과 같은 Microsoft Word 문서의 구조에 대한 정보를 보존합니다.

다음 예에서는 문서 구조를 유지하면서 문서를 PDF 형식으로 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words를 사용하면 문서 사용자 정의 속성을 PDF로 내보낼 수도 있습니다. 이는 다음 예에서 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## 출력 PDF의 책갈피 및 제목에서 개요 내보내기

책갈피를 출력 PDF의 개요로 내보내려면 [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) 속성을 사용할 수 있습니다. 이 속성은 Microsoft Word 책갈피가 표시되는 문서 개요의 기본 수준을 지정합니다. 문서의 머리글/바닥글에 책갈피가 포함된 경우 [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) 속성을 [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) 또는 [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all)으로 설정하여 출력 PDF로 내보내는 방법을 지정할 수 있습니다. [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) 값이 [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none)인 경우 머리글/바닥글의 책갈피는 내보내지지 않습니다.

아래 코드 예제는 섹션의 첫 번째 머리글/바닥글에서 책갈피를 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

이 예의 출력 PDF는 다음과 같습니다

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

[header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/)가 [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first)로 설정되어 있고 문서에 짝수 및 홀수 머리글/바닥글이 있거나 다른 첫 페이지 머리글/바닥글이 있는 경우 섹션의 첫 번째 고유 머리글/바닥글에 대해 책갈피를 내보냅니다.

[headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) 속성을 사용하여 출력 PDF의 제목을 내보낼 수도 있습니다. 이 속성은 문서 개요에 포함되는 제목 수준 수를 지정합니다.

아래 코드 예제에서는 세 가지 수준의 제목을 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

이 예의 출력 PDF는 아래와 같습니다

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

책갈피 또는 제목 탐색은 다양한 PDF 뷰어에서 다르게 나타날 수 있습니다. 또한 일부 애플리케이션에서는 북마크 및 제목 탐색을 UI에서 사용할 수 없습니다.

{{% /alert %}}

## 문서 크기를 줄이기 위해 이미지 다운샘플링

Aspose.Words는 [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) 속성을 사용하여 출력 PDF 크기를 줄이기 위해 이미지를 다운샘플링하는 기능을 제공합니다. 다운샘플링은 [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) 속성에서 기본적으로 활성화됩니다.

[resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) 속성에서 특정 해상도를 설정하거나 [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) 속성에서 해상도 임계값을 설정하는 것도 가능합니다. 두 번째 경우, 이미지 해상도가 임계값보다 낮으면 다운샘플링이 적용되지 않습니다.

아래 코드 예제는 출력 PDF 문서의 이미지 해상도를 변경하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

해상도는 페이지의 실제 이미지 크기에 따라 계산됩니다.

## Adobe PDF 형식에 글꼴 포함

Aspose.Words를 사용하면 결과 PDF 문서에 글꼴이 포함되는 방식을 제어할 수도 있습니다. 문서가 모든 컴퓨터에서 올바르게 렌더링될 수 있도록 하려면 Adobe PDF 문서에 글꼴을 포함해야 합니다([트루타입 글꼴 사용](/words/ko/python-net/using-truetype-fonts/) 섹션의 글꼴 렌더링에 대한 자세한 내용 참조). 기본적으로 Aspose.Words는 문서에 사용된 글꼴의 하위 집합을 생성된 PDF에 포함합니다. 이 경우 문서에 사용된 glyph(문자)만 PDF에 저장됩니다.

### 전체 글꼴을 사용해야 하는 경우와 하위 글꼴을 사용해야 하는 경우

전체 글꼴을 포함하도록 Aspose.Words에 대한 옵션을 지정하는 방법이 있습니다. 아래 표에는 각 설정의 장점과 단점과 함께 자세한 내용이 설명되어 있습니다.

| 글꼴 모드 포함 |  장점 | 단점 |
|  :-  |  :-  |  :-  |
|  `Full`  | 나중에 텍스트를 추가하거나 수정하여 결과 PDF를 편집하려는 경우 유용합니다. 모든 글꼴이 포함되어 있으므로 모든 glyph가 존재합니다. | 일부 글꼴은 크기가 크므로(수 메가바이트) 하위 집합 없이 글꼴을 포함하면 출력 파일이 커질 수 있습니다. |
|  `Subset`  | 출력 파일 크기를 더 작게 유지하려는 경우 하위 설정이 유용합니다. | <p>사용자는 출력 PDF 문서에서 하위 집합 글꼴을 사용하여 텍스트를 완전히 추가하거나 편집할 수 없습니다. 이는 글꼴의 모든 glyph가 존재하지 않기 때문입니다.</p>

<p>여러 PDF를 하위 집합 글꼴로 저장하고 함께 조합한 경우 결합된 PDF 문서에 불필요한 하위 집합이 많이 포함된 글꼴이 있을 수 있습니다.</p> |

### PDF에 전체 글꼴 포함

[embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) 속성을 사용하면 Aspose.Words가 출력 PDF 문서에 글꼴을 포함하는 방법을 지정할 수 있습니다.

- 출력 PDF 문서에 전체 글꼴을 포함하려면 [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/)를 *True*로 설정하세요
- PDF로 저장할 때 글꼴을 하위 집합으로 설정하려면 [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/)를 *False*로 설정하세요

다음 예에서는 출력 PDF 문서에 전체 글꼴을 포함하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

다음 예에서는 출력 PDF에서 Aspose.Words를 하위 집합 글꼴로 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)에서 이러한 예제에 대한 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 포함 핵심 글꼴 및 Windows 표준 글꼴을 제어하는 방법

핵심 글꼴과 Windows 표준 글꼴은 일반적으로 대상 컴퓨터에 있거나 문서 판독기에서 제공되는 "표준" 글꼴 세트이므로 출력 PDF에 포함할 필요가 없습니다. 이러한 글꼴을 포함하지 않으면 렌더링된 PDF 문서의 크기를 줄이면서 이식성을 유지할 수 있습니다.

Aspose.Words는 글꼴을 PDF로 내보내는 방법을 선택하는 옵션을 제공합니다. 출력 PDF에 핵심 및 표준 글꼴을 포함하거나 포함을 건너뛰고 대신 대상 시스템에서 표준 핵심 PDF 글꼴 또는 시스템 글꼴을 사용하도록 선택할 수 있습니다. 이러한 옵션 중 하나를 사용하면 일반적으로 Aspose.Words에서 생성된 PDF 문서의 파일 크기가 크게 줄어듭니다.

- 이 옵션은 상호 배타적이므로 한 번에 하나씩만 선택해야 합니다.
- PDF/A-1 규격으로 저장하는 경우 사용된 모든 글꼴이 PDF 문서에 포함되어야 합니다. 이 규정을 준수하여 저장할 때 [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) 속성은 *False*로, [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) 속성은 [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all)로 설정되어야 합니다.

### 핵심 글꼴 포함

[use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) 속성을 사용하여 Core 글꼴을 포함하는 옵션을 활성화하거나 비활성화할 수 있습니다. true로 설정되면 다음과 같은 가장 널리 사용되는 "트루타입" 글꼴(Base 14 글꼴)이 출력 PDF 문서에 포함되지 않습니다

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

이러한 글꼴은 PDF를 열 때 리더에서 제공하는 해당 핵심 Type 1 글꼴로 대체됩니다.

아래 제공된 예는 핵심 글꼴 포함을 방지하고 독자가 이를 PDF Type 1 글꼴로 대체할 수 있도록 Aspose.Words를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

PDF 뷰어는 지원되는 모든 플랫폼에서 핵심 글꼴을 제공하므로 이 옵션은 더 큰 문서 이식성이 필요할 때에도 유용합니다. 그러나 핵심 글꼴은 시스템 글꼴과 다르게 보일 수 있습니다.

{{% alert color="primary" %}}

이 설정은 ANSI(Windows-1252) 인코딩 텍스트에만 적용됩니다. ANSI가 아닌 텍스트를 PDF에 작성하려면 항상 해당 글꼴이 포함되어 있어야 합니다.

{{% /alert %}}

### 시스템 글꼴 포함

이 옵션은 [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/)를 사용하여 활성화하거나 비활성화할 수 있습니다. 이 속성이 [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard)로 설정되면 "Arial" 및 "Times New Roman" true 유형 글꼴이 PDF 문서에 포함되지 않습니다. 이 경우 클라이언트 뷰어는 클라이언트 운영 체제에 설치된 글꼴을 사용합니다. [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) 속성이 [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none)로 설정된 경우 Aspose.Words에는 글꼴이 포함되지 않습니다.

아래 예는 Arial 및 Times New Roman 글꼴을 PDF 문서에 포함하는 것을 건너뛰도록 Aspose.Words를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

이 모드는 출력 PDF에서 글꼴의 정확한 모양을 유지하면서 동일한 플랫폼에서 문서를 보려는 경우에 가장 유용합니다.

{{% alert color="primary" %}}

이 설정은 ANSI(Windows-1252) 인코딩 텍스트에만 적용됩니다. ANSI가 아닌 텍스트를 PDF에 작성하려면 해당 글꼴을 포함해야 합니다.

{{% /alert %}}
