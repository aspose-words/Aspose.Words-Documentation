---
title: 在C#中啟用OpenType功能
second_title:  Aspose.Words for .NET
articleTitle: 啟用 OpenType 功能
linktitle: 啟用 OpenType 功能
description: "使用 C# 進行進階排版功能。"
type: docs
weight: 25
url: /zh-hant/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType是一種字體格式，相對於 PostScript 和 TrueType，旨在提供更好的支援國際語言和書寫系統。 OpenType的排版特性通常稱為 OpenType功能。Aspose.Words。 Shaping 。 HarfBuzz包提供使用 Aspose.Words 的 HarfBuzz 文字排版引擎對 OpenType功能的支持。

Aspose.Words 能使用外部提供的文本形狀物件。 字型格式化器代表一個字體，並為文字計算格式化資訊。 文件通常會指稱多個字體，所以需要一個文字格式工廠。 此封包包含由 Aspose.Words.Layout.LayoutOptions.TextShaperFactory 屬性使用的文字塑形工廠的實作。

{{% alert color="primary" %}}

文字格式化僅在以PDF或 XPS 格式輸出時進行。

{{% /alert %}}

在典型應用中，一隻文字塑造廠的單一實例會由所有文書實例共享。 當文字處理器被創建時，一個字體檔案會被存取。 解析字體文件是昂貴的操作，因此建議使用緩存。 Aspose.Words 實作了 BasicTextShaperCache 類別，這個類別包覆了文字造型工廠實作並儲存了由包覆工廠返還的字型造型實例。

以下程式碼範例示範了如何開啟 OpenType 功能的支援。

{{< gist "aspose-words-gists" "7840fae2297fa05bba1ca0608cb81bf1" "open-type-features.cs" >}}
