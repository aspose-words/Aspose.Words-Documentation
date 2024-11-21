---
title: 워터마크 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 워터마크 작업
linktitle: 워터마크 작업
type: docs
description: "다음을 사용하여 문서 워터 마크 조작 C++."
weight: 340
url: /ko/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

이 항목에서는 다음을 사용하여 워터마크를 프로그래밍 방식으로 작업하는 방법에 대해 설명합니다 Aspose.Words. 워터마크는 문서의 텍스트 뒤에 표시되는 배경 이미지입니다. 워터마크는 텍스트나 이미지를 포함할 수 있습니다. [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) 수업

## 문서에 워터마크 추가

그 안에 Microsoft Word,워터마크 삽입 명령을 사용하여 문서에 워터마크를 쉽게 삽입할 수 있습니다. Aspose.Words 제공 [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) 문서에 워터마크를 추가하거나 제거하는 클래스. Aspose.Words 제공 [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)사용할 수 있는 세 가지 유형의 워터마크(텍스트,이미지 및 없음)를 정의하는 열거형.

### 텍스트 워터마크 추가

다음 코드 예제에서는 다음을 정의하여 문서에 텍스트 워터마크를 삽입하는 방법을 보여 줍니다 [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) 를 사용하여 [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/) 방법

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### 이미지 워터마크 추가

다음 코드 예제에서는 다음을 정의하여 문서에 이미지 워터마크를 삽입하는 방법을 보여 줍니다 [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) 를 사용하여 [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/) 방법

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

워터 마크는 또한 모양 클래스를 사용하여 삽입 할 수 있습니다. 머리글이나 바닥 글에 어떤 모양이나 이미지를 삽입하여 상상할 수있는 유형의 워터 마크를 만드는 것은 매우 쉽습니다. 다음 코드 예제에서는 워드 문서에 워터마크를 삽입합니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## 문서에서 워터마크 제거

그 [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) 클래스는 문서에서 워터마크를 제거하는 제거 방법을 제공합니다.

다음 코드 예제에서는 문서에서 워터마크를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

워터마크가 추가되면 [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) 클래스 개체는 다음 삽입하는 동안 워터 마크 모양의 이름을 설정 한 다음 할당 된 이름으로 워터 마크 모양을 제거해야 문서에서 워터 마크를 제거합니다.

다음 코드 예제에서는 워터마크 모양의 이름을 설정하고 문서에서 제거하는 방법을 보여 줍니다:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## 표 셀에 워터마크 추가

때때로 당신은 테이블의 셀에 워터 마크/이미지를 삽입하고 테이블 외부에 표시해야,당신은 사용할 수 있습니다 [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) 재산. 이 속성은 셰이프가 테이블 내부 또는 테이블 외부에 표시되는지 여부를 나타내는 플래그를 가져오거나 설정합니다. 이 속성은 다음에 대해 문서를 최적화할 때만 작동합니다 Microsoft Word 2010 년 [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) 방법

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
