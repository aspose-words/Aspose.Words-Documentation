---
title: 在 C# 中清洗文件
second_title: Aspose.Words for .NET
articleTitle: 乾淨地打掃一份文件
linktitle: 乾淨地打掃一份文件
description: "使用 C# 移除未使用的或重複的信息，以減少輸出大小和處理時間。 移除未使用的樣式、未使用的內建樣式、重複的樣式，或未使用的清單。"
type: docs
weight: 30
url: /zh-hant/net/clean-up-a-document/
---

有時你可能需要移除沒有使用的或重複的資訊，以降低輸出文件的大小和處理時間。

儘管您可以手動 tìm並移除未使用的資料，例如風格或清單，或是重複資訊，但使用 Aspose.Words 提供的功能與功能來進行此動作會更方便。

[CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/)類別允許您指定資料清理的選項。 要從文件中移除此類重複或未使用的風格和清單，您可以使用 [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) 方法。

## 從文件中移除未使用的資訊

您可以使用 [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) 和 [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) 屬性來檢測並移除被標記為『未使用的』的風格。

您可以使用 [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) 屬性來檢測並移除標記為未使用的的清單與清單定義。

以下範例顯示如何從文件中移除未使用的樣式：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## 從文件中移除重複資訊

您也可以使用 [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) 屬性將所有重複的樣式替換為原始樣式，並將複製文件從文書中移除。

接下來的程式碼範例說明了如何從文件中移除重複的樣式。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
