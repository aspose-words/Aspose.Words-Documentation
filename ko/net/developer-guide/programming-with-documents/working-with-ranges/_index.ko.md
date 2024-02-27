---
title: C#의 범위 작업
second_title: .NET용 Aspose.Words
articleTitle: 범위 작업
linktitle: 범위 작업
description: ".NET용 Aspose.Words의 범위 기능을 소개합니다."
type: docs
weight: 130
url: /ko/net/working-with-ranges/
---

{{% alert color="primary" %}}

Aspose.Words에서 Range는 문서의 트리형 모델을 보여주는 "평평한 창"입니다.

{{% /alert %}}

Microsoft Word 자동화 작업을 해본 적이 있다면 문서 내용을 검사하고 수정하는 주요 도구 중 하나가 **Range** 개체라는 것을 알고 있을 것입니다. **Range**는 문서 내용과 형식을 보여주는 "창"과 같습니다.

Aspose.Words에는 [Range](https://reference.aspose.com/words/net/aspose.words/range/) 클래스도 있으며 Microsoft Word의 **Range**과 유사하게 보이고 작동하도록 설계되었습니다. **Range**은 문서의 임의 부분을 포괄할 수 없고 **Start** 및 **End**도 없지만 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 자체를 포함하여 모든 문서 노드가 포괄하는 범위에 액세스할 수 있습니다. 즉, 각 노드에는 고유한 범위가 있습니다. **Range** 개체를 사용하면 범위 내의 텍스트, 책갈피 및 양식 필드에 액세스하고 수정할 수 있습니다.

## 일반 텍스트 검색

[Text](https://reference.aspose.com/words/net/aspose.words/range/text/) 속성을 사용하여 범위의 서식이 지정되지 않은 일반 텍스트를 검색합니다.

다음 코드 예제에서는 범위의 서식이 지정되지 않은 일반 텍스트를 가져오는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 텍스트 삭제

Range를 사용하면 [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/)를 호출하여 범위의 모든 문자를 삭제할 수 있습니다.

다음 코드 예제에서는 범위의 모든 문자를 삭제하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}