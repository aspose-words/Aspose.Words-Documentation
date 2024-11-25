---
title: Java의 범위 작업
second_title: Aspose.WordsJava
articleTitle: 범위 작업
linktitle: 범위 작업
description: "Java에 대한Aspose.Words의 범위 기능 소개."
type: docs
weight: 130
url: /ko/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Aspose.Words에서 범위는 문서의 트리와 같은 모델에 대한"평평한 창"입니다.

{{% /alert %}}

Microsoft Word자동화로 작업한 경우 문서 내용을 검사하고 수정하는 주요 도구 중 하나가`Range`개체임을 알 수 있습니다.범위는 문서 내용 및 서식에"창"과 같습니다.

Aspose.Words은 또한[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)클래스를 가지고 있으며Microsoft Word의**Range**과 비슷하게 보이고 행동하도록 설계되었습니다. **Range**는 문서의 임의의 부분을 포함할 수 없으며**Start**및**End**가 없지만[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)자체를 포함한 모든 문서 노드에서 다루는 범위에 액세스할 수 있습니다. 즉,각 노드에는 자체 범위가 있습니다. **Range**개체를 사용하면 범위 내의 텍스트,책갈피 및 양식 필드에 액세스하고 수정할 수 있습니다.

## 일반 텍스트 검색

[Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText)속성을 사용하여 범위의 서식이 지정되지 않은 일반 텍스트를 검색합니다.

다음 코드 예제에서는 범위의 서식이 지정되지 않은 일반 텍스트를 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 텍스트 삭제

`Range`클래스는[delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete)을 호출하여 범위의 모든 문자를 삭제할 수 있습니다.

다음 코드 예제에서는 범위의 모든 문자를 삭제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


