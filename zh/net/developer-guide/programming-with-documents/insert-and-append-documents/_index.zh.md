---
title: 在 C# 中插入和附加文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 插入和附加文档
linktitle: 插入和附加文档
description: "将文档合并为一个：使用查找和替换、合并字段、书签或直接在 C# 中的文档末尾将文档插入或附加到新的或现有的文档中。"
type: docs
weight: 80
url: /zh/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

有时需要将多个文档合并为一个。您可以手动执行此操作，也可以使用 Aspose.Words 插入或附加功能。

插入操作允许您将先前创建的文档的内容插入到新的或现有的文档中。

反过来，附加功能允许您仅在另一个文档的末尾添加文档。

本文介绍如何以不同的方式将一个文档插入或附加到另一个文档，并介绍在插入或附加文档时可以应用的常见属性。

## 插入文档 {#insert-a-document}

如上所述，在 Aspose.Words 中，文档被表示为节点树，将一个文档插入另一个文档的操作是将节点从第一个文档树复制到第二个文档树。

您可以用不同的方式将文档插入到不同的位置。例如，您可以通过替换操作、合并操作期间的合并字段或通过书签插入文档。

您还可以使用[InsertDocument](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertdocument/#insertdocument/)或[InsertDocumentInline](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertdocumentinline/)方法，类似于在Microsoft Word中插入文档，在当前光标位置插入整个文档，而无需先前导入。

以下代码示例演示如何使用 **InsertDocument** 方法插入文档：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

以下代码示例演示如何使用 **InsertDocumentInline** 方法插入文档：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

以下小节介绍了可以将一个文档插入到另一个文档中的选项。

### 在查找和替换操作期间插入文档 {#insert-a-document-during-find-and-replace-operation}

您可以在执行查找和替换操作时插入文档。例如，文档可以包含带有文本 [简介] 和 [结论] 的段落。但在最终文档中，您需要将这些段落替换为从另一个外部文档获取的内容。为此，您需要为替换事件创建一个处理程序。

以下代码示例演示如何为替换事件创建处理程序，以便稍后在插入过程中使用它：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

以下代码示例演示如何在查找和替换操作期间将一个文档的内容插入到另一个文档中：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Mail Merge 操作期间插入文档 {#insert-a-document-during-mail-merge-operation}

您可以在 mail merge 操作期间将文档插入合并字段。例如，mail merge 模板可以包含合并字段，例如 [Summary]。但在最终文档中，您需要将从另一个外部文档获取的内容插入到此合并字段中。为此，您需要为合并事件创建一个处理程序。

以下代码示例演示如何为合并事件创建处理程序，以便稍后在插入过程中使用它：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

以下代码示例演示如何使用创建的处理程序将文档插入合并字段：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### 在书签 {#insert-a-document-at-bookmark} 处插入文档

您可以将文本文件导入到文档中，并将其插入到文档中定义的书签后面。为此，请在要插入文档的位置创建一个带书签的段落。

以下编码示例显示如何将一个文档的内容插入到另一文档的书签中：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

请注意，书签不应包含您希望它们出现在最终结果文档中的多个段落或文本。

{{% /alert %}}

## 附加文档 {#append-a-document}

您可能有一个用例，需要将文档中的附加页面添加到现有文档的末尾。为此，您只需调用 [AppendDocument](https://reference.aspose.com/words/zh/net/aspose.words/document/appenddocument/) 方法将一个文档添加到另一个文档的末尾。

{{% alert color="primary" %}}

请注意，[AppendChild](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/appendchild/) 是文档中的节点级方法。例如，您可以创建一个段落，设置格式属性，然后使用 **AppendChild** 方法将其作为子项附加到正文。

{{% /alert %}}

以下代码示例演示如何将一个文档附加到另一个文档的末尾：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## 手动导入和插入节点 {#import-and-insert-nodes-manually}

Aspose.Words 允许您自动插入和附加文档，无需任何先前的导入要求。但是，如果您需要插入或附加文档的特定节点（例如节或段落），那么首先需要手动导入该节点。

当您需要将一个部分或段落插入或附加到另一个部分或段落时，本质上需要使用 [ImportNode](https://reference.aspose.com/words/zh/net/aspose.words/nodeimporter/importnode/) 方法将第一个文档节点树的节点导入到第二个文档节点树中。导入节点后，您需要使用 [InsertAfter](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/insertbefore/) 方法在引用节点之后/之前插入新节点。这允许您通过从文档导入节点并将其插入给定位置来自定义插入过程。

您还可以使用 [AppendChild](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/appendchild/) 方法将新的指定节点添加到子节点列表的末尾，例如，如果您想在段落级别而不是节级别追加内容。

以下代码示例展示了如何使用 **InsertAfter** 方法手动导入节点并将其插入到特定节点之后：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

导入会创建一个新节点，该节点是原始节点的副本，适合插入到目标文档中。

{{% /alert %}}

内容将逐节导入到目标文档中，这意味着在导入过程中会保留页面设置和页眉或页脚等设置。值得注意的是，您可以在插入或追加文档时定义格式设置，以指定两个文档如何连接在一起。

## 插入和附加文档 {#common-properties-for-insert-and-append-documents} 的常用属性

[InsertDocument](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertdocument/) 和 [AppendDocument](https://reference.aspose.com/words/zh/net/aspose.words/document/appenddocument/) 方法都接受 [ImportFormatMode](https://reference.aspose.com/words/zh/net/aspose.words/importformatmode/) 和 [ImportFormatOptions](https://reference.aspose.com/words/zh/net/aspose.words/importformatoptions/) 作为输入参数。当您通过选择不同的格式模式（例如 [UseDestinationStyles](https://reference.aspose.com/words/zh/net/aspose.words/importformatmode/)、[KeepSourceFormatting](https://reference.aspose.com/words/zh/net/aspose.words/importformatmode/) 和 [KeepDifferentStyles](https://reference.aspose.com/words/zh/net/aspose.words/importformatmode/)）将内容从一个文档导入到另一个文档时，**ImportFormatMode** 允许您控制文档格式的合并方式。 **ImportFormatOptions** 允许您选择不同的导入选项，例如 [IgnoreHeaderFooter](https://reference.aspose.com/words/zh/net/aspose.words/importformatoptions/ignoreheaderfooter/)、[IgnoreTextBoxes](https://reference.aspose.com/words/zh/net/aspose.words/importformatoptions/ignoretextboxes/)、[KeepSourceNumbering](https://reference.aspose.com/words/zh/net/aspose.words/importformatoptions/keepsourcenumbering/)、[MergePastedLists](https://reference.aspose.com/words/zh/net/aspose.words/importformatoptions/mergepastedlists/) 和 [SmartStyleBehavior](https://reference.aspose.com/words/zh/net/aspose.words/importformatoptions/smartstylebehavior/)。

当两个文档通过使用 [Section](https://reference.aspose.com/words/zh/net/aspose.words/section/) 和 [PageSetup](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/pagesetup/) 属性在插入或追加操作中添加在一起时，Aspose.Words 允许您调整结果文档的可视化。 **PageSetup** 属性包含节的所有属性，例如 [SectionStart](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/sectionstart/)、[RestartPageNumbering](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/restartpagenumbering/)、[PageStartingNumber](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/pagestartingnumber/)、[Orientation](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/orientation/) 等。最常见的用例是设置 **SectionStart** 属性来定义添加的内容是出现在同一页面上还是拆分为新页面。

{{% alert color="primary" %}}

请注意，**Section** 和 **PageSetup** 属性不控制两个文档如何插入/附加在一起。它们只允许您更改结果文档的外观。

{{% /alert %}}

以下代码示例演示如何将一个文档追加到另一个文档，同时防止内容拆分为两页：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
