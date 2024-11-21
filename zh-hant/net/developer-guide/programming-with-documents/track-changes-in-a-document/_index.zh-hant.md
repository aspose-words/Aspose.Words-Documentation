---
title: 在C#文書中追蹤更改
second_title:  Aspose.Words for .NET
articleTitle: 在文件中追蹤更改
linktitle: 在文件中追蹤更改
description: "使用 C# 追蹤您或他人對內容和格式所做的更改。 在文件中存取個別的編輯版本，並對它們套用各種特性。"
type: docs
weight: 270
url: /zh-hant/net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

追蹤更改功能，也稱為審核，可讓您追蹤由您或其他使用者所做的內容或格式的更改。 此追蹤更改功能與 Aspose.Words 支援在 Microsoft Word 中追蹤更改。 透過此功能，您可以在您的文件中存取個別的修订版本並將其套用不同的屬性。

當您啟用追蹤更改功能時，文件中插入、刪除或修改的元素都會以資訊來標記，顯示是誰在何時進行更改。 包含關於何種更改的信息的物件，被稱為『跟蹤更改』。 舉例來說，假如你想檢視一份文件，並進行重要的修改--這可能代表你必須修改它的版本。 此外，您可能需要插入評論來討論部分變更。 那就是追蹤文件中發生的改變的地方。

此篇文章說明如何管理和追蹤許多審稿者對同一份文件所造成的變更，以及追蹤變更的屬性。

{{% alert color="primary" %}}

請注意，Aspose.Words 和 Microsoft Word 中的留言功能可以與追蹤更改有關聯。 不過，請記住評論完全獨立於追蹤更改。

{{% /alert %}}

## 什麼是修訂？

在開始討論修订之前，讓我們先解釋修订的含義。 A[revision](https://reference.aspose.com/words/net/aspose.words/revision/)是發生在文件中一個節點上的變更，revision group，由[RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/)類別所代表，是一個發生在文件中多個節點上的連續改動。 基本上，修訂是追蹤改變的工具。

在追蹤更改功能中使用版本控制，並在比較文件功能中，的版本控制會作為比較結果出現。 所以，追蹤更改功能中的修訂顯示由誰來修改和什麼被修改。

{{% alert color="primary" %}}

請注意，Microsoft Word 不允許您查看個別的修订版本，它只允許您以單個實體的方式查看逐次性的修訂版本。 但Aspose.Words用**RevisionGroup**類解決了這個限制。

{{% /alert %}}

Aspose.Words 支持不同的版本類型，例如在 Microsoft Word 中，如插入、刪除、格式變更、風格定義變更和移動。 所有改訂類型都在[RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/)枚舉中表示。

{{% alert color="primary" %}}

請注意，Revision 的結果與 Microsoft Word 相似，但 Aspose.Words 在追蹤更改時不檢測格式。

{{% /alert %}}

## 啟動及停止追蹤更改

編輯一篇文件通常直到你開始追蹤它，才會算是修改。Aspose.Words 能讓你透過簡單的步驟自動追蹤文件中的所有變更。 您可以透過使用 [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/) 方法輕鬆開始追蹤更改的流程。 如果您需要停止追蹤變更，以便任何未來的編輯不會被視為修訂版本，則需要使用 [StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/) 方法。

{{% alert color="primary" %}}

請注意， `StartTrackingRevisions` 方法不會改變 [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) 的狀態，也不會使用它的值來進行修訂追蹤。 此外，如果一個節點從追蹤的文件中的一處移到另一處，就會產生移動版本，包括從和到範圍。

{{% /alert %}}

在您的文件中追踪更改过程的最后，您将能够甚至接受所有修订或拒绝它们以使文档恢复到其原始形式。 這能透過使用或 [AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) 或 [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/) 方法來達成。 此外，您可以使用 [Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) 或 [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/) 方法分別接受或拒絕每個修訂。

從您啟動流程的當下時刻到您停止流程的當下時刻，所有變更都會追蹤一迭代。 不同迭代間的連線方式如下：你完成追蹤過程，接著進行一些改變，並且再次開始追蹤變化。 在這個情境下，你未接受或拒絕的所有變化將再度顯示。

{{% alert color="primary" %}}

請注意`AcceptAllRevisions`這個方法與 Microsoft Word 中的接受所有更改類似。

{{% /alert %}}

接下來的程式碼範例示範如何處理追蹤更改：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

下面的程式碼範例示範了當結點在追蹤中的文件中移動時，如何產生修訂版本：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## 管理與儲存變更作為修訂

透過之前的追蹤更改功能，您可以了解在您的文件中做的哪些更改以及是誰做的這些更改。 在 [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) 功能中，你強制任何在你的文件內的變化都儲存在修訂版本。

Aspose.Words 讓您透過使用 [HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/) 的屬性來檢查文件是否有任何更動。 如果你不需要透過 StartTrackRevisions 和 StopTrackRevisions 方法自動追蹤你的文件中的更改，那你就可以利用 `TrackRevisions` 屬性來檢查是否在 Microsoft Word 中編輯文件時追蹤了更改並儲存在版本中。

`TrackRevisions` 功能會做更改，而不是真正的 DOM 改變。 但這些重寫卻是分開的。 例如，如果你刪除任何段落，Aspose.Words 將它作為修訂，標記為刪除，而不是刪除它。

此外，Aspose.Words 讓您可透過 [IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/)、[IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/)、[IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/)、[IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/) 和 [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/) 屬性，檢查物件是否已插入、刪除或格式化。

{{% alert color="primary" %}}

請注意，這些修訂內容與 `TrackRevisions` 屬性之間沒有任何關聯。 此外，您無論是否使用追蹤變更功能，都可以接受/拒絕修訂。

{{% /alert %}}

以下範例展示了如何在不同的版本中應用不同的屬性：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
