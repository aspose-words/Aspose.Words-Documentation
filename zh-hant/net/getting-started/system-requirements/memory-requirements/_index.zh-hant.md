---
title: 「記憶體需求」
second_title: 「Aspose.Words for .NET」
articleTitle: 「記憶體需求」
linktitle: 「記憶體需求」
description: "「Aspose.Words為 .NET 需要多少記憶體才能與文件一起工作？」 了解細節。"
type: docs
weight: 10
url: /zh-hant/net/memory-requirements/
---

「Aspose.Words 提供各種格式的文件進行處理的廣大功能。」 很重要的一點是，沒有限制 Aspose.Words 可以處理或顯示的檔案最大尺寸。 「唯一的限制是你那一邊可用量的 RAM (記憶體)。」

## Aspose.Words 需要多少記憶體？

「通常 Aspose.Words 需要比文件大小多好幾倍的記憶體來建立文件的模型。 例如，如果您的文件大小是 1MB，則 Aspose.Words 需要 10-20MB 的 RAM來建立其 Document Object Model (DOM) 内存中。 乘數取決於格式，因為某些格式比其他格式更緊湊。 例如，DOCX比DOC和RTF更緊湊，而DOC比RTF更緊凑。

「沒有確切的方法來估計在處理特定文件時，Aspose.Words實際使用多少記憶體。」 「您可能知道，.NET 會將資料儲存在類別中，每個類別實例都會利用一些記憶體來作 CLR 的內部用途。」 所以任何段落或格式化文字（即使是單個字元）在載入到 DOM 之後還需要額外的記憶體。 此外，.NET垃圾回收引擎使用一個複雜的算法來確定執行記憶體收集的最佳時間，使得實際的記憶體消耗難以判斷。

## 如何計算記憶體使用量

讓我們考慮兩份文件：

1. 「DOCX」A 文檔– 0.35MB 大小 (2千頁)，僅限文本
2. DOCX 文檔 – 0.35MB 大小（只有1頁），內有PNG圖像

「你知道，像 DOCX、ODT 等格式等許多現代格式是簡單的 ZIP 存檔。」 「所以，我們得到以下計算算法：」
1. 「解壓中。」 「解壓檔」A 大小為 20MB，文件 B 大小為 0.4MB。
2. 「正在將該文件載入模型中（建構其 Document Object Model – DOM）：」
「* 建立第 DOM 份第一份文件」需要 49 MB 大小的「A」
* 創造第二份文件 "B" 的 DOM 需要剛好 2MB 大小的容量。
3。 測量所需的記憶額度來渲染這些文件到PDF。 對於這個操作，「Aspose.Words」需要：
  * "294MB 文檔" A
  * 文檔 "B" 7MB

「因此，正如你所見，並沒有線性依賴於輸入文件的大小。」 「影響所需的RAM大小的因素很多，包括文件格式、其複雜度與結構、圖像數量及其格式，以及許多其他因素。」

## 如何最準確地計算記憶體倍數

「根據數千份真實文件的實驗顯示，典型地 Aspose.Words 需要比平均文件大小多好幾倍的記憶體來建立在記憶體中的文件模型並執行簡單的操作，例如流格式之間的轉換、 mail merge 、解析、替換等。」 有時我們談論的是 2 的倍數，有時是 20。

需要更複雜的操作，例如渲染（將固定頁面格式轉換），更新欄位，分割頁面等等，某些文件需要的資源比載入在 Aspose.Words DOM 的文件的記憶體分配多出 20 倍。

如果您的測試結果顯示可能出現記憶體問題於 Aspose.Words，請與我們的 [Support Team](https://docs.aspose.com/words/net/technical-support/) 聯繫，並附上所有診斷資訊。

## 另見：

* [Measure memory usage in Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Rendering](https://docs.aspose.com/words/net/rendering/)
* [Mail Merge and Reporting](https://docs.aspose.com/words/net/mail-merge-and-reporting/)
* [Working with Fields](https://docs.aspose.com/words/net/working-with-fields/)