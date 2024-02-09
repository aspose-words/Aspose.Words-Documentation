---
title: Word 문서에 Group 모양을 추가하는 방법
second_title: .NET용 Aspose.Words
articleTitle: Word 문서에 Group 모양을 추가하는 방법
linktitle: Word 문서에서 Group 셰이프 작업
description: "C#를 사용하여 도형을 Grouping 및 그룹 해제합니다."
type: docs
weight: 290
url: /ko/net/how-to-add-group-shape-into-a-word-document/
---

때로는 Word 문서에 group shape를 추가해야 할 때가 있습니다. 이러한 group shape는 여러 모양으로 구성됩니다.

Microsoft Word에서는 Group 명령/버튼을 사용하여 group shape를 빠르게 추가할 수 있습니다. 그룹의 개별 도형은 개별적으로 이동할 수 있습니다.

Aspose.Words에서는 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) 클래스를 사용하여 group shape를 추가하는 것이 매우 쉽습니다. **Shape**는 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 클래스를 사용하여 별도로 생성된 다음 [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) 메서드를 사용하여 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) 객체에 추가됩니다.

다음 코드 예제에서는 Word 문서에 group shape를 추가하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

다음은 Aspose.Words에서 지원되는 `Shape` 유형 중 일부입니다

- 직사각형
- 둥근 직사각형
- 둥근 직사각형
- 타원
- 다이아몬드
- 삼각형
- 정삼각형
- 평행사변형
- 사다리꼴
- 육각형
- 팔각형

전체 목록을 보려면 [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) 클래스를 확인하세요.

{{% /alert %}}