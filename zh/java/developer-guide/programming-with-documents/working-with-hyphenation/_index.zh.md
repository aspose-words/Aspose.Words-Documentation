---
title: 在Java中使用连字符
second_title: Aspose.Words为Java
articleTitle: 使用连字符
linktitle: 使用连字符
description: "使用连字符来实现更紧凑的文本排列。 它提供了先进的算法与断字字典工作，使用OpenOffice字典使用Java。"
type: docs
weight: 220
url: /zh/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

有时需要使用连字符在文档中更紧凑地排列文本。 与此同时，重要的是要了解每种语言的单词断字的具体细节可能不同。

目前，连字符的使用不像以前那样频繁，特别是在英文文本中。 尽管如此，使用此功能可能会对用户文档产生严重影响–连字符会影响布局，因此会影响输出文件的外观，例如PDF格式。

为了正确分割单词，使用特定于语言的断字字典。 Aspose.Words使用高级算法来处理此类字典，并允许您获得与Microsoft Word中相同的连字符。

## 连字符字典

由于不同的语言对单词断字使用不同的规范和规则，正确断字的最佳解决方案是使用特殊的字典。 Aspose.Words使用OpenOffice字典。

对于拼写检查，OpenOffice使用 [Hunspell图书馆](https://hunspell.github.io/)，这是TeX的断字算法的泛化。 此算法允许使用竞争标准和自定义断字模式自动非标准断字。 Hunspell使用 [连字符,连字符](https://github.com/hunspell/hyphen) 为断字。

{{% alert color="primary" %}}

连字符字典可以从 [LibreOffice字典GitHub](https://github.com/LibreOffice/dictionaries). 例如, [en-US连字符字典](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

由于Microsoft Word使用OpenOffice字典以外的字典来执行断字，因此由OpenOffice字典定义的某些单词的断字可能与Microsoft Word断字不同。 出于这个原因，有时我们不得不建议客户在他们的字典中添加必要的模式，以修复特定单词的断字。

{{% /alert %}}

## 断字算法

Aspose.Words实现 [TeX断字算法](https://github.com/hunspell/hyphen/blob/master/README.hyphen) 并且可以重用OpenOffice连字符字典。

应该考虑Aspose.Words算法的以下特性:

* 断字距离参数(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) 断字字典中指定将被忽略。 Aspose.Words根据文档兼容模式使用自己的一组距离参数。
* Aspose.Words中的断字算法支持 [复合连字符](https://github.com/hunspell/hyphen/blob/master/README.compound). 但是，Aspose.Words将包含混合字母和非字母字符的字符序列拆分为仅字母部分（单词）并分别用连字符连接。
  请注意，复合词断字的Microsoft Word逻辑取决于文档兼容模式。
* Aspose.Words中的连字符算法不实现 [非标准连字符](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). 非标准模式将被忽略。

## 加载连字符字典

要使用断字功能，请先注册断字字典。下面的代码示例演示如何从文件中加载指定语言的断字字典:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

下面的代码示例演示如何从流中加载指定语言的断字字典:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

作为预先注册连字符字典的替代方法，可以"按请求"仅注册所需的连字符字典。 为此，请实现[IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/)接口并使用静态回调[Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)。

下面的代码示例演示如何实现**IHyphenationCallback**接口:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## 断字对布局的影响

将文本分成几行时，Aspose.Words会检查每个单词是否完全适合当前行。 如果另一个单词太长而不适合行尾，默认情况下Aspose.Words将其移动到下一行的开头，而不是用连字符。

但是，可以在Aspose.Words中使用连字符功能将连字符插入到单词中，以消除对齐文本中的空白或在窄列中保持偶数行长度。 这显然会影响行数，从而影响页数。 换句话说，使用断字功能会影响文档布局。

## 连字符和理由(H&J)

Microsoft Word有复杂的逻辑来选择断点，如果文本是合理的，并且启用了连字符。 简而言之，Microsoft Word可能更喜欢收缩或拉伸空格以避免行断字。 很可能这个逻辑是基于 [克努斯的公司？](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words实现自己的H&J算法，该算法给出与Microsoft Word相同的结果，并在输出文档中提供相同的换行。

## 请参阅

* [连字符-连字符库](https://github.com/hunspell/hyphen/blob/master/README)
* [非标准连字符](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [开放式办公室自动非标准断字](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
