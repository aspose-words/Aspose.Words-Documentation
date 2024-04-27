---
title: 文字文档的选项和外观
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 文字文档的选项和外观
linktitle: 文字文档的选项和外观
description: "控制 Word 文档的外观,同时考虑到各种文档之间的区别 Microsoft Word 使用 Java。 。 。 。"
type: docs
weight: 40
url: /zh/java/work-with-word-document-options-and-appearance/
---

有时可能需要更改文档的外观,例如设置语言偏好或每页行数.Aspose.Words 提供了控制文档将如何显示的能力以及一些额外的选项。 本条描述了这种可能性。

## 设定文档显示选项

您可以控制文档的显示方式 Microsoft Word 使用 [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) 课。 例如,您可以使用 [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) 属性,或使用 [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) 属性。

以下代码示例说明如何确保文档在打开时以50%显示 Microsoft Word编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc)。 。 。 。

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013年没有将任何缩放因子写入文档,不再将默认的缩放从写入文档的值设置到文档,相反,它似乎使用了最后一个打开文档的缩放因子.

{{% /alert %}}

## 设置页面显示选项

如果想要设置每行字符数,请使用 [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) 属性。 您也可以为 Word 文档设置每页行数 – 使用 [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) 属性以获取或设置文档网格中每页行数。

{{% alert color="primary" %}}

内 Microsoft Word, 您可以在" Page 设置" 对话框中使用" Document Grid" 选项卡设置同样的参数, 只有当亚洲语言支持安装时。

{{% /alert %}}

以下代码示例显示如何设置每行字符数和每页行数 。 Microsoft Word 文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## 设置语言首选项

在文档中显示 Microsoft Word 取决于此文档的默认语言。 如果没有设置语言默认值, Microsoft Word 取自" Set Office Language 首选项" 对话框中的信息, 例如, 可以在" 文件 → 选项 → 语言" 下找到 Microsoft Word 2019 (英语).

与 Aspose.Words, 您也可以使用 [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) 课。 并请注意,为了正确显示您的文件,有必要设置 Microsoft Word 文档加载过程应当匹配的版本 - 可用 [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) 属性。

{{% alert color="primary" %}}

狦 Aspose.Words 生成的文档看起来不像预期, 请检查 **LanguagePreferences** 和 **MswVersion** 值,必要时调整,以匹配您的设置 Microsoft Word 版本。

{{% /alert %}}

以下代码示例显示如何在编辑语言中添加日语:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

以下代码示例显示如何将俄语设定为默认的编辑语言:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## 优化文档中的特定 单词版本

那个 [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) 方法允许优化文档内容,以及默认 Aspose.Words 特定版本的行为 Microsoft Word。 。 。 。 您可以使用这种方法来防止 Microsoft Word 从文档加载时显示"兼容模式"丝带。 请注意,您可能需要设置 `Compliance` 属性到 Iso29500_2008_过渡或更高。

以下代码示例显示如何优化文档内容 Microsoft Word 2016年: 请检查date=中的日期值 (帮助)

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
