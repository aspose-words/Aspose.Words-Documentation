---
title: Word文档的选项和外观
second_title: Aspose.Words为Java
articleTitle: 使用Word文档的选项和外观
linktitle: 使用Word文档的选项和外观
description: "考虑到使用Java的各种Microsoft Word版本之间的差异，控制Word文档的外观。"
type: docs
weight: 40
url: /zh/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

有时您可能需要更改文档的外观，例如，设置语言首选项或每页的行数。Aspose.Words提供了控制文档显示方式的能力，以及一些附加选项。 本文描述了这样的可能性。

## 设置文档显示选项

您可以使用[ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/)类控制文档在Microsoft Word中的显示方式。 例如，您可以使用[ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent)属性设置文档缩放值，或使用[ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType)属性设置视图模式。

下面的代码示例演示如何确保文档在Microsoft Word中打开时以50%显示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word2013不会将任何缩放因子写入文档，并且不再从写入文档的值设置默认缩放，相反，它似乎使用上次打开文档的缩放因子。

{{% /alert %}}

## 设置页面显示选项

如果要设置每行的字符数，请使用[CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine)属性。 您还可以设置Word文档的每页行数-使用[LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage)属性获取或设置文档网格中每页的行数。

{{% alert color="primary" %}}

在Microsoft Word中，只有在安装了亚洲语言支持时，才能使用"页面设置"对话框中的"文档网格"选项卡设置相同的参数。

{{% /alert %}}

下面的代码示例演示如何设置Microsoft Word文档的每行字符数和每页行数:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## 设置语言首选项

在Microsoft Word中显示文档取决于将哪些语言设置为此文档的默认值。 如果默认值中未设置语言，Microsoft Word将从"设置Office语言首选项"对话框中获取信息，例如，可以在Microsoft Word2019中的"文件→选项→语言"下找到该对话框。

使用Aspose.Words，您还可以使用[LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/)类设置语言首选项。 另请注意，为了正确显示文档，有必要设置文档加载过程应匹配的Microsoft Word版本–这可以使用[MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion)属性完成。

{{% alert color="primary" %}}

如果您的Aspose.Words生成的文档看起来不像预期的那样，请检查**LanguagePreferences**和**MswVersion**值，并在必要时调整它们以匹配Microsoft Word版本的设置。

{{% /alert %}}

下面的代码示例演示如何将日语添加到编辑语言:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

下面的代码示例演示如何将俄语设置为默认编辑语言:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## 优化特定Word版本的文档

[OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int)方法允许优化文档内容，以及特定版本Microsoft Word的默认Aspose.Words行为。 您可以使用此方法防止Microsoft Word在文档加载时显示"兼容模式"功能区。 请注意，您可能还需要将`Compliance`属性设置为Iso29500_2008_Transitional或更高。

下面的代码示例演示如何优化Microsoft Word2016的文档内容:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
