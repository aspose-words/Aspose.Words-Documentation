---
title: 使用控制字符
second_title: Aspose.Words为Java
articleTitle: 使用控制字符
linktitle: 使用控制字符
description: "介绍在Aspose.Words中处理Java的控制字符."
type: docs
weight: 400
url: /zh/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word文档可能包含具有特殊含义的各种字符。 通常它们用于格式化目的，而不是在正常模式下绘制。 如果单击位于标准工具栏上的显示/隐藏格式标记按钮，则可以使它们可见。

有时您可能需要在文本中添加或删除字符。 例如，当从文档中以编程方式获取文本时，Aspose.Words保留了大部分控制字符，因此如果您需要使用此文本，您可能应该删除或替换字符。

[ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)类是表示文档中经常遇到的控制字符的常量的存储库。 它提供相同常量的char和string版本。 例如，string[LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK)和char[LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR)具有相同的值。

{{% alert color="primary" %}}

每当要处理控制字符时，都使用此类。

{{% /alert %}}

下面的代码示例演示如何使用控制字符:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
