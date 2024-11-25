---
title: Java에 필드 삽입
second_title: Aspose.WordsJava
articleTitle: 필드 삽입
linktitle: 필드 삽입
description: "Java을 사용하여 문서에 필드를 삽입하는 다른 방법."
type: docs
weight: 20
url: /ko/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

문서에 필드를 삽입하는 방법은 여러 가지가 있습니다:

- [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)사용
- [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)사용
- 사용 [Aspose.Words문서 개체 모델(DOM)](/words/java/aspose-words-document-object-model/)

이 기사에서는 각 방법을 더 자세히 살펴보고 이러한 옵션을 사용하여 특정 필드를 삽입하는 방법을 분석합니다.

## DocumentBuilder을 사용하여 문서에 필드 삽입

Aspose.Words에서[InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean))메서드는 문서에 새 필드를 삽입하는 데 사용됩니다. 첫 번째 매개 변수는 삽입할 필드의 전체 필드 코드를 허용합니다. 두 번째 매개 변수는 선택 사항이며 필드의 필드 결과를 수동으로 설정할 수 있습니다. 이 항목이 제공되지 않으면 필드가 자동으로 업데이트됩니다. 이 매개 변수에 널 또는 빈 필드를 전달하여 빈 필드 값이 있는 필드를 삽입할 수 있습니다. 특정 필드 코드 구문에 대해 잘 모르는 경우 먼저Microsoft Word에서 필드를 만들고 해당 필드 코드를 표시하도록 전환합니다.

{{% alert color="primary" %}}

필드 코드에 공백을 포함하는 매개 변수가 있는 경우 음성 표시 안에 포함되어야 합니다. 그렇지 않으면Microsoft Word과Aspose.Words의 필드가 예상대로 작동하지 않을 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는**DocumentBuilder**을 사용하여 병합 필드를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

동일한 기술을 사용하여 다른 필드 내에 중첩된 필드를 삽입합니다.

다음 코드 예제에서는**DocumentBuilder**을 사용하여 다른 필드에 중첩된 필드를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### 필드 수준에서 로캘 지정

언어 식별자는 국가 또는 지리적 지역의 언어에 대한 표준 국제 숫자 약어입니다. Aspose.Words을 사용하면[LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId)속성을 사용하여 필드 수준에서 로캘을 지정할 수 있습니다.이 속성은 필드의 로캘ID를 가져오거나 설정합니다.

다음 코드 예제에서는 이 옵션을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### 유형 지정되지 않은/빈 필드 삽입

Microsoft Word가 허용하는 것처럼 형식화되지 않은/빈 필드({})를 삽입하려는 경우[FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)매개 변수와 함께[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)메서드를 사용할 수 있습니다. 단어 문서에 필드를 삽입하려면"F9"키 조합을 누를 수 있습니다.

다음 코드 예제에서는 문서에 빈 필드를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### `COMPARE`필드 삽입

`COMPARE`필드는 두 값을 비교하고 비교가 참이면 숫자 값 1 을 반환하거나 비교가 거짓이면 0 을 반환합니다.

다음 코드 예제에서는DocumentBuilder을 사용하여`COMPARE`필드를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### `IF`필드 삽입

`IF`필드는 인수를 조건부로 평가하는 데 사용할 수 있습니다.

다음 코드 예제에서는DocumentBuilder을 사용하여`IF`필드를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## FieldBuilder을 사용하여 문서에 필드 삽입

Aspose.Words에 필드를 삽입하는 다른 방법은[FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)클래스입니다. 필드 스위치 및 인수 값을 텍스트,노드 또는 중첩 필드로 지정하는 유창한 인터페이스를 제공합니다.

다음 코드 예제에서는**FieldBuilder**을 사용하여 문서에 필드를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## DOM을 사용하여 필드 삽입

다음을 사용하여 다양한 유형의 필드를 삽입할 수도 있습니다 [Aspose.Words문서 개체 모델(DOM)](/words/java/aspose-words-document-object-model/). 이 섹션에서는 몇 가지 예를 살펴 보겠습니다.

### DOM을 사용하여 문서에 병합 필드 삽입

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- 병합 필드의 이름을 지정합니다
- 병합 필드의 서식 지정
- 병합 필드의 필드 구분 기호와 필드 끝 사이에 있는 텍스트를 지정합니다
- 필드가 비어 있지 않은 경우 병합 필드 뒤에 삽입할 텍스트를 지정합니다
- 필드가 비어 있지 않은 경우 병합 필드 앞에 삽입할 텍스트를 지정합니다

{{% alert color="primary" %}}

자세한 내용은[FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/)클래스API를 참조하십시오.

{{% /alert %}}

다음 코드 예제에서는DOM을 사용하여`MERGE`필드를 문서의 단락에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Mail Merge`ADDRESSBLOCK`필드를DOM를 사용하여 문서에 삽입

`ADDRESSBLOCK`필드는 단어 문서에Mail Merge주소 블록을 삽입하는 데 사용됩니다. 단어 문서의`ADDRESSBLOCK`필드는[FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/)클래스로 나타낼 수 있습니다. **FieldAddressBlock**클래스를 사용하여 다음 작업을 수행할 수 있습니다:

- 필드에 국가/지역 이름을 포함할지 여부를 지정합니다
- POST*CODE에 정의된 수신자의 국가/지역에 따라 주소 서식을 지정할지 여부를 지정합니다(유니버설 우체 연합 2006)
- 제외된 국가/지역 이름 지정
- 이름 및 주소 형식 지정
- 주소 서식을 지정하는 데 사용되는 언어ID을 지정합니다

{{% alert color="primary" %}}

자세한 내용은[FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/)클래스API를 참조하십시오.

{{% /alert %}}

다음 코드 예제에서는DOM를 사용하여Mail Merge`ADDRESSBLOCK`필드를 문서의 단락에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### DocumentBuilder을 사용하지 않고 문서에`ADVANCE`필드 삽입

`ADVANCE`필드는 왼쪽,오른쪽,위 또는 아래로 줄 내의 후속 텍스트를 오프셋하는 데 사용됩니다. 단어 문서의`ADVANCE`필드는[FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/)클래스로 나타낼 수 있습니다. **FieldAdvance**클래스를 사용하여 다음 작업을 수행할 수 있습니다:

- 필드 뒤에 오는 텍스트를 페이지 위쪽 가장자리에서 세로로 이동할 지점 수를 지정합니다
- 필드 뒤에 오는 텍스트를 열,프레임 또는 텍스트 상자의 왼쪽 가장자리에서 가로로 이동할 지점 수를 지정합니다
- 필드 뒤에 오는 텍스트를 왼쪽,오른쪽,위 또는 아래로 이동할 지점 수를 지정합니다

{{% alert color="primary" %}}

자세한 내용은[FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/)클래스API를 참조하십시오.

{{% /alert %}}

다음 코드 예제에서는DOM을 사용하여`ADVANCE`필드를 문서의 단락에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### DocumentBuilder을 사용하지 않고 문서에`ASK`필드 삽입

`ASK`필드는 워드 문서의 책갈피에 할당할 텍스트를 사용자에게 묻는 데 사용됩니다. 단어 문서의`ASK`필드는[FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/)클래스로 나타낼 수 있습니다. **FieldAsk**클래스를 사용하여 다음 작업을 수행할 수 있습니다:

- 책갈피 이름 지정
- 기본 사용자 응답 지정(프롬프트 창에 포함된 초기 값)
- Mail Merge작업당 사용자 응답을 한 번 수신할지 여부를 지정합니다
- 프롬프트 텍스트(프롬프트 창의 제목)지정

{{% alert color="primary" %}}

자세한 내용은[FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/)클래스API를 참조하십시오.

{{% /alert %}}

다음 코드 예제에서는DOM을 사용하여`ASK`필드를 문서의 단락에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### DocumentBuilder을 사용하지 않고 문서에`AUTHOR`필드 삽입

`AUTHOR`필드는`Document`속성에서 문서 작성자 이름을 지정하는 데 사용됩니다. 단어 문서의`AUTHOR`필드는[FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/)클래스로 나타낼 수 있습니다. **FieldAuthor**클래스를 사용하여 다음 작업을 수행할 수 있습니다:

- 문서 작성자 이름 지정

{{% alert color="primary" %}}

자세한 내용은[FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/)클래스API를 참조하십시오.

{{% /alert %}}

다음 코드 예제에서는DOM을 사용하여`AUTHOR`필드를 문서의 단락에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### DocumentBuilder을 사용하지 않고 문서에`INCLUDETEXT`필드 삽입

`INCLUDETEXT`필드는 필드 코드에 이름이 지정된 문서에 포함된 텍스트와 그래픽을 삽입합니다. 전체 문서 또는 책갈피에서 참조하는 문서의 일부를 삽입할 수 있습니다. 워드 문서의 이 필드는INCLUDETEXT로 표시됩니다. [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/)클래스를 사용하여 다음 작업을 수행할 수 있습니다:

- 포함된 문서의 책갈피 이름 지정
- 문서의 위치 지정

{{% alert color="primary" %}}

자세한 내용은[FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/)클래스API를 참조하십시오.

{{% /alert %}}

다음 코드 예제에서는DOM을 사용하여`INCLUDETEXT`필드를 문서의 단락에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### DocumentBuilder을 사용하지 않고 문서에`TOA`필드 삽입

`TOA`(*Table of Authorities*) 필드는 권한 표를 작성하고 삽입합니다. `TOA` 필드는 `TA`(*Table of Authorities Entry*) 필드로 표시된 항목을 수집합니다. Microsoft Office Word는 **References** 탭의 **Table of Authorities** 그룹에서 *Insert Table of Authorities*을 클릭하면 `TOA` 필드를 삽입합니다. 문서에서 `TOA` 필드를 볼 때 구문은 다음과 같습니다.

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

자세한 내용은[FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/)클래스API를 참조하십시오.

{{% /alert %}}

다음 코드 예제에서는DOM을 사용하여`TOA`필드를 문서의 단락에 추가하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
