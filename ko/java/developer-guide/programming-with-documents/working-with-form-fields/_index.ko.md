---
title: Java의 양식 필드 작업
second_title: Aspose.WordsJava
articleTitle: 양식 필드 작업
linktitle: 양식 필드 작업
description: "양식 필드 기능 이해,Java을 사용하여 양식 필드 작업."
type: docs
weight: 380
url: /ko/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

공백 채우기(필드)를 포함하는 문서를 양식이라고 합니다. 예를 들어 사용자가 항목을 선택할 수 있는 드롭다운 목록을 사용하는Microsoft Word에 등록 양식을 만들 수 있습니다. `Form`필드는 이름이나 주소와 같은 특정 유형의 데이터가 저장되는 위치입니다. Microsoft Word의 양식 필드에는 텍스트 입력,combobox및checkbox가 포함됩니다.

프로젝트의 양식 필드를 사용하여 사용자와"통신"할 수 있습니다. 예를 들어 콘텐츠가 보호되지만 양식 필드만 편집할 수 있는 문서를 만듭니다. 사용자는 양식 필드에 데이터를 입력하고 문서를 제출할 수 있습니다. Aspose.Words을 사용하는 응용 프로그램은 양식 필드에서 데이터를 검색하고 처리할 수 있습니다.

코드를 통해 문서에 양식 필드를 배치하는 것은 쉽습니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)에는 각 양식 필드 유형에 대해 하나씩 삽입하는 특수 메서드가 있습니다. 각 메서드는 양식 필드의 이름을 나타내는 문자열 매개 변수를 허용합니다. 이름은 빈 문자열일 수 있습니다. 그러나 양식 필드의 이름을 지정하면 동일한 이름으로 책갈피가 자동으로 만들어집니다.

## 양식 필드 삽입

양식 필드는 사용자와의"교류"를 허용하는 단어 필드의 특정 사례입니다. Microsoft Word의 양식 필드에는 텍스트 상자,콤보 상자 및checkbox이 포함됩니다.

**DocumentBuilder**

다음 코드 예제에서는combobox양식 필드를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### 텍스트 입력 삽입

**insertTextInput**메서드를 사용하여 문서에 텍스트 상자를 삽입합니다.

다음 코드 예제에서는 텍스트 입력 양식 필드를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### 확인란 삽입

**insertCheckBox**을 호출하여checkbox을 문서에 삽입합니다.

다음 코드 예제에서는checkbox양식 필드를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### 콤보 상자 삽입

**insertComboBox**을 호출하여combobox을 문서에 삽입합니다.

다음 코드 예제에서는Combobox양식 필드를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## 양식 필드 얻기

양식 필드 컬렉션은[Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields)속성을 사용하여 검색할 수 있는[FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/)클래스로 표시됩니다. 즉,문서 자체를 포함한 모든 문서 노드에 포함 된 양식 필드를 얻을 수 있습니다.

다음 코드 예제에서는 양식 필드 컬렉션을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

다음 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

인덱스 또는 이름으로 특정 양식 필드를 얻을 수 있습니다.

다음 코드 예제에서는 양식 필드에 액세스하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

**FormField**속성을 사용하면 양식 필드 이름,유형 및 결과로 작업할 수 있습니다.

다음 코드 예제에서는 양식 필드 이름,유형 및 결과를 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
