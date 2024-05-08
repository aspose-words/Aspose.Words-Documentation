---
title: 새로운 소식
second_title: .NET용 Aspose.Words
articleTitle: .NET용 Aspose.Words의 새로운 기능
linktitle: .NET용 Aspose.Words의 새로운 기능
type: docs
description: ".NET용 Aspose.Words는 매일 확장되고 향상됩니다. 이 페이지에서는 제품의 가장 크고 흥미로운 기능에 대해 알아볼 수 있습니다."
weight: 10
url: /ko/net/what-s-new-in-aspose-words-for-net/
---

이 페이지에서는 최근 릴리스에 도입된 가장 흥미로운 새 Aspose.Words 기능을 설명합니다.

## .NET 24.5용 Aspose.Words

### 플랫폼

.NET 7.0/8.0 어셈블리가 Aspose.Words NuGet 패키지에 포함되었습니다.

### 렌더링 및 인쇄

#### Charts, Shapes 및 DrawingML 의 변경 사항 <sup>24.5</sup>

* 이미지로 제한되었던 이전 기능을 확장하여 SVG 그래픽에 대한 DrawingML 효과 렌더링이 구현되었습니다.
* [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) 및 [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/)  클래스와 [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/) 속성.
* [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/) 클래스를 추가하여 도형의 SoftEdge 효과를 조작하는 기능이 구현되었습니다.
* 도형의 조정 값을 수정하는 기능은 [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) 및 [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) 공개 클래스 및 [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) 재산.

#### 다른

* [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/) 메소드를 추가하여 문서에서 빈 페이지를 제거하는 기능을 구현했습니다. <sup>24.5</sup>
* [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/) 속성을 추가하여 문서를 로드하지 않고도 VBA 매크로 존재 여부를 확인할 수 있는 기능이 제공되었습니다. <sup>24.5</sup>
* 이제 LINQ 보고 엔진을 사용하여 문서를 삽입하는 동안 소스 번호 매기기가 지원됩니다. <sup>24.5</sup>

{{% alert color="primary" %}}

[Aspose.Words for .NET 24.5 릴리스 노트](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes)에 대해 자세히 알아보세요. /).

{{% /alert %}}

## .NET 24.1, 24.2, 24.3, 24.4 용 Aspose.Words

Aspose.Words 24.1은 획 색상 관리 환경을 개선하고, OLE 개체 및 LINQ 보고 기능을 향상시키며, 새로운 참고문헌 소스 공개 API를 도입합니다.

Aspose.Words 24.2는 차트 API, 스타일 관리 및 LINQ 옵션을 확장했습니다. 이 버전의 Aspose.Words에서는 렌더링 중에 SvgSaveOptions를 지정할 수 있는 기능을 도입했으며, Markdown 파일을 더 유연하게 로드하고 각주 및 끝맺음을 위한 참조 텍스트 작업도 가능합니다.

Aspose.Words 24.3은 새로운 TIFF 리더/라이터와 WMF 메타파일의 이진 래스터 작업 에뮬레이션을 소개합니다. Aspose.Words 24.3은 또한 Charts API를 계속 확장하고 있습니다.

Aspose.Words 24.4은 형식 저장, 일부 렌더링 옵션, 디지털 서명 작업을 개선합니다.

### 지원되는 형식 <sup>24.4</sup>

Aspose.Words .NET Framework 4.6.2 이상에서는 현대적인 **WebP** 이미지 형식을 지원합니다. 이제 WebP 이미지를 문서에 읽고 삽입하며 WebP 형식으로 이미지를 저장할 수 있습니다.

WebP는 현재 .NET Standard 및 .NET Framework v4.6.2 이상에서만 사용할 수 있습니다.

### 렌더링 및 인쇄

#### 획 색상 제어 <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) 클래스는 획 색상 관리와 관련된 새로운 공용 속성 세트([ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) 및 [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) 및 [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/))로 확장되었습니다.

#### DrawingML Charts API 확장 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API**가 계속 확장되고 있습니다.

#### @font-face 규칙에 선언된 글꼴 포함 <sup>24.4</sup>

새로운 [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) 속성을 추가하여 결과 문서의 글꼴 정의에 @font-face 규칙에 선언된 글꼴을 포함하는 기능이 추가되었습니다.

#### 글로우 및 반사 형식과 작업 <sup>24.4</sup>

도형 객체에 대한 글로우 및 반사 형식 작업 기능이 구현되었습니다.

### 문서 로드 및 저장

#### 렌더링 중에 SvgSaveOptions 지정 <sup>24.2</sup>

[ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) 및 [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) 메서드를 사용하여 렌더링 중에 [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/)를 지정하는 기능이 추가되었습니다.

#### Markdown 파일 로드 시 빈 줄 유지 <sup>24.2</sup>

Markdown 파일을 로드할 때 빈 줄을 유지하는 기능이 추가되었습니다.

#### 새로운 TIFF 리더/라이터 <sup>24.3</sup>

Aspose.Words for .NET Standard, .NET 6 및 이후 버전을 위한 새로운 TIFF 리더/라이터가 개발되었습니다. Aspose.Words for .NET 24.3은 JPEG 및 Old JPEG 압축 유형의 TIFF 이미지를 읽는 기능을 추가하고 읽기 및 쓰기 작업의 품질을 크게 향상시켰습니다.

### 다른

* 새 [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) 클래스에 새 [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) 속성을 추가하여 `TextBox` OLE 컨트롤의 텍스트를 수정하는 기능이 도입되었습니다. <sup>24.1</sup>
* 참고문헌 소스 공개 API는 새 클래스 및 열거형과 함께 새 네임스페이스 [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/)를 추가하고 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 클래스에 새 [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) 속성을 추가하여 구현되었습니다. <sup>24.1</sup>
* LINQ 보고 엔진용 템플릿 구문을 사용하여 형식 멤버에 대한 액세스를 제한하는 API가 제공되었습니다. <sup>24.1</sup>
* 증강된 스타일 관리를 위해 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 클래스에 새로운 공용 속성 [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/)이 추가되었습니다. <sup>24.2</sup>
* 각주 및 끝맺음에 대한 실제 참조 마크 텍스트를 검색하는 기능이 [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) 속성 및 [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) 메서드를 통해 향상되었습니다. <sup>24.2</sup>
* `Word 2016` 차트와 `LINQ Reporting Engine` 의 호환성이 활성화되었습니다. <sup>24.2</sup>
* WMF 메타파일에 대한 이진 래스터 작업의 에뮬레이션이 구현되었습니다. <sup>24.3</sup>
* 새로운 [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) 클래스와 [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/), [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) 클래스에 새로운 공용 멤버를 추가함으로써 **SaveOptions** 내에서 문서의 서명 옵션을 정의하는 기능이 활성화되었습니다. <sup>24.4</sup>

{{% alert color="primary" %}}

[.NET 24.1용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/)에 대해 자세히 알아보세요.

[.NET 24.2용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/)에 대해 자세히 알아보세요.

[.NET 24.3용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/)에 대해 자세히 알아보세요.

[.NET 24.4용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## .NET 23.9, 23.10, 23.11, 23.12용 Aspose.Words

Aspose.Words 23.9는 렌더링 옵션, 메타파일 렌더링 에뮬레이션 및 markdown 저장 옵션을 확장합니다.

Aspose.Words 23.10은 렌더링을 개선하고 문서 로드 및 저장 옵션을 확장하며 사용자가 새로운 방식으로 문서를 병합할 수 있도록 해줍니다.

Aspose.Words 23.11은 추가 옵션을 통해 차트 범례의 개정판, XLSX 형식 및 글꼴 작업을 향상시킵니다.

Aspose.Words 23.12에는 PDF 및 OOXML 문서 작업을 위한 새로운 속성과 열거형은 물론 WebP 이미지 지원도 도입되었습니다.

### 렌더링 및 인쇄

#### DrawingML Charts <sup>23.9</sup> 에서 축 제목 사용자 정의

DrawingML 차트에서 축 제목을 사용자 정의하는 기능은 새로운 공개 클래스 [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) 및 [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) 속성의 구현을 통해 도입되었습니다.

#### 단락 내에서 글꼴의 수직 위치 결정 <sup>23.9</sup>

이제 새로운 공개 [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) 속성과 새로운 [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) 열거형을 사용하여 단락 내에서 글꼴의 수직 위치를 정의할 수 있습니다.

#### 전경색 제어 <sup>23.10</sup>

수정자 없이 전경색을 검색하는 기능이 **BaseForeColor** 속성을 통해 [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) 및 [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) 클래스에 추가되었습니다.

#### 차트 기능 확장 <sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) 및 [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) 클래스의 기능이 새로운 메서드와 속성으로 확장되었습니다.

#### 이미지를 자동으로 조정하고 모양에 맞추기 <sup>23.10</sup>

새로운 [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) 방법을 통해 특정 모양 내에서 이미지를 자동으로 조정하고 맞추는 간단한 방법이 제공되었습니다.

#### DrawingML 차트 범례 항목의 기본 글꼴 형식 <sup>23.11</sup>

DrawingML 차트의 범례 항목에 대한 기본 글꼴 형식을 지정하는 기능이 [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) 속성을 통해 추가되었습니다. 이 기능은 차트 요소의 모양을 더욱 간소화하고 일관되게 만들어 전체적인 문서 미학을 향상시킵니다.

#### Reader <sup>23.12</sup> 에서 PDF를 열 때 페이지 레이아웃 지정

PDF 리더에서 문서를 열 때 사용할 페이지 레이아웃을 지정하는 기능은 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 클래스에 대한 새로운 [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) 속성 도입과 새로운 [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) 열거 도입을 통해 추가되었습니다.

### 문서 로드 및 저장

#### Markdown <sup>23.9</sup> 에서 이미지 URI를 구성하기 위해 폴더 이름 지정

Markdown 문서에 기록된 이미지 URI를 구성하는 데 사용되는 폴더의 이름을 지정할 수 있는 [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) 속성을 포함하여 [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 클래스가 확장되었습니다.

#### PDF 출력 크기 줄이기 <sup>23.10</sup>

[OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) 설정을 활용할 때 출력 크기를 줄이기 위한 다양한 PDF 렌더링 최적화가 구현되었습니다.

#### TXT 문서 로드 시 하이퍼링크 인식 <sup>23.10</sup>

TXT 문서 로딩 시 하이퍼링크를 인식하는 기능이 새로운 [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) 속성을 추가하여 구현되었습니다.

### 다른

* 래스터화 크기를 결정하기 위한 메타파일 렌더링 에뮬레이션이 구현되었습니다. 특히 WMF 펜 너비와 EMF 코스메틱 펜 너비에 대해 구현되었습니다. 이를 위해 **ScaleWmfFontsToMetafileSize** 속성을 [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) 속성으로 대체하고 [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) 속성을 추가했습니다. <sup>23.9</sup>
* 현재 커서 위치에서 한 문서를 다른 문서에 삽입하는 단순화된 방법이 [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) 방법을 사용하여 도입되었습니다. <sup>23.10</sup>
* 새로운 [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) 속성 도입으로 스타일 속성에 액세스하고 수정하는 기능이 추가되었습니다. <sup>23.10</sup>
* [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) 클래스의 메소드에 일반 유형 매개변수가 추가되었습니다. <sup>23.10</sup>
* [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) 및 [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) 방법을 사용하여 특정 개정을 승인/거부할지 여부를 제어하는 방법이 구현되었습니다. 이 향상된 기능을 통해 사용자는 개정 프로세스를 더욱 세밀하게 제어할 수 있습니다. <sup>11.23</sup>
* 문서의 모든 섹션을 동일한 XLSX 워크시트에 쓰는 기능은 새로운 [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) 열거 유형 및 새로운 [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) 속성을 통해 제공되었습니다. <sup>11.23</sup>
* OOXML 문서에 ZIP64 형식 확장이 사용되는 방식을 제어하는 방법은 `OoxmlSaveOptions` 클래스의 새로운 Zip64Mode 속성과 새로운 Zip64Mode 열거를 통해 구현되었습니다. <sup>12.23</sup>
* WebP 이미지 지원이 도입되었습니다. 이 기능은 .NetStandart 및 .NET6+ 버전에서만 사용할 수 있습니다. <sup>12.23</sup>

{{% alert color="primary" %}}

[.NET 23.9용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-9-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.10용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.11용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.12용 Aspose.Words 릴리스 노트](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## .NET 23.5, 23.6, 23.7, 23.8용 Aspose.Words

Aspose.Words 23.5는 차트 시리즈 데이터 작업 기능과 ODT 문서 작업 기능을 향상시켰을 뿐만 아니라 머리글/바닥글 및 텍스트 줄 바꿈도 개선했습니다.

Aspose.Words 23.6은 렌더링 옵션을 확장하고, 새로운 내보내기 형식을 추가하고, LINQ 보고 및 LowCode 도구를 개선합니다.

Aspose.Words 23.7은 보고 기능을 강화하고 새로운 내보내기 형식을 추가하며 테이블 및 디지털 서명 작업에 대한 변경 사항을 도입합니다.

Aspose.Words 23.8은 다양한 형식의 기능을 확장하고, 렌더링을 개선하며, 필드 작업을 위한 새로운 옵션을 추가합니다

### 지원되는 형식

* 버전 23.6부터 XLSX 형식으로 문서를 저장할 수 있습니다. 이제 문서를 Excel 형식으로 변환할 수 있습니다. <sup>23.6</sup>
* 23.7 버전부터 문서 페이지나 도형을 EPS 형식으로 저장할 수 있습니다. <sup>23.7</sup>

### 새로운 형식 기능

* MOBI 문서의 목차(TOC)를 자동으로 생성하는 기능이 도입되었습니다. <sup>23.8</sup>
* [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) 생성자가 [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/)로 확장되었습니다. <sup>23.8</sup>
* EMF 메타파일의 세로 텍스트 모양이 구현되었습니다. <sup>23.8</sup>

### 렌더링 및 인쇄

#### 차트 시리즈 데이터 가져오기 및 수정 <sup>23.5</sup>

차트 시리즈 데이터를 가져오고 수정하는 기능은 다음을 추가하여 제공되었습니다

* 새로운 클래스: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* 새로운 열거형 유형: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### 고급 타이포그래피 <sup>23.6</sup> 지원

WMF, EMF 및 EMF+ 렌더링에 고급 타이포그래피에 대한 지원이 추가되었습니다.

#### 페이지의 컬러 콘텐츠 <sup>23.6</sup>

페이지 색상 여부를 나타내는 공용 속성 [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/)가 추가되었습니다.

#### 차트 데이터 레이블 형식 지정 <sup>23.6</sup>

차트 데이터 레이블에 대한 채우기, 획 및 설명선 형식을 설정하는 기능이 구현되었습니다.

### Mail Merge 및 보고

#### LINQ 보고 엔진 <sup>23.6</sup> 용 동적 HTML 삽입

LINQ 보고 엔진에 대한 동적 HTML 삽입의 새로운 방법이 추가되었습니다.

#### Mustache 태그 지원 <sup>23.7</sup>

이제 Mustache 태그가 [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) 및 [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) 방법에서 지원됩니다.

#### LINQ 보고 엔진 템플릿 구문 업데이트 <sup>23.7</sup>

LINQ 보고 엔진 템플릿 구문은 이제 `ElementAt` 및 ElementAtOrDefault 확장 메서드를 지원합니다.

#### 렌더링된 이미지의 크기 지정 <sup>23.8</sup>

렌더링된 이미지의 크기를 픽셀 단위로 지정하기 위한 새로운 공용 속성 [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/)가 도입되었습니다.

#### JSON 문자열 값에 대한 공백 유지 - LINQ <sup>23.8</sup>

JSON 문자열 값의 공백을 보존하기 위해 LINQ 보고 엔진에 옵션이 추가되었습니다.

### <sup>LowCode23.6</sup>

다양한 유형의 문서를 단일 출력 문서로 병합하기 위한 새로운 LowCode 방법이 추가되었습니다.

### 다른

* 머리글/바닥글 텍스트 줄바꿈 지원이 구현되었습니다. <sup>23.5</sup>
* [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) 방식을 통해 ODT 문서에서 디지털 서명을 제거하는 기능이 추가되었습니다. <sup>23.5</sup>
* 음성 안내 [Run](https://reference.aspose.com/words/net/aspose.words/run/)의 기본 및 루비 텍스트를 얻기 위한 공공 속성 [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/)가 추가되었습니다. <sup>23.5</sup>
* 새로운 [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) 속성을 도입하여 디지털 서명된 문서에서 바이트 배열로 디지털 서명 값을 검색하는 기능이 추가되었습니다. <sup>23.7</sup>
* [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 및 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 클래스가 새로운 공개 멤버([Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) 및 [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/))로 확장되었습니다. <sup>23.7</sup>
* CITATION 및 BIBLIOGRAPHY 필드에 대한 지원이 추가되었습니다. <sup>23.8</sup>

{{% alert color="primary" %}}

[.NET 23.5용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-5-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.6용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-6-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.7용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-7-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.8용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-8-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## .NET 23.1, 23.2, 23.3, 23.4용 Aspose.Words

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

[Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) 클래스는 배경색 및 전경색과 관련된 새로운 공용 속성 세트([ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) 및 [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) 및 [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/))로 확장되었습니다.

#### `SkiaSharp` 네이티브 셰이더 <sup>23.3을</sup> 사용한 방사형 그라디언트

.NET Standard용 `SkiaSharp` 기본 셰이더를 사용한 방사형 그래디언트 렌더링이 구현되었습니다.

#### 표와 주변 텍스트 사이의 거리 <sup>23.4</sup>

[Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) 클래스에 [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) 및 [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/)과 같은 새로운 속성을 도입하여 테이블과 주변 텍스트 사이의 거리를 설정하는 기능이 추가되었습니다.

### 문서 로드 및 저장

#### AZW3 문서 <sup>23.1</sup> 용 `TOC` 생성

[NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) 속성을 사용하여 AZW3 문서에 대한 `TOC`(목차)를 생성하는 기능이 추가되었습니다.

#### 목록 항목을 Markdown <sup>23.1</sup> 로 내보내기

[MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 클래스에 [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) 속성을 추가하여 목록 항목을 Markdown 형식으로 내보내기를 제어하는 방법이 제공되었습니다.

#### 문서 저장 진행 알림 <sup>23.3</sup>

MOBI 및 AZW3 형식에 대한 진행 알림 저장이 구현되었습니다.

#### 문장 및 단어 간격 조정 <sup>23.3</sup>

[AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) 속성을 도입하여 문서 가져오기 시 문장 및 단어 간격을 자동으로 조정할지 여부를 지정하는 기능이 추가되었습니다.

### 다른

* [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) 속성 구현 <sup>23.2를</sup> 통해 문서의 문자 간격 조정을 지정하는 기능이 추가되었습니다
* 단어수 통계에 텍스트박스, 각주, 미주 포함 여부를 Aspose.Words에 지시하는 방법을 [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) 속성 추가로 제공 <sup>23.2</sup>
* 적절한 값에 따라 스타일이 자동으로 재정의되는지 여부를 지정할 수 있는 문서 스타일에 대한 새로운 옵션이 [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) 속성 <sup>23.2</sup> 를 통해 도입되었습니다
* [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) 속성 <sup>23.4를</sup> 사용하여 [Run](https://reference.aspose.com/words/net/aspose.words/run/)가 발음 안내 실행인지 확인하는 기능이 추가되었습니다
* [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) 클래스를 도입하고 [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) 속성을 추가하여 콤보 차트의 시리즈 및 축을 사용하는 간단한 방법이 구현되었습니다 <sup>. 23.4</sup>
* 모양 상대 위치 지정 및 크기 조정과 연결된 새로운 공용 속성이 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 클래스 <sup>23.4</sup> 에 추가되었습니다
* Microsoft Word <sup>23.4</sup> 최신 버전에 따라 자동 텍스트 색상 해상도에 대한 색상 밝기 계산의 정확성과 성능이 향상되었습니다

{{% alert color="primary" %}}

[.NET 23.1용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-1-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.2용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-2-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.3용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-3-release-notes/)에 대해 자세히 알아보세요.

[.NET 23.4용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-23-4-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## .NET 22.9, 22.10, 22.11, 22.12용 Aspose.Words

Aspose.Words 22.9는 문서 로드 및 저장 옵션을 확장하고 일부 다른 옵션과의 상호 작용을 개선했습니다.

Aspose.Words 22.10은 찾기 및 바꾸기 옵션을 개선하고 OLE 개체를 향상시키며 목록 기능을 확장합니다.

Aspose.Words 22.11은 필드, 인쇄, OLE 및 구조화된 문서 태그와 같이 이미 친숙한 개체에 대한 보다 편리한 작업을 위한 새로운 옵션으로 기능을 확장합니다.

Aspose.Words 22.12는 렌더링 기능을 향상시키고 문서를 로드/저장할 때 여백 작업을 위한 옵션을 도입합니다.

### 성능 개선 <sup>22.12</sup>

사양 준수를 유지하기 위해 PDF로 렌더링할 때 그래픽 상태 중첩 깊이를 크게 줄이는 최적화가 도입되었습니다.

### 렌더링 및 인쇄

#### 컬러 프린터로 무색 페이지 인쇄하기 <sup>22.11</sup>

[ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/) 열거형에 새로운 **GrayscaleAuto** 값을 추가하여 사용자 정의 컬러/회색조 인쇄 모드가 구현되었습니다.

새로운 인쇄 속성을 사용하면 장치가 컬러 인쇄를 지원할 경우 컬러가 아닌 페이지의 인쇄 방법을 제어할 수 있습니다. 이 기능은 사용자가 회색조 인쇄 모드만 사용하여 컬러가 아닌 페이지를 자동으로 인쇄하려는 경우 유용할 수 있습니다.

#### 새로운 테두리 렌더링 속성 <sup>22.12</sup>

새로운 공공 자산 [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) 및 [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/)가 도입되었습니다.

#### DrawingML 렌더링 <sup>22.12</sup> 의 선형 추세선 공식

DrawingML 차트에 대한 선형 추세선 수식 렌더링이 구현되었습니다.

#### Google Noto 글꼴 <sup>22.12</sup> 에 대한 글꼴 대체 설정

Google Noto 글꼴에 대해 미리 정의된 글꼴 대체 설정이 업데이트되었습니다.

### 문서 로드 및 저장

#### PDF 크기를 줄이기 위한 캐시 머리글 또는 바닥글 모양 <sup>22.9</sup>

새로운 **CacheHeaderFooterShapes** 속성을 추가하여 출력 PDF 파일의 크기를 줄이기 위해 머리글/바닥글 모양을 캐시하는 기능이 구현되었습니다.

#### 문서 로드 시 자동 번호 매기기 감지 <sup>22.9</sup>

텍스트 로딩 시 [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) 속성을 지정하는 기능은 [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) 클래스의 확장을 통해 구현되었습니다.

#### 특정 여백 유형 지정 <sup>22.12</sup>

특정 섹션에 대해 특정 [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) 유형을 지정하는 기능이 구현되었습니다.

### 검색 및 비교 <sup>22.10</sup>

찾기 및 바꾸기 옵션 시 [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/)를 무시하는 기능은 [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) 클래스에 새 [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) 속성을 추가하여 구현되었습니다.

### 다른

* FieldEQ를 OfficeMath로 가져오는 새로운 기능이 추가되었습니다. <sup>22.9</sup>
* 행 수준에서 Group 유형의 구조화된 문서 태그 생성이 허용되었습니다. <sup>22.9</sup>
* 이제 문서를 HTML로 변환할 때 OLE 개체 및 컨트롤이 메타파일 이미지로 처리됩니다. <sup>22.10</sup>
* [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) 클래스에 새로운 [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) 메소드를 도입하여 비교 목록과 동일한 템플릿에서 특정 목록이 생성되었는지 확인하는 기능이 추가되었습니다. <sup>22.10</sup>
* [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) 유형의 새로운 구조화된 문서 태그를 생성하는 기능이 추가되었습니다. <sup>11.22</sup>
* 필드 업데이트 진행 상황을 추적하는 기능이 제공되었습니다. <sup>11.22</sup>
* 사용자가 소스 문서의 OLE 첨부 파일을 출력 PDF 문서에 포함시킬 수 있는 새로운 **EmbedAttachments** 속성이 도입되었습니다. <sup>11.22</sup>

{{% alert color="primary" %}}

[.NET 22.9용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-22-9-release-notes/)에 대해 자세히 알아보세요.

[.NET 22.10용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-22-10-release-notes/)에 대해 자세히 알아보세요.

[.NET 22.11용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-22-11-release-notes/)에 대해 자세히 알아보세요.

[.NET 22.12용 Aspose.Words 릴리스 노트](/words/net/aspose-words-for-net-22-12-release-notes/)에 대해 자세히 알아보세요.

{{% /alert %}}

## 또한보십시오

{{% alert color="primary" %}}

이 페이지에는 지난 2년간의 최신 출시 소식이 포함되어 있습니다. 이전 릴리스에 대한 자세한 내용은 관련 섹션의 [릴리즈 노트'](/words/net/release-notes/) 페이지를 참조하세요.

{{% /alert %}}