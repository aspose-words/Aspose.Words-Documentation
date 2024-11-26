---
title: Python의 범위 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 범위 작업
linktitle: 범위 작업
description: "Python를 사용하여 문서의 범위 작업을 수행합니다."
type: docs
weight: 130
url: /ko/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Aspose.Words에서 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/)는 문서의 트리형 모델을 보여주는 "플랫 창"입니다.

{{% /alert %}}

Microsoft Word 자동화 작업을 해본 적이 있다면 문서 내용을 검사하고 수정하는 주요 도구 중 하나가 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 개체라는 것을 알고 있을 것입니다. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/)는 문서 내용과 형식을 보여주는 "창"과 같습니다. Aspose.Words에는 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 클래스도 있으며 Microsoft Word의 **Range**와 유사하게 보이고 작동하도록 설계되었습니다. **Range**는 문서의 임의 부분을 다룰 수 없고 **Start** 및 **End**도 없지만 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 자체를 포함하여 모든 문서 노드가 다루는 범위에 액세스할 수 있습니다. 즉, 각 노드에는 고유한 범위가 있습니다. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 개체를 사용하면 범위 내의 텍스트, 책갈피 및 양식 필드에 액세스하고 수정할 수 있습니다.

## 일반 텍스트 검색

[text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) 속성을 사용하여 범위의 서식이 지정되지 않은 일반 텍스트를 검색합니다.

다음 코드 예제에서는 범위의 서식이 지정되지 않은 일반 텍스트를 가져오는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 텍스트 삭제

Range를 사용하면 [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)를 호출하여 범위의 모든 문자를 삭제할 수 있습니다

다음 코드 예제에서는 범위의 모든 문자를 삭제하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}
