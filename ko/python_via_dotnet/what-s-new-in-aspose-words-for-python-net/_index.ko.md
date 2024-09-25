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

## .NET 24.9를 통한 Python용 Aspose.Words

Aspose.Words 24.9는 DocumentBuilder를 통한 그룹 모양 삽입 및 StructuredDocumentTag 삽입을 도입하고, 그라데이션을 사용하여 방사형 차트 렌더링을 개선하고, XAdES-EPES 지원을 통해 디지털 서명을 개선하고, Markdown 밑줄 인식을 추가하고, 각주/미주 구분 기호에 대한 액세스를 제공합니다.

### 렌더링 및 인쇄

#### 방사형 차트의 그라데이션

방사형 차트의 그라데이션 렌더링이 구현되었습니다.

### 문서 변환, 로드 및 저장

#### Markdown 파일을 로드할 때 밑줄 서식 지정

Markdown 문서를 로드할 때 밑줄 서식을 인식하는 옵션은 새로운 공개 속성 [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/)을 추가하여 통합되었습니다.

### 디지털 서명

#### XAdES-EPES로 문서 서명

XAdES-EPES 수준 XML-DSig 서명으로 문서에 서명하는 기능은 새로운 공개 속성 [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/)과 새로운 공개 열거형 [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/)을 추가하여 도입되었습니다.

### 기타

* 새로운 공개 메서드 [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/)가 셰이프를 그룹화하는 데 추가되었습니다.
* 새로운 공개 메서드 [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/)가 문서에 **StructuredDocumentTags**를 삽입하는 데 추가되었습니다.
* 몇 가지 공개 클래스와 속성을 추가하여 각주/미주 구분 기호에 대한 공개 액세스가 제공되었습니다.

{{% alert color="primary" %}}

[Python via .NET 24.9 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## Python via .NET 24.5, 24.6, 24.7, 24.8 용 Aspose.Words

Aspose.Words 24.5는 어셈블리 옵션을 확장하고 렌더링 기능을 개선하며 기타 옵션을 확장합니다.

Aspose.Words 24.6은 렌더링 옵션을 개선하고, 검색 및 비교 기능을 향상시키며, 기타 여러 기능을 확장합니다.

Aspose.Words 24.7은 ActiveX 작업 방식을 변경하고 렌더링 기능을 확장하며 Markdown 및 XLSX 형식으로 내보내기도 합니다.

Aspose.Words 24.8은 축 레이블을 정확하게 제어하여 차트 사용자 지정을 강화하고, 글꼴 관리를 확장하고, 문서 구조 처리를 개선하고, HTML/XAML 내보내기, PDF 기능, 문서 변환 및 디지털 서명을 위한 새로운 기능을 추가합니다.

### 지원되는 형식

버전 24.7부터 장애가 있는 사용자의 접근성을 보장하기 위해 PDF/UA-2로 내보내기가 지원됩니다.

### 렌더링 및 인쇄

#### Charts, Shapes 및 DrawingML 의 변경 사항 <sup>24.5</sup>

* 이미지로 제한되었던 이전 기능을 확장하여 SVG 그래픽에 대한 DrawingML 효과 렌더링이 구현되었습니다.
* [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) 및 [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/)  클래스와 [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) 속성.
* [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/)클래스를 추가하여 도형의 SoftEdge 효과를 조작하는 기능이 구현되었습니다.
* 도형의 조정 값을 수정하는 기능은 **AdjustmentCollection** 및 **Adjustment** 공개 클래스 및 [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) 재산.

#### 차트, 도형, 그림의 변경 <sup>24.6</sup>

* 차트 기능이 향상되었습니다. 이제 *트리맵*, *선버스트*, *히스토그램*, *파레토* 차트, *상자 및 수염* 차트, *폭포*, *깔때기*를 포함하여 더욱 다양한 차트를 만들 수 있습니다. 이를 통해 데이터를 더욱 다양하고 유익한 방식으로 시각화할 수 있습니다.
* 그림자 서식의 색상 제어가 개선되었습니다. 그림자 색상에 액세스하여 문서의 모양을 보다 정확하게 제어할 수 있습니다.
* 배경 렌더링 성능 향상이 향상되었습니다. 기본 타일링 기술 덕분에 작은 요소가 포함된 배경의 렌더링 속도를 크게 높일 수 있습니다.
* 모양에 사실적인 그라데이션이 추가되었습니다. 이제 비선형 그라데이션으로 DML 모양을 만들어 Microsoft Word의 시각적 스타일을 모방하여 더욱 세련된 모양을 만들 수 있습니다.

#### 차트 데이터 라벨 사용자 정의 <sup>24.7</sup>

**방향** 및 **회전**과 같은 차트 데이터 라벨을 맞춤설정하는 기능이 추가되었습니다.

#### 목록 수준에 대한 사용자 정의 숫자 스타일 <sup>24.7</sup>

공용 속성 [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/)에 대한 설정자가 추가되었습니다. 이제 목록 수준에 대한 사용자 정의 숫자 스타일을 정의할 수 있습니다.

#### ActiveX 작업 시 변경 사항 <sup>24.7</sup>

* 이제 ActiveX 개체의 속성을 수정하여 해당 동작을 더 효과적으로 제어할 수 있습니다.
* 라디오 버튼 ActiveX 컨트롤의 값을 수정하여 동적 상호 작용을 가능하게 하는 기능이 추가되었습니다.
* ActiveX 체크박스를 "선택" 또는 "선택 해제"로 전환하는 기능이 추가되었습니다.

#### 차트 축 눈금 레이블 방향 및 회전 제어 <sup>24.8</sup>

차트 축 눈금 레이블의 방향 및 회전을 정확하게 제어하여 더욱 편리한 차트 사용자 지정이 가능해졌습니다. [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) 클래스가 새로운 [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) 및 [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/) 속성으로 확장되었습니다.

#### 백슬래시를 엔 기호로 바꾸기 <sup>24.8</sup>

백슬래시 문자를 엔 기호로 바꾸기 위한 이전 버전과의 호환되는 HTML 및 XAML 내보내기가 개선되었습니다. 이를 달성하기 위해 [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) 및 [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/) 클래스에 **replace_backslash_with_yen_sign** 속성이 추가되었습니다.

#### PDF로 내보낼 때 SDT 태그를 양식 필드 이름으로 사용 <sup>24.8</sup>

SDT 태그를 양식 필드 이름으로 사용하는 기능이 포함된 PDF 내보내기가 [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) 클래스에 새로운 [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) 속성을 추가하여 향상되었습니다.

### 문서 변환, 로드 및 저장

#### 마크다운 형식으로 링크 내보내기 <sup>24.7</sup>

[link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/) 속성 구현을 통해 Markdown 형식의 링크 내보내기를 제어하는 ​​기능이 추가되었습니다.

#### LowCode <sup>24.8</sup>

한 줄의 코드로 다양한 문서 유형을 변환하는 메서드 집합을 제공하도록 설계된 새로운 [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/) 클래스가 도입되었습니다.

### 검색 및 비교

#### 고급 비교 옵션 <sup>24.6</sup>
향상된 비교 기능으로 데이터 분석 워크플로우를 간소화하는 기능이 추가되었습니다. 여기에는 새로운 [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) 옵션과 고급 비교를 위해 재설계된 인터페이스가 포함됩니다.

### 다른

* [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/) 메소드를 추가하여 문서에서 빈 페이지를 제거하는 기능을 구현했습니다. <sup>24.5</sup>
* [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/) 속성을 추가하여 문서를 로드하지 않고도 VBA 매크로 존재 여부를 확인할 수 있는 기능이 제공되었습니다. <sup>24.5</sup>
* 이제 LINQ 보고 엔진을 사용하여 문서를 삽입하는 동안 소스 번호 매기기가 지원됩니다. <sup>24.5</sup>
* 새로운 [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) 속성이 추가되었습니다. 이는 댓글에 대한 보다 정확한 타임스탬프를 제공하여 구성 및 추적성을 향상시킵니다. <sup>24.6</sup>
* LINQ 보고 엔진이 개선되었습니다. 빈 단락을 선택적으로 제거하고 누락된 개체 구성원에 대한 사용자 정의 메시지를 정의하여 더욱 깔끔하고 유익한 보고서를 제공합니다. <sup>24.6</sup>
* 이제 XLSX 형식으로 원활하게 내보내기 위해 날짜/시간 형식이 자동으로 감지됩니다. <sup>24.7</sup>
* VBA 프로젝트가 보호되는지 확인할 수 있는 공용 속성 [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/) 가 추가되었습니다. <sup>24.7</sup>
* [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) 및 [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) 클래스에 **embedding_licensing_rights** 속성이 추가되어 글꼴 정보가 확장되었습니다. <sup>24.8</sup>
* 워터마크를 유지하면서 섹션 머리글과 바닥글을 효율적으로 지우는 방법이 추가되어 문서 구조에서 보다 정확하게 작업할 수 있습니다. 섹션 머리글과 바닥글을 지우려면 새로운 공개 메서드 [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) 사용합니다. <sup>24.8</sup>
* [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) 사용한 XPS 문서의 디지털 서명이 활성화되었습니다. 이 목적을 위해 새로운 속성 [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/) 추가되었습니다. <sup>24.8</sup>

{{% alert color="primary" %}}

[Python via .NET 24.5 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 24.6 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 24.7 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 24.8 용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

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

[Python via .NET 23.9용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-9-release-notes/)에 대해 자세히 알아보세요.

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

[Python via .NET 23.7용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-7-release-notes/)에 대해 자세히 알아보세요.

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

**epub_navigation_map_level** 속성을 사용하여 AZW3 문서에 대한 `TOC`(목차)를 생성하는 기능이 추가되었습니다.

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

[Python via .NET 23.3용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-3-release-notes/)에 대해 자세히 알아보세요.

[Python via .NET 23.4용 Aspose.Words 릴리스 노트](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## 또한보십시오

{{% alert color="primary" %}}

이 페이지에는 지난 2년간의 최신 출시 소식이 포함되어 있습니다. 이전 릴리스에 대한 자세한 내용은 관련 섹션의 [릴리즈 노트'](https://releases.aspose.com/words/python/release-notes/) 페이지를 참조하세요.

{{% /alert %}}