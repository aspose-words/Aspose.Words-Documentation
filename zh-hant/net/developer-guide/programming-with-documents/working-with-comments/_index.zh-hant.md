---
title: 在 C# 中工作於評論
second_title: Aspose.Words for .NET
articleTitle: 與註解合作
linktitle: 與註解合作
description: "使用C#處理評論。"
type: docs
weight: 260
url: /zh-hant/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**試試線上**

您可以用我們的 [Free online remove annotations](https://products.aspose.app/words/annotation) 試用這個功能。

{{% /alert %}}

Aspose.Words讓使用者能與評論一起工作–在 Aspose.Words 中的評論是由 [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) 類別所代表。 也使用 [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) 和 [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) 類別來指定應該與評論相關聯的文本區域。

## 加入一個評論

Aspose.Words 透過多種方式讓你可以增加留言：

1. 使用 [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) 類別
2。 使用 [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) 和 [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) 類別

接下來是使用 **Comment** 類別向段落添加註釋的範例程式碼。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

以下程式碼示例範示如何透過文字區域與 **CommentRangeStart** 和 **CommentRangeEnd** 類別來為段落加註：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## 提取或移除評論

在 Word 文檔中使用註釋（不論是跟進更改）是檢視文件時常見的做法，尤其是在有多個審查者的情況下。 有些情況，你可能只需要一份文件的評論。 你可能想要產生一份審核結果的清單，或是也許你已經從文件中收集所有有用的資訊，而只想移除這些不需要的評論。 您可能想查看或刪除特定審稿人的評論。

在這個範例中，我們將看一些簡單的方法來從文件中的評論收集資訊，以及從文件中移除評論。 特別是我們將涵蓋如何

從文件中提取所有評論或僅由特定作者撰寫的評論
從文件中移除所有註釋或只從特定作者中移除

### 如何提取或移除留言

這個範例中的程式碼其實很簡單，而且所有的方法都基於相同的方法。 Word 文檔中的留言會以 [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) 物件在 Aspose.Words 文檔物件模型中表示。 在文件中收集所有評論，請使用第一參數設定為 [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/) 的 [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) 方法。 確保 **GetChildNodes** 方法的第二個參數是設定為 true：這會強制 **GetChildNodes** 從所有子節點中遞歸選擇，而不是只收集直接子節點。

為了說明如何從文件中提取和移除評論，我們將經過以下步驟：

1. 使用 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 類別打開一個 Word 文檔
2。 從文件中獲取所有評論，並將其放入一個集合中。
3. 若要提取留言：
   1. 使用 foreach 運算子通過集合。
   2. 從所有留言中提取並列出作者名稱、日期和時間及文字。
   3. 從特定作者（此處為ks）寫的留言中提取並列出作者名稱、日期與時間和文本
4. 若要移除評論：
   1. 透過 for 運算子從該集合中回溯
   2. 移除留言
5. 儲存更改

### 如何提取所有評論

**GetChildNodes**的方法非常有用，你每次需要取得任何類型之檔案節點清單時都可以使用它。 這個結果的集合不會產生即時負擔，因為當你列舉或訪問它中的項目時，節點才被選入這集合。

以下程式碼範例示範了如何從文件中提取所有留言的作者名稱、日期和時間以及文字：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### 如何提取特定作者的評論

一旦你將 **Comment** 個節點選入集合中，你只需提取你需要的資訊。 在此樣本中，作者初始字母、日期、時間和原始的文字評論結合成一個串；你可以選擇將它儲存於其他方式。

從特定作者中提取評論的過載方法幾乎是相同的，它只是在加入資訊到陣列之前檢查作者的名字。

接下來這個程式碼範例示範了如何從指定的作者中提取作者名稱、日期和時間，以及評論的文字：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### 如何移除評論

如果你要移除所有的評論，就不需要逐一地移動這個集合並刪除評論。 您可以透過在評論集合上調用 [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) 方法來移除它們。

以下範例說明如何從文件中移除所有註釋：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

當你需要選擇性地移除評論時，這個過程變得類似於我們用來提取評論的程式碼。

接下來的程式碼示例說明了如何移除指定作者留下的評論：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

這裡要特別強調的點是使用for運算子。 和簡單的提取不一樣，在這裡你想刪除一個評論。 適合的技巧是從最後一個Comment到第一個Comment反向迭代集合。 如果你從最後開始，往前走，每個前一個項目的索引都不會改變，你就能回到集合的第一個項目。

以下程式碼範例示出了從文字中擷取和移除評論的方法：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx) 下載此範例的示例檔案。

{{% /alert %}}

### 如何從 CommentRangeStart 和 CommentRangeEnd 之間移除評論

使用 Aspose.Words 您也可以從 **CommentRangeStart** 和 **CommentRangeEnd** 節點之間移除註釋。

以下範例示範了如何從文字中移除 **CommentRangeStart** 和 **CommentRangeEnd** 之間的文字：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## 添加或刪除評論回應

[AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/)方法在此留言中新增回應。 請注意，由於現有 Microsoft Office 限制，文件中只允許 1 層回覆。 如果將此方法叫在現有的回覆評論上，就會出現類別為 *InvalidOperationException* 的異常狀況。

您可以使用 [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) 方法從此評論中移除指定的回覆。

接下來的程式碼示例顯示了如何在評論中新增回覆並移除此評論的回覆：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## 閱讀評論的回覆

[Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/)屬性會傳回指定的評論中立即子級的 [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) 物件集合。

接下來的程式碼範例示範了如何在評論的回應中進行迭代並解決它們：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
