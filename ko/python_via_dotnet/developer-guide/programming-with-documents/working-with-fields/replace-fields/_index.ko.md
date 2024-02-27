---
title: 필드 교체 Python
second_title: Python via .NET용 Aspose.Words
articleTitle: 필드를 정적 텍스트로 바꾸기
linktitle: 필드를 정적 텍스트로 바꾸기
description: "Python에서 필드를 텍스트로 바꾸는 방법을 알아보세요. Python via .NET API을 사용하여 필드를 정적 데이터로 바꿉니다."
type: docs
weight: 37
url: /ko/python-net/replace-fields/
---

문서를 정적 복사본으로 저장하려는 경우 필드 교체가 필요한 경우가 많습니다. 예를 들어 이메일에 첨부 파일로 보내는 경우입니다. `DATE` 또는 `TIME`와 같은 필드를 정적 텍스트로 변환하면 문서가 전송된 날짜와 동일한 날짜를 표시할 수 있습니다. 또한 어떤 상황에서는 문서에서 조건부 `IF` 필드를 제거하고 대신 가장 최근의 텍스트 결과로 바꿔야 할 수도 있습니다. 예를 들어 `IF` 필드의 결과를 정적 텍스트로 변환하면 문서의 필드가 업데이트될 때 해당 값이 더 이상 동적으로 변경되지 않습니다.

아래 다이어그램은 `IF` 필드가 문서에 저장되는 방식을 보여줍니다

* 텍스트는 특수 필드 노드([FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 및 [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/))로 둘러싸여 있습니다
* [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) 노드는 필드 내의 텍스트를 필드 코드와 필드 결과로 분리합니다
* 필드 코드는 필드의 일반적인 동작을 정의하는 반면, Microsoft Word 또는 Aspose.Words를 사용하여 이 필드를 업데이트할 때 필드 결과는 가장 최근 결과를 유지합니다
* 필드 결과는 필드에 저장되어 문서를 볼 때 표시되는 내용입니다

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

[데모 프로젝트 *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*를 사용하여 구조를 계층적 형태로 아래에서 볼 수도 있습니다

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## 텍스트로 대체할 수 없는 필드

머리글이나 바닥글의 일부 필드에서는 필드를 정적 텍스트로 바꾸는 것이 제대로 작동하지 않습니다.

예를 들어 머리글이나 바닥글의 `PAGE` 필드를 정적 텍스트로 변환하려고 하면 모든 페이지에 동일한 값이 표시됩니다. 머리글과 바닥글은 여러 페이지에 걸쳐 반복되며, 필드로 남아 있는 경우 각 페이지에 올바른 결과를 표시하도록 특별히 처리되기 때문입니다.

그러나 헤더에서 `PAGE` 필드는 정적 텍스트 실행으로 잘 변환됩니다. 이 텍스트 실행은 섹션의 마지막 페이지인 것처럼 평가되며, 이로 인해 헤더의 `PAGE` 필드가 모든 페이지에 걸쳐 마지막 페이지를 표시하게 됩니다.

다음 코드 예제에서는 필드를 가장 최근 결과로 바꾸는 방법을 보여줍니다

예

## 특정 문서 부분의 특정 필드 유형 변환

**ConvertFieldsToStaticText** 메서드는 [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) 속성과 [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) 열거라는 두 가지 매개 변수를 허용하므로 모든 복합 노드를 이 메서드에 전달할 수 있습니다. 이를 통해 문서의 특정 부분에서만 필드를 정적 텍스트로 변환할 수 있습니다.

예를 들어 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 개체를 전달하고 전체 문서에서 지정된 유형의 필드를 정적 텍스트로 변환하거나, 섹션의 [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) 개체를 전달하고 해당 본문에 있는 필드만 변환할 수 있습니다.

{{% alert color="primary" %}}

[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)와 같은 블록 수준 노드를 전달할 때 어떤 경우에는 필드가 여러 단락에 걸쳐 있을 수 있다는 점에 유의하세요. 이런 일이 발생하면 이를 방지하기 위해 대신 합성의 부모를 전달하는 것이 좋습니다.

{{% /alert %}}

**ConvertFieldsToStaticText** 메서드에 전달된 [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) 열거형은 정적 텍스트로 변환해야 하는 필드 유형을 지정합니다. 문서에 있는 다른 필드 유형은 변경되지 않습니다.

다음 코드 예제에서는 특정 유형(특정 노드의 *targetFieldType*), *compositeNode*의 필드를 선택한 다음 이를 정적 텍스트로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

다음 코드 예제에서는 문서의 모든 `IF` 필드를 정적 텍스트로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 문서 본문의 모든 `PAGE` 필드를 정적 텍스트로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

다음 코드 예제에서는 마지막 단락의 모든 `IF` 필드를 정적 텍스트로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}