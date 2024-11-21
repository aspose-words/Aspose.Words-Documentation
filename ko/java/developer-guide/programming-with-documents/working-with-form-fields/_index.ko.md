---
title: Form Fields의 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Form Fields의 작업
linktitle: Form Fields의 작업
description: "Form Fields 기능에 대한 이해 Java·"
type: docs
weight: 380
url: /ko/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Fill-in blanks (fields)를 포함하는 문서는 양식으로 알려져 있습니다. 예를 들어 등록 양식을 작성할 수 있습니다. Microsoft Word 해당 사용자가 항목을 선택할 수 있는 드롭다운 목록을 사용합니다. 더 보기 `Form` 필드는 이름이나 주소와 같은 특정 유형의 데이터가 저장되는 위치입니다. 본문 바로가기 Microsoft Word 텍스트 입력, combobox 및 체크 박스가 포함되어 있습니다.

프로젝트에 양식 필드를 사용하여 사용자와 "communicate"로 사용할 수 있습니다. 예를 들어, 컨텐츠가 보호되는 문서를 만들지만, 양식 필드만 편집할 수 있습니다. 사용자는 양식 필드에 데이터를 입력하고 문서를 제출할 수 있습니다. 당신의 응용 프로그램 Aspose.Words 양식 필드에서 데이터를 검색하고 처리 할 수 있습니다.

폼 필드를 코드를 통해 문서에 담기 쉽게. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 삽입을 위한 특별한 방법, 각 모양 분야 유형을 위해 한. 각 메소드는 형태 필드의 이름을 나타내는 문자열 매개 변수를 받아들입니다. 이름은 빈 문자열이 될 수 있습니다. 그러나 양식 필드의 이름을 지정하면 책갈피는 같은 이름으로 자동으로 생성됩니다.

## 삽입 형태 분야

양식 필드는 사용자가 "interaction"을 허용하는 Word 필드의 특정 사례입니다. 본문 바로가기 Microsoft Word textbox, combo 상자 및 checkbox를 포함합니다.

**DocumentBuilder** 각 유형의 양식 필드를 문서에 삽입하는 특수 방법을 제공합니다: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) 또는 [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int)·

다음 코드 예제는 combobox 양식 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### 본문 입력

사용 방법 **기타 제품 텍스트 입력** textbox를 문서에 삽입하는 방법.

다음 코드 예제는 텍스트 입력 양식 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### 체크 박스 삽입

이름 * **삽입체크박스** 본문 바로가기

다음 코드 예제는 체크 박스 양식 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### 콤보 박스 삽입

이름 * **기타 제품ComboBox** 문서에 combobox를 삽입합니다.

다음 코드 예제는 Combobox 양식 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## 양식 필드를 얻다

양식 필드의 컬렉션은 [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) retrieved 할 수있는 클래스 [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) 호텔 위치 문서 자체를 포함한 문서 노드에 포함된 양식 필드를 얻을 수 있음을 의미합니다.

다음 코드 예제는 양식 필드의 수집 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

다음 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx)·

{{% /alert %}}

특정 양식 필드를 인덱스 또는 이름으로 얻을 수 있습니다.

다음 코드 예제는 양식 필드에 액세스하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

더 보기 **FormField** 속성은 양식 필드 이름, 유형 및 결과와 함께 작동 할 수 있습니다.

다음 코드 예제는 양식 필드 이름, 유형 및 결과와 작업하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
