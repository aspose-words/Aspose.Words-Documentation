---
title: 필드를Java텍스트로 바꾸기
second_title: Aspose.WordsJava
articleTitle: 필드를 정적 텍스트로 바꾸기
linktitle: 필드를 정적 텍스트로 바꾸기
description: "Java에서 필드를 텍스트로 바꾸는 방법을 알아보세요. JavaAPI를 사용하여 필드를 정적 데이터로 바꿉니다."
type: docs
weight: 37
url: /ko/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

문서를 정적 복사본으로 저장하려는 경우 필드 교체가 필요한 경우가 많습니다. 예를 들어,전자 메일에 첨부 파일로 보낼 때. `DATE`또는`TIME`과 같은 필드를 정적 텍스트로 변환하면 문서가 보낸 날짜와 동일한 날짜를 표시할 수 있습니다. 또한 경우에 따라 문서에서 조건부`IF`필드를 제거하고 대신 가장 최근의 텍스트 결과로 바꾸어야 할 수도 있습니다. 예를 들어`IF`필드의 결과를 정적 텍스트로 변환하면 문서의 필드가 업데이트될 때 값이 더 이상 동적으로 변경되지 않습니다.

아래 다이어그램은`IF`필드가 문서에 저장되는 방법을 보여 줍니다:

* 텍스트는 특수 필드 노드([FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/)및[FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/))로 둘러싸여 있습니다
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)노드는 필드 내의 텍스트를 필드 코드 및 필드 결과로 구분합니다
* 필드 코드는 필드의 일반적인 동작을 정의하지만 필드 결과는Microsoft Word또는Aspose.Words를 사용하여 이 필드를 업데이트할 때 가장 최근의 결과를 유지합니다
* 필드 결과는 필드에 저장되어 볼 때 문서에 표시되는 것입니다

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

구조는 또한**Aspose.Words**설치 프로그램과 함께 제공되는 데모 프로젝트**"DocumentExplorer"**을 사용하여 계층적 형태로 아래에서 볼 수 있습니다.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## 텍스트로 바꿀 수 없는 필드

필드를 정적 텍스트로 바꾸면 머리글이나 바닥글의 일부 필드에 대해 제대로 작동하지 않습니다.

예를 들어 머리글이나 바닥글의`PAGE`필드를 정적 텍스트로 변환하면 모든 페이지에 동일한 값이 표시됩니다. 머리글과 바닥글이 여러 페이지에 걸쳐 반복되고 필드로 유지되면 각 페이지에 대한 올바른 결과를 표시하도록 처리되기 때문입니다.

그러나 헤더에서`PAGE`필드는 정적 텍스트 실행으로 잘 변환됩니다. 이 텍스트 실행은 섹션의 마지막 페이지인 것처럼 평가되므로 헤더의`PAGE`필드에 모든 페이지에 마지막 페이지가 표시됩니다.

다음 코드 예제에서는 필드를 최신 결과로 바꾸는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## 특정 문서 파트의 특정 필드 유형 변환

**ConvertFieldsToStaticText**메서드는[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)속성과[FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)열거형이라는 두 개의 매개 변수를 허용하므로 이 메서드에 모든 복합 노드를 전달할 수 있습니다. 이렇게 하면 문서의 특정 부분에서만 필드를 정적 텍스트로 변환할 수 있습니다.

예를 들어[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)개체를 전달하고 지정된 유형의 필드를 전체 문서에서 정적 텍스트로 변환하거나 섹션의[Body](https://reference.aspose.com/words/java/com.aspose.words/body/)개체를 전달하고 해당 본문에 있는 필드만 변환할 수 있습니다.

{{% alert color="primary" %}}

[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)과 같은 블록 수준 노드를 전달할 때 경우에 따라 필드가 여러 단락에 걸쳐 있을 수 있습니다. 이런 일이 발생하면 이를 피하기 위해 대신 컴포지트의 부모를 전달하는 것이 좋습니다.

{{% /alert %}}

**ConvertFieldsToStaticText**메서드에 전달된[FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)열거형은 정적 텍스트로 변환해야 하는 필드 유형을 지정합니다. 문서에 있는 다른 필드 유형은 변경되지 않습니다.

다음 코드 예제에서는 특정 유형의 필드(*targetFieldType*)를 특정 노드에서*compositeNode*으로 선택한 다음 정적 텍스트로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

다음 코드 예제에서는 문서의 모든`IF`필드를 정적 텍스트로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

다음 코드 예제에서는 문서 본문에 있는 모든`PAGE`필드를 정적 텍스트로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

다음 코드 예제에서는 마지막 단락의 모든`IF`필드를 정적 텍스트로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
