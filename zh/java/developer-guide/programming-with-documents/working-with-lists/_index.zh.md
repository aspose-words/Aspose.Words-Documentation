---
title: 使用Java中的列表
second_title: Aspose.Words为Java
articleTitle: 使用列表
linktitle: 使用列表
description: "介绍Aspose.Words中Java的编号格式功能."
type: docs
weight: 200
url: /zh/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word文档中的列表是一组列表格式属性。 列表可以在文档中用于格式化、排列和强调文本。 列表是在文档中组织数据的好方法，它们使读者更容易理解关键点。

每个列表最多可以有9个级别和格式属性，如数字样式，开始值，缩进，制表位，以及其他为每个级别单独定义。

本文介绍使用Aspose.Words以编程方式处理列表。

## 通过应用列表格式创建列表

Aspose.Words允许通过应用列表格式轻松创建列表。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)提供返回**ListFormat**对象的[ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat)属性。 此对象有几种方法来开始和结束列表以及增加/减少缩进。 Microsoft Word中有两种一般类型的列表：项目符号和编号:

- 要启动项目符号列表，请调用[ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- 要开始编号列表，请调用[ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

项目符号或数字和格式将添加到当前段落以及使用**DocumentBuilder**创建的所有其他段落，直到调用[RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)停止项目符号列表格式。

在Word文档中，列表最多可包含九个级别。 每个级别的列表格式指定使用的项目符号或数字，左缩进，项目符号和文本之间的空格等。 以下方法更改列表级别并应用新级别的格式设置属性:

- 若要将当前段落的列表级别增加一个级别，请调用[ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- 若要将当前段落的列表级别降低一个级别，请调用[ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

这些方法更改列表级别并应用新级别的格式属性。

{{% alert color="primary" %}}

您还可以使用[ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber)属性来获取或设置段落的列表级别。 列表级别编号为0到8。

{{% /alert %}}

下面的代码示例演示如何构建多级列表:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## 指定列表级别的格式

创建列表时会自动创建列表级对象。 使用[ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/)类的属性和方法来控制列表各个级别的格式设置。

## 每个部分的重新启动列表

您可以使用[IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection)属性重新启动每个部分的列表。 请注意，此选项仅在RTF、DOC和DOCX文档格式中受支持。 只有当OoxmlCompliance高于Ecma376时，此选项才会写入DOCX。

下面的代码示例演示如何为每个部分创建一个列表并重新启动它:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

