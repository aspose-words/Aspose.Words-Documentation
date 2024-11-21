---
title: 更新字段 Python
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 更新字段
linktitle: 更新字段
description: "以不同方式更新文档中的字段并使用 Python 中的不同选项。"
type: docs
weight: 30
url: /zh/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

通常，插入 Microsoft Word 中的字段已包含最新值。例如，如果该字段是公式或页码，它将包含给定文档版本的正确计算值。但是，如果您有一个应用程序生成或修改带有字段的文档，例如合并两个文档或用数据填充文档，那么理想情况下，必须更新所有字段才能使文档有用。

## 如何更新字段

加载文档时，Aspose.Words 会模仿 Microsoft Word 的行为，并关闭自动更新字段的选项。该行为可以总结如下：

- 当您打开/保存文档时，字段保持不变
- 当您需要时，您可以显式更新文档中的所有字段（例如重建目录）
- 当您打印/渲染为 PDF 或 XPS 时，页眉/页脚中与页码相关的字段会更新
- 当您执行 mail merge 时，所有字段都会自动更新

### 以编程方式更新字段

要显式更新整个文档中的字段，只需调用 [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)。要更新部分文档中包含的字段，请获取 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 对象并调用 [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) 方法。在 Aspose.Words 中，您可以使用 [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) 属性获取文档树中任何节点的 **Range**，例如 [Section](https://reference.aspose.com/words/python-net/aspose.words/section/)、[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)、[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 等。您可以通过调用[update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/)方法更新单个字段的结果。

### 渲染期间自动更新页面相关字段

当您将文档转换为固定页面格式（例如 PDF 或 XPS）时，Aspose.Words 将自动更新文档页眉/页脚中与页面布局相关的 `PAGE`、`PAGEREF` 字段。此行为模仿打印文档时 Microsoft Word 的行为。

如果要更新文档中的所有其他字段，则需要在渲染文档之前调用 [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)。

以下代码示例演示如何在呈现文档之前更新所有字段：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) 下载本示例的示例文件。

{{% /alert %}}

### Mail Merge 期间自动字段更新

当您执行 mail merge 时，文档中的所有字段都会自动更新。这是因为 mail merge 是字段更新的情况。程序遇到 mail merge 字段并需要更新其结果，这涉及从数据源获取值并将其插入到该字段中。逻辑当然更复杂，例如，当到达文档/mail merge区域的末尾但仍有进一步的数据需要合并时，则需要复制该区域并更新新的字段集。

## 更新具有脏属性的字段

w:dirty 是一个字段级属性，打开文档时只会刷新您指定的字段。它告诉 MS Word 仅在下次打开文档时刷新此字段。您可以使用 [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) 属性来指定是否更新具有 dirty 属性的字段。当 **更新脏字段** 的值设置为 `True` 时，所有具有 [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) 或 [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) 属性的 `True` 值的字段都会在文档加载时更新。

以下代码示例展示了如何更新具有 dirty 属性的字段：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## 保存前更新 LastSavedTime 属性

您可以使用 [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) 属性在保存文档时是否更新相应的内置文档属性 [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/)。

以下代码示例展示了如何更新此属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

