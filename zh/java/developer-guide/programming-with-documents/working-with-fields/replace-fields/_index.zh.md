---
title: 将字段替换为文本 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 将字段替换为静态文本
linktitle: 将字段替换为静态文本
description: "学习如何用文字替换字段 Java。 。 。 。 用静态数据替换字段 Java API。 。 。 。"
type: docs
weight: 37
url: /zh/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

当您想要将文档保存为静态副本时,往往需要替换字段。 例如,在电子邮件中作为附件发送时. 转换字段, 如 `DATE` 或 `TIME` 到静态文本将允许文档显示与发送时相同的日期。 另外,在某些情况下,你可能需要去除条件 `IF` 字段并替换为最新文本结果。 例如,转换 `IF` 字段为静态文本,这样,当文档中的字段更新时,它将不再动态改变其值。

下图显示 `IF` 字段存储在文档中:

* 文本被特殊的字段节点包围 - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) 和 [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* 联合国 [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) 节点将字段内的文本分隔为字段代码和字段结果
* 字段代码定义了字段的一般行为,而字段结果保留了使用此字段更新时的最新结果 Microsoft Word 或 Aspose.Words
* 字段结果是指存储在字段中并在文档中查看时显示的内容。

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

使用演示项目也可以从下面的层次形式看到结构 **“DocumentExplorer”**, 与该船一起航行的 **Aspose.Words** 安装器。

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## 无法替换为文本的字段

用静态文本替换一个字段,在页眉或页脚中对某些字段不合适.

例如,试图转换 `PAGE` 字段中的页眉或页脚到静态文本将导致在所有页面上显示相同的值。 这是因为信头和页脚在多个页面中重复出现,当它们作为字段保留时,它们会特别被处理,因此它们会显示每个页面的正确结果.

然而,在标题中, `PAGE` 字段可以很好地翻译为文本的静态运行。 将评价这一系列文本,视其为本节最后一页,这将造成任何 `PAGE` 字段,以在所有页面上显示最后一页。

以下代码示例显示如何用最近的结果替换字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## 转换特定文档部分中的某些字段类型

自从 **ConvertFieldsToStaticText** 方法接受两个参数- [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 属性和属性 [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 引用,可以将任何复合节点传递给这种方法. 这样只允许在文档的特定部分将字段转换为静态文本.

例如,你可以通过 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 对象,并将整个文档中指定类型的字段转换为静态文本,或者您可以通过一个 [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) 对象,只转换在其中找到的字段。

{{% alert color="primary" %}}

当通过一个区块级节点,例如 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 了解在某些情况下,字段可跨越多个段落。 如果发生这种情况,建议通过复合材料的母体来避免这种情况。

{{% /alert %}}

那个 [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 数据传递到 **ConvertFieldsToStaticText** 方法指定应当转换为静态文本的字段类型。 在文档中找到的任何其他字段类型将保持不变。

以下代码示例显示如何选择特定类型的字段 – *targetFieldType* 在一个特定的节点中 - *compositeNode* 然后将它们转换成静态文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

以下代码示例显示如何转换全部 `IF` 字段到静态文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

以下代码示例显示如何转换全部 `PAGE` 在向静态文本移动的文档正文中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

以下代码示例显示如何转换全部 `IF` 字段到静态文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
