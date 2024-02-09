---
title: Word 파일에 Group 모양을 추가하는 방법
second_title: Python via .NET용 Aspose.Words
articleTitle: Word 문서에서 Group 셰이프 작업
linktitle: Word 문서에서 Group 셰이프 작업
description: "Python를 사용하여 문서에 group shape를 추가합니다."
type: docs
weight: 290
url: /ko/python-net/how-to-add-group-shape-into-a-word-document/
---

때로는 Word 문서에 group shape를 추가해야 할 때가 있습니다. 이러한 group shape는 여러 모양으로 구성됩니다.

Microsoft Word에서는 Group 명령/버튼을 사용하여 group shape를 빠르게 추가할 수 있습니다. 그룹의 개별 도형은 개별적으로 이동할 수 있습니다.

Aspose.Words에서는 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 클래스를 사용하여 group shape를 추가하는 것이 매우 쉽습니다. [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 클래스를 이용하여 별도로 Shape를 생성한 후 [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) 방식을 이용하여 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 객체에 추가합니다.

다음 코드 예제에서는 Word 문서에 group shape를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

다음은 Aspose.Words에서 지원되는 `Shape` 유형 중 일부입니다. 전체 목록은 [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) 열거를 참조하세요

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
