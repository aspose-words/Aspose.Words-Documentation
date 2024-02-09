---
title: 고정 페이지 형식으로 변환
second_title: Python via .NET용 Aspose.Words
articleTitle: 고정 페이지 형식으로 변환
linktitle: 고정 페이지 형식으로 변환
description: "Python를 사용하여 문서를 PDF, XPS, HTML, XAML, PostScript 및 PCL 형식으로 저장합니다."
type: docs
weight: 10
url: /ko/python-net/converting-to-fixed-page-format/
---

Aspose.Words는 자체 페이지 레이아웃 엔진을 구현합니다. 사양을 자세히 살펴보기 전에 먼저 높은 수준에서 문서에 대해 논의하는 것이 좋습니다. 문서에 대해 생각할 때 사용자는 일반적으로 단어, 이미지, 표 및 차트가 포함된 여러 장의 종이 시트를 상상합니다. 문서는 텍스트, 스프레드시트, 슬라이드, CAD 도면, 순서도 등 다양한 유형이 될 수 있으므로 기본적으로 레이아웃도 다를 수 있습니다. 대부분의 응용 프로그램에서는 문서를 프린터로 보낼 수 있습니다. 이는 사용자가 문서의 최종 의도된 모양을 실제로 볼 수 있는 때입니다.

## 다양한 응용 프로그램에서 문서 표시

다양한 문서 보기 또는 게시 응용 프로그램을 통해 사용자는 특정 형식의 문서를 열고(Adobe Acrobat, XPS 뷰어) 편집(Adobe InDesign)할 수 있습니다. 이러한 응용 프로그램은 일반적으로 소위 "고정 페이지" 형식의 문서를 생성합니다. 이러한 문서 형식은 모든 페이지에서 문서 내용이 배치되는 위치를 정확하게 설명합니다. 내부적으로 PDF 또는 XPS 형식에는 페이지 콘텐츠의 레이아웃을 지정하는 그리기 지침은 물론 모든 페이지에 대한 설명이 포함되어 있습니다. 이는 콘텐츠가 래스터 또는 벡터 형식으로 표시되는 위치를 설명하는 이미지 형식과 유사합니다.

이와 대조적으로 일부 텍스트 편집 응용 프로그램은 문서 페이지 보기를 지원하지 않습니다. 예를 들어 Microsoft 메모장은 단순히 텍스트를 표시하고 편집하고 인쇄하는 것 외에는 거의 지원하지 않는 기능입니다. 여기서 중요한 점은 이러한 응용 프로그램은 문서의 페이지를 표시할 수도 없고 사용자에게 인쇄할 페이지 수를 알려줄 수도 없으며 문서 내용만 볼 수 있다는 것입니다. 문서는 일반 텍스트 형식으로 저장될 수 있으며 다른 많은 응용 프로그램에서 열 수 있습니다. 임의 파일의 바이너리 콘텐츠를 볼 수 있는 애플리케이션을 사용하면 문서 파일에 저장된 내용을 볼 수 있습니다. 이는 단지 일반 텍스트일 뿐 그 안에는 아무것도 없습니다.

Microsoft WordPad와 같은 약간 더 정교한 텍스트 편집 응용 프로그램은 이미지 삽입, 문자 서식, 단락 여백 및 간격과 같은 더 많은 서식 기능을 지원하는 서식 있는 텍스트 형식(RTF)으로 문서를 저장합니다. 그러나 RTF 형식에는 페이지에 대한 정보가 없이 문서의 내용만 포함됩니다.

Microsoft Word는 오늘날 Windows에서 가장 발전된 텍스트 편집 응용 프로그램입니다. 문서의 내용을 유연하고 광범위하게 설명하는 DOCX 형식으로 파일 형식을 지정하여 사용자가 페이지 크기, 문서 섹션 방향을 지정할 수 있고 WYSIWYG 응용 프로그램이므로 문서 페이지를 화면에 표시할 수도 있습니다. 그럼에도 불구하고 문서 파일에서 사용 가능한 페이지에 문서 내용이 표시되는 방법에 대한 정보는 아직 없습니다. 문서 파일은 일부 기하학적 제약 조건과 함께 콘텐츠 자체와 문서 개체 간의 관계만 설명합니다. 결과적으로 문서를 표시하기 전에 Microsoft Word는 해당 정보 자체를 계산합니다. 여기가 페이지 레이아웃이 작동하는 곳입니다.

## 페이지 레이아웃이란 무엇입니까?

문서 페이지 레이아웃은 모든 문서 개체의 페이지에서 특정 개체가 있는 위치를 설명하는 데이터 구조입니다. 또한 개체에는 글꼴 크기, 음영 또는 그리기 효과와 같이 모양에 영향을 미치는 속성이 있으므로 개체가 어디에 있는지뿐만 아니라 페이지에서 차지하는 영역과 개체가 차지하는 영역도 알아야 합니다. 다른 개체가 동일한 영역과 겹치지 않도록 여러 페이지에 적용합니다.

Aspose.Words는 PDF, XPS 및 다양한 이미지 형식과 같은 모든 고정 페이지 형식을 생성할 수 있도록 내부적으로 페이지 레이아웃 기능을 구현합니다. 페이지 레이아웃이 없으면 고정 페이지 문서 파일에 저장된 정보를 사용할 수 없으며 이러한 모든 형식이 지원되지 않습니다.

문서와 페이지 레이아웃의 관계는 매우 간단합니다. 문서는 내용을 설명하는 반면, 해당 페이지 레이아웃은 해당 내용의 기하학적 구조를 설명합니다. 기하학을 계산하기 위한 콘텐츠가 없으므로 페이지 레이아웃은 문서 없이 존재할 수 없지만 문서는 페이지 레이아웃 없이 존재할 수 있습니다. 예를 들어 DOCX 문서가 RTF 문서로 변환되면 두 형식 모두 이를 저장하지 않으므로 일반적으로 형상을 알 필요가 없습니다.

## 페이지 레이아웃 만들기

페이지 레이아웃을 만드는 것은 속도와 메모리 측면에서 비용이 많이 드는 절차일 수 있습니다. 이는 다음과 같은 몇 가지 이유 때문입니다

- 문서에 내용이 너무 많아서 수천 페이지에 걸쳐 표시해야 할 수도 있습니다. 모든 페이지에 있는 모든 개체의 기하학적 구조를 설명해야 하므로 메모리 리소스가 소모됩니다.
- 문서에는 형상에 제약을 가하는 많은 규칙이 있을 수 있습니다. 모든 제약 조건이 충족되도록 하려면 상당한 계산 시간이 소요될 수 있습니다
- `NUMPAGES` 필드와 같은 일부 문서 기능은 계산 시 사용할 수 없는 미래 속성 값에 대한 재귀적 종속성을 생성합니다. 이로 인해 계산이 반복되고 계산 시간이 늘어납니다.

앞서 언급한 이유로 인해 Aspose.Words는 필요한 경우에만 페이지 레이아웃을 생성합니다. 이에 대한 일반적인 이유는 문서 페이지를 렌더링하라는 요청이나 페이지 레이아웃에서 사용 가능한 정보에 따라 달라지는 필드 값을 얻기 위한 요청입니다. 덜 분명한 이유는 문서를 HTML로 내보내는 것일 수 있습니다. HTML은 고정 페이지 형식이 아니고 콘텐츠 개체의 기하학적 구조를 설명하지 않지만 여전히 이미지를 지원합니다. 이러한 이미지는 내부에 텍스트가 포함된 Microsoft Word에서 생성된 모양 형태일 수 있습니다. 예를 들어 축 레이블이 있는 차트를 이미지로 HTML로 내보낼 수 있지만 이를 수행하기 전에 Aspose.Words는 해당 이미지를 렌더링해야 하므로 레이블을 표시할 위치를 알아야 합니다. 아래 차트 예를 참조하세요

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="고정 페이지 형식으로 변환_1" style="width:800px"/>

### 비기하학적 특성

페이지 레이아웃은 기하학적 정보를 처리하는 것 외에도 색상과 테두리 스타일을 계산하는 역할도 합니다. Microsoft Word에서는 텍스트 색상을 자동으로 지정할 수 있습니다. 즉, 색상 선택은 셀이나 단락의 음영 색상을 기반으로 하거나 텍스트가 나타나는 페이지의 색상을 기반으로 해야 함을 의미합니다.

페이지 레이아웃은 텍스트가 표시될 위치와 그 뒤에 렌더링될 콘텐츠를 계산하여 색상 계산을 가능하게 합니다. 페이지 레이아웃에서 수행되는 다른 특정 계산이 있습니다. 예를 들어, 표의 가로 테두리는 표 행이 텍스트 열의 마지막인지, 표 행이 열 전체에 걸쳐 나뉘어 있는지 여부에 따라 달라집니다. 행이 열의 마지막에 렌더링되면 가로 대신 아래쪽 테두리가 사용됩니다.

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Aspose.Words에서 사용자는 새 페이지 레이아웃을 만들 것인지, 아니면 기존 레이아웃을 업데이트할 것인지 요청할 수 있습니다. 이 두 가지 모두 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 클래스에서 제공하는 [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) 메서드로 수행할 수 있습니다. 페이지 레이아웃이 없지만 필요한 경우(예: 문서를 고정 페이지 형식으로 내보낼 때) Aspose.Words는 자동으로 이 메서드를 호출합니다. 그러나 페이지 레이아웃이 이미 존재하는 경우 Aspose.Words는 이를 업데이트하는 데 필요한 리소스 소비를 피하기 위해 기존 레이아웃을 사용합니다. 이 경우 페이지 레이아웃이 문서 모델에 맞게 최신 상태인지 확인하기 위해 사용자는 [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) 메서드를 호출해야 합니다.

### 동적 구조

페이지 레이아웃 생성 프로세스는 다음 단계로 구성됩니다

- *Conversion* – 문서 모델의 내용을 열거하고 해당 레이아웃 개체를 준비합니다.
- *Build* – 페이지의 문서 내용을 나타내기 위해 레이아웃 개체를 배열합니다.
- *Reflow* – 형상 제약 조건을 충족하기 위해 객체 배열을 업데이트합니다.
- *레이아웃 개체를 고정된 페이지 표현으로 투영하고 색상 정보를 마무리합니다*.
- *모양 콘텐츠 작성 및 리플로우* – 문서에 중첩된 텍스트 콘텐츠가 있는 모양이 포함된 경우 필요한 단계입니다.

페이지 레이아웃은 부분적으로 재구성될 수 있는 동적 구조입니다. 이는 문서 레이아웃 구조를 다시 작성하지 않고 필드 값을 계산하는 것이 불가능할 때 특히 필요합니다. 필드는 페이지에 있는 개체의 위치를 참조할 수 있으며 동시에 필드 값 자체도 페이지에 렌더링되어 참조된 개체의 위치에 영향을 줍니다. 페이지에 위치를 지정할 때 필드 값을 아직 사용할 수 없기 때문에 페이지 레이아웃을 한 번에 작성할 수 없습니다.

문서의 첫 번째 페이지 바닥글에 `NUMPAGES` 필드가 나타나는 일반적인 시나리오를 생각해 보십시오. 이 필드의 값은 총 페이지 수입니다. 페이지에 필드를 배치하려면 해당 값을 알아야 합니다. 현재 첫 번째 페이지만 작성 중인 경우 총 페이지 수는 아직 알 수 없습니다. 이 경우 페이지 레이아웃은 기본값을 사용해야 하며 나중에 해당 필드로 돌아와 실제 계산에 따라 해당 값을 변경해야 합니다. 그러나 필드 값을 변경하면 페이지의 다른 문서 콘텐츠에 영향을 미칠 수 있으며 결과적으로 새 페이지가 추가되거나 기존 페이지가 제거되어 계산된 값이 오래되게 됩니다. 이 문제는 기존 페이지 레이아웃을 업데이트할 수 있게 함으로써 해결될 수 있습니다.

레이아웃을 생성할 때 페이지의 문서 출력에 영향을 미치는 [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) 속성을 설정할 수도 있습니다.

## 고정 페이지 형식으로 저장

페이지 레이아웃이 작성되고 개체의 기하학적 구조와 페이지에서의 위치가 계산되면 Aspose.Words에서 지원하는 고정 페이지 형식으로 문서를 저장할 수 있습니다. 문서를 고정 페이지 형식으로 저장할 때 이러한 모든 형식에 공통적인 렌더링 옵션을 사용할 수 있습니다. 이를 통해 다음을 제어할 수 있습니다

- 출력 문서([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/))에 포함된 페이지 수와 범위.
- 숫자 렌더링([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/))에 사용되는 문자 집합입니다.
- 메타파일 플레이어([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)). 자세한 내용은 [Windows 메타파일 처리](/words/ko/python-net/handling-windows-metafiles/) 문서를 참조하세요.
- JPEG 이미지를 재압축하기 위한 품질 비율로, 선택한 저장 형식([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/))에 따라 값이 약간 다를 수 있습니다.
- Aspose.Words 출력([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/))의 벡터 그래픽 최적화.
- Tiff, Png, Bmp, Jpeg, Emf 형식([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/))으로 저장할 때 그래픽 옵션.
- 문서를 그레이스케일([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/))로 저장합니다.
- DrawingML 모양과 대체 모양([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)) 렌더링 간을 전환합니다.
- DML 효과 렌더링 모드([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)) 간 전환.

아래 예에서는 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 방법과 렌더링 옵션을 사용하여 문서를 JPEG 형식으로 저장하는 방법을 보여줍니다

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
