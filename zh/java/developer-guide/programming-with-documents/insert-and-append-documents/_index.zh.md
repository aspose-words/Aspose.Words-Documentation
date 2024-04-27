---
title: 在 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 插入和附加文档
linktitle: 插入和附加文档
description: "将文档合并为: 使用查找和替换、合并字段、书签或仅在文档结尾插入或附加文档到新的或现有的文档 Java。 。 。 。"
type: docs
weight: 80
url: /zh/java/insert-and-append-documents/
---

有时需要将若干文件合并成一份文件。 你可以手动操作,也可以使用 Aspose.Words 插入或附加特性。

插入操作允许您将先前创建的文档内容插入到新的或现有的文档中。

依次,附件特性允许您仅在另一个文档的末尾添加一个文档。

本条解释如何以不同的方式将一个文档插入或附加到另一个文档中,并描述您在插入或附加文档时可以应用的共同属性。

## 插入文档

如上所述, Aspose.Words 文档以节点树表示,将一个文档插入到另一个文档的操作是复制从第一个文档树到第二个文档树的节点。

您可以以不同的方式在各种位置插入文档。 例如,可以通过替换操作,合并操作期间的合并字段,或者通过书签插入文档.

你也可以使用这个 [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) 或 [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) 方法,类似于在 Microsoft Word, 将整个文档插入当前光标位置,而无需任何先前的导入。

以下代码示例显示如何使用 **InsertDocument** 方法:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

以下代码示例显示如何使用 **InsertDocumentInline** 方法:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

以下小节描述您可以将一个文档插入到另一个文档的选项。

### 查找和替换操作时插入文档 {#insert-a-document-during-find-and-replace-operation}

您可以在进行查找和替换操作时插入文档。 例如,文件可以包含带有文本[INTRODUCTION]和[CONSLUSION]的段落. 但是,在最后文件中,你需要用从另一个外部文件中获得的内容来取代这些段落。 为此,您需要为替换事件创建一个处理器 。

以下代码示例显示如何为替换事件创建处理器,以便在插入过程中稍后使用:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

以下代码示例显示在查找和替换操作时如何将一个文档的内容插入到另一个文档中:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### 插入文档期间 Mail Merge 行动 {#insert-a-document-during-mail-merge-operation}

您可以在合并字段中插入文档 mail merge 操作。 例如,a mail merge 模板可以包含像[摘要]这样的合并字段. 但在最终文档中,您需要将从另一个外部文档获取的内容插入到此合并字段中. 为此,您需要为合并事件创建一个处理器 。

以下代码示例显示如何为合并事件创建处理器,以便在插入过程中稍后使用:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

以下代码示例显示如何使用创建的处理器将文档插入合并字段:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### 在书签处插入文档

您可以将文本文件导入文档,然后在文档中定义的书签之后插入。 要做到这一点,请在要插入文档的地方创建一个书签段落。

以下编码示例显示如何将一个文档的内容插入到另一个文档的书签中:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

请注意,书签不应包含您希望它们出现在您最后产生的文件中的多个段落或文本。

{{% /alert %}}

## 附加文档

您可能有一个需要从文档中添加页面到现有文档末尾的用途。 要做到这一点,你只需要打电话给 [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) 将文档添加到另一个文档末尾的方法。

{{% alert color="primary" %}}

请注意: [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) 是文档中节点级别方法。 例如,您可以创建段落,设置格式属性,然后作为孩子使用 **AppendChild** 方法。

{{% /alert %}}

以下代码示例显示如何将文档附加到另一个文档的结尾:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## 手动导入和插入节点 {#import-and-insert-nodes-manually}

Aspose.Words 允许您自动插入和附加文档,而无需任何先前的导入要求。 然而,如果需要插入或附加文档中的特定节点,例如一节或段落,那么首先需要手动导入此节点.

当需要插入或附加一节或段落到另一节或段落时,您基本上需要使用 [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) 方法。 导入节点后,需要使用 [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) 在引用节点之后/之前插入新节点的方法。 这使得您可以通过从文档中导入节点并在给定位置插入来自定义插入过程.

你也可以使用这个 [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) 方法,在子节点列表的末尾添加一个新的指定节点,例如,如果您想要在段落级别而不是在节级附加内容。

下面的代码示例显示如何使用该代码手动导入节点,并在特定节点之后插入。 **InsertAfter** 方法:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

导入将创建一个新节点,该节点是原始节点的副本,适合插入目的文档.

{{% /alert %}}

内容逐节导入到目的文档部分,这意味着在导入时会保存页面设置和页眉或页脚等设置. 还可以注意到,在插入或附加文档以指定两个文档如何合并时,可以定义格式设置。

## 插入和附加文档的常见属性 {#common-properties-for-insert-and-append-documents}

两者 [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) 和 [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) 接受的方法 [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) 和 [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) 作为输入参数。 那个 **ImportFormatMode** 允许您通过选择不同的格式模式,例如: [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), 和 [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES)。 。 。 。 那个 **ImportFormatOptions** 允许您选择不同的导入选项, 如 [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), 和 [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior)。 。 。 。

Aspose.Words 允许您在插入或附加操作中将两个文档加在一起时,通过使用 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) 和 [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) 属性。 那个 **PageSetup** 属性包含诸如 [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), 还有其他人。 最常见的用例是设置 **SectionStart** 属性以定义添加的内容是否将出现在同一个页面上或拆分为一个新的页。

{{% alert color="primary" %}}

注意到 **Section** 和 **PageSetup** 属性不控制两个文档是如何插入/合并的。 他们只允许您更改您的结果文档的外观 。

{{% /alert %}}

以下代码示例显示如何将一个文档附加到另一个文档中,同时避免将内容分成两页:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
