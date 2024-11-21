---
title: 새로운 기능
second_title: Aspose.Words 에 대한 C++
articleTitle: 새로운 기능 Aspose.Words 에 대한 C++
linktitle: 새로운 기능 Aspose.Words 에 대한 C++
type: docs
description: "Aspose.Words 에 대한 C++ 매일 확장하고 향상시킵니다. 이 페이지에서 제품의 거대하고 가장 흥미로운 기능에 대해 배울 수 있습니다."
weight: 2
url: /ko/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

이 페이지는 가장 흥미로운 새로운 Aspose.Words 최근 릴리스에 도입 된 기능.

## Aspose.Words 에 대한 C++ 24.9

Aspose.Words 24.9 소개 group shape 삽입 및 StructuredDocumentTag 통해 삽입 DocumentBuilder,눈금으로 방사형 차트 렌더링을 향상시키고,디지털 서명을 향상시킵니다. XAdES-EPES 지원,추가 Markdown 인식에 밑줄을 긋고 각주/미주 구분 기호에 대한 액세스를 제공합니다.

### 렌더링 및 인쇄

#### 방사형 차트의 눈금

방사형 차트에 눈금의 렌더링이 구현되었습니다.

### 문서 변환,로드 및 저장

#### 로드 할 때 밑줄 서식 지정 Markdown 파일

로드 할 때 밑줄 서식을 인식하는 옵션 Markdown 문서는 새로운 공공 재산을 추가하여 통합되었습니다 [ImportUnderlineFormatting]().

### 디지털 서명

#### 문서 서명 XAdES-EPES

문서에 서명 할 수있는 능력 XAdES-EPES 레벨 XML-DSig 새 공용 속성을 추가하여 서명이 도입되었습니다 [XmlDsigLevel]() 그리고 새로운 공개 열거 [XmlDsigLevel]().

### 다른

* 새로운 공개 방법 [InsertGroupShape]() 에 추가되었습니다 group shapes.
* 새로운 공개 방법 [InsertStructuredDocumentTag]() 삽입에 추가되었습니다 **StructuredDocumentTags** 문서로
* 각주/미주 구분 기호에 대한 공개 액세스는 몇 가지 공개 클래스 및 속성을 추가하여 제공되었습니다.

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 24.9 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words 에 대한 C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 어셈블리에 대한 옵션을 확장하고 렌더링 기능을 향상시키며 다른 옵션을 확장합니다.

Aspose.Words 24.6 렌더링 옵션을 개선하고 검색 및 비교 기능을 향상시키며 다른 여러 기능을 확장합니다.

Aspose.Words 24.7 당신이 액티브엑스와 함께 작업하는 방법을 변경,렌더링 기능을 확장,뿐만 아니라 내보내기로 Markdown 그리고 XLSX 형식

### 지원되는 형식

버전에서 시작 24.7,수출 PDF/UA-2 장애인 사용자들의 접근성을 보장하기 위해 지원됩니다.

### 렌더링 및 인쇄

#### 차트,도형 및 도면의 변경 <sup>24.5</sup>

- 그림 그리기 효과 렌더링 SVG 이미지로 제한된 이전 기능을 확장하는 그래픽이 구현되었습니다.
- 콤보 차트를 만들고 계열 그룹 내에서 간격 너비,겹침 및 거품 배율과 같은 속성을 조정하는 데 대한 지원이 추가되었습니다. **ChartSeriesGroup** 그리고 **ChartSeriesGroupCollection** 수업과 **SeriesGroups** 재산.
- 조작하는 기능 SoftEdge 모양의 효과는 **SoftEdgeFormat** 수업
- 모양의 조정 값을 수정하는 기능은 **AdjustmentCollection** 그리고 **Adjustment** 공공 수업 및 **Adjustments** 재산.

#### 차트,도형 및 도면의 변화 <sup>24.6</sup>

- 차트 기능이 향상되었습니다. 이제 다음을 포함하여 더 다양한 차트를 만들 수 있습니다 *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* 차트, *Box & Whisker* 차트, *Waterfalls*,그리고 *Funnels*. 이것은 당신이 더 다양하고 유익한 방법으로 데이터를 시각화 할 수 있습니다.
- 그림자 서식에 대한 색상 제어가 개선되었습니다. 그림자 색상에 액세스하여 문서의 모양을 보다 정확하게 제어할 수 있습니다.
- 배경 렌더링에 대한 성능 향상이 향상되었습니다. 기본 타일링 기술 덕분에 작은 요소가 포함 된 배경의 렌더링 속도를 크게 높일 수 있습니다.
- 모양에 대한 현실적인 그라디언트가 추가되었습니다. 이제 다음을 만들 수 있습니다 DML 비선형 그라디언트가있는 모양,의 시각적 스타일을 모방 Microsoft Word 더 세련된 모습을 위해.

#### 차트 데이터 레이블 사용자 정의 <sup>24.7</sup>

다음과 같은 차트 데이터 레이블을 사용자 정의 할 수있는 기능 **Orientation** 그리고 **Rotation** 추가되었습니다.

#### 목록 수준에 대한 사용자 지정 번호 스타일링 <sup>24.7</sup>

공공 재산에 대한 세터 [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) 추가되었습니다. 이제 목록 수준에 대한 사용자 지정 숫자 스타일을 정의할 수 있습니다.

#### 액티브엑스 작업의 변화 <sup>24.7</sup>

- 액티브 객체의 속성은 이제 당신에게 자신의 동작을 더 제어 할 수 있도록 수정할 수 있습니다.
- 동적 상호 작용을 활성화하기 위해 라디오 버튼 액티브 컨트롤의 값을 수정하는 기능이 추가되었습니다.
- "선택"또는"선택 취소"에 액티브 체크 박스를 전환 할 수있는 기능이 추가되었습니다.

### 문서 로드 및 저장

#### 링크 내보내기 Markdown 형식 <sup>24.7</sup>

에서 링크의 수출을 제어 할 수있는 능력 Markdown 포맷은 [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/) 재산.

### 검색 및 비교

#### 고급 비교 옵션 <sup>24.6</sup>

향상된 비교 기능으로 데이터 분석 워크플로를 간소화할 수 있는 기능이 추가되었습니다. 여기에는 새로운 **IgnoreStoreItemId** 고급 비교를위한 옵션 및 재 설계된 인터페이스.

### 다른

- 문서에서 빈 페이지를 제거하는 기능은 [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/) 방법 <sup>24.5</sup>
- 의 존재를 확인하는 기능 VBA 문서를 로드하지 않고 매크로는 **HasMacros** 재산. <sup>24.5</sup>
- 새로운 **DateTimeUtc** 속성이 추가되었습니다-이 조직 및 추적 성을 향상,주석에 대한보다 정확한 타임 스탬프를 제공합니다. <sup>24.6</sup>
- 날짜/시간 형식은 이제 자동으로 원활한 수출에 대한 검색 XLSX 형식 <sup>24.7</sup>
- 공공 재산 [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/),당신은 여부를 확인할 수 있습니다 VBA 프로젝트가 보호되고 추가되었습니다. <sup>24.7</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 24.5 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 24.6 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 24.7 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words 에 대한 C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 획 색상 관리에 대한 경험을 향상시키고 향상 OLE 개체뿐만 아니라 새로운 참고 문헌 소스를 공개 소개합니다 API.

Aspose.Words 24.2 확장된 차트 API 그리고 스타일 관리. 이 버전의 Aspose.Words 또한, SvgSaveOptions 렌더링하는 동안보다 유연한 제어 로딩 Markdown 파일 및 각주 및 미주에 대한 참조 텍스트 작업.

Aspose.Words 24.3 이진 래스터 연산의 에뮬레이션을 소개합니다. WMF 또한 메타 파일 및 차트를 계속 확장 API.

Aspose.Words 24.4 일부 렌더링 옵션을 향상시키고 디지털 서명 작업을 향상시킵니다.

### 렌더링 및 인쇄

#### 스트로크 색상 제어 <sup>24.1</sup>

그 [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) 획 색상 관리와 관련된 새로운 공용 속성 집합으로 클래스가 확장되었습니다: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) 그리고 [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) 그리고 [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### 도표 API 확장 <sup>24.2 / 24.3 / 24.4</sup>

그 **DrawingML Charts API** 계속 확장되고 있습니다.

#### 에 선언 된 글꼴 포함 @font-face 규칙 <sup>24.4</sup>

에 선언 된 글꼴을 포함 할 수있는 기능을 추가했습니다 @font-face 결과 문서의 글꼴 정의에 새로운 글꼴을 추가하여 규칙이 도입되었습니다. [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) 재산.

#### 글로우 및 반사 서식 지정 작업 <sup>24.4</sup>

도면 객체에 대한 빛과 반사 포맷으로 작업할 수 있는 기능이 구현되었습니다.

### 문서 로드 및 저장

#### 지정 SvgSaveOptions 렌더링 중 <sup>24.2</sup>

지정할 수 있는 기능 [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) 렌더링하는 동안 사용하여 추가되었습니다 [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) 그리고 [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) 방법.

#### 로드 할 때 빈 줄 유지 Markdown 파일 <sup>24.2</sup>

로드 할 때 빈 줄을 보존하는 기능 Markdown 파일이 추가되었습니다.

### 다른

- 의 텍스트를 수정할 수있는 기능 `TextBox` OLE 제어는 새로운 **Text** 새로운 재산 **TextBoxControl** 수업 <sup>24.1</sup>
- 문헌 자료 공개 API 새로운 네임스페이스를 추가하는 것을 통해 구현되었습니다. [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) 새로운 클래스와 열거,그리고 새로운 [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) 재산 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 수업 <sup>24.1</sup>
- 새로운 공공 재산 [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/),그리고 [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) 향상된 스타일 관리에 추가되었습니다 [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) 수업 <sup>24.2</sup>
- 각주 및 미주에 대한 실제 참조 마크 텍스트를 검색하는 기능이 향상되었습니다 [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) 재산 및 [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/) 방법 <sup>24.2</sup>
- 이진 래스터 연산의 에뮬레이션 WMF 메타파일이 구현되었습니다. <sup>24.3</sup>
- 내 문서에 대한 서명 옵션을 정의하는 기능 **SaveOptions** 새로운 기능을 추가하여 활성화되었습니다. **DigitalSignatureDetails** 새 공용 멤버를 가진 클래스뿐만 아니라 새 속성을 추가 [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) 그리고 [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/) 수업 <sup>24.4</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 24.1 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 24.2 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 24.3 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 24.4 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words 에 대한 C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 렌더링 옵션,메타파일 렌더링 에뮬레이션 및 markdown 저장 옵션.

Aspose.Words 23.10 렌더링을 개선하고 문서로드 및 저장 옵션을 확장하며 사용자가 새로운 방식으로 문서를 병합 할 수 있습니다.

Aspose.Words 23.11 수정 작업을 향상시킵니다., XLSX 추가 옵션이있는 차트 범례의 형식 및 글꼴.

Aspose.Words 23.12 작업을 위한 새 속성 및 열거형을 소개합니다 PDF 그리고 OOXML 문서,그리고 지원 WebP 이미지.

### 렌더링 및 인쇄

#### 도면에서 축 제목 사용자 지정 <sup>23.9</sup>

새로운 공용 클래스를 구현하여 축 제목을 사용자 지정할 수 있습니다 **ChartAxisTitle** 그리고 [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) 재산.

#### 단락 내의 글꼴의 세로 위치 결정 <sup>23.9</sup>

이제 새로운 공개를 사용하여 단락 내에서 글꼴의 수직 위치를 정의 할 수 있습니다 [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) 재산 및 새로운 [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) 열거

#### 전경색 제어 <sup>23.10</sup>

수정자 없이 전경색을 검색할 수 있는 기능이 추가되었습니다. [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) 그리고 [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) 클래스를 통해 **BaseForeColor** 재산.

#### 차트의 기능 확장 <sup>23.10</sup>

의 기능 [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/),그리고 [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) 클래스는 새로운 메서드 및 속성으로 확장되었습니다.

#### 이미지 자동 조정 및 모양에 맞추기 <sup>23.10</sup>

자동으로 조정하고 특정 모양 내에서 이미지를 맞게 할 수있는 간단한 방법은 새로운 통해 제공되었습니다 [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) 방법

#### 차트 범례 항목을 그리기 위한 기본 글꼴 서식 지정 <sup>23.11</sup>

도면의 범례 항목에 대한 기본 글꼴 서식을 지정하는 기능이 추가되었습니다. [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/) 재산. 이 기능은 전체 문서 미학을 개선,차트 요소에 대한보다 능률적이고 일관된 모양을 용이하게한다.

#### 열 때 페이지 레이아웃 지정 PDF 독자 <sup>23.12</sup>

문서를 열 때 사용할 페이지 레이아웃을 지정하는 기능 PDF 리더는 새로운 **PageLayout** 재산 [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) 클래스 및 새로운 소개 **PdfPageLayout** 열거

### 문서 로드 및 저장

#### 이미지를 구성 할 폴더 이름 지정 URIs 그 안에 Markdown <sup>23.9</sup>

그 [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) 수업은 [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/) 이미지를 구성하는 데 사용되는 폴더의 이름을 지정할 수 있습니다 속성 URIs 에 기록 Markdown 문서

#### 감소 PDF 산출 크기 <sup>23.10</sup>

다양한 PDF 사용할 때 출력 크기를 줄이기 위한 렌더링 최적화 [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) 설정이 구현되었습니다.

#### 로드 할 때 하이퍼 링크 인식 TXT 문서 <sup>23.10</sup>

로드 할 때 하이퍼 링크를 인식하는 기능 TXT 문서는 새로운 [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) 재산.

### 다른

- 라스터화 크기를 결정하기 위한 메타파일 렌더링 에뮬레이션이 구현되었습니다. WMF 펜 너비 및 EMF 화장품 펜 너비. 이를 달성하기 위해, **ScaleWmfFontsToMetafileSize** 재산은 [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) 재산 및 [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) 재산이 추가되었습니다. <sup>23.9</sup>
* 한 문서를 현재 커서 위치에서 다른 문서에 삽입하는 단순화 된 방법은 [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) 방법 <sup>23.10</sup>
* 새로운 스타일의 도입을 통해 스타일 속성에 액세스하고 수정할 수 있는 기능이 추가되었습니다. [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) 재산. <sup>23.10</sup>
* 제네릭 형식 매개 변수가 메서드에 추가되었습니다. [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) 수업 <sup>23.10</sup>
* 특정 개정이 승인/거부 또는 거부되어야 할 때를 제어하는 방법은 다음을 사용하여 구현되었습니다. [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) 그리고 [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) 방법. 이 향상된 기능은 사용자에게 수정 프로세스를 보다 세밀하게 제어할 수 있도록 합니다. <sup>23.11</sup>
* 문서의 모든 섹션을 같은 부분에 쓸 수 있는 기능 XLSX 워크시트는 새로운 [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) 열거 형 및 새 [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) 재산. <sup>23.11</sup>
* 방법을 제어하는 방법 ZIP64 형식 확장은 OOXML 문서들은 새로운 압축 64 모드 속성을 통해 구현되었습니다. `OoxmlSaveOptions` 클래스 및 새로운 압축 64 모드 열거. <sup>23.12</sup>
* 에 대한 지원 WebP 이미지가 도입되었습니다. 이 기능은 만 사용할 수 있습니다.NetStandart 그리고.NET6+버전. <sup>23.12</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 23.9 릴리스 노트](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 23.10 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 23.11 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
에 대해 자세히 알아보기 [Aspose.Words 에 대한 C++ 23.12 릴리스 노트](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## 또한 참조

{{% alert color="primary" %}}

이 페이지에는 과거에 대한 최신 릴리스 뉴스가 포함되어 있습니다 2 몇 년 동안 이전 릴리스에 대한 자세한 내용은 [릴리스 노트'](/words/cpp/release-notes/) 관련 섹션의 페이지.

{{% /alert %}}
