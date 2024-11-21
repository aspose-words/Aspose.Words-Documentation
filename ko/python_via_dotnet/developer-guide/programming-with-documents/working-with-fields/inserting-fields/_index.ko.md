---
title: Python에 필드 삽입
second_title: Python via .NET용 Aspose.Words
articleTitle: 필드 삽입
linktitle: 필드 삽입
description: "`DocumentBuilder` 또는 DOM(Document Object Model)을 사용하여 다양한 방법으로 Python의 문서에 필드를 삽입합니다."
type: docs
weight: 20
url: /ko/python-net/inserting-fields/
timestamp: 2024-09-25-11-08-55
---

문서에 필드를 삽입하는 방법에는 여러 가지가 있습니다

- [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 사용
- [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) 사용
- [Aspose.Words Document Object Model (DOM)](/words/ko/python-net/aspose-words-document-object-model/) 사용

이 문서에서는 각 방법을 더 자세히 살펴보고 이러한 옵션을 사용하여 특정 필드를 삽입하는 방법을 분석합니다.

## DocumentBuilder를 사용하여 문서에 필드 삽입

Aspose.Words에서는 [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) 메서드를 사용하여 문서에 새 필드를 삽입합니다. 첫 번째 매개변수는 삽입할 필드의 전체 필드 코드를 허용합니다. 두 번째 매개변수는 선택사항이며 필드의 필드 결과를 수동으로 설정할 수 있습니다. 이것이 제공되지 않으면 필드가 자동으로 업데이트됩니다. 이 매개변수에 null 또는 공백을 전달하여 빈 필드 값이 있는 필드를 삽입할 수 있습니다. 특정 필드 코드 구문이 확실하지 않은 경우 먼저 Microsoft Word로 필드를 생성하고 전환하여 해당 필드 코드를 확인하세요.

{{% alert color="primary" %}}

필드 코드에 공백이 포함된 매개변수가 있는 경우 음성 표시로 묶어야 합니다. 그렇지 않으면 매개변수가 잘린 것으로 처리되므로 Microsoft Word 및 Aspose.Words의 필드가 예상대로 작동하지 않을 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 **DocumentBuilder**를 사용하여 문서에 병합 필드를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

다음 코드 예제에서는 **DocumentBuilder**를 사용하여 독일어 로캘이 포함된 병합 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

다른 필드 내에 중첩된 필드를 삽입하는 데에도 동일한 기술이 사용됩니다.

다음 코드 예제에서는 **DocumentBuilder**를 사용하여 다른 필드 내에 중첩된 필드를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### 필드 수준에서 로케일 지정

언어 식별자는 국가 또는 지역의 언어에 대한 표준 국제 숫자 약어입니다. Aspose.Words를 사용하면 필드 수준에서 로케일을 지정할 수 있습니다. [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) 속성은 필드의 로케일 ID를 가져오거나 설정합니다.

다음 코드 예제에서는 이 옵션을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### 유형이 지정되지 않은/빈 필드 삽입

Microsoft Word에서 허용하는 것처럼 형식이 지정되지 않은/빈 필드({})를 삽입하려면 [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none) 매개변수와 함께 [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) 메서드를 사용할 수 있습니다. Word 문서에 필드를 삽입하려면 "Ctrl + F9" 키 조합을 누르세요.

다음 코드 예제에서는 문서에 빈 필드를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## FieldBuilder를 사용하여 문서에 필드 삽입

Aspose.Words에 필드를 삽입하는 다른 방법은 [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) 클래스입니다. 필드 스위치와 인수 값을 텍스트, 노드 또는 중첩 필드로 지정하는 유창한 인터페이스를 제공합니다.

다음 코드 예제에서는 **FieldBuilder**를 사용하여 문서에 필드를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## DOM를 사용하여 필드 삽입

[Aspose.Words Document Object Model (DOM)](/words/ko/python-net/aspose-words-document-object-model/)를 사용하여 다양한 유형의 필드를 삽입할 수도 있습니다. 이 섹션에서는 몇 가지 예를 살펴보겠습니다.

### DOM를 사용하여 문서에 병합 필드 삽입

Word 문서의 `MERGEFIELD` 필드는 [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) 클래스로 표현할 수 있습니다. [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) 클래스를 사용하여 다음 작업을 수행할 수 있습니다

- 병합 필드의 이름을 지정합니다
- 병합 필드의 형식 지정
- 필드 구분 기호와 병합 필드의 필드 끝 사이에 있는 텍스트를 지정합니다
- 필드가 비어 있지 않은 경우 병합 필드 뒤에 삽입할 텍스트를 지정합니다
- 필드가 비어 있지 않은 경우 병합 필드 앞에 삽입할 텍스트를 지정합니다

다음 코드 예제에서는 DOM를 사용하여 문서의 단락에 `Merge` 필드를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### DOM을 사용하여 문서에 Mail Merge `ADDRESSBLOCK` 필드 삽입

`ADDRESSBLOCK` 필드는 Word 문서에 mail merge 주소 블록을 삽입하는 데 사용됩니다. Word 문서의 `ADDRESSBLOCK` 필드는 [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) 클래스로 표현될 수 있습니다. [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) 클래스를 사용하여 다음 작업을 수행할 수 있습니다

- 필드에 국가/지역 이름을 포함할지 여부를 지정합니다
- POST*CODE(Universal Postal Union 2006)에 정의된 대로 수신자의 국가/지역에 따라 주소 형식을 지정할지 여부를 지정합니다
- 제외되는 국가/지역 이름을 지정하세요
- 이름과 주소 형식을 지정합니다
- 주소 형식을 지정하는 데 사용되는 언어 ID를 지정합니다

다음 코드 예제에서는 DOM을 사용하여 문서의 단락에 Mail Merge `ADDRESSBLOCK` 필드를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### DocumentBuilder를 사용하지 않고 문서에 `ADVANCE` 필드 삽입

`ADVANCE` 필드는 줄 내의 후속 텍스트를 왼쪽, 오른쪽, 위 또는 아래로 오프셋하는 데 사용됩니다. Word 문서의 `ADVANCE` 필드는 [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) 클래스로 표현할 수 있습니다. [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) 클래스를 사용하여 다음 작업을 수행할 수 있습니다

- 필드 뒤의 텍스트를 페이지 상단 가장자리에서 수직으로 이동해야 하는 포인트 수를 지정합니다
- 필드 뒤에 오는 텍스트가 열, 프레임 또는 텍스트 상자의 왼쪽 가장자리에서 수평으로 이동되어야 하는 포인트 수를 지정합니다
- 필드 뒤에 오는 텍스트를 왼쪽, 오른쪽, 위쪽 또는 아래쪽으로 이동해야 하는 포인트 수를 지정합니다

다음 코드 예제에서는 DOM를 사용하여 문서의 단락에 `ADVANCE` 필드를 추가하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### DocumentBuilder를 사용하지 않고 문서에 `ASK` 필드 삽입

`ASK` 필드는 Word 문서의 책갈피에 할당할 텍스트를 사용자에게 묻는 데 사용됩니다. Word 문서의 `ASK` 필드는 [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/) 클래스로 표현될 수 있습니다. **FieldAsk** 클래스를 사용하여 다음 작업을 수행할 수 있습니다

- 북마크의 이름을 지정
- 기본 사용자 응답 지정(프롬프트 창에 포함된 초기 값)
- mail merge 작업마다 사용자 응답을 한 번 받아야 하는지 여부를 지정합니다
- 프롬프트 텍스트 지정(프롬프트 창 제목)

다음 코드 예제에서는 DOM를 사용하여 문서의 단락에 `ASK` 필드를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### DocumentBuilder를 사용하지 않고 문서에 `AUTHOR` 필드 삽입

`AUTHOR` 필드는 `Document` 속성에서 문서 작성자의 이름을 지정하는 데 사용됩니다. Word 문서의 `AUTHOR` 필드는 [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/) 클래스로 표현할 수 있습니다. **FieldAuthor** 클래스를 사용하여 다음 작업을 수행할 수 있습니다

- 문서 작성자의 이름을 지정하십시오

다음 코드 예제에서는 DOM를 사용하여 문서의 단락에 `AUTHOR` 필드를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### DocumentBuilder를 사용하지 않고 문서에 `INCLUDETEXT` 필드 삽입

`INCLUDETEXT` 필드는 필드 코드에 명명된 문서에 포함된 텍스트와 그래픽을 삽입합니다. 문서 전체를 삽입할 수도 있고 책갈피가 참조하는 문서의 일부를 삽입할 수도 있습니다. Word 문서의 이 필드는 INCLUDETEXT로 표시됩니다. [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) 클래스를 사용하여 다음 작업을 수행할 수 있습니다

- 포함된 문서의 북마크 이름을 지정합니다
- 문서의 위치를 지정

다음 코드 예제에서는 DOM를 사용하여 문서의 단락에 `INCLUDETEXT` 필드를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### DocumentBuilder를 사용하지 않고 문서에 `TOA` 필드 삽입

`TOA`(*저거 목록*) 필드는 근거 목록을 작성하고 삽입합니다. `TOA` 필드는 `TA`(*Authority Entry*) 필드로 표시된 항목을 수집합니다. Microsoft Office Word는 **References** 탭의 **권한 목록** 그룹에서 *권한 목록 삽입*을 클릭하면 `TOA` 필드를 삽입합니다. 문서에서 `TOA` 필드를 보면 구문은 다음과 같습니다

{ `TOA` [Switches ] }

[FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) 클래스를 사용하여 `TOA` 필드에 대한 작업을 수행할 수 있습니다.

다음 코드 예제에서는 DOM를 사용하여 문서의 단락에 `TOA` 필드를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
