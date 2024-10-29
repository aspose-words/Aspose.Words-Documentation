---
title: Mail Merge 模板在 C++
second_title: Aspose.Words 为 C++
articleTitle: Mail Merge 模板
linktitle: Mail Merge 模板
type: docs
description: "创建一个 mail merge 模板以定义输出文档中的固定内容，然后使用合并字段生成合并文档。"
keywords: "create mail merge template с++"
weight: 10
url: /zh/cpp/mail-merge-template/
---

使用合并模板作为一个基本文档是很常见的 mail merge 操作要么，如果它是一个简单的 mail merge 或 mail merge 与地区。 Mail merge 随着地区比简单的更强大和更受欢迎 mail merge. 简单 mail merge 被认为是一个特殊的情况 mail merge 区域是整个文档的区域。 所有这些都在下一篇文章"的类型 Mail Merge 操作"更详细。

模板确保输出合并文档中的文本格式正确，并且 mail merge 操作可确保将来自数据源的文本正确输入到合并模板中。

Aspose.Words 提供了创建一个 mail merge 模板定义固定内容，然后使用合并字段生成合并文档。 因此，合并模板将具有必要的文本，这在所有输出文档中是相同的，并且合并字段以填充变化的内容。 因此，在生成合并文档期间，来自指定数据源的信息将通过这些字段添加到合并模板中。

## 什么是a Mail Merge 模板

A mail merge 模板是一个个性化的文档，其中包含固定数据和合并字段，您希望变量文本所在的位置。 合并模板可以采用支持字段的任何格式，例如, DOC, DOCX, DOT, DOTX, RTF. 此外，还可以使用将 mustache 在文章中解释的模板"Mustache 模板语法"更详细。

您可以创建一个合并模板作为新文档的模型，并且它应该包括需要为合并文档的每个版本相同的主文本。 在模板中添加合并字段将表示从数据源获取的个性化数据（如名称或地址）。 A mail merge 操作将自动将个性化数据从数据源插入到合并模板文档中。

此外，您可以添加一个 mail merge 在模板中插入两个区域 mail merge 字段来标记邮件区域的开始和结束。 下一篇文章"的类型 Mail Merge 操作"更详细地解释了这一点。

## 创建一个 Mail Merge 模板

您可以创建模板并向其添加特定的合并字段，这些字段将由数据源中的值手动替换，例如使用 Microsoft Word，或以编程方式使用 Aspose.Words. 在本文中，我们将介绍创建模板的编程方式。

使用 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 使用以下方法创建所需的合并模板 Aspose.Words. 您可以使用 [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)，而 [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/) 方法。

下面的代码示例演示如何创建 mail merge 模板:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

下图显示了创建的模板:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## 自定义a Mail Merge 模板属性

Aspose.Words 允许您通过许多属性自定义模板。 下面将通过定制图像和文本的一些属性的示例来描述模板定制。

### 自定义图像属性

您可以使用 [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/) 类。

下面的代码示例演示如何指定图像文件名和图像大小:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### 自定义文本属性

您可以使用 [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) 属性，用于将文本插入当前合并字段的文档中。 此外，您还可以使用以下方法更改模板中文本和段落的格式 [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) 和 [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) 类。 您可以使用 [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) 和 [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) 包含在 [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) 类。

下面的代码示例演示如何插入复选框或 HTML 期间 mail merge 运作:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

你也可以检查 `HandleMergeField` 类从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 请参阅

* 有关如何在 Microsoft Word 手动，请检查 [创建模板](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) 文章在 Microsoft 文件
