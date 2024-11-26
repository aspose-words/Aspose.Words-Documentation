---
title: C#의 양식 필드 작업
second_title: .NET용 Aspose.Words
articleTitle: 양식 필드 작업
linktitle: 양식 필드 작업
description: "C#를 사용하여 양식 필드 작업을 수행하는 양식 필드 기능 이해."
type: docs
weight: 380
url: /ko/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

채우기 공백(필드)이 포함된 문서를 양식이라고 합니다. 예를 들어, 사용자가 항목을 선택할 수 있는 드롭다운 목록을 사용하는 Microsoft Word 등록 양식을 만들 수 있습니다. `Form` 필드는 이름이나 주소와 같은 특정 유형의 데이터가 저장되는 위치입니다. Microsoft Word의 양식 필드에는 텍스트 입력, 콤보 상자 및 확인란이 포함됩니다.

프로젝트의 양식 필드를 사용하여 사용자와 "소통"할 수 있습니다. 예를 들어, 내용은 보호되지만 양식 필드만 편집할 수 있는 문서를 생성합니다. 사용자는 양식 필드에 데이터를 입력하고 문서를 제출할 수 있습니다. Aspose.Words를 사용하는 애플리케이션은 양식 필드에서 데이터를 검색하고 처리할 수 있습니다.

코드를 통해 문서에 양식 필드를 배치하는 것은 쉽습니다. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)에는 각 양식 필드 유형마다 하나씩 삽입하는 특별한 방법이 있습니다. 각 메소드는 양식 필드의 이름을 나타내는 문자열 매개변수를 허용합니다. 이름은 빈 문자열일 수 있습니다. 그러나 양식 필드에 이름을 지정하면 동일한 이름으로 책갈피가 자동으로 생성됩니다.

## 양식 필드 삽입

양식 필드는 사용자와의 "상호작용"을 허용하는 Word 필드의 특별한 경우입니다. Microsoft Word의 양식 필드에는 텍스트 상자, 콤보 상자 및 확인란이 포함됩니다.

**DocumentBuilder**는 각 유형의 양식 필드([InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) 및 [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/))를 문서에 삽입하는 특별한 방법을 제공합니다. 양식 필드에 이름을 지정하면 동일한 이름으로 책갈피가 자동으로 생성됩니다.

다음 코드 예제에서는 콤보 상자 양식 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### 텍스트 입력 삽입

**InsertTextInput** 메서드를 사용하여 문서에 텍스트 상자를 삽입합니다.

다음 코드 예제에서는 텍스트 입력 양식 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### 체크박스 삽입

문서에 체크박스를 삽입하려면 **InsertCheckBox**를 호출하세요.

다음 코드 예제에서는 확인란 양식 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### 콤보 상자 삽입

문서에 콤보박스를 삽입하려면 **InsertComboBox**를 호출하세요.

다음 코드 예제에서는 콤보 상자 양식 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## 양식 필드 얻기

양식 필드 컬렉션은 [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) 속성을 사용하여 검색할 수 있는 [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) 클래스로 표시됩니다. 이는 문서 자체를 포함하여 모든 문서 노드에 포함된 양식 필드를 얻을 수 있음을 의미합니다.

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx)에서 다음 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 양식 필드 컬렉션을 가져오는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

색인이나 이름으로 특정 양식 필드를 가져올 수 있습니다.

다음 코드 예제에서는 양식 필드에 액세스하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

**FormField** 속성을 사용하면 양식 필드 이름, 유형 및 결과로 작업할 수 있습니다.

다음 코드 예에서는 양식 필드 이름, 유형 및 결과를 사용하여 작업하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## 양식 필드 형식 지정

[FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/)의 [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) 속성을 사용하면 필드 값을 포함하여 **FormField** 전체에 글꼴 형식을 적용할 수 있습니다.

다음 코드 예제에서는 **FormField**에 글꼴 서식을 적용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
