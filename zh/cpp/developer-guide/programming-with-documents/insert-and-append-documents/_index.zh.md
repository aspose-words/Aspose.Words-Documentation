---
title: 在C++中插入和追加文档
second_title: Aspose.Words对于C++
articleTitle: 插入和追加文档
linktitle: 插入和追加文档
description: "将文档合并为一个：使用查找和替换、合并字段、书签或简单地在文档端将文档插入或附加到新的或现有的文档中。"
type: docs
weight: 80
url: /zh/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

有时需要将多个文档合并为一个。 您可以手动执行此操作，也可以使用Aspose.Words插入或追加功能。

插入操作允许您将以前创建的文档的内容插入到新的或现有的文档中。

反过来，追加功能允许您仅在另一个文档的末尾添加文档。

本文介绍了如何以不同的方式将文档插入或附加到另一个文档，并介绍了在插入或附加文档时可以应用的常见属性。

## 插入文档

如上所述，在Aspose.Words中，文档表示为节点树，将一个文档插入另一个文档的操作是将节点从第一个文档树复制到第二个文档树。

您可以通过不同的方式在不同的位置插入文档。 例如，您可以通过替换操作、合并操作期间的合并字段或通过书签插入文档。

您还可以使用[InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/)方法，类似于在Microsoft Word中插入文档，在当前光标位置插入整个文档，而无需任何先前的导入。

下面的代码示例演示如何使用`InsertDocument`方法插入文档:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

以下小节描述了可以将一个文档插入另一个文档的选项。

### 在查找和替换操作{#insert-a-document-during-find-and-replace-operation}期间插入文档

您可以在执行查找和替换操作时插入文档。 例如，文档可以包含文本为[INTRODUCTION]和[CONCLUSION]的段落。 但在最终文档中，您需要将这些段落替换为从另一个外部文档中获取的内容。 为此，您需要为replace事件创建一个处理程序。

下面的代码示例演示如何为替换事件创建处理程序，以便稍后在插入过程中使用它:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

下面的代码示例演示如何在查找和替换操作期间将一个文档的内容插入到另一个文档中:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### 在Mail Merge操作{#insert-a-document-during-mail-merge-operation}期间插入文档

您可以在mail merge操作期间将文档插入合并字段。 例如，mail merge模板可以包含[Summary]等合并字段。 但在最终文档中，您需要将从另一个外部文档获取的内容插入到此合并字段中。 为此，您需要为merge事件创建一个处理程序。

下面的代码示例演示如何为合并事件创建处理程序，以便稍后在插入过程中使用它:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

下面的代码示例演示如何使用创建的处理程序将文档插入到合并字段中:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### 在书签处插入文档

您可以将文本文件导入到文档中，并将其插入到文档中定义的书签之后。 为此，请创建一个书签段落，您希望在其中插入文档。

下面的编码示例演示如何将一个文档的内容插入到另一个文档中的书签中:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

请注意，书签不应包含您希望它们出现在最终结果文档中的多个段落或文本。

{{% /alert %}}

## 追加文档

您可能有一个用例，您需要包括从文档到现有文档末尾的其他页面。 为此，您只需要调用[AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/)方法将文档添加到另一个文档的末尾。

{{% alert color="primary" %}}

请注意，[AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/)是文档中的节点级别方法。 例如，您可以创建一个段落，设置格式属性，然后使用**AppendChild**方法将其作为子项附加到正文中。

{{% /alert %}}

下面的代码示例演示如何将文档追加到另一个文档的末尾:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## 手动导入和插入节点{#import-and-insert-nodes-manually}

Aspose.Words允许您自动插入和附加文档，而无需任何先前的导入要求。 但是，如果您需要插入或追加文档的特定节点，例如部分或段落，则首先需要手动导入此节点。

当您需要将一个部分或段落插入或附加到另一个部分或段落时，您基本上需要使用[ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/)方法将第一个文档节点树的节点导入到第二个文档节点树中。 导入节点后，您需要使用[InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/)方法在引用节点之后/之前插入一个新节点。 这允许您通过从文档导入节点并在给定位置插入来自定义插入过程。

您还可以使用[AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/)方法将新的指定节点添加到子节点列表的末尾，例如，如果要在段落级别而不是在节级别追加内容。

下面的代码示例演示如何手动导入节点并使用**InsertAfter**方法将它们插入到特定节点之后:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

导入将创建一个新节点，该节点是原始节点的副本，适合插入到目标文档中。

{{% /alert %}}

内容逐段导入到目标文档中，这意味着在导入过程中保留设置（如页面设置和页眉或页脚）。 还需要注意的是，您可以在插入或追加文档时定义格式设置，以指定如何将两个文档连接在一起。

## 插入和追加文档的常用属性{#common-properties-for-insert-and-append-documents}

[InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/)和 [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) 方法接受[ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/)和[ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/)作为输入参数。 **ImportFormatMode**允许您通过选择不同的格式模式（如[UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/)、[KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/)和[KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/)）来控制将内容从一个文档导入到另一个文档时文档格式的合并方式。 **ImportFormatOptions**允许您选择不同的导入选项，例如[IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), 和[SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/)。

Aspose.Words允许您使用[Section](https://reference.aspose.com/words/cpp/aspose.words/section/)和[PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup)属性在插入或追加操作中添加两个文档时调整结果文档的可视化。 **PageSetup**属性包含节的所有属性，例如[SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), 和其他人。 最常见的用例是设置**SectionStart**属性以定义添加的内容是出现在同一页面上还是拆分为新页面。

{{% alert color="primary" %}}

请注意，**Section**和**PageSetup**属性不控制如何将两个文档插入/附加在一起。 它们只允许您更改结果文档的外观。

{{% /alert %}}

下面的代码示例演示如何将一个文档附加到另一个文档，同时防止内容在两个页面之间拆分:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
