---
title: 使用控制字符
second_title: Aspose.Words对于C++
articleTitle: 使用控制字符
linktitle: 使用控制字符
description: "使用控制字符的介绍 Aspose.Words对于C++."
type: docs
weight: 400
url: /zh/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word文档可能包含具有特殊含义的各种字符。 通常它们用于格式化目的，而不是在正常模式下绘制。 如果单击位于标准工具栏上的显示/隐藏格式标记按钮，则可以使它们可见。

有时您可能需要在文本中添加或删除字符。 例如，当从文档中以编程方式获取文本时，Aspose.Words保留了大部分控制字符，因此如果您需要使用此文本，您可能应该删除或替换字符。

[ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/)类是表示文档中经常遇到的控制字符的常量的存储库。 它同时提供相同常量的char和string版本。 例如，string[LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/)和char**ControlChar.LineBreakChar**具有相同的值。

下面的代码示例演示如何使用控制字符:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
