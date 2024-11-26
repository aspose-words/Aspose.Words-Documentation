---
title: 필드 바꾸기 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 필드를 정적 텍스트로 바꾸기
linktitle: 필드를 정적 텍스트로 바꾸기
description: "필드를 텍스트로 바꾸는 방법 알아보기 C++. 필드를 정적 데이터로 바꾸기 C++ API."
type: docs
weight: 37
url: /ko/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

문서를 정적 복사본으로 저장하려는 경우 필드 교체가 필요한 경우가 많습니다. 예를 들어,전자 메일에 첨부 파일로 보낼 때. 다음과 같은 필드 변환 `DATE` 또는 `TIME` 정적 텍스트에 문서가 전송 된 때와 동일한 날짜를 표시 할 수 있습니다. 또한 일부 상황에서는 조건부 프로그램을 제거해야 할 수도 있습니다 `IF` 문서의 필드를 대신 가장 최근의 텍스트 결과로 바꿉니다. 예를 들어, `IF` 문서의 필드가 업데이트될 때 더 이상 동적으로 값을 변경하지 않도록 필드를 정적 텍스트로 바꿉니다.

아래 다이어그램은 어떻게 `IF` 필드가 문서에 저장됩니다:

* 텍스트는 특수 필드 노드로 둘러싸여 있습니다 – [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) 그리고 [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* 그 [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) 노드는 필드 내의 텍스트를 필드 코드 및 필드 결과로 구분합니다
* 필드 코드는 필드의 일반적인 동작을 정의하지만 필드 결과는 이 필드를 사용하여 업데이트할 때 가장 최근의 결과를 유지합니다 Microsoft Word 또는 Aspose.Words
* 필드 결과는 필드에 저장되어 볼 때 문서에 표시되는 것입니다

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

구조는 또한 데모 프로젝트를 사용하여 계층 적 형태로 아래에서 볼 수 있습니다 *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## 텍스트로 바꿀 수 없는 필드

필드를 정적 텍스트로 바꾸면 머리글이나 바닥글의 일부 필드에 대해 제대로 작동하지 않습니다.

예를 들어, `PAGE` 정적 텍스트에 대한 머리글 또는 바닥글의 필드는 모든 페이지에 동일한 값이 표시됩니다. 머리글과 바닥글이 여러 페이지에 걸쳐 반복되고 필드로 유지되면 각 페이지에 대한 올바른 결과를 표시하도록 처리되기 때문입니다.

그러나,헤더에서, `PAGE` 필드는 텍스트의 정적 실행으로 잘 변환됩니다. 이 텍스트 실행은 섹션의 마지막 페이지인 것처럼 평가되며,이로 인해 `PAGE` 모든 페이지 위에 마지막 페이지를 표시하는 헤더의 필드입니다.

다음 코드 예제에서는 필드를 최신 결과로 바꾸는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## 특정 문서 파트의 특정 필드 유형 변환

그 이후 **ConvertFieldsToStaticText** 메서드는 두 개의 매개 변수를 허용합니다. [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) 속성 및 [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) 열거,이 메서드에 모든 복합 노드를 전달할 수 있습니다. 이렇게 하면 문서의 특정 부분에서만 필드를 정적 텍스트로 변환할 수 있습니다.

예를 들어,당신은 통과 할 수 있습니다 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 개체 및 정적 텍스트로 전체 문서에서 지정된 유형의 필드를 변환,또는 당신은 [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) 섹션의 개체이며 해당 본문에 있는 필드만 변환합니다.

{{% alert color="primary" %}}

블록 레벨 노드를 전달할 때 [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/),경우에 따라 필드가 여러 단락에 걸쳐 있을 수 있습니다. 이런 일이 발생하면 이를 피하기 위해 대신 컴포지트의 부모를 전달하는 것이 좋습니다.

{{% /alert %}}

그 [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) 에 전달 된 열거 **ConvertFieldsToStaticText** 메서드는 정적 텍스트로 변환해야 하는 필드 유형을 지정합니다. 문서에 있는 다른 필드 유형은 변경되지 않습니다.

다음 코드 예제에서는 특정 유형의 필드를 선택하는 방법을 보여 줍니다 – *targetFieldType* 특정 노드 – *compositeNode* 그리고 정적 텍스트로 변환:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

다음 코드 예제에서는 모두 변환하는 방법을 보여 줍니다 `IF` 정적 텍스트에 대한 문서의 필드:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

다음 코드 예제에서는 모두 변환하는 방법을 보여 줍니다 `PAGE` 정적 텍스트에 대한 문서 본문의 필드:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

다음 코드 예제에서는 모두 변환하는 방법을 보여 줍니다 `IF` 정적 텍스트에 대한 마지막 단락의 필드:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
