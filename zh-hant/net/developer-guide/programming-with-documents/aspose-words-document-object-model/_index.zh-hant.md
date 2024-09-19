---
title: Aspose.Words Document Object Model (DOM) 在 C# 中
second_title: 「Aspose.Words for .NET」
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "「Document Object Model (DOM)」是Word文件的內存表示。 透過 C# 讀取、操作並修改 Word 文檔的內容與格式。"
weight: 10
url: /zh-hant/net/aspose-words-document-object-model/
---

「Aspose.Words Document Object Model (DOM)」是 Word 文檔的內存表示。 「Aspose.Words DOM 讓您可以程式設計地閱讀、操控並修改 Word 文檔的內容與格式。」

「本節描述Aspose.Words和DOM的主要類別及其關係。」 透過使用 Aspose.Words DOM 類別，您可以取得對文件元素及格式的程式化存取。

## 建立 {#create-a-document-objects-tree} `Document` 物件樹

「當一篇文件被讀進 Aspose.Words DOM 中時，會建立一個物件樹，而該文件的不同類別元素也會各自有自己的 DOM 樹形體，具有各樣的屬性。」

### 建立文檔節點樹 {#build-document-nodes-tree}

「當 Aspose.Words 將 Word 文檔載入記憶體時，它會建立不同類型的物件來代表各種文檔元素。」 每個文本、段落、表格或節的運行都是一個節點，而整個文件也是節點。 Aspose.Words定義了每個文件節點類型的一類。

「Aspose.Words」中的ドキュメントツリー跟隨合成設計模式。

"-所有節點類別最終都派生自 [Node](https://reference.aspose.com/words/net/aspose.words/node/) 類別，它是 Aspose.Words 的基底類別 Document Object Model。"
「- 可包含其他節點的節點，例如**Section**或**Paragraph**，從[CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/)類別中派生，並最終從**Node**類別中派生。」

下方提供的圖示顯示了節點類之間的繼承關係，類別為：Aspose.Words Document Object Model (DOM). 「抽象類別的名稱以斜體字樣表示。」

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

「Aspose.Words DOM 」也包含非節點類別，例如「[Style](https://reference.aspose.com/words/net/aspose.words/style/)」或「[Font](https://reference.aspose.com/words/net/aspose.words/font/)」，這些類別用於在文件中自訂外观和樣式。 這些課程沒有被顯示在這張圖中，因為它們不是從 `Node` 類別继承的。

{{% /alert %}}

我們來看一個例子。 接下來這張圖是顯示一種 Microsoft Word 文檔，上面有不同類型的內容。

<img src="document-example.png" alt="document-example-aspose-words" style="width:700px"/>

在讀取上述文件進入 Aspose.Words DOM 時，物件樹會如下圖所示地創建出來。

<img src="document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

「[Document](https://reference.aspose.com/words/net/aspose.words/document/)、[Section](https://reference.aspose.com/words/net/aspose.words/section/)、[Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)、[Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)、[Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)、[Run](https://reference.aspose.com/words/net/aspose.words/run/)，及圖中其他所有省略符號都是 Aspose.Words 個物件，這些物件代表 Word 文檔的元件。」

### 取得一隻 `Node` 型 {#get-a-node-type}

「雖然 [Node](https://reference.aspose.com/words/net/aspose.words/node/) 類別足以讓不同節點彼此區分，但是 Aspose.Words 提供了 [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) 列舉以簡化一些 API 任務，例如選擇特定類別的節點。」

「每个节点的类型可以通过 [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) 属性来获取。」 「此屬性返回一 **NodeType** 列舉值。」 例如，由 **Paragraph** 類別表示的段落節點會回傳 **NodeType**.**Paragraph** ，而由 **Table** 類別表示的表格節點則會回傳 **NodeType**.**Table** 。

「以下示例說明如何透過 **NodeType** 列舉來取得節點類型：」

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Document Tree 导航 {#document-tree-navigation}

「Aspose.Words 代表文件作為節點樹，這允許您在節點之間導航。」 「本節描述如何在 Aspose.Words 中探索和導航 문서樹。」

當你在文件 탐색器中打開早先所呈現的範例文件時，節點樹會出現和 Aspose.Words 中的表示完全相同。

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

「您可以在 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) 中學習示範專案『文件探索器』。」

{{% /alert %}}

### 「文件節點關係 {#document-nodes-relationships}」

「樹狀圖中的節點之間有關係：」

「-一個包含另一個節點的節點是一個 *parent.*」
「- 包含在父節點中的節點是 *child.* 子節點與相同的父節點 *sibling* 節點。」
「- *root*節點總是會是 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 節點。」

「可包含其他節點的節點源自 [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) 類別，而所有節點最終源自 [Node](https://reference.aspose.com/words/net/aspose.words/node/) 類別。」 「這兩個基本類別提供了用於樹結構導向與修改的常見方法和屬性。」

「接下來的 UML 物件圖示出此範例文件中幾個節點及其透過父、子及兄弟屬性的相互關係。」

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### 「文書是節點所有者」

「一個節點總是屬於某一個特定的文件，即使它剛被建立或從樹上移除，因為具有重要性的全文件結構（例如樣式和清單）都儲存在 **Document** 節點中。」 例如，不可能存在沒有 **Paragraph** 的 **Document** ，因為每個段落都有分配的樣式，而這些樣式被定義為文件的全球樣式。 「這個規則是在建立新節點時使用的。」 直接將新的 **Paragraph** 加入到 DOM 中需要傳送一個物件給建構子。

{{% alert color="primary" %}}

「[Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/)」屬性會回傳該節點所屬於的文件。

{{% /alert %}}

「當以 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 建立新段落時，建構器總是透過 [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) 屬性將其連結到 **Document** 類別。」

程式碼範例示出了當建立任何節點時，必須定義將擁有該節點的文件：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### 親节点

「每個節點都有個由 [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) 屬性指定的父節點。」 在以下情況下，節點沒有父節點，也就是 **ParentNode** 是空值：

- 這節點剛好被建立，還沒有被加入到樹中。
「- 該節點已從樹中移除。」
「- 這是一個根**Document**節，它總是有一個null的父節。」

「您可以透過呼叫 [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) 方法從父節點中移除一個節點。以下範例示意了如何存取父節點：」

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### 「子節點」

存取子節點的最有效方式是透過 [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) 的 [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) 和 [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) 屬性，它們分別會回傳第一個和最後一個的節點。 如果沒有子節點，這些屬性會返回 *null*。

「**CompositeNode** 也提供 [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) 方法，讓您可以索引或列舉訪問子節點。」 **ChildNodes**屬性是一個 canlı koleksiyonu nodları，這意味著每當文書被改變、例如 nodlar 移除或添加時，**ChildNodes** koleksiyonu otomatik olarak更新。

如果一個節點沒有子節點，則 **ChildNodes** 屬性會返回空集合。 您可以透過 **CompositeNode** 的 [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) 屬性來檢查是否包含任何子節點。

「接下來的程式碼範例示範了如何透過由 `ChildNodes` 集合提供的列舉器，枚數 `CompositeNode` 的直接子節點：」

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

接下來的程式碼範例示範如何使用索引存取枚數 `CompositeNode` 的即時子節點：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### 子節點

「你可以透過分別使用 [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) 和 [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) 屬性，取得某個節點前或後的節點。」 「如果一個節點是它父節點的最後子節點，那這個 **NextSibling** 屬性就是 *null*。」 「不過，若該節點是其父節點的第一個孩子，則 **PreviousSibling** 屬性為 *null*。」

「接下來的程式碼範例示範了如何有效地造訪一個複合節點的所有直接及間接子節點：」

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### 「對子節點和父節點的打開存取」 {#typed-access-to-child-and-parent-nodes}

「到目前為止，我們已討論回傳基底類型的屬性-- **Node** 或 **CompositeNode**。」 「但在有時你可能需要將值投射到特定的節點類別，例如 **Run** 或 **Paragraph**。」 就是說，你無法在與複合體Aspose.WordsDOM一起工作時完全避免投射。

為了減少型式轉換的需要，大多數 Aspose.Words 類別提供屬性和集合以提供強型別存取。 「打字存取有三个基本模式。」

- 父節點會公開 **FirstXXX** 和 **LastXXX** 屬性。 「例如，**Document**具有 [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) 和 [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) 的屬性。」 同樣的，**Table**有性質如[FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/)、[LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/)及更多。
- 父節點公開一個類型集合的子節點，例如 [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/)、[Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) 和其他。
「- 子節點提供了對父節點的定型存取，例如 [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/)、[Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/) 和其他。」

「類別屬性僅提供方便的捷徑，有時比從 [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) 和 [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) 繼承的一般屬性更易訪問。」

以下代碼示例演示了如何使用型別化屬性來存取 dokumen樹中的節點：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
