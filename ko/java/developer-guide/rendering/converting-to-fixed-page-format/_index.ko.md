---
title: Java에서 고정 페이지 형식으로 변환
second_title: Aspose.WordsJava
articleTitle: 고정 페이지 형식으로 변환
linktitle: 고정 페이지 형식으로 변환
description: "Java에 대한Aspose.Words은PDF,XPS및 다양한 이미지 형식과 같은 모든 고정 페이지 형식을 생성 할 수있는 자체 페이지 레이아웃 엔진을 구현합니다."
type: docs
weight: 10
url: /ko/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words자체 페이지 레이아웃 엔진을 구현합니다. 사양을 탐구하기 전에 먼저 높은 수준의 문서를 논의하는 것이 좋습니다. 문서에 대해 생각할 때 사용자는 일반적으로 단어,이미지,표 및 차트가 포함 된 여러 개의 종이 시트를 상상합니다. 문서는 텍스트,스프레드시트,슬라이드,CAD도면,플로우차트와 같은 다양한 유형이 될 수 있으므로 본질적으로 다른 레이아웃을 가질 수 있습니다. 대부분의 응용 프로그램은 문서를 프린터로 보낼 수 있습니다.이것은 사용자가 실제로 문서의 최종 의도 된 모양을 볼 수있는 경우입니다.

## 다양한 응용 프로그램에서 문서 표시

다양한 문서 보기 또는 게시 응용 프로그램을 통해 사용자는 특정 형식의 문서(Adobe Acrobat,XPS뷰어)를 열고 때로는 편집(어도비InDesign)할 수 있습니다. 이러한 응용 프로그램은 일반적으로 소위"고정 페이지"형식의 문서를 생성합니다. 이러한 문서 형식은 문서의 내용이 모든 페이지에 배치되는 위치를 정확하게 설명합니다. 내부적으로,PDF또는XPS형식은 모든 페이지에 대한 설명과 페이지의 콘텐츠의 레이아웃을 지정하는 그림 지침을 포함합니다. 이것은 이미지 형식과 유사하며,콘텐츠가 라스터 또는 벡터 형태로 표시되는 위치를 설명합니다.

반면,일부 텍스트 편집 응용 프로그램은 문서의 페이지를 볼 수 없습니다. 예를 들어,Microsoft메모장은 단순히 텍스트를 표시,편집 및 인쇄하는 것 이외의 기능을 거의 지원하지 않습니다. 여기서 중요한 관찰은 이러한 응용 프로그램이 문서의 페이지를 표시하거나 얼마나 많은 페이지가 인쇄 될지 사용자에게 말할 수 없으며 문서 내용을 볼 수 있다는 것입니다. 이 문서는 일반 텍스트 형식으로 저장할 수 있으며 다른 많은 응용 프로그램에서 열 수 있습니다. 임의의 파일의 바이너리 콘텐츠를 볼 수 있는 응용 프로그램을 사용하면 문서 파일에 저장된 것을 볼 수 있습니다.그것은 단지 일반 텍스트이며,그 안에 다른 것은 없습니다.

Microsoft Word패드와 같은 약간 더 정교한 텍스트 편집 응용 프로그램은 이미지 삽입,문자 서식,단락 여백 및 간격과 같은 더 많은 서식 기능을 지원하는 서식있는 텍스트 형식(RTF)으로 문서를 저장합니다. 그러나RTF형식은 페이지에 대한 정보가 없는 문서의 내용만 포함합니다.

Microsoft Word은 오늘날Windows에서 가장 진보된 텍스트 편집 응용 프로그램입니다. DOCX형식으로 파일을 포맷하여 문서의 내용을 유연하고 광범위하게 설명하여 사용자가 페이지 크기,문서 섹션의 방향을 지정할 수 있으며WYSIWYG응용 프로그램으로 문서 페이지를 화면에 표시 할 수도 있습니다. 그럼에도 불구하고 문서 파일에서 사용할 수 있는 페이지에 문서의 내용이 표시되는 방법에 대한 정보는 아직 없습니다. 문서 파일은 단지 내용 자체와 문서 객체들의 관계,그리고 몇 가지 기하학적 제약만 설명합니다. 따라서 문서를 표시하기 전에Microsoft Word은 해당 정보 자체를 계산합니다. 이 페이지 레이아웃 놀이에 온다.

## 페이지 레이아웃은 무엇입니까

문서 페이지 레이아웃은 모든 문서 개체의 페이지에서 특정 개체가 어디에 있는지 설명하는 데이터 구조입니다. 또한 개체에는 글꼴 크기,음영 또는 그리기 효과와 같이 모양에 영향을 주는 속성이 있으므로 개체가 어디에 있는지 뿐만 아니라 해당 개체가 차지하는 페이지 영역과 다른 개체가 동일한 영역과 겹치지 않도록 여러 페이지에 적용할지 여부를 알아야 합니다.

Aspose.Words은 페이지 레이아웃 기능을 내부적으로 구현하여PDF,XPS및 다양한 이미지 형식과 같은 모든 고정 페이지 형식을 생성 할 수 있습니다. 페이지 레이아웃이 없으면 고정 페이지 문서 파일에 저장된 정보를 사용할 수 없으며 이러한 모든 형식은 지원되지 않습니다.

문서와 페이지 레이아웃 사이의 관계는 매우 간단합니다. 문서가 콘텐츠를 설명하는 반면 해당 페이지 레이아웃은 해당 콘텐츠의 지오메트리를 설명합니다. 지오메트리 계산을 위한 콘텐츠가 없기 때문에 문서 없이는 페이지 레이아웃이 존재할 수 없지만 페이지 레이아웃 없이는 문서가 존재할 수 있습니다. 예를 들어,DOCX문서가RTF문서로 변환될 때,형식이 저장하지 않기 때문에 일반적으로 형상을 알 필요가 없습니다.

## 페이지 레이아웃 만들기

페이지 레이아웃을 만드는 것은 속도와 메모리 측면에서 모두 비용이 많이 드는 절차가 될 수 있습니다. 이것은 여러 가지 이유 때문 입니다.:

- 문서에는 많은 양의 콘텐츠가 있을 수 있으며,수천 페이지에 표시해야 할 수도 있습니다. 모든 페이지의 모든 객체의 기하학은 설명되어야 하며,메모리 자원을 소비해야 합니다.
- 문서에는 기하학에 제약을 가하는 많은 규칙이있을 수 있습니다. 모든 제약이 충족되도록 상당한 계산 시간이 소요될 수 있습니다.
- `NUMPAGES`필드와 같은 일부 문서 기능은 계산 시 사용할 수 없는 미래의 속성 값에 대한 재귀 종속성을 만듭니다. 이것은 반복적인 계산으로 이어지고 계산 시간에 추가됩니다.

앞서 언급한 이유로 인해Aspose.Words은 필요한 경우에만 페이지 레이아웃을 만듭니다. 이에 대한 일반적인 이유는 문서 페이지를 렌더링하거나 페이지 레이아웃에서 사용할 수 있는 정보에 따라 달라지는 필드 값을 얻기 위한 요청입니다. 덜 분명한 이유는 문서를HTML로 내보내는 것일 수 있습니다. HTML는 고정 페이지 형식이 아니며 콘텐츠 객체의 기하학을 설명하지 않지만 여전히 이미지를 지원합니다. 이러한 이미지는 그 안에 텍스트가 있는Microsoft Word에서 생성된 모양의 형태일 수 있습니다. 예를 들어,축 레이블이 있는 차트는 이미지로HTML로 내보낼 수 있지만,이 작업을 수행하기 전에Aspose.Words는 해당 이미지를 렌더링해야 하며,따라서 레이블을 표시할 위치를 알아야 합니다. 아래 차트 예를 참조하십시오:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### 비 기하학적 특성

기하학적 정보를 처리하는 것 외에도 페이지 레이아웃은 색상 및 테두리 스타일을 계산하는 데도 책임이 있습니다. Microsoft Word에서 텍스트 색상은 자동으로 지정될 수 있으며,이는 색상 선택이 셀이나 단락의 음영 색상을 기반으로 하거나 텍스트가 나타나는 페이지의 색상을 기반으로 해야 함을 의미합니다.

페이지 레이아웃은 텍스트가 나타나는 위치와 그 뒤에 어떤 콘텐츠가 렌더링될지를 계산하여 색상 계산을 가능하게 합니다. 페이지 레이아웃에 의해 수행되는 다른 특정 계산이 있습니다. 예를 들어,테이블의 가로 테두리는 테이블 행이 텍스트 열의 마지막인지 여부와 열에 걸쳐 분할되어 있는지에 따라 달라집니다. 행이 열에서 마지막으로 렌더링되면 가로 대신 아래쪽 테두리가 사용됩니다.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Aspose.Words에서 사용자는 새 페이지 레이아웃을 빌드할지 또는 기존 레이아웃을 업데이트할지 여부를 요청할 수 있습니다. 이 두 가지 모두[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)클래스에서 제공하는[UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\))메소드로 수행 할 수 있습니다. 페이지 레이아웃이 존재하지 않지만 필요한 경우(예:문서를 고정 페이지 형식으로 내보낼 때)Aspose.Words이 메서드를 자동으로 호출합니다. 그러나 페이지 레이아웃이 이미 존재하는 경우Aspose.Words는 업데이트하는 데 필요한 리소스를 사용하지 않기 위해 기존 레이아웃을 사용합니다. 이 경우 사용자는 페이지 레이아웃이 문서 모델과 최신 상태인지 확인하기 위해`UpdatePageLayout`메서드를 호출해야 합니다.

### 동적 구조

페이지 레이아웃 생성 과정은 다음 단계로 구성됩니다:

- *Conversion*-문서 모델의 내용을 열거하고 해당 레이아웃 개체를 준비합니다.
- *Build*–페이지에 문서의 내용을 나타내는 레이아웃 개체를 정렬합니다.
- *Reflow*–지오메트리 제약 조건을 만족시키기 위해 객체 배열을 업데이트합니다.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content*–문서에 텍스트 내용이 중첩된 도형이 포함된 경우 필요한 단계입니다.

페이지 레이아웃은 동적 구조이며 부분적으로 다시 작성할 수 있습니다. 이것은 특히 문서 레이아웃 구조를 다시 작성하지 않고 필드 값을 계산할 수 없는 경우에 필요합니다. 이 필드는 페이지에서 개체의 위치를 참조할 수 있으며,동시에 필드 값 자체도 페이지에 렌더링되어 참조된 개체의 위치에 영향을 줍니다. 페이지 레이아웃은 한 번에 만들 수 없습니다.페이지에 위치할 때 필드 값을 아직 사용할 수 없기 때문입니다.

`NUMPAGES`필드가 문서의 첫 페이지 바닥글에 나타나는 일반적인 시나리오를 고려하십시오. 이 필드의 값은 총 페이지 수입니다. 페이지에 필드를 배치하려면 해당 값을 알아야 합니다. 첫 페이지만 현재 작성 중인 경우 전체 페이지 수는 아직 알려져 있지 않습니다. 이 경우 페이지 레이아웃은 기본값을 사용하고 나중에 해당 필드로 돌아와 실제 계산에 따라 값을 변경해야합니다. 그러나 필드 값을 변경하면 페이지의 다른 문서 내용에 영향을 미치고 궁극적으로 새 페이지가 추가되거나 기존 페이지가 제거되어 계산된 값이 오래 될 수 있습니다. 이 문제는 기존 페이지 레이아웃을 업데이트 할 수있게하여 해결할 수 있습니다.

레이아웃을 만들 때 페이지의 문서 출력에 영향을 주는[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)속성을 설정할 수도 있습니다.

## 고정 페이지 형식으로 저장

페이지 레이아웃을 빌드하고 개체 지오메트리와 페이지에서의 위치를 계산한 후Aspose.Words이 지원하는 고정 페이지 형식으로 문서를 저장할 수 있습니다. 문서를 고정 페이지 형식으로 저장할 때 이러한 모든 형식에 공통된 렌더링 옵션을 사용할 수 있습니다. 그들은 통제 할 수 있습니다:

- 출력 문서에 포함된 페이지 수와 범위([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/),[PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- 페이지별 문서 저장 진행률([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- 숫자 렌더링에 사용되는 문자 집합([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- 메타파일 플레이어([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). 자세한 내용은 [Windows메타 파일 처리](/words/java/handling-windows-metafiles/) 기사
- 선택한 저장 형식([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)에 따라 값이 약간 다를 수 있는JPEG이미지를 다시 압축하기 위한 품질 속도입니다.
- Aspose.Words출력([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))에서 벡터 그래픽의 최적화.
- Tiff, Png, Bmp, Jpeg, Emf 형식([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))으로 저장할 때의 그래픽 옵션.
- 문서를 회색조([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))로 저장합니다.
- DrawingML도형 렌더링과 대체 도형([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))사이를 전환합니다.
- DML효과 렌더링 모드 간 전환([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

아래 예제에서는`Save`메서드 및 렌더링 옵션을 사용하여 문서를JPEG형식으로 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
