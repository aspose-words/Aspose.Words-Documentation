---
title: 在C#中與書籤一起工作
second_title: 「Aspose.Words for .NET」
articleTitle: 「與書籤一起工作」
linktitle: 「與書籤一起工作」
description: "了解書籤概念和如何使用 C# 在程式中儲存書籤。"
type: docs
weight: 180
url: /zh-hant/net/working-with-bookmarks/
---

書籤在 Microsoft Word 文檔中標記出您命名及識別供以後參照的位置或片段。 例如，你可能使用書籤標記你想要稍後修改的文字。 「 بدلاً من تمرير المستند للبحث عن النص، يمكنك الانتقال إلى النص باستخدام مربع حوار حجز الصفحات 」.

使用Aspose.Words的書签可以執行的動作與使用Microsoft Word時相同。 您可以插入新書籤、刪除、移動到書籤、取得或設定書籤名稱，取得或設定封裝在內文本。

## 插入書籤

「使用 [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) 和 [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) 來建立一個書籤，分別標記其開始和結束。 「不要忘了將相同的書簽名稱傳給兩個方法。」 「文档中的书签可以重叠并且跨越任何範圍。」 「格式不良的書籤或名稱重複的書籤會被忽略，當文件儲存時。」

{{% alert color="primary" %}}

「書籤中的所有空白位被下劃線取代了。」 「此限制來自於 Microsoft Word 格式，因為如 DOCX 或 DOC 等Word 格式的書籤不能有空格。」 「不過，PDF 可以容許這樣的書籤。 「所以現在，如果你需要在PDF或XPS大綱中使用書签，你可以與白空使用它們。」

{{% /alert %}}

以下示例程式碼範例說明如何建立新的書籤：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## 獲取書籤

有時需要取得書籤集合，才能迭代書籤或其它目的。 使用由任何文件節點暴露的 [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) 屬性，其返回一個 [Range](https://reference.aspose.com/words/net/aspose.words/range/) 物件來表示本節點內包含在文件中的部分。 使用此物件來檢索一個 [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/)，然後利用集合索引器來取得特定書籤。

接下來的程式碼範例說明如何從書签收藏中取得書籤：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx) 下載本範例的樣本檔案。」

{{% /alert %}}


接下來這個程式碼範例示範了如何取得或設定書籤名稱與文字：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

「您可以從[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx)下載此範例的樣本檔案。」

{{% /alert %}}

「以下程式碼範例示意如何在資料表上標記書签：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

「如果你將書籤的名稱改為該文件中已有之名稱，不會產生錯誤，當你儲存文件時只會儲存第一個書籤。」

請注意，這個文件中的部分書籤是分配給表單欄位。 移動到這樣的書籤並插入文字會將文字插入到表單字段的程式碼中。 「雖然這不會使表單無效，但插入的文字會因變成場碼的一部分而看不到。」

接下來的程式碼示例顯示如何存取書簽表格中的欄位：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## 移轉到書籤

如果您需要將豐富內容（而非單純的文字）插入書籤中，您應該使用 [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) 來移動光標到該書籤，然後使用 [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 方法與屬性來插入內容。

## 顯示藏起書籤內容

「書籤(*包括被標記的內容*)可以封裝在 `IF` 欄中的 True 部分，並使用 Aspose.Words。」 「它可以設定在表達式中 (*運算子左邊*), 其中 `IF` 欄位包含表達式中的嵌入式合併欄位, 依合併欄位的值, `IF` 欄位會顯示或隱藏 Word 文檔中的書籤內容。」

以下範例示範如何顯示/隱藏書籤：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
