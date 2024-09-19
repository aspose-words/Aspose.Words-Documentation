---
title: C# 中 문서 노드의 논리적 레벨
second_title: 「Aspose.Words for .NET」
articleTitle: 文檔中節點的邏輯層次
linktitle: 文檔中節點的邏輯層次
type: docs
description: "「在 Aspose.Words for .NET 文檔中提及使用 C# 的邏輯節點層次：阻擋、內聯或列級。」 节点层次用于描述文档树中节点通常出现的地点。"
weight: 10
url: /zh-hant/net/logical-levels-of-nodes-in-a-document/
---

本文件有時稱一組節點類別屬於一個「層級」的節點，如「塊層級」、「內聯層級」（亦即「內聯節點」）或「行層級」節點。 這些在文件中的層級純粹是邏輯上區別而沒有明示繼承或其他 Aspose.Words DOM 表示。 節點層級用於描述節點在文檔樹中的位置。

在上一篇文章中，我們已經談到了節點和節點之間的關係，以及不所有節點都允許成為其他節點的子節點的事實。 「舉例來說，Cell 只能是 Row 子元素，而 Row 又只能是 Table 子元素，如此類推。」 這些關係也適用於將節點分層在文件中的邏輯劃分。

「以下部分描述了 Aspose.Words 中節點的邏輯層級以及每個層級所屬於的類別。」

## 文檔與章節的邏輯層次

「Word 文檔由一個或多個分節組成，由 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 類別所表示，並在分節點中分隔。」 「一區可以定義自己的頁面大小、邊距、向き、文字列數以及標題與页脚。」

「[Document](https://reference.aspose.com/words/net/aspose.words/document/) 和 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 階節點的結構如圖所示。」

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

「一節包含主要文字，以及第一頁、偶數頁和奇數頁的標題和页脚。」 這些不同之「流」的文字稱為 *stories*。

「在第 Aspose.Words 個節點中，**Section** 節點包含 [Body](https://reference.aspose.com/words/net/aspose.words/body/) 和 [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) 故事節點。 「**Body**物件儲存主要文字。」 「 **HeaderFooter** 物件儲存每個標頭和腳欄的文字。 「任何故事的文字由段落和資料表構成，分別由 Block-level 中的 **Paragraph** 和 **Table** 物件表示。」

「此外，每個 Word 文檔可以包含一個詞典，由 [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) 節點在 Aspose.Words 中表示。」 「 một tài liệu từ điển có [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) và [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) mục nhập.」

「**GlossaryDocument**包含[BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/)個代表不同類型詞典記錄的節點。」 「每個 **BuildingBlock** 包含可以插入、移除，或複製進文件的章節。」

## 區塊邏輯層

區塊式節點代表容器用於內容和內容控制，可以在文件樹中的子節點中發生在以下節點：

"- 身體"
-標頭
"- Footer"
- 腳注
「- 留言」
- 形狀
- GroupShape
- 細胞
- StructuredDocumentTag

块级节点由以下类表示：

"- [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) 和 [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/)，這些是最重要的 bloque-level node"
"- 書籤，它同時發生在塊和內線層級"
- [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/)，表示自定義的標記語言，且可以包含內容和內容控制項。

「下列圖示為區塊級元素。」

<img src="block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## 在行內邏輯層級

內聯節點表示文檔的實際內容，並可以包含在以下容器中：

"-段落–最常見的容器"
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
「- StructuredDocumentTag」

「內嵌層級元素是由以下類別所表示的：」

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) – 不同的文字格式化
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) 和 [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) 代表書籤
「- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/)、[CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)、[Comment](https://reference.aspose.com/words/net/aspose.words/comment/) 和 [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) 代表的是注釈。」
- [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) 和 [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) 代表欄位字符，以及 [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) 代表Word欄位
"- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) 代表文档中的特殊字符"
「- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 和 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) 代表圖形、線條、圖片等。」
"- SmartTag 和 StructuredDocumentTag 代表自訂的標記"

以下圖表顯示了內聯節點結構。

<img src="inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

「Microsoft Word 中的圖形包含 Office Art AutoShape、文字方塊、圖像、OLE 物件和 ActiveX 控制項，這些都使用 `Shape` 類別來表示。」 「有些形狀也可以包含文字，所以 Shape 節點在 Aspose.Words 裡可以包含區塊級節點。」

「形狀可以透過 GroupShape 個節點進行內嵌。」

{{% /alert %}}

{{% alert color="primary" %}}

「腳注和筆記可以包含文字，因此 Footnote 和 Comment 節點在 Aspose.Words 中可以包含內塊級節點。」

{{% /alert %}}

## 表格、行和單元格節點等級

這個表格由行和列的節點組成。 表格元素由以下類別表示：

「- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 代表一列表格」
「- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/)表示一個表格細胞」
- StructuredDocumentTag 代表自訂標記

「以下圖示為Table、Row和Cell的節點結構。」

<img src="table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>
