---
title: 文档构建器 概览 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 文档构建器概览
linktitle: 文档构建器概览
type: docs
description: "文档构建器允许您从零开始构建动态文档,或者在现有文档中添加新的元素。 文档构建器提供了插入文本、复选框、表格、图像和其他内容元素的方法 Java。 。 。 。"
weight: 30
url: /zh/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 是一个强大的阶级,与 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ,并允许您从零开始构建动态文档,或者在已有文档中添加新的元素。

**DocumentBuilder** 提供插入文本、复选框、单对象、段落、列表、表格、图像和其他内容元素的方法。 它允许您指定字体,段落或段落格式,并进行其他操作.

## 文档构建器或 Aspose.Words DOM

**DocumentBuilder** 补充现有分类和方法 Aspose.Words Document Object Model (单位:千美元)DOM)简化最常见的文件构建任务. 也就是说,您可以通过 Aspose.Words DOM,这需要很好地了解树的结构,并使用文档构建器。 那个 `DocumentBuilder` 是整个建筑群的"窗帘" **Document** 结构,使您能够快速和方便地插入内容和格式。

与 **DocumentBuilder** 在使用 Aspose.Words DOM 直接来 然而,使用 Aspose.Words DOM 分类通常比使用 **DocumentBuilder**。 。 。 。

## 文档导航

文档导航是基于虚拟光标的概念,可以使用各种光标移动到文档中的另一个位置 **DocumentBuilder.MoveToXXX** 方法,例如: [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) 和 [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)。 。 。 此虚拟光标表示调用方法时插入的文字位置 [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), 还有其他人。 参见以下文章"Navigation with Cursor",以了解更多虚拟光标.

以下代码示例显示如何导航到书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## 文档构建和修改

Aspose.Words API 提供了若干类,负责格式化文档的各种要素。 每个类别都包含与特定文档元素相关的格式化属性,如文本,段落,部分等. 例如, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) 类代表字符格式属性, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) 类代表段落格式属性,等等。 这些类的对象由相应的 **DocumentBuilder** 属性,其名称与类相同。 因此,您可以在文档构建过程中访问它们并设定所需的格式。

您也可以在光标位置使用 `Write` 方法或其中任何一种 **DocumentBuilder.InsertXXX** 方法,例如: [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), 和类似的方法。

让我们看看如何使用 **DocumentBuilder**。 。 。 。

### 使用文档构建器创建文档

要开始,你需要创建一个 **DocumentBuilder** 并把它与一个 **Document** 对象。 你创造了一个新的实例 **DocumentBuilder** 呼唤它的建造者,并把它传给一个 **Document** 对构建器附加的对象。

要插入文本,请将您需要插入到文档中的文本串传递到 **Write** 方法。

以下代码示例显示如何使用文档构建器创建简单的文档.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### 指定文档格式

那个 [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) 属性定义文本格式。 此对象包含不同的字体属性(font名称,字体大小,颜色等). 一些重要的字体属性也由 **DocumentBuilder** 属性允许您直接访问它们。 这些是 [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), 和 [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) 布尔属性 。

以下代码示例显示如何使用 **DocumentBuilder**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- 怎么样? [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) 指定将适用于从文档当前位置插入的所有文本的字符格式。
- 怎么样? [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) 指定当前段落和要插入的所有段落的段落格式。
- 怎么样? [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) 指定当前部分和将插入的整个部分的页面和段落属性。
- 怎么样? [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) 和 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) 指定从文档当前位置起对表格单元格和行应用的格式属性。

在这种情况下,"当前"是指光标所在的位置,段落,部分,单元格,或行.

{{% /alert %}}

{{% alert color="primary" %}}

注意到 **Font**, **ParagraphFormat**, 和 **PageSetup** 当导航到文档中不同位置时,属性都会更新,以反映该位置的格式属性。

{{% /alert %}}
