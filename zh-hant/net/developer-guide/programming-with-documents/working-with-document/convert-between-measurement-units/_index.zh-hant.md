---
title: 在C#中轉換测量單位
second_title:  Aspose.Words for .NET
articleTitle: 轉換測量單位
linktitle: 轉換測量單位
description: "C# 中的 Aspose.Words .NET 可以協助您如何在測量單位之間進行轉換，例如從英寸到點數以及從點數到英寸、像素到點數以及點數到像素。"
type: docs
weight: 20
url: /zh-hant/net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

大多數在 Aspose.Words API 中提供的物件屬性，代表各種的測量值，例如寬度或高度、邊距與各種距離等，都接受以點數為單位的值，而 1 英寸等於 72 點。 有時這並不方便，因此需要將點數轉換到其他單位。

Aspose.Words 提供 [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) 類別，它提供一些輔助函數來進行各種測量的轉換。 它可用於轉換：

"- 英寸、像素與毫米轉換為點"
"- 點到英寸和像素"
"- 像素從一個解析度到另一個解析度"

將像素轉換為點或反之，可以在 96 dpi（每英寸點數）解析度或指定的 dpi 解析度執行。

**ConvertUtil**這個類別在設定各種頁面屬性時尤其有用，因為例如說，英寸比點更常見的單位。

接下來的程式碼範例示範了如何指定以英吋為單位的頁面屬性：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
