---
title: Mail Merge шаблон в Python
second_title: Aspose.Words за Python via .NET
articleTitle: Mail Merge шаблон
linktitle: Mail Merge шаблон
type: docs
description: "Създайте шаблон Mail Merge, за да дефинирате фиксирано съдържание в изходните документи и след това генерирайте документите за обединяване, като използвате полетата за обединяване в Python."
keywords: "create Mail Merge template python"
weight: 10
url: /bg/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Обичайно е да се използва шаблон за обединяване като основен документ за операция Mail Merge, ако е прост Mail Merge или Mail Merge С региони. Mail merge с региони е по-мощен и популярен от прост mail merge. Обикновено Mail Merge се счита за конкретен случай на Mail Merge С региони, където регионът е целият документ. Всичко е обяснено в следващата статия "Видове операции Mail Merge" по-подробно.

Шаблонът гарантира, че текстът в изходния обединен документ е форматиран правилно, а операцията Mail Merge гарантира, че текстът от източника на данни е правилно въведен в шаблона за обединяване.

Aspose.Words предоставя възможност за създаване на Mail Merge шаблон за дефиниране на фиксирано съдържание и след това генериране на документи за обединяване с помощта на полетата за обединяване. По този начин шаблонът за обединяване ще има необходимия текст, който е един и същ във всички изходни документи, и полетата за обединяване, които да попълват променящото се съдържание. В резултат на това информацията от посочения източник на данни ще бъде добавена към шаблона за обединяване чрез тези полета по време на генерирането на Обединения документ.

## Какво е Mail Merge шаблон

Шаблон Mail Merge е персонализиран документ, който съдържа фиксирани данни и Обединени полета, където искате променливият текст да бъде. Шаблон за обединяване може да бъде във всеки формат, който поддържа полета, например, DOC, DOCX, DOT, DOTX, RTF. Освен това можете да използвате шаблона mustache, който е обяснен в статията "Mustache синтаксис на шаблона" по-подробно.

Можете да създадете шаблон за обединяване, за да бъде модел за нови документи и той трябва да включва основния текст, който трябва да бъде един и същ за всяка версия на Обединения документ. Добавянето на полета за обединяване в шаблона ще представлява данните за персонализиране, като например имена или адреси, които са извлечени от източник на данни. Операция Mail Merge автоматично ще вмъкне данните за персонализиране от вашия източник на данни в документа за циркулярен шаблон.

Освен това можете да добавите регион Mail Merge във вашия шаблон, като вмъкнете две полета Mail Merge, за да маркирате началото и края на региона за поща. Следващата статия "Видове операции Mail Merge" обяснява това по-подробно.

## Създайте шаблон Mail Merge

Можете да създадете шаблон и да добавите конкретни полета за обединяване към него, които ще бъдат заменени със стойностите от източника на данни или ръчно, например, използвайки Microsoft Word, или програмно използвайки Aspose.Words. В тази статия ще разгледаме програмния начин за създаване на шаблон.

Използвайте класа [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), за да създадете необходимия шаблон за обединяване, като използвате Aspose.Words. Можете да включите текст, поле за обединяване и нов ред в такъв шаблон, като използвате методите [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) и [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

Следващият пример за код показва как да създадете шаблон Mail Merge:

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

Снимката по-долу показва създадения шаблон:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Персонализиране на свойствата на шаблон Mail Merge

Aspose.Words Позволява ви да персонализирате шаблона си чрез много свойства. Персонализирането на шаблона ще бъде описано по-долу чрез пример за персонализиране на някои свойства на изображения и текст.

## Вижте Също

* За повече подробности относно това как да създавате шаблони в Microsoft Word ръчно, моля, проверете [Създаване на шаблон](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) член в Microsoft документация
