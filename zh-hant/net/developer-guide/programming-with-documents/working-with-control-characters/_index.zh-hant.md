---
title: 與控制字元工作
second_title: Aspose.Words For .NET
articleTitle: 與控制字元工作
linktitle: 與控制字元工作
description: "使用控制字元於 Aspose.Words 中工作之入門導覽。"
type: docs
weight: 400
url: /zh-hant/net/working-with-control-characters/
---

Microsoft Word 文檔可能包含各種特殊含義的字符。 通常它們是用來做格式化的，在正常模式下不會被繪製。 你可以透過標準工具列上的顯示/隱藏格式標記按鈕來使它們顯露。

有時您可能需要新增或移除文字中的字元 。 例如，當從文件中程式化獲取文字時，Aspose.Words會保存大多數控制字元，因此如果你需要處理這些文字，你應該將字元移除或替換。

[ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/)這個類別是常在文件中出現的控制字常數的存放庫。 它提供 char 和 string 兩種版本的同一個常數。 例如，字串 [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) 和字符 [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) 具有相同的值。

以下範例顯示如何使用控制字元：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
