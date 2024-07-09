---
title: Fixed-page 형식으로 변환 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Fixed-page 형식으로 변환
linktitle: Fixed-page 형식으로 변환
description: "Aspose.Words 제품정보 Java 자체 페이지 레이아웃 엔진을 구현하여 PDF와 같은 모든 고정 페이지 형식을 생산할 수 있습니다. XPS, 다양한 이미지 형식."
type: docs
weight: 10
url: /ko/java/converting-to-fixed-page-format/
---

Aspose.Words 자체 페이지 레이아웃 엔진을 구현합니다. 그것의 명세로 delving 이전에, 그것은 높은 수준에 첫번째 토론 문서에 가치가 있습니다. 문서에 대해 생각할 때, 사용자는 일반적으로 단어, 이미지, 테이블 및 차트를 포함하는 종이 시트의 수를 상상. 문서는 텍스트, 스프레드 시트, 슬라이드, CAD 도면, 유량, 등과 같은 다양한 유형이 될 수 있으므로 필수 다른 레이아웃을 가질 수 있습니다. 대부분의 응용 프로그램은 문서를 프린터로 보낼 수 있습니다; 이것은 사용자가 실제로 문서의 최종 후보를 볼 수있을 때입니다.

## 다양한 용도의 문서 표시

다양한 문서 보기 또는 게시 응용 프로그램은 사용자가 열 수 있습니다 (Adobe Acrobat, XPS Viewer), 때로는 특정 형식의 편집 (Adobe InDesign) 문서. 이 응용 프로그램은 일반적으로 소위 "fixed-page" 형식 문서를 생성합니다. 문서 형식은 문서의 내용이 각 페이지에 배치되는 정확하게 설명합니다. 내부, PDF 또는 XPS 형식은 모든 페이지의 설명을 포함,뿐만 아니라 그림 지침, 페이지의 내용의 레이아웃을 지정. 이 이미지 형식과 유사하며, 내용이 래스터 또는 벡터 형태로 표시됩니다.

대조적으로, 몇몇 텍스트 편집 신청은 문서의 페이지의 보기를 지원하지 않습니다. 예를 들어, Microsoft Notepad는 단순히 표시, 편집 및 인쇄 텍스트보다 매우 몇 가지 기능을 지원합니다. 여기에 중요한 관찰은 이러한 응용 프로그램은 문서의 페이지를 표시 할 수 없으며 사용자가 얼마나 많은 것을 인쇄 할 수 있는지, 문서 콘텐츠를 볼 수 있도록 만. 문서는 일반 텍스트 형식으로 저장되며 다른 많은 응용 프로그램에 의해 열 수 있습니다. arbitrary 파일의 바이너리 콘텐츠를 볼 수있는 응용 프로그램을 사용하여 문서 파일에 저장되는 것을 볼 수 있습니다 - 그것은 단지 일반 텍스트, 거기에 아무것도 그것.

Slightly 더 정교한 텍스트 편집 응용 프로그램 등 Microsoft Word패드, 이미지를 삽입, 문자 포맷, 단락 마진 및 간격과 같은 더 많은 포맷 기능을 지원하는 풍부한 텍스트 형식 (RTF)의 문서를 저장합니다. 그러나 RTF 형식은 문서의 콘텐츠 만 포함되며 페이지에 대한 정보가 없습니다.

Microsoft Word 가장 고급 텍스트 편집 응용 프로그램입니다 Windows 오늘. 문서의 콘텐츠가 유연하고 광범위하게 설명하는 DOCX 형식의 파일이며, 문서 섹션의 페이지 크기, 오리엔테이션을 지정하고, WYSIWYG 응용 프로그램이 화면에 문서 페이지를 표시 할 수 있습니다. 그럼에도 불구하고 문서의 내용이 문서 파일에서 사용할 수있는 페이지에 표시되는 방법에 대한 정보가 여전히 없습니다. 문서 파일은 단지 내용 자체를 설명하고, 문서 개체의 관계는 일부 기하학적 제약과 함께. 그 결과, 문서를 표시하기 전에, Microsoft Word 정보 자체를 준수합니다. 페이지 레이아웃이 게임에 온다.

## 페이지 레이아웃

문서 페이지 레이아웃은 모든 문서 개체의 페이지에 특정 개체가 어디에 있는지 설명하는 데이터 구조입니다. 또한, 객체는 글꼴 크기, 셰이딩 또는 그림 효과와 같은 외관에 영향을 미치는 속성을 가지고 있기 때문에 객체가 무엇인지 알 필요가 없지만, 페이지의 영역 (들)이 점유하고 다른 객체가 동일한 영역 (들)을 오버랩하지 않도록 여러 페이지로 적용 할 것인지 여부.

Aspose.Words 페이지 레이아웃 기능을 내부적으로 구현하여 PDF와 같은 모든 고정 페이지 형식을 생성 할 수 있습니다. XPS, 다양한 이미지 형식. 페이지 레이아웃없이, 고정 페이지 문서 파일에 저장된 정보는 사용할 수 없으며이 형식은 지원되지 않습니다.

문서와 페이지 레이아웃 간의 관계는 매우 간단합니다. 문서는 내용에 대해 설명합니다. 해당 페이지 레이아웃은 해당 내용의 기하학을 설명합니다. 참고, 페이지 레이아웃은 문서없이 존재 할 수 없습니다. 기하학을 계산하기위한 내용이 없기 때문에, 문서는 페이지 레이아웃없이 존재 할 수 있습니다. 예를 들어, DOCX 문서가 RTF 문서로 변환 될 때, 일반적으로 지오메트리를 알 필요가 없습니다.

## 페이지 배치 만들기

페이지 레이아웃을 만드는 것은 비용이 많이 드는 절차, 속도와 메모리 측면에서 모두 될 수 있습니다. 이것은 몇몇 이유 때문에:

- - - 문서는 수천 페이지에 표시할 필요가 있을 수 있는 많은 양의 내용이 있을 수 있습니다. 모든 페이지의 모든 개체의 기하학은 설명해야합니다, 메모리 리소스를 소모.
- - - 문서는 많은 규칙이 있을 수 있습니다, 기하학에 제약을 두기. 고려할 수 있는 계산 시간은, 각 constraint를 지키기 위하여 보전될지도 모릅니다
- 일부 문서 기능, 예를 들면, `NUMPAGES` 필드, 미래의 속성 값에 대한 반복 의존성을 생성, 이는 계산의 시간에 사용할 수 없습니다. 이 반복 계산을 리드하고 계산 시간에 추가합니다.

법적고지 Aspose.Words 필요한 경우 페이지 레이아웃을 만들 것입니다. 이 일반적인 이유는 문서 페이지를 렌더링하거나 페이지 레이아웃에서 사용할 수있는 정보에 따라 필드 값을 얻을 수있는 요청이 될 것입니다. 더 적은 명백한 이유는 HTML에 문서를 수출할 수 있었습니다. HTML이 고정 페이지 형식이 아니라 콘텐츠 객체의 기하학을 설명하지는 않지만 여전히 이미지를 지원합니다. 그런 이미지는 창조된 모양의 형태로 있을지도 모릅니다 Microsoft Word 그 안에 텍스트로. 예를 들면, 축선 상표를 가진 도표는 이미지로 HTML로 수출될 수 있습니다, 그러나 이 행하기 전에 Aspose.Words 이미지 렌더링을 위해서는 라벨을 표시하는 것을 알아야 합니다. 아래 차트 예제를 참조:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### 비 Geometric 제품 정보

기하학적 정보를 처리하는 외에도 페이지 레이아웃은 색상과 국경 스타일을 계산하는 역할을 담당합니다. 내 계정 Microsoft Word, 텍스트 색상은 자동으로 지정 될 수 있으며 색상 선택이 셀 또는 단락의 셰이딩 색상을 기반으로하거나 페이지의 색상을 기반으로 텍스트가 나타납니다.

페이지 레이아웃은 텍스트가 나타날 때 어떤 내용이 렌더링되는지 계산합니다. 페이지 레이아웃에 의해 수행 된 다른 특정 계산이 있습니다. 예를 들어, 테이블의 수평 경계는 테이블 행이 텍스트의 열에서 지속되는지 여부에 따라 달라집니다. 그리고 컬럼에서 끊어지는지 여부. 행이 열에서 마지막으로 렌더링되면 하단 경계는 수평 대신 사용됩니다.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

내 계정 <span notrans="<span notrans=" Aspose.Words"=""></span>· 사용자는 새 페이지 레이아웃을 구축하거나 기존의 것을 업데이트할 것인지 요청할 수 있습니다. 이 둘 다에 의해 수행될 수 있습니다 [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) 방법에 의해 제공 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 수업. 페이지 레이아웃이 존재하지 않는 경우에, 그러나 그것을 위해 필요 (예를 들면, 문서가 고정 페이지 형식으로 수출될 때), Aspose.Words 자동으로이 방법을 호출합니다. 그러나 페이지 레이아웃이 이미 존재한다면, Aspose.Words 자원을 수정하기 위해 기존의 것을 사용합니다. 이 경우 사용자는 호출해야합니다. `UpdatePageLayout` 방법, 페이지 레이아웃이 문서 모델로 날짜까지 보장하기 위해.

### 동적 구조

페이지 레이아웃의 생성 과정은 다음과 같은 단계로 구성됩니다:

- - - *Conversion* – 문서 모델의 내용과 해당 레이아웃 개체를 준비합니다.
- - - *Build* – 페이지에 문서의 내용을 나타내는 레이아웃 객체를 정렬.
- - - *Reflow* – Geometry constraints를 만족시키는 물체 배열.
- *Projecting layout object into 고정 페이지 발표 및 최종화 색상 정보 *.
- *작성 내용의 구성 및 썰물* - 문서가 배열된 텍스트 콘텐츠의 모양을 포함하면 필요한 단계.

참고, 페이지 레이아웃은 부분적으로 재건 될 수있는 동적 구조입니다. 문서 레이아웃 구조를 재구성하지 않고 필드 값을 계산하는 것은 불가능합니다. 필드는 페이지에 객체의 위치를 참조 할 수 있으며, 동시에 필드 값 자체는 참조 된 객체의 위치에 영향을 미치는 페이지에 렌더링됩니다. 페이지 레이아웃은 한 번에 구축 할 수 없습니다, 필드 값이 아직 페이지에 위치의 시간에 사용할 수 없기 때문에.

일반적인 시나리오를 고려할 때 `NUMPAGES` 필드는 문서의 첫 페이지의 바닥에 나타납니다. 이 필드의 값은 총 페이지 수입니다. 페이지에 필드를 배치하려면 값이 알려야합니다. 첫 페이지만 현재 내장된 경우 총 페이지 수는 아직 알려지지 않았습니다. 이 경우 페이지 레이아웃은 기본값을 사용하고 나중에 해당 필드로 돌아가 실제 계산에 따라 값을 변경해야 합니다. 그러나 필드 값 변경은 페이지에 다른 문서 내용에 영향을 미칠 수 있으며, 궁극적으로 새 페이지가 부과되거나 기존 페이지가 제거 될 수 있으므로 계산 된 값이 출력됩니다. 이 문제는 기존 페이지 레이아웃을 업데이트 할 수 있도록 해결 될 수 있습니다.

레이아웃을 만들 때 설정할 수도 있습니다. [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) 페이지에 문서의 출력에 영향을 미치는 속성.

## 고정 페이지 형식으로 저장

페이지 레이아웃이 내장되어 있으며, 페이지의 개체와 그 위치의 기하학이 계산되고, 문서는 고정 페이지 형식에서 지원할 수 있습니다. Aspose.Words· 고정 페이지 형식으로 문서를 저장할 때, 이 형식의 모든 일반적인 렌더링 옵션은 사용할 수 있습니다. 그들은 통제할 수 있습니다:

- - - 출력 문서에 포함 된 페이지의 수 및 범위 ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)·
- 페이지별 문서 저장 진행 (페이지별 문서 저장)[PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)·
- 숫자 렌더링에 사용되는 문자 집합 ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)·
- metafile 플레이어 ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)· 자세한 내용은 [제품정보 Windows 메타파일](/words/ko/java/handling-windows-metafiles/) 기사.
- JPEG 이미지를 다시 압축하기위한 품질 비율, 선택된 저장 형식에 따라 약간 다를 수 있음의 값 (값)[JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)·
- 벡터 그래픽의 최적화 Aspose.Words 산출 ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)·
- Tiff, Png, Bmp, Jpeg, Emf 형식으로 저장할 때 그래픽 옵션 ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)·
- 그레이 스케일의 문서를 저장 ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)·
- DrawingML 모양과 fallback 모양의 연출 사이 전환 ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)·
- DML 효과 렌더링 모드 사이 전환 ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)·

아래 예제는 JPEG 형식으로 문서를 저장하는 방법을 설명합니다. `Save` 방법 및 렌더링 옵션:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
