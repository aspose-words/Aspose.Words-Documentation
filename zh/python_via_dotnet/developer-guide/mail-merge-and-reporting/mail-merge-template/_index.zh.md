---
title: Mail Merge模板在Python
second_title: Aspose.Words为Python via .NET
articleTitle: Mail Merge模板
linktitle: Mail Merge模板
type: docs
description: "创建Mail Merge模板以定义输出文档中的固定内容，然后使用Python中的合并字段生成合并文档。"
keywords: "create Mail Merge template python"
weight: 10
url: /zh/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

如果合并模板是简单的Mail Merge或带有区域的Mail Merge，则通常使用合并模板作为Mail Merge操作的基本文档。 Mail mergewith regions比简单的mail merge更强大，更受欢迎。 简单的Mail Merge被认为是Mail Merge的一个特殊情况，其中区域是整个文档。 所有这些都在下一篇文章"Mail Merge操作的类型"中进行了更详细的解释。

模板可确保输出合并文档中的文本格式正确，Mail Merge操作可确保将来自数据源的文本正确输入到合并模板中。

Aspose.Words提供了创建Mail Merge模板以定义固定内容，然后使用合并字段生成合并文档的功能。 因此，合并模板将具有必要的文本，这在所有输出文档中是相同的，并且合并字段以填充变化的内容。 因此，在生成合并文档期间，来自指定数据源的信息将通过这些字段添加到合并模板中。

## 什么是Mail Merge模板

Mail Merge模板是一个个性化的文档，其中包含固定数据和合并字段，您希望变量文本所在的位置。 合并模板可以采用支持字段的任何格式，例如, DOC, DOCX, DOT, DOTX, RTF. 此外，您还可以使用在文章"Mustache模板语法"中更详细解释的mustache模板。

您可以创建一个合并模板作为新文档的模型，并且它应该包括需要为合并文档的每个版本相同的主文本。 在模板中添加合并字段将表示从数据源获取的个性化数据（如名称或地址）。 Mail Merge操作将自动将个性化数据从数据源插入到合并模板文档中。

此外，您可以通过插入两个Mail Merge字段来标记邮件区域的开始和结束，在模板中添加Mail Merge区域。 下一篇文章"Mail Merge操作的类型"更详细地解释了这一点。

## 创建Mail Merge模板

您可以创建模板并向其添加特定的合并字段，这些字段将由数据源中的值替换，例如，使用Microsoft Word手动或以编程方式使用Aspose.Words。 在本文中，我们将介绍创建模板的编程方式。

使用[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)类使用Aspose.Words创建所需的合并模板。 您可以使用[insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/)、[inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/)和[insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/)方法在这样的模板中包含文本、合并字段和换行符。

下面的代码示例演示如何创建Mail Merge模板:

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

下图显示了创建的模板:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## 自定义Mail Merge模板属性

Aspose.Words允许您通过许多属性自定义模板。 下面将通过定制图像和文本的一些属性的示例来描述模板定制。

## 请参阅

* 有关如何手动在Microsoft Word中创建模板的更多详细信息，请查看 [创建模板](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoft文档中的文章
