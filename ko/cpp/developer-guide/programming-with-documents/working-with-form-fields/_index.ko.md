---
title: 양식 필드 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 양식 필드 작업
linktitle: 양식 필드 작업
description: "양식 필드 기능 이해,다음을 사용하여 양식 필드 작업 C++."
type: docs
weight: 380
url: /ko/cpp/working-with-form-fields/
---

공백 채우기(필드)를 포함하는 문서를 양식이라고 합니다. 예를 들어 다음 위치에서 등록 양식을 만들 수 있습니다 Microsoft Word 사용자가 항목을 선택할 수 있는 드롭다운 목록을 사용합니다. 양식 필드는 이름이나 주소와 같은 특정 유형의 데이터가 저장되는 위치입니다. 양식 필드 Microsoft Word 텍스트 입력,콤보 상자 및 확인란을 포함합니다.

프로젝트의 양식 필드를 사용하여 사용자와"통신"할 수 있습니다. 예를 들어 콘텐츠가 보호되지만 양식 필드만 편집할 수 있는 문서를 만듭니다. 사용자는 양식 필드에 데이터를 입력하고 문서를 제출할 수 있습니다. 사용하는 응용 프로그램 Aspose.Words 양식 필드에서 데이터를 검색하고 처리 할 수 있습니다.

코드를 통해 문서에 양식 필드를 배치하는 것은 쉽습니다. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 각 양식 필드 유형에 대해 하나씩 삽입하는 특별한 방법이 있습니다. 각 메서드는 양식 필드의 이름을 나타내는 문자열 매개 변수를 허용합니다. 이름은 빈 문자열일 수 있습니다. 그러나 양식 필드의 이름을 지정하면 동일한 이름으로 책갈피가 자동으로 만들어집니다.

## 양식 필드 삽입

양식 필드는 사용자와의"교류"를 허용하는 단어 필드의 특정 사례입니다. 양식 필드 Microsoft Word 텍스트 상자,콤보 상자 및 확인란을 포함합니다.

**DocumentBuilder**

다음 코드 예제에서는 콤보 상자 양식 필드를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## 양식 필드 얻기

양식 필드의 컬렉션은 [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) 클래스를 사용하여 검색할 수 있습니다. [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/) 재산. 즉,문서 자체를 포함한 모든 문서 노드에 포함 된 양식 필드를 얻을 수 있습니다.

다음 코드 예제에서는 양식 필드 컬렉션을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

인덱스 또는 이름으로 특정 양식 필드를 얻을 수 있습니다.

다음 코드 예제에서는 양식 필드에 액세스하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

그 **FormField** 속성을 사용하면 양식 필드 이름,유형 및 결과로 작업 할 수 있습니다.

다음 코드 예제에서는 양식 필드 이름,유형 및 결과를 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
