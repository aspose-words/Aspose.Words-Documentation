---
title: 清除文档 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 清除文档
linktitle: 清除文档
type: docs
description: "清除一个文件,以获得其相同的副本。 在创建副本时,使用 Java。 。 。 。"
weight: 70
url: /zh/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

克隆文档是创建原始文档的相同副本的过程,可以提高性能,避免潜在的内存泄露.

本条将解释克隆文件的主要用途,以及如何使用 Aspose.Words。 。 。 。

## 克隆文件操作

克隆操作允许您更快地创建文档, 因为您不需要每次从文件中加载和解析文档 。

在创建您的文档克隆后,您将可以编辑并进行不同的操作,例如,将其与原始文档进行比较,附加或插入到另一个文档中。 在插入到其他文档中之前,您还可以修改克隆元素或其内容。

## 创建文档克隆

Aspose.Words 允许您使用 [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) 用于执行文档深层副本并返回该文档的方法。 换句话说,它将得到一份完整的副本 DOM。 。 。 。 那个 `Clone` 方法可以加速文档生成,您只需要一行代码就可以获得文档的副本。

克隆生成与原件内容相同的新文档,但每个原始文档都有独特的副本 [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/)。 。 。 您也可以通过使用节点将克隆操作应用到文档节点 [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) 方法,它允许您复制混合文档节点,无论是否带有其子节点。

{{% alert color="primary" %}}

请注意,在应用克隆方法时,所有文档属性都将被克隆。

{{% /alert %}}

以下代码示例显示如何复制文档,并在该文档中创建一个段落的复制:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
