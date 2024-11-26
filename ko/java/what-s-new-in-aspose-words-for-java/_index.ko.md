---
title: 새로운 기능
second_title: Aspose.WordsJava
articleTitle: Java에 대한Aspose.Words의 새로운 기능
linktitle: Java에 대한Aspose.Words의 새로운 기능
type: docs
description: "Aspose.Words에 대한Java매일 확장하고 향상시킵니다. 이 페이지에서 제품의 거대하고 가장 흥미로운 기능에 대해 배울 수 있습니다."
weight: 2
url: /ko/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

이 페이지는 최근 릴리스에서 소개 된 가장 흥미로운 새로운Aspose.Words기능에 대해 설명합니다.

## Aspose.WordsJava 24.9, 24.10

Aspose.Words24.9DocumentBuilder을 통한group shape삽입 및StructuredDocumentTag삽입을 도입하고,눈금으로 방사형 차트 렌더링을 향상시키고,XAdES-EPES지원을 통해 디지털 서명을 개선하고,Markdown밑줄 인식을 추가하고,각주/미주 구분 기호에 대한 액세스를 제공합니다.

Aspose.Words24.10CommandButton생성,새로운 모양 가시성 제어,group shapes기능,향상된Markdown테이블 내보내기,Pie및Doughnut차트에 대한 차트 서식 지정,더 나은 빅 5 인코딩 처리 및 오래된 대만 글꼴 지원을 통해 향상된 액티브엑스 제어 지원을 소개합니다.

### 렌더링 및 인쇄

#### 방사형 차트의 눈금 <sup>24.9</sup>

방사형 차트에 눈금의 렌더링이 구현되었습니다.

#### CommandButton액티브 컨트롤 <sup>24.10</sup>

CommandButton액티브엑스 컨트롤을 만드는 기능은 새로운 공개 메소드[InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl)과 새로운 공개 클래스[Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/)을 추가하여 도입되었습니다.

#### 형상 가시성 제어 <sup>24.10</sup>

모양의 가시성을 제어하기 위해 새로운 공용 속성[Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden)이 추가되었습니다.

#### Pie및Doughnut차트의 변경 사항 <sup>24.10</sup>

Pie및Doughnut차트 형식에 몇 가지 새로운 공용 속성이 추가되었습니다.

### 문서 변환,로드 및 저장

#### Markdown파일을 로드할 때 밑줄 서식 지정 <sup>24.9</sup>

Markdown문서를 로드할 때 밑줄 서식을 인식하는 옵션은 새 공용 속성[ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting)을 추가하여 통합되었습니다.

#### Markdown에 저장할 때 테이블을HTML로 내보내기 <sup>24.10</sup>

문서를Markdown형식으로 저장할 때 테이블을HTML로 내보내는 옵션은 새로운 공용 속성[ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml)과 열거형[MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/)을 추가하여 구현되었습니다.

### 디지털 서명

#### XAdES-EPES로 문서에 서명 <sup>24.9</sup>

XAdES-EPES수준XML-DSig서명으로 문서에 서명하는 기능은 새 공용 속성[XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel)과 새 공용 열거형[XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)을 추가하여 도입되었습니다

### 다른

* Group shapes에 새 공용 메서드[InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...)이 추가되었습니다. <sup>24.9</sup>
* **StructuredDocumentTags**을 문서에 삽입하기 위한 새로운 공용 메서드[InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int)이 추가되었습니다. <sup>24.9</sup>
* 각주/미주 구분 기호에 대한 공개 액세스는 몇 가지 공개 클래스 및 속성을 추가하여 제공되었습니다. <sup>24.9</sup>
* 개별 모양을 그룹화하고,group shapes을 함께 그룹화하고,두 모양과group shapes을 직접 그룹화하는 기능은[InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...)방법을 추가하여 도입되었습니다. <sup>24.10</sup>
* TrueType에 대한 빅 5 인코딩 처리가 개선되었습니다. <sup>24.10</sup>
* 오래된 대만 글꼴에 대한 지원이 향상되었습니다. <sup>24.10</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.WordsJava24.9릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava24.10릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.WordsJava 24.5, 24.6, 24.7, 24.8

Aspose.Words24.5어셈블리에 대한 옵션을 확장하고 렌더링 기능을 개선하며 일부 다른 옵션을 확장합니다.

Aspose.Words24.6렌더링 옵션을 개선하고 검색 및 비교 기능을 향상시키며 다른 여러 기능을 확장합니다.

Aspose.Words24.7는 액티브엑스 작업 방식을 변경하고 렌더링 기능을 확장하며Markdown및XLSX형식으로 내보냅니다.

Aspose.Words24.8축 레이블을 정밀하게 제어하여 차트 사용자 정의를 강화하고 글꼴 관리를 확장하며 문서 구조 처리를 개선하고HTML/XAML내보내기,PDF기능,문서 변환 및 디지털 서명을 위한 새로운 기능을 추가합니다.

### 지원되는 형식

버전24.7부터PDF/UA-2으로 내보내기를 지원하여 장애가 있는 사용자의 접근성을 보장합니다.

### 렌더링 및 인쇄

#### 차트,도형 및DrawingML의 변경 사항 <sup>24.5</sup>

- SVG그래픽에 대한DrawingML효과 렌더링,이미지로 제한된 이전 기능 확장,구현되었습니다.
- [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/)및[ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/)클래스와[SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups)속성을 추가하여 콤보 차트를 만들고 계열 그룹 내에서 간격 너비,겹침 및 거품 배율과 같은 속성을 조정하는 데 대한 지원이 도입되었습니다.
- [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/)클래스를 추가하여 도형의SoftEdge효과를 조작하는 기능이 구현되었습니다.
- 도형의 조정 값을 수정하는 기능은[AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/)및[Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/)공용 클래스와[Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments)속성을 추가하여 구현되었습니다.

#### 차트,도형 및 도면의 변화 <sup>24.6</sup>

- 차트 기능이 향상되었습니다. 이제 다음을 포함하여 더 다양한 차트를 만들 수 있습니다*Treemaps*, *Sunbursts*, *Histograms*, *Pareto* 차트,*Box & Whisker*차트,*Waterfalls*및*Funnels*. 이것은 당신이 더 다양하고 유익한 방법으로 데이터를 시각화 할 수 있습니다.
- 그림자 서식에 대한 색상 제어가 개선되었습니다. 그림자 색상에 액세스하여 문서의 모양을 보다 정확하게 제어할 수 있습니다.
- 배경 렌더링에 대한 성능 향상이 향상되었습니다. 기본 타일링 기술 덕분에 작은 요소가 포함 된 배경의 렌더링 속도를 크게 높일 수 있습니다.
- 모양에 대한 현실적인 그라디언트가 추가되었습니다. 이제 더 세련된 모양을 위해Microsoft Word의 시각적 스타일을 모방하여 비선형 그라디언트로DML도형을 만들 수 있습니다.

#### 차트 데이터 레이블 사용자 정의 <sup>24.7</sup>

**Orientation**및**Rotation**과 같은 차트 데이터 레이블을 사용자 지정할 수 있는 기능이 추가되었습니다.

#### 목록 수준에 대한 사용자 지정 번호 스타일링 <sup>24.7</sup>

공용 재산[CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat)에 대한 세터가 추가되었습니다. 이제 목록 수준에 대한 사용자 지정 숫자 스타일을 정의할 수 있습니다.

#### 액티브엑스 작업의 변화 <sup>24.7</sup>

* 액티브 객체의 속성은 이제 당신에게 자신의 동작을 더 제어 할 수 있도록 수정할 수 있습니다.
* 동적 상호 작용을 활성화하기 위해 라디오 버튼 액티브 컨트롤의 값을 수정하는 기능이 추가되었습니다.
* 액티브엑스checkbox을"체크"또는"체크되지 않은"으로 전환할 수 있는 기능이 추가되었습니다.

#### 차트 축 눈금 레이블 방향 및 회전 제어 <sup>24.8</sup>

[AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/)클래스가 새로운**Orientation**및**Rotation**속성으로 확장되었습니다.

#### 백슬래시를 엔 기호로 바꾸기 <sup>24.8</sup>

백슬래시 문자를 엔 기호로 바꾸기 위한 역 호환HTML및XAML내보내기가 개선되었습니다. 이를 위해**ReplaceBackslashWithYenSign**속성이[HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/)및[XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)클래스에 추가되었습니다.

#### PDF로 내보낼 때SDT태그를 양식 필드 이름으로 사용 <sup>24.8</sup>

[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)클래스에 새**UseSdtTagAsFormFieldName**속성을 추가하여SDT태그를 양식 필드 이름으로 사용하기 위한 지원이 포함된PDF내보내기 기능이 향상되었습니다.

### 문서 변환,로드 및 저장

#### Markdown형식으로 링크 내보내기 <sup>24.7</sup>

[LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode)속성의 구현을 통해Markdown형식의 링크 내보내기를 제어하는 기능이 추가되었습니다.

#### LowCode 24.8 <sup>24.8</sup>

한 줄의 코드로 다양한 문서 유형을 변환하는 일련의 방법을 제공하도록 설계된 새로운**LowCode.Converter**클래스가 도입되었습니다.

### 검색 및 비교

#### 고급 비교 옵션 <sup>24.6</sup>

향상된 비교 기능으로 데이터 분석 워크플로를 간소화할 수 있는 기능이 추가되었습니다. 여기에는 새로운[IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId)옵션과 고급 비교를 위한 재설계된 인터페이스가 포함됩니다.

### 다른

* 문서에서 빈 페이지를 제거하는 기능은[RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages)방법을 추가하여 구현되었습니다. <sup>24.5</sup>
* [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros)속성을 추가하여 문서를 로드하지 않고VBA매크로가 있는지 확인할 수 있습니다. <sup>24.5</sup>
* LINQ보고 엔진을 사용하여 문서를 삽입하는 동안 소스 번호 매기기를 유지하는 것이 지원됩니다. <sup>24.5</sup>
* 새로운[DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc)속성이 추가되었습니다.이 속성은 주석에 대한 보다 정확한 타임스탬프를 제공하여 조직 및 추적성을 향상시킵니다. <sup>24.6</sup>
* LINQ보고 엔진이 개선되었습니다. 빈 단락을 선택적으로 제거하고 누락된 개체 멤버에 대한 사용자 정의 메시지를 정의하여 더 깨끗하고 유익한 보고서를 만들었습니다. <sup>24.6</sup>
* 이제XLSX형식으로 원활한 내보내기를 위해 날짜/시간 형식이 자동으로 감지됩니다. <sup>24.7</sup>
* VBA프로젝트가 보호되는지 여부를 확인할 수 있는 공용 속성[IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected)이 추가되었습니다. <sup>24.7</sup>
* 글꼴 정보는[FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/)및[PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/)클래스에 추가된**EmbeddingLicensingRights**속성으로 확장되었습니다. <sup>24.8</sup>
* 워터마크를 보존하면서 섹션 머리글과 바닥글을 효율적으로 지우는 방법이 문서 구조를 더 정확하게 작업하기 위해 추가되었습니다. 섹션 머리글과 바닥글을 지우려면 새 공용 메서드**ClearHeadersFooters**을 사용합니다. <sup>24.8</sup>
* [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/)을 사용하여 XPS 문서의 디지털 서명이 활성화되었습니다. 이 목적을 위해 새 속성 **DigitalSignatureDetails**이 추가되었습니다. <sup>24.8</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.WordsJava24.5릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava24.6릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava24.7릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava24.8릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.WordsJava 24.1, 24.2, 24.3, 24.4

Aspose.Words24.1,획 색상을 관리하는 주위에 경험을 향상OLE개체와LINQ보고를 향상뿐만 아니라,새로운 참고 문헌 소스 공개API을 소개합니다.

Aspose.Words24.2확장된 차트API,스타일 관리 및LINQ옵션. 이 버전의Aspose.Words은 또한 렌더링 중에SvgSaveOptions을 지정할 수 있는 기능을 도입했으며,Markdown파일을 더 유연하게 제어하고,각주와 끝표에 대한 참조 텍스트를 작업했습니다.

Aspose.Words24.3는WMF메타파일에 대한 새로운TIFF리더/라이터와 바이너리 래스터 연산의 에뮬레이션을 소개합니다. Aspose.Words24.3도API차트를 계속 확장합니다.

Aspose.Words24.4은 저장 형식,일부 렌더링 옵션을 향상시키고 디지털 서명 작업을 향상시킵니다.

### 지원되는 형식 <sup>24.4</sup>

현대**WebP**이미지 형식은 이제Aspose.Words에서 지원됩니다. 이제WebP이미지를 문서에 읽고 삽입할 수 있으며WebP형식으로 이미지를 저장할 수 있습니다.

### 렌더링 및 인쇄

#### 스트로크 색상 제어 <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/)클래스는 획 색상 관리와 관련된 새로운 공용 속성 세트([ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor)및[BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor),[ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade)및[BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade))로 확장되었습니다.

#### DrawingML차트API확장 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API**은 계속 확장되고 있습니다.

#### @font-face규칙에 선언된 글꼴 포함 <sup>24.4</sup>

추가 결과 문서의 글꼴 정의에@font-face규칙에 선언 된 글꼴을 포함 할 수있는 기능은 새로운[SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules)속성을 추가하여 도입되었습니다.

#### 글로우 및 반사 서식 지정 작업 <sup>24.4</sup>

도면 객체에 대한 빛과 반사 포맷으로 작업할 수 있는 기능이 구현되었습니다.

### 문서 로드 및 저장

#### 렌더링하는 동안SvgSaveOptions지정 <sup>24.2</sup>

렌더링 중에[SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/)를 지정하는 기능이[ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)를 사용하여 추가되었습니다.[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions)과[OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/)[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions)방법.

#### Markdown파일을 로드할 때 빈 줄 유지 <sup>24.2</sup>

Markdown파일을로드 할 때 빈 줄을 유지하는 기능이 추가되었습니다.

#### 새로운TIFF독자/작가 <sup>24.3</sup>

.NET Standard,.NET6 및 그 이후의Aspose.Words에 대한 새로운TIFF리더/라이터가 개발되었습니다. Aspose.Words.NET 24.3의 경우JPEG및 이전JPEG압축 유형으로TIFF이미지를 읽을 수 있는 지원이 추가되었으며 읽기 및 쓰기 작업의 품질도 크게 향상되었습니다.

### 다른

* `TextBox`OLE컨트롤의 텍스트를 수정하는 기능은 새로운[TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/)클래스에 새로운[Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText)속성을 추가하여 도입되었습니다. 24.1 <sup>24.1</sup>
* 공개 문헌 자료API는 몇 가지 새로운 것을 추가하여 구현되었습니다.[Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) 그리고[Person](https://reference.aspose.com/words/java/com.aspose.words/person/)클래스와[SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/)열거를 추가하고,[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)클래스에 새로운[Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography)속성을 추가합니다. <sup>24.1</sup>
* LINQ보고 엔진에 대한 템플릿 구문을 사용하여 형식 멤버에 대한 액세스를 제한하는API가 제공되었습니다. <sup>24.1</sup>
* 향상된 스타일 관리를 위한 새로운 공용 속성[Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/),[UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/)및[SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/)이[Style](https://reference.aspose.com/words/net/aspose.words/style/)클래스에 추가되었습니다. <sup>24.2</sup>
* [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/)속성과[UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/)메서드를 사용하여 각주 및 미주에 대한 실제 참조 마크 텍스트를 검색하는 기능이 향상되었습니다. <sup>24.2</sup>
* `LINQ Reporting Engine`에 대한`Word 2016`차트와의 호환성이 활성화되었습니다. <sup>24.2</sup>
* WMF메타파일에 대한 이진 래스터 연산의 에뮬레이션이 구현되었습니다. <sup>24.3</sup>
* **SaveOptions**내의 문서에 대한 서명 옵션을 정의하는 기능은 새 공용 멤버와 함께 새[DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/)클래스를 추가하고[OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/),[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/)및[OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/)클래스에 새 속성을 추가하여 활성화되었습니다. <sup>24.4</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.WordsJava24.1릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava24.2릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava24.3릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava24.4릴리스 노트](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.WordsJava 23.9, 23.10, 23.11, 23.12

Aspose.Words23.9렌더링 옵션,메타파일 렌더링 에뮬레이션 및markdown저장 옵션을 확장합니다.

Aspose.Words23.10렌더링을 개선하고 문서 로드 및 저장 옵션을 확장하며 사용자가 새로운 방식으로 문서를 병합할 수 있도록 합니다.

Aspose.Words23.11추가 옵션을 사용하여 차트 범례의 개정판,XLSX형식 및 글꼴 작업을 향상시킵니다.

Aspose.Words23.12PDF문서 작업을위한 새로운 속성과 열거,WebP이미지에 대한 지원 및 업데이트 탄력 성 라이브러리를 소개합니다.

### 렌더링 및 인쇄

#### DrawingML차트에서 축 제목 사용자 지정 <sup>23.9</sup>

DrawingML차트에서 축 제목을 사용자 지정할 수 있는 기능은 새로운 공용 클래스[ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/)및[Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle)속성을 구현하여 도입되었습니다.

#### 단락 내의 글꼴의 세로 위치 결정 <sup>23.9</sup>

이제 새 공용[BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment)속성과 새[BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/)열거형을 사용하여 단락 내의 글꼴의 세로 위치를 정의할 수 있습니다.

#### 전경색 제어 <sup>23.10</sup>

수정자 없이 전경색을 검색할 수 있는 기능이**BaseForeColor**속성을 통해[Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/)및[Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/)클래스에 추가되었습니다.

#### 차트의 기능 확장 <sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/),[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)및[ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/)클래스의 기능이 새로운 메서드 및 속성으로 확장되었습니다.

#### 이미지 자동 조정 및 모양에 맞추기 <sup>23.10</sup>

새로운[FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape)방법을 통해 특정 모양 내에서 이미지를 자동으로 조정하고 맞추는 간단한 방법이 제공되었습니다.

#### DrawingML차트 범례 항목의 기본 글꼴 서식 지정 <sup>23.11</sup>

**Font**속성을 통해DrawingML차트의 범례 항목에 대한 기본 글꼴 서식을 지정하는 기능이 추가되었습니다. 이 기능은 전체 문서 미학을 개선,차트 요소에 대한보다 능률적이고 일관된 모양을 용이하게한다.

#### 리더에서PDF을 열 때 페이지 레이아웃 지정 <sup>23.12</sup>

PDF리더에서 문서를 열 때 사용할 페이지 레이아웃을 지정하는 기능은[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)클래스에 새로운[PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout)속성을 도입하고 새로운[PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/)열거형을 도입하여 추가되었습니다.

### 문서 로드 및 저장

#### Markdown에서 이미지URIs를 구성하는 폴더 이름 지정 <sup>23.9</sup>

[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)클래스는[ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias)속성을 포함하여 확장되었으며,Markdown문서에 작성된 이미지URIs를 구성하는 데 사용되는 폴더의 이름을 지정할 수 있습니다.

#### PDF출력 크기 줄이기 <sup>23.10</sup>

[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput)설정을 사용할 때 출력 크기를 줄이기 위해 다양한PDF렌더링 최적화가 구현되었습니다.

#### TXT문서를 로드할 때 하이퍼링크 인식 <sup>23.10</sup>

TXT문서를 로드할 때 하이퍼링크를 인식하는 기능은 새로운[DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks)속성을 추가하여 구현되었습니다.

### 다른

- 특히WMF펜 너비와EMF화장품 펜 너비에 대해 래스터화 크기를 결정하기 위한 메타파일 렌더링 에뮬레이션이 구현되었습니다. 이를 위해**ScaleWmfFontsToMetafileSize**속성이[EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage)속성으로 대체되고[EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution)속성이 추가되었습니다. <sup>23.9</sup>
- [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions)방법을 사용하여 현재 커서 위치에서 한 문서를 다른 문서에 삽입하는 간단한 방법이 도입되었습니다. <sup>23.10</sup>
- 새로운[Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked)속성을 도입하여 스타일 속성에 액세스하고 수정할 수 있는 기능이 추가되었습니다. <sup>23.10</sup>
- [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)클래스의 메서드에 제네릭 형식 매개 변수가 추가되었습니다. <sup>23.10</sup>
- [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria)및[Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria)방법을 사용하여 특정 개정을 수락/거부 또는 거부해야 할 때를 제어하는 방법이 구현되었습니다. 이 향상된 기능은 사용자에게 수정 프로세스를 보다 세밀하게 제어할 수 있도록 합니다. <sup>23.11</sup>
- 동일한XLSX워크시트에 문서의 모든 섹션을 쓸 수 있는 기능은 새[XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/)열거형 유형과 새[SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode)속성을 통해 제공되었습니다. <sup>23.11</sup>
- WebP이미지에 대한 지원이 도입되었습니다. 이 기능은 만 사용할 수 있습니다.NetStandart및.NET6+버전. <sup>23.12</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.WordsJava23.9릴리스 노트](/words/java/aspose-words-for-java-23-9-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.10릴리스 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.11릴리스 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.12릴리스 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.WordsJava 23.5, 23.6, 23.7, 23.8

Aspose.Words23.5차트 시리즈 데이터 및ODT문서와 함께 작업 할 수있는 기능뿐만 아니라 머리글/바닥 글 및 텍스트 줄 바꿈을 개선 할 수있는 기능을 향상시킬 수 있습니다.

Aspose.Words23.6렌더링 옵션을 확장하고 새 내보내기 형식을 추가하고LINQ보고 및LowCode도구를 개선합니다.

Aspose.Words23.7보고 기능을 향상시키고 새 내보내기 형식을 추가하며 테이블 및 디지털 서명 작업에 대한 변경 사항을 소개합니다.

Aspose.Words23.8는 다양한 형식의 기능을 확장하고 렌더링을 개선하며 필드 작업을 위한 새로운 옵션을 추가합니다.

### 지원되는 형식

* 버전23.6부터 문서를XLSX형식으로 저장할 수 있습니다. 지금 당신은 엑셀 형식으로 문서를 변환 할 수 있습니다. <sup>23.6</sup>

* 버전23.7부터 문서 페이지 또는 도형을EPS형식으로 저장할 수 있습니다. <sup>23.7</sup>

* ###새로운 형식 기능

  - MOBI문서에 대한 목차(TOC)를 자동으로 생성하는 기능이 도입되었습니다. <sup>23.8</sup>
  - [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String)생성자는[PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/)로 확장되었습니다. <sup>23.8</sup>
  - EMF메타파일에 대한 수직 텍스트의 모양이 구현되었습니다. <sup>23.8</sup>

### 렌더링

#### 차트 시리즈 데이터 가져오기 및 수정 <sup>23.5</sup>

차트 시리즈 데이터를 가져오고 수정하는 기능은 다음을 추가하여 제공되었습니다.:

- 새로운 클래스: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- 새 열거형 유형:[ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/),[ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### 고급 타이포그래피 지원 <sup>23.6</sup>

WMF,EMF및EMF+렌더링의 고급 타이포그래피 지원이 추가되었습니다.

#### 페이지의 컬러 콘텐츠 <sup>23.6</sup>

페이지의 색상이 지정되었는지 여부를 나타내는 공용 속성[PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored)이 추가되었습니다.

#### 차트 데이터 레이블 서식 지정 <sup>23.6</sup>

차트 데이터 레이블에 대한 채우기,획 및 설명선 서식을 설정하는 기능이 구현되었습니다.

### Mail Merge및 보고

#### LINQ보고 엔진에 대한 동적HTML삽입 <sup>23.6</sup>

LINQ보고 엔진에 대한 동적HTML삽입의 새로운 방법이 추가되었습니다.

#### Mustache태그 지원 <sup>23.7</sup>

Mustache태그는 이제[MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy)및[MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String)메서드에서 지원됩니다.

#### LINQ엔진 템플릿 구문 업데이트 보고 <sup>23.7</sup>

LINQ보고 엔진 템플릿 구문은 이제`ElementAt`및ElementAtOrDefault확장 방법을 지원합니다.

#### 렌더링된 이미지의 크기 지정 <sup>23.8</sup>

렌더링된 이미지의 크기를 픽셀로 지정하기 위한 새로운 공용 속성**ImageSize**이 도입되었습니다.

#### JSON문자열 값–LINQ에 대한 공백 유지 <sup>23.8</sup>

LINQ보고 엔진에JSON문자열 값의 공백을 유지하는 옵션이 추가되었습니다.

### LowCode <sup>23.6</sup>

다른 유형의 문서를 단일 출력 문서로 병합하려는 새로운LowCode방법이 추가되었습니다.

### 다른

- 머리글/바닥글의 텍스트 줄 바꿈에 대한 지원이 구현되었습니다. <sup>23.5</sup>
- [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream)방법을 통해ODT문서에서 디지털 서명을 제거하는 기능이 추가되었습니다. <sup>23.5</sup>
- 음성 안내서[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)의 기본 및 루비 텍스트를 얻기 위해 공공 재산[PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide)이 추가되었습니다. <sup>23.5</sup>
- 디지털 서명된 문서에서 바이트 배열로 디지털 서명 값을 검색하는 기능은 새로운[SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue)속성을 도입하여 추가되었습니다. <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/)및[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)클래스는 새로운 공개 구성원으로 확장되었습니다.– [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), 그리고[Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell) <sup>23.7</sup>
- CITATION및BIBLIOGRAPHY필드에 대한 지원이 추가되었습니다. <sup>23.8</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.WordsJava23.5릴리스 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.6릴리스 노트](/words/java/aspose-words-for-java-23-6-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.7릴리스 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.8릴리스 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.WordsJava 23.1, 23.2, 23.3, 23.4

Aspose.Words23.1는 래스터 작업 에뮬레이션의 성능을 향상시키고 문서 내보내기 및 렌더링 품질을 향상시킵니다.

Aspose.Words23.2MOBI형식으로 문서 저장을 도입하고 차트 렌더링을 개선하며 문서 모양 세부 사항을 크게 변경합니다.

Aspose.Words23.3새 속성으로 문서 가져오기 및 저장을 향상시키고 배경 및 전경색 및 방사형 그라데이션으로 작업 품질을 향상시킵니다.

Aspose.Words23.4는 일부 매개 변수의 계산과 테이블 및 주변 텍스트의 위치를 향상시킵니다.

### 성능 향상

#### 래스터 작업 에뮬레이션 <sup>23.1</sup>

메타 파일을 사용한 래스터 작업의 성능 및 에뮬레이션 품질이 크게 향상되었습니다.

### 지원되는 형식

#### MOBI으로 내보내기 <sup>23.2</sup>

버전23.2부터 문서를MOBI형식으로 저장할 수 있습니다.PRC, AZW – Amazon 킨들의 전자책 파일 형식) 이제MOBI문서를로드 할 수있을뿐만 아니라 파일을MOBI형식으로 내보낼 수 있습니다.

### 렌더링

#### 음영 테마 색상으로 작업 <sup>23.1</sup>

음영 테마 색상으로 작업 할 수있는 기능이 구현되었습니다.

#### DML차트에서 아르 자형 제곱 계수 지원 <sup>23.1</sup>

렌더링 시DML차트 추세선 레이블의 제곱 계수 지원이 추가되었습니다.

#### 차트 렌더링 개선 <sup>23.2</sup>

23.2이후 차트 렌더링이 크게 개선되었습니다.

#### 배경 및 전경색 제어 <sup>23.3</sup>

[Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/)클래스는 배경 및 전경 색상과 관련된 새로운 공용 속성 세트로 확장되었습니다:**ForeThemeColor**및**BackThemeColor**,**ForeTintAndShade**및**BackTintAndShade**.

#### `SkiaSharp`기본 셰이더가 있는 방사형 그라디언트 <sup>23.3</sup>

.NET Standard에 대한`SkiaSharp`네이티브 셰이더로 방사형 그라디언트의 렌더링이 구현되었습니다.

#### 표와 주변 텍스트 사이의 거리 <sup>23.4</sup>

[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)클래스에 새 속성을 도입하여 테이블과 주변 텍스트 사이의 거리를 설정하는 기능이 추가되었습니다: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), 그리고[DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom)

### 문서 로드 및 저장

#### AZW3문서에 대해`TOC`생성 <sup>23.1</sup>

[EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel)속성을 사용하여AZW3문서에 대해`TOC`(목차)를 생성하는 기능이 추가되었습니다.

#### 목록 항목을Markdown로 내보내기 <sup>23.1</sup>

[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)클래스에[ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode)속성을 추가하여 목록 항목을Markdown형식으로 내보내는 방법을 제공했습니다.

#### 문서 저장 진행률 알림 <sup>23.3</sup>

MOBI및AZW3형식에 대한 진행률 알림 저장이 구현되었습니다.

#### 문장 및 단어 간격 조정 <sup>23.3</sup>

**AdjustSentenceAndWordSpacing**속성을 도입하여 문서 가져오기 시 문장 및 단어 간격을 자동으로 조정할지 여부를 지정하는 기능이 추가되었습니다.

### 다른

- [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode)속성 구현을 통해 문서의 문자 간격 조정을 지정할 수 있는 기능이 추가되었습니다 <sup>23.2</sup>
- [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat)속성을 추가하여 단어 수 통계에 텍스트 상자,각주 및 미주를 포함할지 여부를Aspose.Words에 지시하는 방법을 제공했습니다 <sup>23.2</sup>
- [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate)속성을 통해 적절한 값을 기반으로 스타일이 자동으로 재정의되는지 여부를 지정할 수 있는 문서 스타일에 대한 새로운 옵션이 도입되었습니다 <sup>23.2</sup>
- **IsPhoneticGuide**속성을 사용하여[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)이 음성 안내 실행인지 여부를 결정하는 기능이 추가되었습니다 <sup>23.4</sup>
- **ChartAxisCollection**클래스를 도입하고**Chart.Axes**속성을 추가하여 콤보 차트의 계열 및 축을 사용하는 간단한 방법이 구현되었습니다 <sup>23.4</sup>
- 도형 상대 위치 지정 및 크기 조정에 연결된 새 공용 속성이[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)클래스에 추가되었습니다 <sup>23.4</sup>
- Microsoft Word의 최신 버전에 따라 자동 텍스트 색상 해상도에 대한 색상 밝기 계산의 정확도 및 성능이 향상되었습니다 <sup>23.4</sup>

{{% alert color="primary" %}}

에 대해 자세히 알아보기 [Aspose.WordsJava23.1릴리스 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.2릴리스 노트](/words/java/aspose-words-for-java-23-2-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.3릴리스 노트](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

에 대해 자세히 알아보기 [Aspose.WordsJava23.4릴리스 노트](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## 또한 참조

{{% alert color="primary" %}}

이 페이지에는 지난 2 년간의 최신 릴리스 뉴스가 포함되어 있습니다. 이전 릴리스에 대한 자세한 내용은 [릴리스 노트'](https://releases.aspose.com/words/java/release-notes/) 관련 섹션의 페이지.

{{% /alert %}}
