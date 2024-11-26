---
title: Mail Merge템플릿Python
second_title: Aspose.Words(으)로 Python via .NET
articleTitle: Mail Merge템플릿
linktitle: Mail Merge템플릿
type: docs
description: "Mail Merge템플릿을 만들어 출력 문서에서 고정된 내용을 정의한 다음Python의 병합 필드를 사용하여 병합 문서를 생성합니다."
keywords: "create Mail Merge template python"
weight: 10
url: /ko/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Mail Merge 작업의 기본 문서로 병합 템플릿을 사용하는 것은 일반적입니다. 이는 단순한 Mail Merge 또는 영역이 있는 Mail Merge입니다. 영역이 있는 Mail merge은 단순한 mail merge보다 더 강력하고 인기가 있습니다. 단순한 Mail Merge은 영역이 전체 문서인 영역이 있는 Mail Merge의 특정 사례로 간주됩니다. 모든 내용은 다음 문서 "Mail Merge 작업 유형"에서 더 자세히 설명합니다.

템플릿은 출력 병합된 문서의 텍스트의 서식이 올바르게 지정되고Mail Merge작업은 데이터 원본의 텍스트가 병합 템플릿에 올바르게 입력되도록 보장합니다.

Aspose.Words은Mail Merge템플릿을 만들어 고정 콘텐츠를 정의한 다음 병합 필드를 사용하여 병합 문서를 생성할 수 있는 기능을 제공합니다. 따라서 병합 템플릿에는 모든 출력 문서에서 동일한 필요한 텍스트와 변경 내용을 채울 병합 필드가 있습니다. 따라서 병합된 문서를 생성하는 동안 이러한 필드를 통해 지정된 데이터 원본의 정보가 병합 템플릿에 추가됩니다.

## Mail Merge템플릿이란 무엇입니까

Mail Merge템플릿은 고정 데이터와 변수 텍스트를 원하는 병합된 필드를 포함하는 개인화된 문서입니다. 병합 템플릿은 필드를 지원하는 모든 형식일 수 있습니다(예:, DOC, DOCX, DOT, DOTX, RTF. 또한"Mustache템플릿 구문"문서에서 설명하는mustache템플릿을 더 자세히 사용할 수도 있습니다.

새 문서의 모델로 병합 템플릿을 만들 수 있으며 병합된 문서의 각 버전에 대해 동일해야 하는 기본 텍스트를 포함해야 합니다. 템플릿 내부에 병합 필드를 추가하면 데이터 원본에서 가져온 이름이나 주소와 같은 개인 설정 데이터가 표시됩니다. Mail Merge작업은 데이터 원본의 개인 설정 데이터를 병합 템플릿 문서에 자동으로 삽입합니다.

또한 두 개의Mail Merge필드를 삽입하여 메일 영역의 시작과 끝을 표시하여 템플릿에Mail Merge영역을 추가할 수 있습니다. 다음 기사"Mail Merge연산의 유형"은 더 자세히 설명합니다.

## Mail Merge템플릿 만들기

예를 들어Microsoft Word을 사용하거나 프로그래밍 방식으로Aspose.Words을 사용하여 데이터 원본의 값으로 대체되는 템플릿을 만들고 특정 병합 필드를 추가할 수 있습니다. 이 기사에서는 템플릿을 만드는 프로그래밍 방식을 살펴볼 것입니다.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)클래스를 사용하여Aspose.Words를 사용하여 필요한 병합 템플릿을 만듭니다. [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/),[inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/)및[insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/)메서드를 사용하여 이러한 템플릿에 텍스트,병합 필드 및 줄 바꿈을 포함할 수 있습니다.

다음 코드 예제에서는Mail Merge템플릿을 만드는 방법을 보여 줍니다:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

아래 그림은 생성 된 템플릿을 보여줍니다:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Mail Merge템플릿 속성 사용자 지정

Aspose.Words많은 속성을 통해 템플릿을 사용자 지정할 수 있습니다. 템플릿 사용자 정의는 이미지 및 텍스트의 일부 속성을 사용자 정의하는 예를 통해 아래에 설명됩니다.

## 또한 참조

* Microsoft Word에서 수동으로 템플릿을 만드는 방법에 대한 자세한 내용은 다음을 확인하십시오 [템플릿 만들기](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoft문서의 기사
