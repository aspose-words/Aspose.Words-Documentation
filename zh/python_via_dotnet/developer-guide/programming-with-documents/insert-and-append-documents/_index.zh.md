---
title: 插入和附加文档
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 插入和附加文档
linktitle: 插入和附加文档
description: "将文档合并为一个：使用查找和替换、合并字段、书签或直接在 Python 中的文档末尾将文档插入或附加到新的或现有的文档中。"
type: docs
weight: 80
url: /zh/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

有时需要将多个文档合并为一个。您可以手动执行此操作，也可以使用 Aspose.Words 插入或附加功能。

插入操作允许您将先前创建的文档的内容插入到新的或现有的文档中。

反过来，附加功能允许您仅在另一个文档的末尾添加文档。

本文介绍如何以不同的方式将一个文档插入或附加到另一个文档，并介绍在插入或附加文档时可以应用的常见属性。

## 插入文档

如上所述，在 Aspose.Words 中，文档被表示为节点树，将一个文档插入另一个文档的操作是将节点从第一个文档树复制到第二个文档树。

您可以用不同的方式将文档插入到不同的位置。例如，您可以通过替换操作、合并操作期间的合并字段或通过书签插入文档。

您还可以使用[insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/)或[insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions)方法，类似于在Microsoft Word中插入文档，在当前光标位置插入整个文档，而无需先前导入。

以下代码示例演示如何使用 **插入文档** 方法插入文档：

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

以下代码示例演示如何使用 **内联插入文档** 方法插入文档：

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

以下小节介绍了可以将一个文档插入到另一个文档中的选项。

### 在书签处插入文档

您可以将文本文件导入到文档中，并将其插入到文档中定义的书签后面。为此，请在要插入文档的位置创建一个带书签的段落。

以下编码示例显示如何将一个文档的内容插入到另一文档的书签中：

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

请注意，书签不应包含您希望它们出现在最终结果文档中的多个段落或文本。

{{% /alert %}}

## 附加文档

您可能有一个用例，需要将文档中的附加页面添加到现有文档的末尾。为此，您只需调用 [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) 方法将一个文档添加到另一个文档的末尾。

{{% alert color="primary" %}}

请注意，[append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) 是文档中的节点级方法。例如，您可以创建一个段落，设置格式属性，然后使用 [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) 方法将其作为子项附加到正文。

{{% /alert %}}

以下代码示例演示如何将一个文档附加到另一个文档的末尾：

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## 手动导入和插入节点

Aspose.Words 允许您自动插入和附加文档，无需任何先前的导入要求。但是，如果您需要插入或附加文档的特定节点（例如节或段落），那么首先需要手动导入该节点。

当您需要将一个部分或段落插入或附加到另一个部分或段落时，本质上需要使用 [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) 方法将第一个文档节点树的节点导入到第二个文档节点树中。导入节点后，您需要使用 [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) 方法在引用节点之后/之前插入新节点。这允许您通过从文档导入节点并将其插入给定位置来自定义插入过程。

您还可以使用 [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) 方法将新的指定节点添加到子节点列表的末尾，例如，如果您想在段落级别而不是节级别追加内容。

以下代码示例展示了如何使用 [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) 方法手动导入节点并将其插入到特定节点之后：

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

导入会创建一个新节点，该节点是原始节点的副本，适合插入到目标文档中。

{{% /alert %}}

内容将逐节导入到目标文档中，这意味着在导入过程中会保留页面设置和页眉或页脚等设置。值得注意的是，您可以在插入或附加文档时定义格式设置，以指定两个文档如何连接在一起。

## 插入和追加文档的通用属性

[insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) 和 [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) 方法都接受 [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) 和 [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) 作为输入参数。当您通过选择不同的格式模式（例如 [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles)、[KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) 和 [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles)）将内容从一个文档导入到另一个文档时，[ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) 允许您控制文档格式的合并方式。 [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) 允许您选择不同的导入选项，例如 [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/)、[ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/)、[keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/)、[merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) 和 [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/)。

当使用 [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 和 [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) 在插入或追加操作中将两个文档添加在一起时，Aspose.Words 允许您调整结果文档的可视化。 [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) 属性包含节的所有属性，例如 [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/)、[restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/)、[page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/)、[orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) 等。最常见的用例是设置 [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) 属性来定义添加的内容是出现在同一页面上还是拆分为新页面。

{{% alert color="primary" %}}

请注意，[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 和 [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) 不控制两个文档如何插入/附加在一起。它们只允许您更改结果文档的外观。

{{% /alert %}}

以下代码示例演示如何将一个文档追加到另一个文档，同时防止内容拆分为两页：

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
