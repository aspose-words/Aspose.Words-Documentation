---
title: 选项和外观 Word 文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用 Word 文档的选项和外观
linktitle: 使用 Word 文档的选项和外观
description: "使用 C# 控制 Word 文档的外观，同时考虑各种 Microsoft Word 版本之间的差异。"
type: docs
weight: 40
url: /zh/net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

有时您可能需要更改文档的外观，例如，设置语言首选项或每页行数。Aspose.Words 提供了控制文档显示方式的功能，以及一些附加选项。本文描述了这种可能性。

## 设置文档显示选项

您可以使用 [ViewOptions](https://reference.aspose.com/words/zh/net/aspose.words.settings/viewoptions/) 类控制文档在 Microsoft Word 中的显示方式。例如，您可以使用 [ZoomPercent](https://reference.aspose.com/words/zh/net/aspose.words.settings/viewoptions/zoompercent/) 属性设置文档缩放值，或使用 [ViewType](https://reference.aspose.com/words/zh/net/aspose.words.settings/viewoptions/viewtype/) 属性设置查看模式。

以下代码示例演示如何确保文档在 Microsoft Word 中打开时显示为 50%：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下载此示例的模板文件。

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 不会向文档写入任何缩放系数，也不再根据写入文档的值设置默认缩放，而是似乎使用上次打开文档的缩放系数。

{{% /alert %}}

## 设置页面显示选项

如果要设置每行的字符数，请使用 [CharactersPerLine](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/charactersperline/) 属性。您还可以设置 Word 文档每页的行数 - 使用 [LinesPerPage](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/linesperpage/) 属性获取或设置文档网格中每页的行数。

{{% alert color="primary" %}}

在 Microsoft Word 中，仅当安装了亚洲语言支持时，才可以使用"页面设置"对话框中的"文档网格"选项卡设置相同的参数。

{{% /alert %}}

以下代码示例显示如何设置 Microsoft Word 文档的每行字符数和每页行数：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## 设置语言首选项

以 Microsoft Word 格式显示文档取决于该文档的默认语言设置。如果默认情况下未设置语言，Microsoft Word 会从"设置 Office 语言首选项"对话框中获取信息，例如，可以在 Microsoft Word 2019 中的"文件 → 选项 → 语言"下找到该信息。

通过 Aspose.Words，您还可以使用 [LanguagePreferences](https://reference.aspose.com/words/zh/net/aspose.words.loading/languagepreferences/) 类设置语言首选项。另请注意，为了正确显示文档，有必要设置文档加载过程应匹配的 Microsoft Word 版本 - 这可以使用 [MswVersion](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/mswversion/) 属性来完成。

{{% alert color="primary" %}}

如果您的 Aspose.Words 生成的文档看起来不符合预期，请检查 **LanguagePreferences** 和 **MswVersion** 值，并根据需要进行调整以匹配您的 Microsoft Word 版本的设置。

{{% /alert %}}

以下代码示例展示了如何将日语添加到编辑语言中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

以下代码示例显示如何将俄语设置为默认编辑语言：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## 针对特定 Word 版本优化文档

[OptimizeFor](https://reference.aspose.com/words/zh/net/aspose.words.settings/compatibilityoptions/optimizefor/) 方法允许优化文档内容以及特定版本 Microsoft Word 的默认 Aspose.Words 行为。您可以使用此方法来防止 Microsoft Word 在文档加载时显示"兼容模式"功能区。请注意，您可能还需要将 `Compliance` 属性设置为 Iso29500_2008_Transitional 或更高版本。

以下代码示例展示了如何优化 Microsoft Word 2016 的文档内容：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
