---
title: 필드 삽입 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 필드 삽입
linktitle: 필드 삽입
description: "다음을 사용하여 문서에 필드를 삽입하는 다양한 방법 C++."
type: docs
weight: 20
url: /ko/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

문서에 필드를 삽입하는 방법은 여러 가지가 있습니다:

- 사용 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- 사용 [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- 사용 [Aspose.Words 문서 개체 모델(DOM)](/words/cpp/aspose-words-document-object-model/)

이 기사에서는 각 방법을 더 자세히 살펴보고 이러한 옵션을 사용하여 특정 필드를 삽입하는 방법을 분석합니다.

## 다음을 사용하여 문서에 필드 삽입 DocumentBuilder

그 안에 Aspose.Words 그 [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) 메서드는 문서에 새 필드를 삽입하는 데 사용됩니다. 첫 번째 매개 변수는 삽입할 필드의 전체 필드 코드를 허용합니다. 두 번째 매개 변수는 선택 사항이며 필드의 필드 결과를 수동으로 설정할 수 있습니다. 이 항목이 제공되지 않으면 필드가 자동으로 업데이트됩니다. 이 매개 변수에 널 또는 빈 필드를 전달하여 빈 필드 값이 있는 필드를 삽입할 수 있습니다. 특정 필드 코드 구문에 대해 잘 모르는 경우 필드를 만듭니다 Microsoft Word 먼저 그 필드 코드를 볼 수 전환합니다.

{{% alert color="primary" %}}

필드 코드에 공백을 포함하는 매개 변수가 있는 경우 음성 표시 안에 포함되어야 합니다. 그렇지 않으면 둘 다의 필드 Microsoft Word 그리고 Aspose.Words 두 매개 변수가 모두 잘리는 것으로 처리되므로 예상대로 작동하지 않을 수 있습니다

{{% /alert %}}

다음 코드 예제에서는 다음을 사용하여 병합 필드를 문서에 삽입하는 방법을 보여 줍니다 **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

동일한 기술을 사용하여 다른 필드 내에 중첩된 필드를 삽입합니다.

다음 코드 예제에서는 다음을 사용하여 다른 필드 내에 중첩된 필드를 삽입하는 방법을 보여 줍니다 **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### 필드 수준에서 로캘 지정

언어 식별자는 국가 또는 지리적 지역의 언어에 대한 표준 국제 숫자 약어입니다. 함께 Aspose.Words,다음을 사용하여 필드 수준에서 로캘을 지정할 수 있습니다 [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/) 필드 로캘을 가져오거나 설정하는 속성 ID.

다음 코드 예제에서는 이 옵션을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### 유형 지정되지 않은/빈 필드 삽입

형식이 지정되지 않은/빈 필드({})를 삽입하려는 경우 Microsoft Word 허용,당신은 사용할 수 있습니다 [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) 와 방법 [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) 매개 변수 워드 문서에 필드를 삽입하려면"클릭+ F9"키 조합.

다음 코드 예제에서는 문서에 빈 필드를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## 다음을 사용하여 문서에 필드 삽입 FieldBuilder

필드를 삽입하는 다른 방법 Aspose.Words 이 [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/) 수업 필드 스위치 및 인수 값을 텍스트,노드 또는 중첩 필드로 지정하는 유창한 인터페이스를 제공합니다.

다음 코드 예제에서는 다음을 사용하여 문서에 필드를 삽입하는 방법을 보여 줍니다 **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## 다음을 사용하여 필드 삽입 DOM

다음을 사용하여 다양한 유형의 필드를 삽입할 수도 있습니다 [Aspose.Words 문서 개체 모델(DOM)](/words/cpp/aspose-words-document-object-model/). 이 섹션에서는 몇 가지 예를 살펴 보겠습니다.

### 다음을 사용하여 병합 필드를 문서에 삽입 DOM

그 `MERGEFIELD` 워드 문서의 필드는 [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) 수업 당신은 사용할 수 있습니다 **FieldMergeField** 다음 작업을 수행하는 클래스:

- 병합 필드의 이름을 지정합니다
- 병합 필드의 서식 지정
- 병합 필드의 필드 구분 기호와 필드 끝 사이에 있는 텍스트를 지정합니다
- 필드가 비어 있지 않은 경우 병합 필드 뒤에 삽입할 텍스트를 지정합니다
- 필드가 비어 있지 않은 경우 병합 필드 앞에 삽입할 텍스트를 지정합니다

{{% alert color="primary" %}}

자세한 내용은 [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) 클래스 API.

{{% /alert %}}

다음 코드 예제에서는 다음을 추가하는 방법을 보여 줍니다 `MERGE` 필드 사용 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 삽입 Mail Merge 사용하여 문서에 주소 블록 필드 DOM

그 `ADDRESSBLOCK` 필드를 삽입하는 데 사용됩니다 mail merge 단어 문서의 주소 블록. `ADDRESSBLOCK` 워드 문서의 필드는 [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) 수업 당신은 사용할 수 있습니다 **FieldAddressBlock** 다음 작업을 수행하는 클래스:

- 필드에 국가/지역 이름을 포함할지 여부를 지정합니다
- 에 의해 정의된 받는 사람의 국가/지역에 따라 주소 서식을 지정할지 여부를 지정합니다 POST*CODE (유니버설 우체 연합 2006)
- 제외된 국가/지역 이름 지정
- 이름 및 주소 형식 지정
- 언어 지정 ID 주소를 포맷하는 데 사용

{{% alert color="primary" %}}

자세한 내용은 [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) 클래스 API.

{{% /alert %}}

다음 코드 예제에서는 다음을 추가하는 방법을 보여 줍니다 Mail Merge `ADDRESSBLOCK` 필드 사용 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 사용하지 않고 문서에 고급 필드 삽입 DocumentBuilder

그 `ADVANCE` 필드는 왼쪽,오른쪽,위 또는 아래로 줄 내에서 후속 텍스트를 오프셋하는 데 사용됩니다. 그 `ADVANCE` 워드 문서의 필드는 [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) 수업 당신은 사용할 수 있습니다 FieldAdvance 다음 작업을 수행하는 클래스:

- 필드 뒤에 오는 텍스트를 페이지 위쪽 가장자리에서 세로로 이동할 지점 수를 지정합니다
- 필드 뒤에 오는 텍스트를 열,프레임 또는 텍스트 상자의 왼쪽 가장자리에서 가로로 이동할 지점 수를 지정합니다
- 필드 뒤에 오는 텍스트를 왼쪽,오른쪽,위 또는 아래로 이동할 지점 수를 지정합니다

{{% alert color="primary" %}}

자세한 내용은 [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) 클래스 API.

{{% /alert %}}

다음 코드 예제에서는 다음을 추가하는 방법을 보여 줍니다 `ADVANCE` 필드 사용 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 삽입 `ASK` 사용하지 않고 문서에 필드 DocumentBuilder

그 `ASK` 필드는 워드 문서의 책갈피에 할당 할 텍스트를 사용자에게 묻는 데 사용됩니다. `ASK` 워드 문서의 필드는 [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/) 수업 당신은 사용할 수 있습니다 **FieldAsk** 다음 작업을 수행하는 클래스:

- 책갈피 이름 지정
- 기본 사용자 응답 지정(프롬프트 창에 포함된 초기 값)
- 사용자 응답을 한 번에 한 번 수신할지 여부를 지정합니다. mail merge 운영
- 프롬프트 텍스트(프롬프트 창의 제목)지정

{{% alert color="primary" %}}

자세한 내용은 [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) 클래스 API.

{{% /alert %}}

다음 코드 예제에서는 다음을 추가하는 방법을 보여 줍니다 `ASK` 필드 사용 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 삽입 `AUTHOR` 사용하지 않고 문서에 필드 DocumentBuilder

그 `AUTHOR` 필드는 문서의 작성자의 이름을 지정하는 데 사용됩니다. `Document` 속성. 그 `AUTHOR` 워드 문서의 필드는 [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) 수업 당신은 사용할 수 있습니다 **FieldAuthor** 다음 작업을 수행하는 클래스:

- 문서 작성자 이름 지정

{{% alert color="primary" %}}

자세한 내용은 [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) 클래스 API.

{{% /alert %}}

다음 코드 예제에서는 다음을 추가하는 방법을 보여 줍니다 `AUTHOR` 필드 사용 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 삽입 `INCLUDETEXT` 사용하지 않고 문서에 필드 DocumentBuilder

그 `INCLUDETEXT` 필드는 필드 코드에 이름이 지정된 문서에 포함된 텍스트와 그래픽을 삽입합니다. 전체 문서 또는 책갈피에서 참조하는 문서의 일부를 삽입할 수 있습니다. 워드 문서의 이 필드는 INCLUDETEXT. 당신은 사용할 수 있습니다 [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) 다음 작업을 수행하는 클래스:

- 포함된 문서의 책갈피 이름을 지정합니다
- 문서의 위치 지정

{{% alert color="primary" %}}

자세한 내용은 [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) 클래스 API.

{{% /alert %}}

다음 코드 예제에서는 다음을 추가하는 방법을 보여 줍니다 `INCLUDETEXT` 필드 사용 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### 삽입 `TOA` 사용하지 않고 문서에 필드 DocumentBuilder

그 `TOA` (*Table of Authorities*)필드는 권위 표를 작성하고 삽입합니다. 그 `TOA` 필드로 표시된 항목을 수집합니다 `TA` (*Table of Authorities Entry*)필드 Microsoft 사무실 단어 삽입 `TOA` 클릭할 때 필드 *Insert Table of Authorities* 그 안에 **Table of Authorities** 에 그룹 **References** 탭 당신이 볼 때 `TOA` 문서의 필드 구문은 다음과 같습니다:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

자세한 내용은 [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) 클래스 API.

{{% /alert %}}

다음 코드 예제에서는 다음을 추가하는 방법을 보여 줍니다 `TOA` 필드 사용 DOM 문서의 단락에:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
