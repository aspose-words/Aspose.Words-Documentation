---
title: 새로운 소식
second_title: Python via .NET용 Aspose.Words
articleTitle: Python via .NET용 Aspose.Words의 새로운 기능
linktitle: Python via .NET용 Aspose.Words의 새로운 기능
type: docs
description: "Python via .NET용 Aspose.Words는 매일 확장되고 향상됩니다. 이 페이지에서는 제품의 가장 크고 흥미로운 기능에 대해 알아볼 수 있습니다."
weight: 10
url: /ko/python-net/what-s-new-in-aspose-words-for-python-net/
---

이 페이지에서는 최근 릴리스에 도입된 가장 흥미로운 새로운 Aspose.Words 기능을 설명합니다.

## Python via .NET 24.1, 24.2, 24.3, 24.4 용 Aspose.Words

Aspose.Words 24.1은 획 색상 관리 환경을 개선하고 OLE 개체를 향상시키며 새로운 참고문헌 소스 공개 API를 도입합니다.

Aspose.Words 24.2는 차트 API, 스타일 관리 및 LINQ 옵션을 확장했습니다. 이 버전의 Aspose.Words에서는 렌더링 중에 SvgSaveOptions를 지정할 수 있는 기능을 도입했으며, Markdown 파일을 더 유연하게 로드하고 각주 및 끝맺음을 위한 참조 텍스트 작업도 가능합니다.

Aspose.Words 24.3은 새로운 TIFF 리더/라이터와 WMF 메타파일의 이진 래스터 작업 에뮬레이션을 소개합니다. Aspose.Words 24.3은 또한 Charts API를 계속 확장하고 있습니다.

Aspose.Words 24.4은 형식 저장, 일부 렌더링 옵션, 디지털 서명 작업을 개선합니다.

### 지원되는 형식 <sup>24.4</sup>

Aspose.Words .NET Framework 4.6.2 이상에서는 현대적인 **WebP** 이미지 형식을 지원합니다. 이제 WebP 이미지를 문서에 읽고 삽입하며 WebP 형식으로 이미지를 저장할 수 있습니다.

WebP는 현재 .NET Standard 및 .NET Framework v4.6.2 이상에서만 사용할 수 있습니다.

### 렌더링 및 인쇄

#### 획 색상 제어 <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) 클래스는 획 색상 관리와 관련된 새로운 공용 속성 세트[fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) 및 [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) 및 [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/)로 확장되었습니다.

#### DrawingML Charts API 확장 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API**가 계속 확장되고 있습니다.

#### @font-face 규칙에 선언된 글꼴 포함 <sup>24.4</sup>

새로운 [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/) 속성을 추가하여 결과 문서의 글꼴 정의에 @font-face 규칙에 선언된 글꼴을 포함하는 기능이 추가되었습니다.

#### 글로우 및 반사 형식과 작업 <sup>24.4</sup>

도형 객체에 대한 글로우 및 반사 형식 작업 기능이 구현되었습니다.

### 문서 로드 및 저장

#### 렌더링 중에 SvgSaveOptions 지정 <sup>24.2</sup>

[ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) 및 [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) 메서드를 사용하여 렌더링 중에 [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/)를 지정하는 기능이 추가되었습니다.

#### Markdown 파일 로드 시 빈 줄 유지 <sup>24.2</sup>

Markdown 파일을 로드할 때 빈 줄을 유지하는 기능이 추가되었습니다.

#### 새로운 TIFF 리더/라이터 <sup>24.3</sup>

Aspose.Words를 위한 새로운 TIFF 리더/라이터가 개발되었습니다.  Aspose.Words for .NET 24.3은 JPEG 및 Old JPEG 압축 유형의 TIFF 이미지를 읽는 기능을 추가하고 읽기 및 쓰기 작업의 품질을 크게 향상시켰습니다.

### 다른

* 새 **TextBoxControl** 클래스에 새 **Text** 속성을 추가하여 `TextBox` OLE 컨트롤의 텍스트를 수정하는 기능이 도입되었습니다. <sup>24.1</sup>
* 참고문헌 소스 공개 API는 새 클래스 및 열거형과 함께 새 네임스페이스 [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/)를 추가하고 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 클래스에 새 [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) 속성을 추가하여 구현되었습니다. <sup>24.1</sup>
* 증강된 스타일 관리를 위해 [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) 클래스에 새로운 공용 속성 [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/), [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) 이 추가되었습니다. <sup>24.2</sup>
* 각주 및 끝맺음에 대한 실제 참조 마크 텍스트를 검색하는 기능이 [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) 속성 및 [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) 메서드를 통해 향상되었습니다. <sup>24.2</sup>
* WMF 메타파일에 대한 이진 래스터 작업의 에뮬레이션이 구현되었습니다. <sup>24.3</sup>
* 새로운 [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) 클래스와 [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/), [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/) 클래스에 새로운 공용 멤버를 추가함으로써 **SaveOptions** 내에서 문서의 서명 옵션을 정의하는 기능이 활성화되었습니다. <sup>24.4</sup>

{{% alert color="primary" %}}

[Python via .NET 24.1 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 24.2 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 24.3 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 24.4 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## Python via .NET 23.9, 23.10, 23.11, 23.12용 Aspose.Words

Aspose.Words 23.9는 렌더링 옵션, 메타파일 렌더링 에뮬레이션 및 markdown 저장 옵션을 확장합니다.

Aspose.Words 23.10은 렌더링을 개선하고 문서 로드 및 저장 옵션을 확장하며 사용자가 새로운 방식으로 문서를 병합할 수 있도록 합니다.

Aspose.Words 23.11은 추가 옵션을 통해 차트 범례의 개정판, XLSX 형식 및 글꼴 작업을 향상시킵니다.

Aspose.Words 23.12에는 PDF 및 OOXML 문서 작업을 위한 새로운 속성과 열거형이 도입되었으며 WebP 이미지도 지원됩니다.

### 렌더링 및 인쇄

#### DrawingML Charts <sup>23.9</sup> 에서 축 제목 사용자 정의

DrawingML 차트에서 축 제목을 사용자 정의하는 기능은 새로운 공개 클래스 [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) 및 [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) 속성의 구현을 통해 도입되었습니다.

####  단락 내에서 글꼴의 수직 위치 결정 <sup>23.9</sup>

이제 새로운 공개 [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) 속성과 새로운 [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) 열거형을 사용하여 단락 내에서 글꼴의 수직 위치를 정의할 수 있습니다.

#### 전경색 제어 <sup>23.10</sup>

수정자 없이 전경색을 검색하는 기능이 **BaseForeColor** 속성을 통해 [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) 및 [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) 클래스에 추가되었습니다.

#### 차트 기능 확장 <sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) 및 [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) 클래스의 기능이 새로운 메서드와 속성으로 확장되었습니다.

#### 이미지를 자동으로 조정하고 모양에 맞추기 <sup>23.10</sup>

새로운 [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) 방법을 통해 특정 모양 내에서 이미지를 자동으로 조정하고 맞추는 간단한 방법이 제공되었습니다.

#### DrawingML 차트 범례 항목의 기본 글꼴 형식 <sup>23.11</sup>

DrawingML 차트의 범례 항목에 대한 기본 글꼴 형식을 지정하는 기능이 [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) 속성을 통해 추가되었습니다. 이 기능은 차트 요소의 모양을 더욱 간소화하고 일관되게 만들어 전체적인 문서 미학을 향상시킵니다.

#### Reader <sup>23.12</sup> 에서 PDF를 열 때 페이지 레이아웃 지정

PDF 리더에서 문서를 열 때 사용할 페이지 레이아웃을 지정하는 기능은 [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) 클래스에 대한 새로운 [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) 속성 도입과 새로운 [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) 열거 도입을 통해 추가되었습니다.

### 문서 로드 및 저장

#### Markdown <sup>23.9</sup> 에서 이미지 URI를 구성하기 위해 폴더 이름 지정

Markdown 문서에 기록된 이미지 URI를 구성하는 데 사용되는 폴더의 이름을 지정할 수 있는 [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) 속성을 포함하여 [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) 클래스가 확장되었습니다.

#### PDF 출력 크기 줄이기 <sup>23.10</sup>

[optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) 설정을 활용할 때 출력 크기를 줄이기 위한 다양한 PDF 렌더링 최적화가 구현되었습니다.

#### TXT 문서 로드 시 하이퍼링크 인식 <sup>23.10</sup>

TXT 문서 로딩 시 하이퍼링크를 인식하는 기능이 새로운 [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) 속성을 추가하여 구현되었습니다.

### 다른

- 특히 WMF 펜 너비와 EMF 코스메틱 펜 너비에 대해 래스터화 크기를 결정하는 메타파일 렌더링 에뮬레이션이 구현되었습니다. 이를 위해 **ScaleWmfFontsToMetafileSize** 속성을 [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) 속성으로 대체하고 [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) 속성을 추가했습니다. <sup>23.9</sup>
- 현재 커서 위치에서 한 문서를 다른 문서에 삽입하는 단순화된 방법이 [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) 방법을 사용하여 도입되었습니다. <sup>23.10</sup>
- 새로운 [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) 속성 도입을 통해 스타일 속성에 액세스하고 수정하는 기능이 추가되었습니다. <sup>23.10</sup>
- [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) 클래스의 메소드에 일반 유형 매개변수가 추가되었습니다. <sup>23.10</sup>
- 새로운 [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) 열거 유형과 새로운 [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) 속성을 통해 문서의 모든 섹션을 동일한 XLSX 워크시트에 쓰는 기능이 제공되었습니다. <sup>11.23</sup>
* OOXML 문서에 ZIP64 형식 확장이 사용되는 방식을 제어하는 방법은 `OoxmlSaveOptions` 클래스의 새로운 Zip64Mode 속성과 새로운 Zip64Mode 열거를 통해 구현되었습니다. <sup>12.23</sup>
* WebP 이미지 지원이 도입되었습니다. 이 기능은 .NetStandart 및 .NET6+ 버전에서만 사용할 수 있습니다. <sup>12.23</sup>

{{% alert color="primary" %}}

[Python via .NET 23.9용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.10용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.11용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.12용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## Python via .NET 23.5, 23.6, 23.7, 23.8용 Aspose.Words

Aspose.Words 23.5는 차트 시리즈 데이터 작업 기능과 ODT 문서 작업 기능을 향상시켰을 뿐만 아니라 머리글/바닥글 및 텍스트 줄 바꿈도 개선했습니다.

Aspose.Words 23.6은 렌더링 옵션을 확장하고, 새로운 내보내기 형식을 추가하고, LINQ 보고 및 LowCode 도구를 개선합니다.

Aspose.Words 23.7은 보고 기능을 강화하고 새로운 내보내기 형식을 추가하며 테이블 및 디지털 서명 작업에 대한 변경 사항을 도입합니다.

Aspose.Words 23.8은 다양한 형식의 기능을 확장하고, 렌더링을 개선하며, 필드 작업을 위한 새로운 옵션을 추가합니다

### 지원되는 형식

* 버전 23.6부터 XLSX 형식으로 문서를 저장할 수 있습니다. 이제 문서를 Excel 형식으로 변환할 수 있습니다. <sup>23.6</sup>

* 23.7 버전부터 문서 페이지나 도형을 EPS 형식으로 저장할 수 있습니다. <sup>23.7</sup>

### 새로운 형식 기능

- MOBI 문서의 목차(TOC)를 자동으로 생성하는 기능이 도입되었습니다. <sup>23.8</sup>
- [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) 생성자가 [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions)로 확장되었습니다. <sup>23.8</sup>
- EMF 메타파일의 세로 텍스트 모양이 구현되었습니다. <sup>23.8</sup>

### 표현

#### 차트 시리즈 데이터 가져오기 및 수정 <sup>23.5</sup>

차트 시리즈 데이터를 가져오고 수정하는 기능은 다음을 추가하여 제공되었습니다

- 새로운 클래스: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- 새로운 열거형 유형: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### 고급 타이포그래피 <sup>23.6</sup> 지원

WMF, EMF 및 EMF+ 렌더링에 고급 타이포그래피에 대한 지원이 추가되었습니다.

#### 페이지의 컬러 콘텐츠 <sup>23.6</sup>

페이지 색상 여부를 나타내는 공용 속성 [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/)가 추가되었습니다.

#### 차트 데이터 레이블 형식 지정 <sup>23.6</sup>

차트 데이터 레이블에 대한 채우기, 획 및 설명선 형식을 설정하는 기능이 구현되었습니다.

### Mail Merge 및 보고

#### LINQ 보고 엔진 <sup>23.6</sup> 용 동적 HTML 삽입

LINQ 보고 엔진에 대한 동적 HTML 삽입의 새로운 방법이 추가되었습니다.

#### Mustache 태그 지원 <sup>23.7</sup>

이제 Mustache 태그가 [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) 및 [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) 방법에서 지원됩니다.

#### 렌더링된 이미지의 크기 지정 <sup>23.8</sup>

렌더링된 이미지의 크기를 픽셀 단위로 지정하기 위한 새로운 공용 속성 [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/)가 도입되었습니다.

#### JSON 문자열 값에 대한 공백 유지 - LINQ <sup>23.8</sup>

JSON 문자열 값의 공백을 보존하기 위해 LINQ 보고 엔진에 옵션이 추가되었습니다.

### <sup>LowCode23.6</sup>

다양한 유형의 문서를 단일 출력 문서로 병합하기 위한 새로운 LowCode 방법이 추가되었습니다.

### 다른

- 머리글/바닥글 텍스트 줄바꿈 지원이 구현되었습니다. <sup>23.5</sup>
- [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) 방식을 통해 ODT 문서에서 디지털 서명을 제거하는 기능이 추가되었습니다. <sup>23.5</sup>
- 음성 안내 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)의 기본 및 루비 텍스트를 얻기 위한 공공 속성 [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/)가 추가되었습니다. <sup>23.5</sup>
- 새로운 [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) 속성을 도입하여 디지털 서명된 문서에서 바이트 배열로 디지털 서명 값을 검색하는 기능이 추가되었습니다. <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) 및 [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) 클래스가 새로운 공개 멤버([Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) 및 [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/))로 확장되었습니다. <sup>23.7</sup>

{{% alert color="primary" %}}

[Python via .NET 23.5용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.6용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.7용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.8용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## Python via .NET 23.1, 23.2, 23.3, 23.4용 Aspose.Words

Aspose.Words 23.1은 래스터 작업 에뮬레이션 성능을 향상시킬 뿐만 아니라 문서 내보내기 및 렌더링 품질도 향상시킵니다.

Aspose.Words 23.2에서는 MOBI 형식으로 문서를 저장하고 차트 렌더링을 개선하며 문서 모양 세부 사항을 눈에 띄게 변경했습니다.

Aspose.Words 23.3은 새로운 속성으로 문서 가져오기 및 저장 기능을 향상시키고 배경색과 전경색, 방사형 그라데이션으로 작업 품질도 향상시킵니다.

Aspose.Words 23.4는 일부 매개변수의 계산과 테이블 및 주변 텍스트의 위치 지정을 개선합니다.

### 성능 개선

#### 래스터 작업 에뮬레이션 <sup>23.1</sup>

메타파일을 사용한 래스터 작업 에뮬레이션의 성능과 품질이 크게 향상되었습니다.

### 지원되는 형식

#### MOBI <sup>23.2</sup> 로 내보내기

버전 23.2부터 MOBI 형식(PRC, AZW - Amazon Kindle의 자체 전자책 파일 형식이라고도 함)으로 문서를 저장할 수 있습니다. 이제 MOBI 문서를 로드할 수 있을 뿐만 아니라 파일을 MOBI 형식으로 내보낼 수도 있습니다.

### 표현

#### 음영 테마 색상 작업 <sup>23.1</sup>

음영 테마 색상으로 작업하는 기능이 구현되었습니다.

#### DML 차트에서 R 제곱 계수 지원 <sup>23.1</sup>

렌더링 시 DML 차트 추세선 레이블에 R 제곱 계수 지원이 추가되었습니다.

#### 차트 렌더링 개선 사항 <sup>23.2</sup>

23.2부터 차트 렌더링이 크게 개선되었습니다.

#### 배경색과 전경색 제어 <sup>23.3</sup>

[Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) 클래스는 배경색 및 전경색과 관련된 새로운 공용 속성 세트([fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) 및 [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) 및 [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/))로 확장되었습니다.

#### `SkiaSharp` 네이티브 셰이더 <sup>23.3을</sup> 사용한 방사형 그라디언트

.NET Standard용 `SkiaSharp` 기본 셰이더를 사용한 방사형 그래디언트 렌더링이 구현되었습니다.

#### 표와 주변 텍스트 사이의 거리 <sup>23.4</sup>

[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 클래스에 [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) 및 [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/)과 같은 새로운 속성을 도입하여 테이블과 주변 텍스트 사이의 거리를 설정하는 기능이 추가되었습니다.

### 문서 로드 및 저장

#### AZW3 문서 <sup>23.1</sup> 용 `TOC` 생성

[epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/) 속성을 사용하여 AZW3 문서에 대한 `TOC`(목차)를 생성하는 기능이 추가되었습니다.

#### 목록 항목을 Markdown <sup>23.1</sup> 로 내보내기

[MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) 클래스에 [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) 속성을 추가하여 목록 항목을 Markdown 형식으로 내보내기를 제어하는 방법이 제공되었습니다.

#### 문서 저장 진행 알림 <sup>23.3</sup>

MOBI 및 AZW3 형식에 대한 진행 알림 저장이 구현되었습니다.

#### 문장 및 단어 간격 조정 <sup>23.3</sup>

[adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) 속성을 도입하여 문서 가져오기 시 문장 및 단어 간격을 자동으로 조정할지 여부를 지정하는 기능이 추가되었습니다.

### 다른

- [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) 속성 구현 <sup>23.2를</sup> 통해 문서의 문자 간격 조정을 지정하는 기능이 추가되었습니다
- 단어수 통계에 텍스트박스, 각주, 미주 포함 여부를 Aspose.Words에 지시하는 방법을 [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) 속성 추가 <sup>23.2</sup> 에서 제공합니다
- 스타일이 적절한 값에 따라 자동으로 재정의되는지 여부를 지정할 수 있는 문서 스타일에 대한 새로운 옵션이 [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) 속성 <sup>23.2</sup> 를 통해 도입되었습니다
- [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) 속성 <sup>23.4를</sup> 사용하여 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)가 발음 안내 실행인지 확인하는 기능이 추가되었습니다
- [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) 클래스를 도입하고 [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) 속성을 추가하여 콤보 차트의 시리즈 및 축을 사용하는 간단한 방법이 구현되었습니다 <sup>. 23.4</sup>
- 모양 상대 위치 지정 및 크기 조정과 연결된 새로운 공용 속성이 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 클래스 <sup>23.4</sup> 에 추가되었습니다
- 최신 버전의 Microsoft Word <sup>23.4</sup> 에 따라 자동 텍스트 색상 해상도에 대한 색상 밝기 계산의 정확성과 성능이 향상되었습니다

{{% alert color="primary" %}}

[Python via .NET 23.1용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.2용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.3용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.4용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## Python via .NET 22.9, 22.10, 22.11, 22.12용 Aspose.Words

Aspose.Words 22.9는 문서 로드 및 저장 옵션을 확장하고 일부 다른 옵션과의 상호 작용을 개선했습니다.

Aspose.Words 22.10은 찾기 및 바꾸기 옵션을 개선하고 OLE 개체를 향상시키며 목록 기능을 확장합니다.

Aspose.Words 22.11은 이미 친숙한 개체인 OLE 및 구조화된 문서 태그를 사용하여 더욱 편리하게 작업할 수 있는 새로운 옵션으로 기능을 확장합니다.

Aspose.Words 22.12는 렌더링 기능을 향상시키고 문서를 로드/저장할 때 여백 작업을 위한 옵션을 도입합니다.

### 성능 개선 <sup>22.12</sup>

사양 준수를 유지하기 위해 PDF로 렌더링할 때 그래픽 상태 중첩 깊이를 크게 줄이는 최적화가 도입되었습니다.

### 렌더링 및 인쇄

#### 새로운 테두리 렌더링 속성 <sup>22.12</sup>

새로운 공공 자산 [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) 및 [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/)가 도입되었습니다.

#### DrawingML 렌더링 <sup>22.12</sup> 의 선형 추세선 공식

DrawingML 차트에 대한 선형 추세선 수식 렌더링이 구현되었습니다.

#### Google Noto 글꼴 <sup>22.12</sup> 에 대한 글꼴 대체 설정

Google Noto 글꼴에 대해 미리 정의된 글꼴 대체 설정이 업데이트되었습니다.

### 문서 로드 및 저장

#### PDF 크기를 줄이기 위한 캐시 머리글 또는 바닥글 모양 <sup>22.9</sup>

새로운 **CacheHeaderFooterShapes** 속성을 추가하여 출력 PDF 파일의 크기를 줄이기 위해 머리글/바닥글 모양을 캐시하는 기능이 구현되었습니다.

#### 문서 로드 시 자동 번호 매기기 감지 <sup>22.9</sup>

텍스트 로딩 시 [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) 속성을 지정하는 기능은 [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) 클래스의 확장을 통해 구현되었습니다.

#### 특정 여백 유형 지정 <sup>22.12</sup>

특정 섹션에 대해 특정 **Margin** 유형을 지정하는 기능이 구현되었습니다.

### 검색 및 비교 <sup>22.10</sup>

찾기 및 바꾸기 옵션 시 [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)를 무시하는 기능은 [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) 클래스에 새 [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) 속성을 추가하여 구현되었습니다.

### 다른

- FieldEQ를 OfficeMath로 가져오는 새로운 기능이 추가되었습니다. <sup>22.9</sup>
- 행 수준에서 Group 유형의 구조화된 문서 태그 생성이 허용되었습니다. <sup>22.9</sup>
- 이제 문서를 HTML로 변환할 때 OLE 개체 및 컨트롤이 메타파일 이미지로 처리됩니다. <sup>22.10</sup>
- [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) 클래스에 새로운 **HasSameTemplate** 메소드를 도입하여 비교 목록과 동일한 템플릿에서 특정 목록이 생성되었는지 확인하는 기능이 추가되었습니다. <sup>22.10</sup>
- [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) 유형의 새로운 구조화된 문서 태그를 생성하는 기능이 추가되었습니다. <sup>11.22</sup>
- 사용자가 소스 문서의 OLE 첨부 파일을 출력 PDF 문서에 포함할 수 있는 새로운 **EmbedAttachments** 속성이 도입되었습니다. <sup>11.22</sup>

{{% alert color="primary" %}}

[Python via .NET 22.9용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 22.10용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 22.11용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 22.12용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## Python via .NET 22.5, 22.6, 22.7, 22.8용 Aspose.Words

Aspose.Words 22.5에는 새로운 로딩 형식과 새로운 인쇄 페이지 크기에 대한 지원이 도입되었으며 일부 렌더링 옵션도 개선되었습니다.

Aspose.Words 22.6은 PDF를 다른 형식으로 변환하는 가능성을 확장할 뿐만 아니라 DrawingML 및 단색 텍스트 채우기 효과를 사용한 작업을 개선합니다.

Aspose.Words 22.7은 렌더링 기능 작업 가능성을 향상시키고 HTML 가져오기 및 PDF로 내보내기 작업을 위한 새로운 기능도 추가합니다.

Aspose.Words 22.8은 새로운 내보내기 형식을 도입하고 다양한 렌더링 알고리즘을 개선합니다.

API는 보다 유연하고 편리한 개발을 위해 향상되었습니다.

### 지원되는 형식

* **LoadFormat** 열거형에 새 값을 추가하여 EPUB 및 XML 문서 로드 지원이 도입되었습니다. 버전 22.5부터 EPUB 및 XML 문서를 Aspose.Words 문서 모델로 로드하고 이를 모든 [지원되는 문서 형식](/words/ko/python-net/supported-document-formats/)로 변환할 수 있습니다. <sup>22.5</sup>
* 22.8 버전부터 Amazon Kindle의 독자적인 전자책 파일 형식인 AZW3 형식(KF8 형식의 다른 이름)으로 문서를 저장할 수 있습니다. 이제 AZW3 문서를 로드할 수 있을 뿐만 아니라 파일을 본질적으로 컴파일된 EPUB인 AZW3 형식으로 내보낼 수도 있습니다. <sup>22.8</sup>

### 렌더링 및 인쇄

#### 새로운 인쇄 크기 <sup>22.5</sup>

[PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/) 열거에 새로운 값을 도입하여 "Envelope No. 10" 인쇄 페이지 크기에 대한 지원이 추가되었습니다.

#### MathML 수식 렌더링 <sup>22.5</sup>

MathML 수식 주변의 테두리 상자 렌더링 및 이러한 수식에 대한 문자를 렌더링할 때 글꼴 감지 기능이 개선되었습니다.

#### DML 차트 개선 <sup>22.6</sup>

DrawingML 차트 공개 API는 그라데이션, 텍스처 및 패턴 채우기를 지원하도록 확장되었습니다.

#### Glyph는 OpenType <sup>22.7</sup> 에 대한 구문 분석 개요를 설명합니다

OpenType(CFF) 글꼴에 대한 Aspose.Words 자체 glyph 개요 구문 분석이 구현되었습니다.

이전에는 CFF(OpenType) 글꼴에 대한 glyph 구문 분석이 GDI+를 통해 수행되었습니다. 이제 Java, .NET Standard 플랫폼, Linux, macOS 등 GDI+를 사용할 수 없는 경우에도 작동합니다. Glyph 개요 구문 분석은 WordArt, 텍스트 효과, 일부 Office 수학 기능 등과 같은 특정 경우에 필요합니다.

#### 모양 그림자 서식 설정 <sup>22.7</sup>

새로운 [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/) 속성을 추가하여 모양 개체의 그림자 서식을 설정하는 기능이 제공되었습니다.

#### 표 <sup>22.8</sup> 의 셀 간격 지원

이제 레이아웃 엔진이 크게 개선되었습니다. 테이블의 매우 복잡한 셀 간격 메커니즘이 구현되었습니다.

#### 기호에 대한 글꼴 대체 <sup>22.8</sup>

기호에 대한 글꼴 대체가 개선되었습니다.

#### 차트 축 레이블 회전 알고리즘 <sup>22.8</sup>

차트 축 레이블의 회전 알고리즘이 개선되었습니다.

### 문서 로드 및 저장

#### 레이아웃 모델 <sup>22.6</sup> 없이 PDF를 고정 페이지 형식으로 로드 및 변환

PDF 문서를 높은 충실도와 성능으로 고정 페이지 형식으로 로드하고 변환하는 기능이 구현되었습니다.

#### 새로운 HTML 가져오기 모드 <sup>22.7</sup>

[HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/) 열거형에 새 값을 추가하여 블록 수준 요소에 대한 새로운 HTML 가져오기 모드가 도입되었습니다.

#### WCAG 2.0 <sup>22.7을</sup> 준수하는 PDF/UA-1로 변환

WCAG 2.0과 호환되는 PDF/UA-1 형식으로 문서를 변환하는 지원이 추가되었습니다.

따라서 고객이 액세스 가능한 Word 문서를 가지고 있고 변환 세부 사항을 언급하는 Aspose.Words를 통해 PDF/UA-1로 변환하면 출력은 WCAG 2.0과 호환됩니다.

WCAG 또는 웹 콘텐츠 접근성 지침은 W3C가 전 세계 개인 및 조직과 협력하여 개발한 일련의 지침입니다. 이제 Aspose.Words를 사용하면 문서를 WCAG 2.0 호환 PDF 문서를 작성하는 데 적합한 출력 PDF/UA-1 형식으로 변환할 수 있습니다.

WCAG 2.0에는 PDF/UA-1 사양에 지정되지 않은 두 가지 추가 요구 사항이 있다는 점은 주목할 가치가 있습니다

- 대비 요구 사항
- 멀티미디어 콘텐츠 태그 요구 사항

그러나 두 요구 사항 모두 Word에서 PDF로 변환하는 경우에는 관련이 없습니다.

### 다른

MS Word 동작을 모방하는 단색 텍스트 채우기 효과 상속 예외가 구현되었습니다. <sup>22.6</sup>

{{% alert color="primary" %}}

[Python via .NET 22.5용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 22.6용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 22.7용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 22.8용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## Python via .NET 22.3, 22.4용 Aspose.Words

Aspose.Words 22.3은 PDF 및 TXT 형식 작업 가능성을 확장하고 일부 기존 알고리즘 및 엔진의 작업을 개선합니다.

Aspose.Words 22.4는 PDF 기능을 향상시켰습니다. 이제 PDF/A-4 형식으로 파일을 저장할 수 있으며 PDF 출력에서 기타 여러 가지 개선 사항을 얻을 수 있습니다. 동시에 Aspose.Words 22.4는 DML 차트 작업, Photoshop 메타데이터 읽기, HTML 블록 수준 요소 가져오기 등의 추가 기능을 제공합니다.

API는 보다 유연하고 편리한 개발을 위해 향상되었습니다.

### 지원되는 기능

Aspose.Words 22.4부터 Python 3.10에 대한 지원이 추가되었습니다.

### 성능 개선

렌더링 시 글꼴 캐시 초기화 프로세스 속도를 높이기 위해 이전에 저장된 글꼴 검색 캐시를 로드하는 기능이 구현되었습니다. 이제 귀하의 솔루션이 더욱 빠르게 작동할 것입니다.

### 지원되는 형식

AZW3 형식(KF8은 해당 형식의 다른 이름)으로 문서를 로드하는 기능이 추가되었습니다. 이제 AZW3 문서를 로드하고 지원되는 다른 형식으로 변환할 수 있습니다.

### 표현

#### MathML 수식 렌더링

MathML 수식의 연산자 렌더링이 개선되었습니다.

#### DML 차트 개선

DML 차트가 다음과 같이 개선되었습니다

* DML 차트 축 스케일링 알고리즘이 MS Word와 동일하게 개선되었습니다

* 차트 API를 더욱 포괄적으로 만들기 위해 DrawingML 차트 범례 항목을 조작하는 기능이 제공되었습니다
* DrawingML 차트가 연결된 xls/xlsx 파일 이름을 지정하는 기능이 구현되었습니다

#### PDF/A-4 규격을 준수하여 PDF로 렌더링

[PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) 열거형([PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4))에 새로운 값을 추가하여 PDF/A-4 규격을 준수하는 PDF로 렌더링이 추가되었습니다. 이 옵션은 개정된 적합성 수준을 가정합니다. 일반 PDF/A-4 적합성은 이전 버전의 적합성 수준 U와 동일하며 수준 A 적합성은 제거됩니다.

#### JPEG에서 Photoshop 메타데이터 해상도 읽기

렌더링 시 이미지 크기 조정이 잘못되는 흥미로운 문제를 해결하기 위해 JPEG 이미지에서 Photoshop 메타데이터 해상도를 읽는 기능이 구현되었습니다.

#### 라틴어 텍스트가 단어 중간에 줄바꿈되도록 허용

렌더링 시 라틴어 지원을 더욱 향상시키기 위해 "라틴어 텍스트가 단어 중간에 줄바꿈되도록 허용" 기능에 대한 지원이 구현되었습니다.

### 문서 로드 및 저장

#### 문서를 로드할 때 스타일 동작 제어

문서를 가져올 때 충돌하는 스타일의 동작을 제어하기 위해 새로운 옵션 [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/)가 도입되었습니다.

#### 내보낼 때 모양을 SVG로 변환

[export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/) 속성을 추가하여 HTML, MHTML 또는 EPUB로 내보낼 때 모양을 SVG 이미지로 변환하는 기능이 제공되었습니다.

#### PDF 2.0으로 저장 및 PDF 출력 개선

[PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) 열거에 새로운 값을 추가하여 문서를 PDF 2.0으로 저장하는 기능과 PDF 출력에 대해 요청된 몇 가지 다른 개선 사항이 도입되었습니다.

#### 새로운 HTML 가져오기 모드

Microsoft Word 동작을 모방하기 위해 HTML 블록 수준 요소에 대한 새로운 가져오기 모드가 구현되었습니다.

### 다른

* 콘텐츠 컨트롤의 OOXML을 가져와 문자열에 저장하는 기능이 도입되었습니다.
* 가져올 때 PDF 문서의 비표준 각주 인식이 추가되었습니다.
* 해당 필드와 관련된 사용자 정의 필드 데이터를 가져오는 기능이 추가되었습니다.
* Microsoft Word 비교 메커니즘의 심층 분석에 의존하는 테이블 비교 알고리즘이 개선되었습니다.
* LINQ 보고 엔진의 주석 구문이 제공되었습니다.

{{% alert color="primary" %}}

[Python via .NET 22.3용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 22.4용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## 또한보십시오

{{% alert color="primary" %}}

이 페이지에는 지난 2년간의 최신 출시 소식이 포함되어 있습니다. 이전 릴리스에 대한 자세한 내용은 관련 섹션의 [릴리즈 노트'](/words/python-net/release-notes/) 페이지를 참조하세요.

{{% /alert %}}