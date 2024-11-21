---
title: 새로운 소식
second_title: Aspose.Words 제품정보 Java
articleTitle: 새로운 기능 Aspose.Words 제품정보 Java
linktitle: 새로운 기능 Aspose.Words 제품정보 Java
type: docs
description: "Aspose.Words 제품정보 Java 일일 확장 및 향상. 이 페이지에서, 당신은 제품의 거대한 가장 흥미로운 기능에 대해 배울 수 있습니다."
weight: 2
url: /ko/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

이 페이지는 가장 흥미로운 새로운 설명 Aspose.Words 최근 출시된 기능.

## Aspose.Words 제품정보 Java 24.9, 24.10

Aspose.Words 24.9는 DocumentBuilder를 통한 그룹 모양 삽입 및 StructuredDocumentTag 삽입을 도입하고, 그라데이션을 사용하여 방사형 차트 렌더링을 개선하고, XAdES-EPES 지원을 통해 디지털 서명을 개선하고, Markdown 밑줄 인식을 추가하고, 각주/미주 구분 기호에 대한 액세스를 제공합니다.

Aspose.Words 24.10에서는 CommandButton 생성, 새로운 모양 가시성 제어, 모양 그룹화 기능, 표에 대한 개선된 Markdown 내보내기, 파이 및 도넛 차트에 대한 차트 서식 지정, 더 나은 Big5 인코딩 처리, 오래된 대만어 글꼴 지원과 같은 향상된 ActiveX 컨트롤 지원이 도입되었습니다.

### 렌더링 및 인쇄

#### 방사형 차트의 그라데이션 <sup>24.9</sup>

방사형 차트의 그라데이션 렌더링이 구현되었습니다.

#### CommandButton ActiveX 컨트롤 <sup>24.10</sup>

새로운 공개 메서드 [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl)과 새로운 공개 클래스 [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/)를 추가하여 CommandButton ActiveX 컨트롤을 만드는 기능이 도입되었습니다.

#### 컨트롤 모양 가시성 <sup>24.10</sup>

모양의 가시성을 제어하기 위해 새로운 공개 속성 [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden)이 추가되었습니다.

#### 파이 및 도넛 차트의 변경 사항 <sup>24.10</sup>

파이 및 도넛 차트를 포맷하기 위해 여러 개의 새로운 공개 속성이 추가되었습니다.

### 문서 변환, 로드 및 저장

#### Markdown 파일을 로드할 때 밑줄 서식 지정 <sup>24.9</sup>

Markdown 문서를 로드할 때 밑줄 서식을 인식하는 옵션은 새로운 공개 속성 [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting)을 추가하여 통합되었습니다.

#### 마크다운으로 저장할 때 HTML로 테이블 내보내기 <sup>24.10</sup>

문서를 마크다운 포맷으로 저장할 때 HTML로 테이블을 내보내는 옵션은 새로운 공개 속성 [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml)과 열거형 [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/)을 추가하여 구현되었습니다.

### 디지털 서명

#### XAdES-EPES로 문서 서명 <sup>24.9</sup>

XAdES-EPES 수준 XML-DSig 서명으로 문서에 서명하는 기능은 새로운 공개 속성 [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel)과 새로운 공개 열거형 [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)을 추가하여 도입되었습니다.

### 기타

* 새로운 공개 메서드 [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...)가 셰이프를 그룹화하는 데 추가되었습니다. <sup>24.9</sup>
* 새로운 공개 메서드 [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int)가 문서에 **StructuredDocumentTags**를 삽입하는 데 추가되었습니다. <sup>24.9</sup>
* 몇 가지 공개 클래스와 속성을 추가하여 각주/미주 구분 기호에 대한 공개 액세스가 제공되었습니다. <sup>24.9</sup>
* 개별 도형을 그룹화하고, 도형을 함께 그룹화하고, 도형과 도형을 모두 직접 그룹화하는 기능은 [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...) 메서드를 추가하여 도입되었습니다. <sup>24.10</sup>
* TrueType cmap 테이블에 대한 Big5 인코딩 처리가 개선되었습니다. <sup>24.10</sup>
* 오래된 대만어 글꼴에 대한 지원이 향상되었습니다. <sup>24.10</sup>

{{% alert color="primary" %}}

[Aspose.Words for Java 24.9 릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/) 에 대해 자세히 알아보세요.

[Aspose.Words for Java 24.10 릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/) 에 대해 자세히 알아보세요.

{{% /alert %}}

## Aspose.Words 제품정보 Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5는 어셈블리 옵션을 확장하고 렌더링 기능을 개선하며 기타 옵션을 확장합니다.

Aspose.Words 24.6은 렌더링 옵션을 개선하고, 검색 및 비교 기능을 향상시키며, 기타 여러 기능을 확장합니다.

Aspose.Words 24.7은 ActiveX 작업 방식을 변경하고 렌더링 기능을 확장하며 Markdown 및 XLSX 형식으로 내보내기도 합니다.

Aspose.Words 24.8은 축 레이블을 정확하게 제어하여 차트 사용자 지정을 강화하고, 글꼴 관리를 확장하고, 문서 구조 처리를 개선하고, HTML/XAML 내보내기, PDF 기능, 문서 변환 및 디지털 서명을 위한 새로운 기능을 추가합니다.

### 지원되는 형식

버전 24.7부터 장애가 있는 사용자의 접근성을 보장하기 위해 PDF/UA-2로 내보내기가 지원됩니다.

### 렌더링 및 인쇄

#### Charts, Shapes, DrawingML의 변경 사항 <sup>24.5</sup>

- 이미지로 제한되었던 이전 기능을 확장하여 SVG 그래픽에 대한 DrawingML 효과 렌더링이 구현되었습니다.
- [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) 및 [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) 클래스와 [SeriesGroups](https://reference.aspose.com/ words/java/com.aspose.words/chart/#getSeriesGroups) 속성입니다.
- [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/) 클래스를 추가하여 도형의 SoftEdge 효과를 조작하는 기능이 구현되었습니다.
- 도형의 조정 값을 수정하는 기능은 [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) 및 [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) 공개 클래스 및 [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/# getAdjustments) 재산.

#### 차트, 도형, 그림의 변경 <sup>24.6</sup>

* 차트 기능이 향상되었습니다. 이제 *트리맵*, *선버스트*, *히스토그램*, *파레토* 차트, *상자 및 수염* 차트, *폭포*, *깔때기*를 포함하여 더욱 다양한 차트를 만들 수 있습니다. 이를 통해 데이터를 더욱 다양하고 유익한 방식으로 시각화할 수 있습니다.
* 그림자 서식의 색상 제어가 개선되었습니다. 그림자 색상에 액세스하여 문서의 모양을 보다 정확하게 제어할 수 있습니다.
* 배경 렌더링 성능 향상이 향상되었습니다. 기본 타일링 기술 덕분에 작은 요소가 포함된 배경의 렌더링 속도를 크게 높일 수 있습니다.
* 모양에 사실적인 그라데이션이 추가되었습니다. 이제 비선형 그라데이션으로 DML 모양을 만들어 Microsoft Word의 시각적 스타일을 모방하여 더욱 세련된 모양을 만들 수 있습니다.

#### 차트 데이터 라벨 사용자 정의 <sup>24.7</sup>

**방향** 및 **회전**과 같은 차트 데이터 라벨을 맞춤설정하는 기능이 추가되었습니다.

#### 목록 수준에 대한 사용자 정의 숫자 스타일 <sup>24.7</sup>

공용 속성 [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat)에 대한 설정자가 추가되었습니다. 이제 목록 수준에 대한 사용자 정의 숫자 스타일을 정의할 수 있습니다.

#### ActiveX 작업 시 변경 사항 <sup>24.7</sup>

* 이제 ActiveX 개체의 속성을 수정하여 해당 동작을 더 효과적으로 제어할 수 있습니다.
* 라디오 버튼 ActiveX 컨트롤의 값을 수정하여 동적 상호 작용을 가능하게 하는 기능이 추가되었습니다.
* ActiveX 체크박스를 "선택" 또는 "선택 해제"로 전환하는 기능이 추가되었습니다.

#### 차트 축 눈금 레이블 방향 및 회전 제어 <sup>24.8</sup>

차트 축 눈금 레이블의 방향 및 회전을 정확하게 제어하여 더욱 편리한 차트 사용자 지정이 가능해졌습니다. [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) 클래스가 새로운 **Orientation** 및 **Rotation** 속성으로 확장되었습니다.

#### 백슬래시를 엔 기호로 바꾸기 <sup>24.8</sup>

백슬래시 문자를 엔 기호로 바꾸기 위한 이전 버전과의 호환되는 HTML 및 XAML 내보내기가 개선되었습니다. 이를 달성하기 위해 [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) 및 [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) 클래스에 **ReplaceBackslashWithYenSign** 속성이 추가되었습니다.

#### PDF로 내보낼 때 SDT 태그를 양식 필드 이름으로 사용 <sup>24.8</sup>

SDT 태그를 양식 필드 이름으로 사용하는 기능이 포함된 PDF 내보내기가 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) 클래스에 새로운 **UseSdtTagAsFormFieldName** 속성을 추가하여 향상되었습니다.

### 문서 변환, 로드 및 저장

#### 마크다운 형식으로 링크 내보내기 <sup>24.7</sup>

[LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode) 속성 구현을 통해 Markdown 형식의 링크 내보내기를 제어하는 ​​기능이 추가되었습니다.

#### LowCode <sup>24.8</sup>

한 줄의 코드로 다양한 문서 유형을 변환하는 메서드 집합을 제공하도록 설계된 새로운 **LowCode.Converter** 클래스가 도입되었습니다.

### 검색 및 비교

#### 고급 비교 옵션 <sup>24.6</sup>
향상된 비교 기능으로 데이터 분석 워크플로우를 간소화하는 기능이 추가되었습니다. 여기에는 새로운 [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) 옵션과 고급 비교를 위해 재설계된 인터페이스가 포함됩니다.

### 다른

* [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages) 메소드를 추가하여 문서에서 빈 페이지를 제거하는 기능이 구현되었습니다. <sup>24.5</sup>
* [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros)를 추가하여 문서를 로드하지 않고도 VBA 매크로 존재 여부를 확인할 수 있는 기능이 제공되었습니다. 재산. <sup>24.5</sup>
* 이제 LINQ 보고 엔진을 사용하여 문서를 삽입하는 동안 소스 번호 매기기가 지원됩니다. <sup>24.5</sup>
* 새로운 [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) 속성이 추가되었습니다. 이는 댓글에 대한 보다 정확한 타임스탬프를 제공하여 구성 및 추적성을 향상시킵니다. <sup>24.6</sup>
* LINQ 보고 엔진이 개선되었습니다. 빈 단락을 선택적으로 제거하고 누락된 개체 구성원에 대한 사용자 정의 메시지를 정의하여 더욱 깔끔하고 유익한 보고서를 제공합니다. <sup>24.6</sup>
* 이제 XLSX 형식으로 원활하게 내보내기 위해 날짜/시간 형식이 자동으로 감지됩니다. <sup>24.7</sup>
* VBA 프로젝트가 보호되는지 확인할 수 있는 공용 속성 [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected)가 추가되었습니다. <sup>24.7</sup>
* [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) 및 [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) 클래스에 **EmbeddingLicensingRights** 속성이 추가되어 글꼴 정보가 확장되었습니다. <sup>24.8</sup>
* 워터마크를 유지하면서 섹션 머리글과 바닥글을 효율적으로 지우는 방법이 추가되어 문서 구조에서 보다 정확하게 작업할 수 있습니다. 섹션 머리글과 바닥글을 지우려면 새로운 공개 메서드 **ClearHeadersFooters** 를 사용합니다. <sup>24.8</sup>
* [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) 사용한 XPS 문서의 디지털 서명이 활성화되었습니다. 이 목적을 위해 새로운 속성 **DigitalSignatureDetails** 가 추가되었습니다. <sup>24.8</sup>

{{% alert color="primary" %}}

[Aspose.Words for Java 24.5 릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/) 에 대해 자세히 알아보세요.

[Aspose.Words for Java 24.6 릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/) 에 대해 자세히 알아보세요.

[Aspose.Words for Java 24.7 릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/) 에 대해 자세히 알아보세요.

[Aspose.Words for Java 24.8 릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/) 에 대해 자세히 알아보세요.

{{% /alert %}}

## Aspose.Words 제품정보 Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1은 스트로크 색상을 관리하는 경험을 향상시키고 OLE 개체와 LINQ 보고를 향상시키고 새로운 Bibliography Sources 공개를 소개합니다. API·

Aspose.Words 24.2 확장 차트 API, 스타일 관리 및 LINQ 옵션. 이 버전의 Aspose.Words 또한 렌더링 중 SvgSaveOptions를 지정하는 기능을 도입, 더 유연한 제어 로딩 Markdown 파일 및 footnotes 및 endnotes에 대한 참조 텍스트 작업.

Aspose.Words 24.3은 새로운 TIFF Reader/Writer와 WMF 메타파일에 대한 이진 래스터 작업의 에뮬레이션을 소개합니다. Aspose.Words 24.3 또한 계속 차트를 확장 API·

Aspose.Words 24.4은 형식 저장, 일부 렌더링 옵션, 디지털 서명 작업을 개선합니다.

### 지원되는 형식 <sup>24.4</sup>

이제 Aspose.Words에서 최신 WebP 이미지 형식이 지원됩니다. 이제 **WebP** 이미지를 읽고 문서에 삽입할 수 있을 뿐만 아니라 WebP 형식으로 이미지를 저장할 수도 있습니다.

### 렌더링 및 인쇄

#### 치기 색깔 통제 <sup>24.1의</sup>

더 보기 [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) 클래스는 스트로크 색상 관리와 관련된 새로운 공공 속성 세트로 확장되었습니다: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) · [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) · [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade)·

#### DrawingML Charts API 확장 <sup>24.2 / 24.3 / 24.4</sup>

더 보기 **DrawingML Charts API** 확장되고 있습니다.

#### @font-face 규칙에 선언된 글꼴 포함 <sup>24.4</sup>

새로운 [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules) 속성을 추가하여 결과 문서의 글꼴 정의에 @font-face 규칙에 선언된 글꼴을 포함하는 기능이 추가되었습니다.

#### 글로우 및 반사 형식과 작업 <sup>24.4</sup>

도형 객체에 대한 글로우 및 반사 형식 작업 기능이 구현되었습니다.

### 로딩 및 저장 문서

#### 렌더링 중 SvgSaveOptions 지정 <sup>24.2명</sup>

지정할 기능 [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) 렌더링 중에 추가되었습니다. [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)·[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) · [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/)·[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) 방법.

#### 적재할 때 보존 빈 라인 Markdown 파일 형식 <sup>24.2명</sup>

적재할 때 빈 줄을 보존하는 능력 Markdown 파일이 추가되었습니다.

#### 새로운 TIFF 리더 / 리더 <sup>24.3명</sup>

새로운 TIFF 리더 / 라이터 Aspose.Words 제품정보 .NET Standard, .NET 6 이후 개발되었습니다. Aspose.Words 제품정보 .NET 24.3 JPEG 및 오래된 JPEG 압축 유형을 가진 TIFF 이미지를 읽는 지원을 추가하고, 또한 읽기와 쓰기 가동의 질을 개량했습니다.

### 이름 *

* 이름 텍스트를 수정하는 기능 `TextBox` OLE 컨트롤이 도입되었습니다. [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) 새로운 재산 [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) 수업. 24.1의 <sup>24.1의</sup>
* Bibliography 소스 공개 API 몇 가지 새로운 것을 추가하여 구현되었습니다. [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) · [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) 수업 및 수업 [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) 새로운 기능 [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) 호텔 위치 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 수업. <sup>24.1의</sup>
* 이름 API LINQ Reporting Engine을 위한 템플릿 구문을 사용하여 멤버에 접속할 수 있습니다. <sup>24.1의</sup>
* 새로운 공공 속성 [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), · [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) 강화된 작풍 관리를 위해 추가되었습니다 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 수업. <sup>24.2명</sup>
* 이름 Footnotes 및 endnotes의 실제 참조 마크 텍스트를 검색하는 기능은 강화되었습니다. [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) 시설 및 시설 [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) 방법. <sup>24.2명</sup>
* 겸용성 `Word 2016` 차트에 대한 `LINQ Reporting Engine` 지원하다 <sup>24.2명</sup>
* WMF 메타파일에 대한 바이너리 래스터 작업의 에뮬레이션이 구현되었습니다. <sup>24.3명</sup>
* 새로운 [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) 클래스와 [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/), [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) 클래스에 새로운 공용 멤버를 추가함으로써 **SaveOptions** 내에서 문서의 서명 옵션을 정의하는 기능이 활성화되었습니다. <sup>24.4</sup>

{{% alert color="primary" %}}

더 알아보기 [Aspose.Words 제품정보 Java 24.1 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 24.2 릴리즈 노트.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

더 알아보기 [Aspose.Words 제품정보 Java 24.3 릴리즈 노트.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

더 알아보기 [Aspose.Words 제품정보 Java 24.4 릴리즈 노트.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words 제품정보 Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 확장 옵션, 메타파일 렌더링 에뮬레이션, markdown 옵션 저장.

Aspose.Words 23.10은 렌더링을 개선하고 문서 로딩 및 저장을위한 옵션을 확장하고 사용자가 새로운 방법으로 문서를 병합 할 수 있습니다.

Aspose.Words 23.11은 추가 옵션으로 차트 전설의 개정, XLSX 형식 및 글꼴과 함께 작업을 향상시킵니다.

Aspose.Words 23.12는 PDF 문서 작업을위한 새로운 속성과 열렬한 도입, 지원 WebP 이미지 및 업데이트 Bouncy Castle 라이브러리.

### 렌더링 및 인쇄

#### DrawingML에서 Axes 타이틀을 사용자 정의 언어 선택 <sup>23.9의</sup>

DrawingML 차트의 축 제목을 사용자 정의 할 수있는 기능은 새로운 공공 클래스의 구현에 의해 도입되었습니다. [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) · [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) 호텔 위치

#### 퍼프 내 글꼴의 수직 위치 결정 <sup>23.9의</sup>

이제 새로운 공공을 사용하여 단락 내에서 글꼴의 수직 위치를 정의 할 수 있습니다 [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) 재산과 새로운 [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) 관련 기사

#### 지상 색깔 통제 <sup>23.10 ·</sup>

modifiers없이 전경 색상을 검색하는 능력은 추가되었습니다. [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) · [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) 수업을 통해 **BaseForeColor** 호텔 위치

#### 차트의 기능 확장 <sup>23.10 ·</sup>

기능의 [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), · [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) 클래스는 새로운 방법 및 속성으로 확장되었습니다.

#### 자동 조정 및 모양에 이미지를 적합 <sup>23.10 ·</sup>

자동적으로 조정하고 특정 모양 안에 이미지를 적합하게 하는 간단한 방법은 새로운 것을 통해 제공되었습니다 [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) 방법.

#### 그림을위한 기본 글꼴 형식 사이트맵 차트 전설 Entries <sup>23.11 ·</sup>

DrawingML 차트의 전설 항목에 대한 기본 글꼴 형식을 지정하는 능력은 추가되었습니다 **Font** 호텔 위치 이 기능은 차트 요소에 대한 더 간소화되고 일관성있는 외관을 촉진하고 전반적인 문서 미학을 향상시킵니다.

#### 페이지 배치를 지정할 때 PDF Reader <sup>23.12 ·</sup>

PDF 리더의 문서를 열 때 페이지 레이아웃을 지정할 수있는 기능은 새로운 도입을 통해 추가되었습니다. [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) 호텔 위치 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) 클래스와 새로운 소개 [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) 관련 기사

### 로딩 및 저장 문서

#### Construct Image URIs에 대한 폴더 이름 지정 Markdown <sup>23.9의</sup>

더 보기 [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 클래스는 다음과 같이 확장되었습니다. [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) 속성, 이는 이미지 URI를 생성하기 위해 사용되는 폴더의 이름을 지정할 수 Markdown 문서.

#### PDF 축소 산출 크기 <sup>23.10 ·</sup>

다양한 PDF 렌더링 최적화를 사용하여 출력 크기를 줄일 수 있습니다. [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) 설정이 구현되었습니다.

#### TXT 문서 로딩시 하이퍼링크 인식 <sup>23.10 ·</sup>

TXT 문서를 로딩할 때 하이퍼링크 인식 기능이 구현되었습니다. [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) 호텔 위치

### 이름 *

- 래스터화 크기를 결정하기 위해 Metafile 렌더링 에뮬레이션은 WMF 펜 폭과 EMF 화장품 펜 폭을 위해 특별히 구현되었습니다. 이것을 달성하기 위해, **ScaleWmfFontsToMetafileSize** 재산은 대체되었습니다 [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) 시설 및 시설 [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) 재산이 추가되었습니다. <sup>23.9의</sup>
- 현재 커서 위치에 하나의 문서를 다른 문서에 삽입하는 간단한 방법 [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) 방법. <sup>23.10 ·</sup>
- - - 스타일 속성에 액세스하고 수정할 수있는 기능은 새로운 도입을 통해 추가되었습니다. [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) 호텔 위치 <sup>23.10 ·</sup>
- 일반적인 유형 매개 변수가 메소드에 추가되었습니다. [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 수업. <sup>23.10 ·</sup>
- 특정 개정이 허용되어야 할 때 제어하는 방법 / 거부 또는 사용하지 않는 사용 [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) · [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) 방법. 이 향상은 개정 프로세스를 통해 사용자의 미세 제어를 부여합니다. <sup>23.11 ·</sup>
- - - 같은 XLSX 워크 시트에 문서의 모든 부분을 작성하는 능력은 새로운 것을 통해 제공되었습니다. [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) 열렬한 유형과 새로운 [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) 호텔 위치 <sup>23.11 ·</sup>
- 지원 WebP 이미지가 도입되었습니다. 이 기능은 이용 가능합니다. .Net스탠드트 및 .NET6+ 버전. <sup>23.12 ·</sup>

{{% alert color="primary" %}}

더 알아보기 [Aspose.Words 제품정보 Java 23.9 릴리즈 노트](/words/java/aspose-words-for-java-23-9-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.10 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.11 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.12 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/)·

{{% /alert %}}

## Aspose.Words 제품정보 Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5은 차트 시리즈 데이터와 ODT 문서와 작업 할 수있는 능력을 향상시키고 헤더 / 발러와 텍스트 포장을 향상시킵니다.

Aspose.Words 23.6 확장 옵션, 새로운 수출 형식을 추가, LINQ 보고 개선 및 LowCode 도구.

Aspose.Words 23.7는 보고 기능을 강화합니다, 새로운 수출 체재를 추가하고, 테이블과 디지털 방식으로 서명과 일하기 위하여 변화를 소개합니다.

Aspose.Words 23.8 다른 형식의 기능을 확장하고 렌더링을 개선하고 필드와 작업을위한 새로운 옵션을 추가합니다

### 지원되는 체재

* 버전 23.6부터 XLSX 형식의 문서를 저장할 수 있습니다. 이제 Excel 형식으로 문서를 변환 할 수 있습니다. <sup>23.6명</sup>

* 버전 23.7부터 EPS 형식의 문서 페이지 또는 모양을 저장할 수 있습니다. <sup>23.7명</sup>

* 이름 ### 새로운 체재 특징

  - MOBI 문서의 Table of Contents (TOC)를 자동으로 생성합니다. <sup>13.8명</sup>
  - 한국어 [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) constructor는 확장되었습니다 [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/)· <sup>13.8명</sup>
  - EMF 메타파일의 수직 텍스트의 형성은 구현되었습니다. <sup>13.8명</sup>

### 이름 *

#### 다운로드 및 수정 차트 시리즈 Data <sup>23.5 마일</sup>

차트 시리즈 데이터가 추가된 기능:

- 새로운 클래스: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- 새로운 enum 유형: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Advanced Typography 지원 <sup>23.6명</sup>

WMF, EMF 및 EMF+ 렌더링의 고급 전기 지원이 추가되었습니다.

#### 페이지에 색칠된 내용 <sup>23.6명</sup>

재산 객실 모두 [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), 페이지가 색이 아닌지 나타내는 것은 추가되었습니다.

#### 차트 데이터 라벨 형식 <sup>23.6명</sup>

차트 데이터 라벨에 대한 채우, 스트로크 및 콜아웃 포맷을 설정하는 능력이 구현되었습니다.

### Mail Merge 및 보고

#### LINQ 보고 엔진을 위한 동적인 HTML 삽입 <sup>23.6명</sup>

LINQ Reporting Engine의 동적 HTML 삽입의 새로운 방법은 추가되었습니다.

#### Mustache 태그 지원 <sup>23.7명</sup>

Mustache 태그가 이제 지원됩니다. [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) · [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) 방법.

#### LINQ 보고 엔진 템플릿 Syntax 업데이트 <sup>23.7명</sup>

LINQ 보고 엔진 템플릿 문법은 이제 지원 `ElementAt` ElementAtOrDefault 확장 방법.

#### 렌더링 된 이미지의 크기를 지정 <sup>13.8명</sup>

새로운 공공 재산 **ImageSize** 픽셀의 렌더링 된 이미지의 크기를 지정하는 것은 도입되었습니다.

#### JSON String Values에 대해 Whitespaces 보존 – LINQ <sup>13.8명</sup>

LINQ Reporting Engine에 옵션이 추가되어 JSON 문자열 값에 whitespaces를 보존합니다.

### LowCode <sup>23.6명</sup>

- 한국어 LowCode 다른 유형의 문서를 단일 출력 문서로 병합하는 방법은 추가되었습니다.

### 이름 *

- headers/footers에서 감싸는 텍스트 지원은 구현되었습니다. <sup>23.5 마일</sup>
- - - ODT 문서의 디지털 서명 제거 능력이 추가되었습니다. [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) 방법. <sup>23.5 마일</sup>
- - - 재산 객실 모두 [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) 을 얻 기본 과 ruby text 의 the phonetic guide [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) 추가되었습니다. <sup>23.5 마일</sup>
- - - 디지털 서명 문서에서 디지털 서명 값을 검색 할 수있는 기능은 새로운 도입에 의해 추가되었습니다 [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) 호텔 위치 <sup>23.7명</sup>
- 한국어 [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) · [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 클래스는 새로운 공개 회원으로 확장되었습니다 – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), · [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell)· <sup>23.7명</sup>
- CITATION 및 BIBLIOGRAPHY 필드에 대한 지원이 추가되었습니다. <sup>13.8명</sup>

{{% alert color="primary" %}}

더 알아보기 [Aspose.Words 제품정보 Java 23.5 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.6 릴리즈 노트](/words/java/aspose-words-for-java-23-6-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.7 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.8 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/)·

{{% /alert %}}

## Aspose.Words 제품정보 Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1는 래스터 작업 에뮬레이션의 성능을 향상시키고 문서 수출 및 렌더링 품질을 향상시킵니다.

Aspose.Words 23.2은 MOBI 형식의 저장 문서를 도입하고 차트 렌더링을 개선하고 문서 외관 세부 사항에 주목할만한 변화를 만듭니다.

Aspose.Words 23.3 문서 가져 오기 및 새로운 속성으로 저장을 향상, 또한 배경과 전경 색상과 레이디얼 그라디언트 작업의 품질을 향상.

Aspose.Words 23.4는 일부 매개 변수와 테이블과 주변 텍스트의 위치 계산을 향상시킵니다.

### 성능 향상

#### Raster 가동의 에뮬레이션 <sup>23.1의</sup>

metafiles를 가진 raster 가동의 성과 그리고 질은 크게 개량되었습니다.

### 지원되는 체재

#### MOBI에 수출 <sup>23.2명</sup>

버전 23.2부터 MOBI 형식의 문서를 저장할 수 있습니다 (또한 PRC, AZW라고도 함) Amazon Kindle의 자체 전자 책 파일 형식). 이제 MOBI 문서를로드 할뿐만 아니라 MOBI 형식에 파일을 수출 할 수 없습니다.

### 이름 *

#### Shading 테마 색상 작업 <sup>23.1의</sup>

셰이딩 테마 색상이 구현된 기능.

#### DML Charts의 R-squared Coefficient 지원 <sup>23.1의</sup>

렌더링이 추가되었을 때 DML 차트 트렌드 라벨의 R-squared 계수 지원.

#### 차트 렌더링 개선 <sup>23.2명</sup>

23.2 이후 차트 렌더링이 크게 향상되었습니다.

#### 배경과 지상 색깔 통제 <sup>23.3의</sup>

더 보기 [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) 클래스는 배경과 전경 색상과 관련된 새로운 공공 속성 세트로 확장되었습니다: **ForeThemeColor** · **BackThemeColor**, **ForeTintAndShade** · **BackTintAndShade**·

#### Radial Gradients 와 함께 `SkiaSharp` 기본 Shader <sup>23.3의</sup>

Radal gradients의 렌더링 `SkiaSharp` 기본 쉐이더 .NET Standard 구현되었습니다.

#### 테이블 사이 거리와 서라운드 텍스트 <sup>23.4의</sup>

테이블과 주변 텍스트 사이의 거리를 설정하는 기능은 새로운 속성을 도입하여 추가되었습니다. [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) 종류: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), · [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom)·

### 로딩 및 저장 문서

#### 제품 정보 `TOC` AZW3 문서 <sup>23.1의</sup>

생성 능력 `TOC` AZW3 문서에 대한 (표시 가능)은 사용 후 추가되었습니다. [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) 호텔 위치

#### 수출 목록 항목 Markdown <sup>23.1의</sup>

목록 품목의 수출을 통제하는 방법 Markdown 형식을 추가하여 제공되었습니다. [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) 호텔 위치 [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 수업.

#### 문서 저장 진행 알림 <sup>23.3의</sup>

MOBI 및 AZW3 형식의 진행 알림을 저장합니다.

#### 문장과 단어 간격 조정 <sup>23.3의</sup>

문서 가져오기에 자동으로 문장과 단어 간격을 조정하는 능력이 추가되었습니다. **AdjustSentenceAndWordSpacing** 호텔 위치

### 이름 *

- - - 문서의 문자 간격 조정을 지정할 수있는 능력은 추가되었습니다. [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) 재산 구현 <sup>23.2명</sup>
- 파기방법 Aspose.Words textboxes, footnotes 및 endnotes를 포함하는지 여부는 word count 통계에 의해 제공되었습니다. [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) 이름 * <sup>23.2명</sup>
- 적절한 값에 따라 스타일이 자동으로 정의되는지 지정할 수 있는 문서 스타일에 대한 새로운 옵션이 도입되었습니다. [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) 이름 * <sup>23.2명</sup>
- - - 결정할 수있는 능력 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) 본문내용 바로가기 주메뉴 바로가기 **IsPhoneticGuide** 이름 * <sup>23.4의</sup>
- 시리즈와 콤보 차트의 axes로 작업하는 간단한 방법은 도입하여 구현되었습니다. **ChartAxisCollection** 수업 및 추가 **Chart.Axes** 이름 * <sup>23.4의</sup>
- 모양 상대적인 포지셔닝과 sizing에 연결된 새로운 공중 재산은 추가되었습니다 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 수업시간 <sup>23.4의</sup>
- 자동 텍스트 색상 해상도의 색상 밝기 계산의 정확도 및 성능은 최신 버전에 따라 개선되었습니다. Microsoft Word <sup>23.4의</sup>

{{% alert color="primary" %}}

더 알아보기 [Aspose.Words 제품정보 Java 23.1 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.2 릴리스 노트](/words/java/aspose-words-for-java-23-2-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.3 릴리즈 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/)·

더 알아보기 [Aspose.Words 제품정보 Java 23.4 릴리스 노트](/words/java/aspose-words-for-java-23-4-release-notes/)·

{{% /alert %}}

## 더 보기

{{% alert color="primary" %}}

이 페이지는 지난 2 년 동안 최신 릴리스 뉴스를 포함합니다. 이전 릴리스에 대한 세부 사항, 참조 [공지사항 이름 *](https://releases.aspose.com/words/java/release-notes/) 관련 섹션의 페이지.

{{% /alert %}}
