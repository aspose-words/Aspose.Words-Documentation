---
title: Python에서 워터마크 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 워터마크 작업
linktitle: 워터마크 작업
description: "Python를 사용하여 문서에 워터마크를 만들고 관리합니다."
type: docs
weight: 340
url: /ko/python-net/working-with-watermark/
---

이 항목에서는 Aspose.Words를 사용하여 워터마크를 프로그래밍 방식으로 작업하는 방법에 대해 설명합니다. 워터마크는 문서의 텍스트 뒤에 표시되는 배경 이미지입니다. 워터마크에는 [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) 클래스로 표시되는 텍스트나 이미지가 포함될 수 있습니다.

{{% alert color="primary" %}}

**온라인으로 사용해 보세요**

[무료 온라인 문서 워터마크](https://products.aspose.app/words/watermark)를 통해 이 기능을 사용해 볼 수 있습니다.

{{% /alert %}}

## 문서에 워터마크를 추가하는 방법

Microsoft Word에서는 워터마크 삽입 명령을 사용하여 문서에 워터마크를 쉽게 삽입할 수 있습니다. Aspose.Words는 문서에 워터마크를 추가하거나 제거하기 위한 [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) 클래스를 제공합니다. Aspose.Words는 작업할 수 있는 세 가지 유형의 워터마크([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) 및 [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none))를 정의하는 [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) 열거형을 제공합니다

### 텍스트 워터마크 추가

다음 코드 예제에서는 [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) 메서드를 사용하여 [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/)를 정의하여 문서에 텍스트 워터마크를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### 이미지 워터마크 추가

다음 코드 예제에서는 [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) 메서드를 사용하여 [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/)를 정의하여 문서에 이미지 워터마크를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

모양 클래스를 사용하여 워터마크를 삽입할 수도 있습니다. 머리글이나 바닥글에 모양이나 이미지를 삽입하여 상상할 수 있는 모든 유형의 워터마크를 만드는 것은 매우 쉽습니다.

다음 코드 예제에서는 Word 문서에 워터마크를 삽입합니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

[여기](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다

{{% /alert %}}


## 문서에서 워터마크 제거

[Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) 클래스는 문서에서 워터마크를 제거하는 제거 메소드를 제공합니다.

다음 코드 예제에서는 문서에서 워터마크를 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 클래스 객체를 사용하여 워터마크를 추가한 경우 문서에서 워터마크를 제거하려면 삽입 시 워터마크 모양의 이름만 설정한 다음 할당된 이름으로 워터마크 모양을 제거하면 됩니다.

다음 코드 예제에서는 워터마크 모양의 이름을 설정하고 문서에서 제거하는 방법을 보여줍니다

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## 표 셀에 워터마크 추가

때로는 표의 셀에 워터마크/이미지를 삽입하고 표 외부에 표시해야 하는 경우 [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) 속성을 사용할 수 있습니다. 이 속성은 도형이 테이블 내부에 표시되는지 아니면 테이블 외부에 표시되는지를 나타내는 플래그를 가져오거나 설정합니다. 이 속성은 [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) 메서드를 사용하여 Microsoft Word 2010에 맞게 문서를 최적화하는 경우에만 작동합니다.

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
