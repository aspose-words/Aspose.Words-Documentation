---
title: Mail Merge模板在Java
second_title: Aspose.Words为Java
articleTitle: Mail Merge模板
linktitle: Mail Merge模板
type: docs
description: "创建Mail Merge模板以定义输出文档中的固定内容，然后使用Java中的合并字段生成合并文档。"
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /zh/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

如果合并模板是简单的Mail Merge或带有区域的Mail Merge，则通常使用合并模板作为Mail Merge操作的基本文档。 Mail mergewith regions比简单的mail merge更强大，更受欢迎。 一个简单的Mail Merge被认为是Mail Merge的一个特殊情况，其中区域是整个文档。 所有这些都在下一篇文章"Mail Merge操作的类型"中进行了更详细的解释。

模板可确保输出合并文档中的文本格式正确，Mail Merge操作可确保将来自数据源的文本正确输入到合并模板中。

Aspose.Words提供了创建Mail Merge模板以定义固定内容，然后使用合并字段生成合并文档的功能。 因此，合并模板将具有必要的文本，这在所有输出文档中是相同的，并且合并字段以填充变化的内容。 因此，在生成合并文档期间，来自指定数据源的信息将通过这些字段添加到合并模板中。

## 什么是Mail Merge模板

Mail Merge模板是一个个性化的文档，其中包含固定数据和合并字段，您希望变量文本所在的位置。 合并模板可以采用支持字段的任何格式，例如, DOC, DOCX, DOT, DOTX, RTF. 此外，您还可以使用在文章"Mustache模板语法"中更详细解释的mustache模板。

您可以创建一个合并模板作为新文档的模型，并且它应该包括需要为合并文档的每个版本相同的主文本。 在模板中添加合并字段将表示从数据源获取的个性化数据（如名称或地址）。 Mail Merge操作将自动将个性化数据从数据源插入到合并模板文档中。

此外，您可以通过插入两个Mail Merge字段来标记邮件区域的开始和结束，在模板中添加Mail Merge区域。 下一篇文章"Mail Merge操作的类型"更详细地解释了这一点。

## 创建Mail Merge模板

您可以创建一个模板并向其添加特定的合并字段，这些字段将被数据源中的值替换，例如使用Microsoft Word或以编程方式使用Aspose.Words。 在本文中，我们将介绍创建模板的编程方式。

使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)类使用Aspose.Words创建所需的合并模板。 您可以使用[InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), 和[InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph())的方法。

下面的代码示例演示如何创建Mail Merge模板:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

下图显示了创建的模板:

<img src="/words/java/mail-merge-template/mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## 自定义Mail Merge模板属性

Aspose.Words允许您通过许多属性自定义模板。 下面将通过定制图像和文本的一些属性的示例来描述模板定制。

### 自定义图像属性

您可以使用[ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/)类指定图像属性。 请注意，您可以从数据库中插入图像，如下所述 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

下面的代码示例演示如何指定图像文件名和图像大小:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### 自定义文本属性

您可以使用[文]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text)属性，用于将文本插入到当前合并字段的文档中。 以您还可以使用[。]更改模板内文本和段落的格式](https://reference.aspose.com/words/java/com.aspose.words/font/)和[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)类。 您可以使用[FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/)类中包含的[TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore)和[TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter)属性来处理要在合并字段之前或之后插入的文本。

下面的代码示例演示如何在Mail Merge操作期间插入复选框或HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

您还可以从以下位置检查`HandleMergeField`类的实现 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## 请参阅

* 有关如何手动在Microsoft Word中创建模板的更多详细信息，请查看 [创建模板](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) Microsoft文档中的文章
