---
title: 필드를 텍스트로 바꾸기 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 정체되는 텍스트로 필드를 교체
linktitle: 정체되는 텍스트로 필드를 교체
description: "텍스트로 필드를 대체하는 방법 알아보기 Java· 정적 데이터를 사용하여 필드를 대체 Java API·"
type: docs
weight: 37
url: /ko/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

텍스트를 정적 복사로 저장할 때 입력 필드가 자주 필요합니다. 예를 들어, 전자 메일에 첨부 파일로 보낼 때. 변환 분야와 같은 `DATE` 또는 `TIME` 정적 텍스트는 문서가 전송되었을 때 같은 날짜를 표시 할 수 있습니다. 또한, 어떤 상황에서, 당신은 조건부를 제거해야합니다 `IF` 문서의 필드는 대부분의 최근 텍스트 결과로 대체합니다. 예를 들어, 결과 변환 `IF` 정적 텍스트에 필드는 더 이상 문서의 필드가 업데이트 될 때 값을 동적 변경하지 않습니다.

아래 도표는 방법을 보여줍니다 `IF` 필드는 문서에 저장됩니다:

* 텍스트는 특수 필드 노드에 둘러싸여 – [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) · [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* 이름 [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) 노드는 필드 코드와 필드 결과에 텍스트를 분리합니다
* 필드 코드는 필드의 일반적인 행동을 정의합니다. 필드 결과가이 필드를 사용하여 업데이트 될 때 가장 최근 결과를 유지하면서 Microsoft Word 또는 Aspose.Words
* 필드 결과는 필드에 저장되고 문서에 표시되면

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

구조는 또한 데모 프로젝트를 사용하여 계층 형태로 볼 수 있습니다. **“DocumentExplorer”**, 어떤 배와 함께 **Aspose.Words** 설치.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## 텍스트로 대체 할 수없는 필드

정적 텍스트와 필드를 Replacing은 헤더 또는 footer의 일부 필드에 제대로 작동하지 않습니다.

예를 들어, 변환하려고 `PAGE` header 또는 footer의 필드는 정적 텍스트가 모든 페이지에 표시된 동일한 값에 표시됩니다. 이것은 헤더와 발자국이 여러 페이지에 걸쳐 반복되기 때문에 필드로 남아있을 때, 그들은 특히 취급되어 있으므로 각 페이지의 정확한 결과를 표시합니다.

그러나 헤더에서, `PAGE` 필드는 텍스트의 정적 실행에 잘 번역. 이 텍스트의 실행은 섹션에서 마지막 페이지가 된 것처럼 평가됩니다. `PAGE` 모든 페이지에 마지막 페이지를 표시하는 헤더의 필드.

다음 코드 예제는 가장 최근 결과와 필드를 대체하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## 특정 필드 유형 변환 특정 문서 부품

이름 * **ConvertFieldsToStaticText** 방법은 두 매개 변수를 수락 – [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 특성 및 [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enumeration, 이 메소드에 컴포지트 노드를 전달할 수 있습니다. 이 필드는 문서의 특정 부분에서만 정적 텍스트로 변환 할 수 있습니다.

예를 들면, 당신은 통과할 수 있습니다 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 전체 문서에서 정적 텍스트로 지정된 유형의 객체 및 변환 필드, 또는 당신은 통과 할 수 있습니다 [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) 섹션의 개체와 그 몸에서 발견 된 필드를 변환.

{{% alert color="primary" %}}

블록 레벨 노드를 전달할 때 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 몇몇 경우에 있는, 분야는 다수 단락의 맞은편에 경간할 수 있습니다. 이 일이 발생하면이를 피하기 대신 복합체의 부모를 통과하는 것이 좋습니다.

{{% /alert %}}

더 보기 [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 열렬한 **ConvertFieldsToStaticText** 방법은 어떤 유형의 필드를 정적 텍스트로 변환해야합니다. 문서에서 발견 된 다른 필드 유형은 변경되지 않습니다.

다음 코드 예제는 특정 유형의 필드를 선택하는 방법을 보여줍니다 – *targetFieldType* 특정 노드에서 – *compositeNode* 그리고 그 후에 정적 텍스트로 변환:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

다음 코드 예제는 변환하는 방법을 보여줍니다 `IF` 문서의 필드는 정적 텍스트에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

다음 코드 예제는 변환하는 방법을 보여줍니다 `PAGE` 텍스트에 문서의 본문에 필드:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

다음 코드 예제는 변환하는 방법을 보여줍니다 `IF` 마지막 단락에서 정적 텍스트에 필드:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
