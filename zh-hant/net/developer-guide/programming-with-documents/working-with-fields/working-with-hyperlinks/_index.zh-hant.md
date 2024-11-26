---
title: 在C#中作業超連結
second_title: Aspose.Words for .NET
articleTitle: 新增或修改超連結
linktitle: 新增或修改超連結
description: "如何在C#中透過Aspose.Words為.NET添加超連結到您的文件。"
type: docs
weight: 50
url: /zh-hant/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word 文件中的超連結是 `HYPERLINK` 欄位。 在 Aspose.Words 中，超連結是透過 [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) 類別來實作的。

## 插入超連結

利用 [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) 方法將超連結插入至文件中。 此方法接受三個參數：

1. 將要顯示在文件中的連結文字
2. 連結目的地（網址或文書內存取的書籤名稱）
3. 布林參數應該是 true，如果 `URL` 是檔案中書籤的名稱。

**InsertHyperlink**這個方法總是將引號加上去網址的开頭與結尾。

{{% alert color="primary" %}}

請注意，您必須透過 `Font` 屬性來明確地指定超連結顯示文字的書體格式。

{{% /alert %}}

以下範例說明如何透過 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 在文件中插入超連結：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## 取代或修改超連結

Microsoft Word 文檔中的超連結是一個欄位。 Word 文檔中的字段，正如之前所說的，是由多個節點組成的複雜結構，這些節點包括字段開始、字段程式碼、字段分隔符、字段結果和字段結束。 欄位可以嵌套、包含豐富內容、在文件中跨多段或多個分節。

若要替換或修改超連結，則須在文件中找到超連結，再將其文字、網址或兩者替換。

以下範例示範了如何在 Microsoft Word 文檔中找到所有超連結並變更他們的 `URL` 和顯示名稱：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
