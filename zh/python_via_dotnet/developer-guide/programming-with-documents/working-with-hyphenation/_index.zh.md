---
title: 在 Python 中使用连字符
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用连字符
linktitle: 使用连字符
description: "使用 Python 使用连字符来实现更紧凑的文本排列。它提供了高级算法来处理连字词典，使用 OpenOffice 词典。"
type: docs
weight: 220
url: /zh/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

有时需要使用连字符来使文档中的文本排列更加紧凑。同时，重要的是要了解每种语言的单词连字符的具体情况可能有所不同。

目前，连字符不再像以前那样频繁使用，尤其是在英语文本中。然而，使用此功能可能会对用户文档产生严重影响 - 连字符会影响布局，从而影响输出文件（例如 PDF 格式）的外观。

为了正确分割单词，使用特定于语言的连字符字典。 Aspose.Words 使用先进的算法来处理此类词典，并允许您获得与 Microsoft Word 中相同的连字符。

## 连字词典

由于不同的语言对单词连字符使用不同的规范和规则，因此正确连字符的最佳解决方案是使用专门的词典。 Aspose.Words 使用 OpenOffice 字典。

对于拼写检查，OpenOffice 使用 [Hunspell 库](https://hunspell.github.io/)，它是 TeX 连字算法的推广。该算法允许使用竞争的标准和自定义连字符模式进行自动非标准连字符。 Hunspell 使用 [连字符](https://github.com/hunspell/hyphen) 进行连字。

{{% alert color="primary" %}}

连字词典可以从 [LibreOffice 词典 GitHub](https://github.com/LibreOffice/dictionaries) 中获取。例如，[en-US 连字词典](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)。

{{% /alert %}}

{{% alert color="primary" %}}

由于Microsoft Word使用OpenOffice词典以外的词典进行连字符，因此OpenOffice词典定义的某些单词的连字符可能与Microsoft Word的连字符不同。因此，有时我们必须建议客户将必要的模式添加到他们的词典中，以修复特定单词的连字符。

{{% /alert %}}

## 连字算法

Aspose.Words 实现了 [TeX 连字算法](https://github.com/hunspell/hyphen/blob/master/README.hyphen)，并且可以重用 OpenOffice 连字词典。

应考虑 Aspose.Words 算法的以下特征：

* 忽略连字符字典中指定的连字符距离参数（LEFTHYPHENMIN、RIGHTHYPHENMIN、COMPOUNDLEFTHYPHENMIN、COMPOUNDRIGHTHYPHENMIN）。 Aspose.Words 根据文档兼容模式使用自己的一组距离参数。
* Aspose.Words 中的连字算法支持 [复合连字符](https://github.com/hunspell/hyphen/blob/master/README.compound)。但是，Aspose.Words 将包含混合字母和非字母字符的字符序列拆分为仅包含字母的部分（单词），并分别用连字符连接它们。
  请注意，Microsoft Word 复合词的连字符逻辑取决于文档兼容模式。
* Aspose.Words 中的连字符算法未实现 [非标准连字符](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)。非标准模式将被忽略。

## 加载连字词典

要使用连字符功能，请首先注册连字符字典。以下代码示例演示如何从文件加载指定语言的连字符字典：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% /alert %}}

以下代码示例演示如何从流中加载指定语言的连字符字典：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% /alert %}}

## 连字符对布局的影响

当将文本分成行时，Aspose.Words 检查每个单词是否完全适合当前行。如果另一个单词太长而无法放在行尾，默认情况下 Aspose.Words 会将其移动到下一行的开头而不是用连字符连接。

但是，可以在 Aspose.Words 中使用连字符功能将连字符插入到单词中，以消除对齐文本中的间隙或在窄列中保持均匀的行长度。这显然会影响行数，从而影响页数。换句话说，使用连字功能会影响文档布局。

## 连字符和对齐 (H&amp;J)

如果文本对齐且启用连字符，Microsoft Word 具有复杂的逻辑来选择断点。简而言之，Microsoft Word 可能更愿意缩小或拉伸空格以避免行连字符。这个逻辑很可能是基于 [高德纳的文章](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf) 的。

Aspose.Words 实现了自己的 H&amp;J 算法，该算法给出与 Microsoft Word 相同的结果，并在输出文档中提供相同的换行。

## 也可以看看

* [Hyphen – 连字符库](https://github.com/hunspell/hyphen/blob/master/README)
* [非标准连字符](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Open Office 中的自动非标准连字符](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
