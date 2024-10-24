---
title: 범위 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 범위 작업
linktitle: 범위 작업
description: "범위 기능 소개 Aspose.Words 에 대한 C++."
type: docs
weight: 130
url: /ko/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

그 안에 Aspose.Words,범위는 문서의 나무와 같은 모델에 대한"평평한 창"입니다.

{{% /alert %}}

당신이 함께 일한 경우 Microsoft Word 자동화,당신은 아마 문서 내용을 검사하고 수정할 수있는 주요 도구 중 하나는 **Range** 객체 **Range** 문서 내용 및 서식에"창"과 같습니다.

Aspose.Words 또한 [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) 그리고 그것은 모양과 유사하게 행동하도록 설계되었습니다 **Range** 그 안에 Microsoft Word. 비록 **Range** 문서의 임의의 부분을 커버 할 수 없으며 **Start** 그리고 **End**,다음을 포함한 모든 문서 노드가 다루는 범위에 액세스 할 수 있습니다 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 그 자체. 즉,각 노드에는 자체 범위가 있습니다. 그 **Range** 개체를 사용하면 범위 내에서 텍스트,책갈피 및 양식 필드에 액세스하고 수정할 수 있습니다.

## 일반 텍스트 검색

사용 [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) 범위의 서식이 지정되지 않은 일반 텍스트를 검색하는 속성입니다.

다음 코드 예제에서는 범위의 서식이 지정되지 않은 일반 텍스트를 가져오는 방법을 보여 줍니다:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 텍스트 삭제

범위는 호출하여 범위의 모든 문자를 삭제할 수 있습니다 [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

다음 코드 예제에서는 범위의 모든 문자를 삭제하는 방법을 보여 줍니다:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}