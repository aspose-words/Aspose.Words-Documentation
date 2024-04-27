---
title: 使用断字 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用连字符
linktitle: 使用连字符
description: "使用连字符对文本进行更紧凑的安排. 它提供高级算法来配合连字符词典,使用OpenOffice词典使用 Java。 。 。 。"
type: docs
weight: 220
url: /zh/java/working-with-hyphenation/
---

有时需要使用连字符来对文件中的文字作出更紧凑的安排. 同时,必须明白,每个语言的连字符字的特异性可能有所不同.

目前,连字符使用频率不如以前,特别是在英文文本中. 尽管如此,该功能的使用可能会对用户文档产生严重影响 - 连字符影响布局,从而导致输出文件的出现,例如PDF格式.

为正确分词,使用语言专用的连字符词典. Aspose.Words 使用高级算法来使用这样的词典,并允许您获得与其中相同的连字符 Microsoft Word。 。 。 。

## 连字符词典

由于不同语言对单词连字符使用不同的规范和规则,因此正确连字符的最佳解决方案是使用特殊的词典. Aspose.Words 使用 OpenOffice 词典。

在拼写检查中, OpenOffice 使用 [Hunspell 图书馆](https://hunspell.github.io/), 这是TeQQs连字符算法的概括。 这种算法允许使用相互竞争的标准和自定义的连字符模式进行自动的非标准连字符. Hunspell 使用 [连字符](https://github.com/hunspell/hyphen) 为了连字符。

{{% alert color="primary" %}}

连字符词典可从 [LibreOffice 词典 GitHub](https://github.com/LibreOffice/dictionaries)。 。 。 。 举例来说, [美国](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)。 。 。 。

{{% /alert %}}

{{% alert color="primary" %}}

作为 Microsoft Word 使用 OpenOffice 词典以外的词典来进行连字符, OpenOffice 词典定义的一些单词的连字符可能不同于 Microsoft Word 连字. 为此,有时我们不得不建议顾客在词典中加入必要的图案,以固定特定词的连字符.

{{% /alert %}}

## 连字符算法

Aspose.Words 执行 [TeX 键](https://github.com/hunspell/hyphen/blob/master/README.hyphen) 并可以重用 OpenOffice 连字符词典。

以下特征: Aspose.Words 算法应当考虑:

* 连字符距离参数(LEFTHYPHENMIN、RYHYPHENMIN、 COM蓬莱芬明, COMPOUNDRIGHTHYPHENMIN)在连字符词典中指定的被忽略. Aspose.Words 根据文档兼容性模式,使用自己的一组距离参数。
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 连字符算法在 Aspose.Words 支持 [复合连字符](https://github.com/hunspell/hyphen/blob/master/README.compound)。 。 。 。 不过 Aspose.Words 将包含混合字母和非字母字符的字符序列分割为只使用字母的部分(单词),并将它们分别连字符.
  请注意: Microsoft Word 复合词的连字符化逻辑取决于文档兼容性模式.
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 连字符算法在 Aspose.Words 不执行 [非标准连字符](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)。 。 。 。 非标准模式被忽视。

## 装入连字符词典

要使用连字功能,首先注册连字词典. 以下代码示例显示如何从文件中装入指定语言的连字符词典:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{% /alert %}}

以下代码示例显示如何从流中装入指定语言的连字符词典:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{% /alert %}}

作为预先登记连字符词典的替代办法,可以只登记所要求的"按要求"连字符词典。 为此,执行 [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) 接口并使用静态回调 [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)。 。 。 。

以下代码示例显示如何执行 **IHyphenationCallback** 接口:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## 断字对布局的影响

当把文字打成一行时, Aspose.Words 检查每个单词是否完全适合当前行。 如果另一个词太长, 无法在行尾匹配, 默认 Aspose.Words 移动到下一行的开头,而不是用连字符表示。

然而,连字符特性可以用于 Aspose.Words 将连字符插入到文字中,以消除正则文本中的空格,或在窄列中保持平线长度。 这显然会影响行数,从而影响页数. 换言之,使用连字符函数会影响文档布局.

## 连字符和说明(H&J)

Microsoft Word 如果文本有正当理由并启用连字符,则有选择断点的复杂逻辑。 总之 Microsoft Word 可能更喜欢缩小或拉伸空格以避免连线. 这个逻辑很可能是基于 [Knuth → (Knuth ) (韩语)](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)。 。 。 。

Aspose.Words 执行自己的H&J算法,其结果与 Microsoft Word ,并在输出文档中提供相同的行折换。

## 另见

* [连字符 – 连字符库](https://github.com/hunspell/hyphen/blob/master/README)
* [非标准连字符](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [打开办公室QQ](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
