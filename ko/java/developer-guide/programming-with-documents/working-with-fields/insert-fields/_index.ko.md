---
title: 현장 삽입 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 연락처
linktitle: 연락처
description: "문서에 필드를 삽입하는 다른 방법 Java·"
type: docs
weight: 20
url: /ko/java/insert-fields/
---

문서에 필드를 삽입하는 여러 가지 방법이 있습니다

- 사용 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- 사용 [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- 사용 [Aspose.Words Document Object Model (DOM)](/words/ko/java/aspose-words-document-object-model/)

이 문서에서, 우리는 더 자세히 설명하고이 옵션을 사용하여 특정 필드를 삽입하는 방법을 분석합니다.

## DocumentBuilder를 사용하여 문서에 삽입

내 계정 Aspose.Words 이름 * [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) 방법은 문서에 새 필드를 삽입하는 데 사용됩니다. 첫번째 모수는 삽입될 분야의 전체적인 분야 부호를 받아들입니다. 두 번째 매개 변수는 선택이며 필드의 필드 결과를 수동으로 설정할 수 있습니다. 해당 필드는 자동으로 업데이트되지 않습니다. 이 매개 변수에 null 또는 빈 필드 값으로 필드를 삽입 할 수 있습니다. 특정 필드 코드 구문에 대해 확실하지 않은 경우, 필드를 만듭니다. Microsoft Word 먼저 입력하여 필드 코드를 볼 수 있습니다.

{{% alert color="primary" %}}

필드 코드가 공간을 포함하는 매개 변수를 가지고 있다면, 그것은 연설 표 내에서 동봉해야합니다. 그렇지 않으면 두 분야에서 Microsoft Word · Aspose.Words 매개 변수로 예상대로 작동하지 않을 수 있습니다.

{{% /alert %}}

다음 코드 예제는 병합 필드를 문서로 삽입하는 방법을 보여줍니다. **DocumentBuilder**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

같은 기술은 다른 분야에서 배열 된 삽입 필드에 사용됩니다.

다음 코드 예제는 필드를 다른 필드 내에서 배열하는 방법을 설명합니다. **DocumentBuilder**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Locale at Field Level에 추가하기

언어 식별자는 국가 또는 지역 지역의 언어에 대한 표준 국제 수치 약어입니다. 이름 * Aspose.Words, 필드 레벨에서 Locale를 지정할 수 있습니다. [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) 필드의 locale ID를 얻거나 설정합니다.

다음 코드 예제는이 옵션을 사용하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### 삽입 Untyped/Empty 분야

untyped/empty 필드를 삽입하려면 ({}) 그냥 좋아 Microsoft Word 허용, 당신은 사용할 수 [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) 방법과 [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 모수. 낱말 문서로 필드를 삽입하려면 "Ctrl + F9"키 조합을 누르면 됩니다.

다음 코드 예제는 문서에 빈 필드를 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### 제품정보 `COMPARE` 제품정보

더 보기 `COMPARE` 필드는 두 값을 비교하고 비교하면 숫자 값 1을 반환합니다. true 또는 0 비교가 있다면 false·

다음 코드 예제는 추가하는 방법을 보여줍니다 `COMPARE` DocumentBuilder를 사용하는 분야:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### 제품정보 `IF` 제품정보

더 보기 `IF` 필드는 인수 조건을 평가하는 데 사용할 수 있습니다.

다음 코드 예제는 추가하는 방법을 보여줍니다 `IF` DocumentBuilder를 사용하는 분야:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## FieldBuilder를 사용하여 문서에 삽입

필드를 삽입하는 방법 Aspose.Words 이름 * [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) 수업. 필드 스위치와 인수값을 텍스트, 노드 또는 배열 필드로 지정하는 유창한 인터페이스를 제공합니다.

다음 코드 예제는 필드를 문서로 삽입하는 방법을 보여줍니다. **FieldBuilder**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## 삽입 필드 사용 DOM

다양한 종류의 필드를 삽입할 수 있습니다. [Aspose.Words Document Object Model (DOM)](/words/ko/java/aspose-words-document-object-model/)· 이 섹션에서는 몇 가지 예를 살펴볼 것입니다.

### 삽입 Merge 본문 바로가기 DOM

`MERGEFIELD` Word 문서의 필드는 다음과 같습니다. [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) 수업. 사용 가능 **FieldMergeField** 다음 작업을 수행 할 클래스:

- 병합 필드의 이름을 지정합니다
- 병합의 형식 지정
- 병합의 필드 분리기와 필드 끝 사이에있는 텍스트를 지정
- 필드가 공백이 아닌 경우 병합 필드 이후에 삽입되는 텍스트를 지정합니다
- 필드가 공백이 아닌 경우 병합 필드 전에 삽입 될 텍스트를 지정합니다

{{% alert color="primary" %}}

자세한 내용은 [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) 수업시간 API·

{{% /alert %}}

다음 코드 예제는 추가하는 방법을 보여줍니다 `MERGE` 본문 바로가기 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### 관련 상품 Mail Merge `ADDRESSBLOCK` 본문 바로가기 DOM

더 보기 `ADDRESSBLOCK` 필드는 삽입에 사용됩니다 mail merge Word 문서의 주소 블록. `ADDRESSBLOCK` Word 문서의 필드는 다음과 같습니다. [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) 수업. 사용 가능 **FieldAddressBlock** 다음 작업을 수행 할 클래스:

- 필드에 국가/지역의 이름을 포함할 것인지 지정
- POST*CODE(Universal Postal Union 2006)에 의해 정의된 수신자의 국가/지역에 따라 주소를 지정할 수 있음
- 별도의 국가/지역 이름을 지정합니다
- 이름과 주소 형식 지정
- 주소 형식에 사용되는 언어 ID를 지정

{{% alert color="primary" %}}

자세한 내용은 [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) 수업시간 API·

{{% /alert %}}

다음 코드 예제는 추가하는 방법을 보여줍니다 Mail Merge `ADDRESSBLOCK` 본문 바로가기 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### 관련 상품 `ADVANCE` DocumentBuilder를 사용하지 않고 문서에 필드

더 보기 `ADVANCE` 필드는 선에서 왼쪽, 오른쪽, 위 또는 아래쪽으로 상쇄 후속 텍스트에 사용됩니다. `ADVANCE` Word 문서의 필드는 다음과 같습니다. [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) 수업. 당신은 사용할 수 있습니다 **FieldAdvance** 다음 작업을 수행 할 클래스:

- 필드를 따르는 텍스트가 페이지의 상단 가장자리에서 수직으로 이동해야한다는 점의 번호를 지정
- 필드가 열, 프레임, 또는 텍스트 상자의 왼쪽 가장자리에서 수평으로 이동해야하는 텍스트를 따라 포인트 수를 지정
- 필드가 왼쪽, 오른쪽, 위 또는 아래쪽으로 이동해야 하는 텍스트에 따라 포인트 수를 지정합니다

{{% alert color="primary" %}}

자세한 내용은 [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) 수업시간 API·

{{% /alert %}}

다음 코드 예제는 추가하는 방법을 보여줍니다 `ADVANCE` 본문 바로가기 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### 관련 상품 `ASK` DocumentBuilder를 사용하지 않고 문서에 필드

더 보기 `ASK` 필드는 Word 문서의 책갈피에 할당하기 위해 텍스트의 사용자를 신속하게 사용됩니다. `ASK` Word 문서의 필드는 다음과 같습니다. [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) 수업. 사용 가능 **FieldAsk** 다음 작업을 수행 할 클래스:

- bookmark의 이름을 지정합니다
- 기본 사용자 응답을 지정합니다 (실행된 창에 포함되는)
- 사용자 응답이 한 번 수신해야하는지 지정하십시오. mail merge (주)
- 프롬프트 텍스트를 지정합니다 (프롬프트 창의 제목)

{{% alert color="primary" %}}

자세한 내용은 [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) 수업시간 API·

{{% /alert %}}

다음 코드 예제는 추가하는 방법을 보여줍니다 `ASK` 본문 바로가기 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### 관련 상품 `AUTHOR` DocumentBuilder를 사용하지 않고 문서에 필드

더 보기 `AUTHOR` 필드는 문서의 저자의 이름을 지정하는 데 사용됩니다. `Document` 이름 * `AUTHOR` Word 문서의 필드는 다음과 같습니다. [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) 수업. 사용 가능 **FieldAuthor** 다음 작업을 수행 할 클래스:

- 문서 저자의 이름을 지정

{{% alert color="primary" %}}

자세한 내용은 [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) 수업시간 API·

{{% /alert %}}

다음 코드 예제는 추가하는 방법을 보여줍니다 `AUTHOR` 본문 바로가기 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### 관련 상품 `INCLUDETEXT` DocumentBuilder를 사용하지 않고 문서에 필드

더 보기 `INCLUDETEXT` 필드는 필드 코드에 이름을 붙인 문서에 포함된 텍스트 및 그래픽을 삽입합니다. 전체 문서 또는 책갈피에 의해 언급 된 문서의 일부를 삽입 할 수 있습니다. 이 문서의 필드는 INCLUDETEXT에 의해 표현됩니다. 사용 가능 [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) 다음 작업을 수행 할 클래스:

- 포함 된 문서의 책갈피의 이름을 지정
- 문서의 위치를 지정

{{% alert color="primary" %}}

자세한 내용은 [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) 수업시간 API·

{{% /alert %}}

다음 코드 예제는 추가하는 방법을 보여줍니다 `INCLUDETEXT` 본문 바로가기 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### 관련 상품 `TOA` DocumentBuilder를 사용하지 않고 문서에 필드

더 보기 `TOA` (*Table of Authorities*) 필드 빌드 및 당국의 테이블을 삽입합니다. 더 보기 `TOA` 필드에 의해 표시된 항목 수집 `TA` (* Authorities Entry*) 필드의 사용 Microsoft Office Word 삽입 `TOA` 필드를 클릭할 때 *Insert Table of Authorities* 에서 **감사 표** 그룹에 **References** 탭. 당신이 볼 때 `TOA` 문서의 필드, 문법은 다음과 같습니다:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

자세한 내용은 [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) 수업시간 API·

{{% /alert %}}

다음 코드 예제는 추가하는 방법을 보여줍니다 `TOA` 본문 바로가기 DOM 문서의 단락에.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
