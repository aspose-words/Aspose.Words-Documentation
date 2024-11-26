---
title: Mail Merge Шаблон в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Mail Merge Шаблон
linktitle: Mail Merge Шаблон
type: docs
description: "Создайте шаблон Mail Merge для определения фиксированного содержимого в выходных документах, а затем создайте объединяемые документы, используя поля объединения в Python."
keywords: "create Mail Merge template python"
weight: 10
url: /ru/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Обычно шаблон слияния используется в качестве базового документа для операции Mail Merge, если это простой Mail Merge или Mail Merge с регионами. Mail merge с регионами является более эффективным и популярным способом, чем простой mail merge. Простой Mail Merge рассматривается как частный случай Mail Merge с областями, где областью является весь документ. Более подробно все объясняется в следующей статье "Типы операций Mail Merge".

Шаблон гарантирует, что текст в выходном объединенном документе отформатирован правильно, а операция Mail Merge гарантирует, что текст из источника данных правильно введен в шаблон объединения.

Aspose.Words предоставляет возможность создать шаблон Mail Merge для определения фиксированного содержимого и последующего создания документов слияния с использованием полей слияния. Таким образом, шаблон слияния будет содержать необходимый текст, который будет одинаковым во всех выходных документах, и поля слияния для заполнения изменяющегося содержимого. В результате информация из указанного источника данных будет добавлена в шаблон объединения через эти поля во время создания объединенного документа.

## Что такое шаблон Mail Merge

Шаблон Mail Merge - это персонализированный документ, содержащий фиксированные данные и объединенные поля, в которых вы хотите разместить изменяемый текст. Шаблон слияния может быть в любом формате, поддерживающем поля, например, DOC, DOCX, DOT, DOTX, RTF. Кроме того, вы также можете использовать шаблон mustache, который более подробно описан в статье "Синтаксис шаблона Mustache".

Вы можете создать шаблон объединения, который будет служить образцом для новых документов, и он должен включать основной текст, который должен быть одинаковым для каждой версии объединяемого документа. Добавление полей объединения в шаблон будет представлять данные персонализации, такие как имена или адреса, которые извлекаются из источника данных. Операция Mail Merge автоматически вставит данные персонализации из вашего источника данных в документ шаблона слияния.

Кроме того, вы можете добавить регион Mail Merge в свой шаблон, вставив два поля Mail Merge, чтобы отметить начало и конец почтового региона. В следующей статье "Типы операций Mail Merge" это объясняется более подробно.

## Создайте шаблон Mail Merge

Вы можете создать шаблон и добавить в него определенные поля слияния, которые будут заменены значениями из источника данных либо вручную, например, с помощью Microsoft Word, либо программно, используя Aspose.Words. В этой статье мы рассмотрим программный способ создания шаблона.

Используйте класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), чтобы создать необходимый шаблон слияния с помощью Aspose.Words. Вы можете включить текст, поле для объединения и разрыв строки в такой шаблон, используя методы [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) и [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

В следующем примере кода показано, как создать шаблон Mail Merge:

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

На рисунке ниже показан созданный шаблон:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Настройка свойств шаблона Mail Merge

Aspose.Words позволяет настраивать ваш шаблон с помощью множества свойств. Настройка шаблона будет описана ниже на примере настройки некоторых свойств изображений и текста.

## Смотрите также

* Для получения более подробной информации о том, как создавать шаблоны в Microsoft Word вручную, пожалуйста, ознакомьтесь со статьей [Создать шаблон](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) в документации Microsoft
