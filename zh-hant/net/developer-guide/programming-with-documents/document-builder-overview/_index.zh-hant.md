---
title: C# 中的 Document Builder 概述
second_title: Aspose.Words 對於 .NET
articleTitle: 文件建構器概覽
linktitle: 文件建構器概覽
type: docs
description: "DocumentBuilder 讓您使用 C# 从头开始构建动态文档或向现有文档添加新元素。 DocumentBuilder 提供方法在 .NET 中插入文字、驗選方塊、表格、圖片和其他內容元素。"
weight: 30
url: /zh-hant/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 是功能強大的一類，它與 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 聯繫在一起，使你能夠從頭開始建立動態文件或向現有的文件中加入新元素。

**DocumentBuilder** 提供插入文字、勾選方塊、ole 物件、段落、清單、表、圖片和其他內容元素的方法。 它允許您指定字體、段落或節的格式，並執行其他操作。

## 文書構建器或 Aspose.Words DOM

**DocumentBuilder** доповнює доступні класи та методи у Aspose.Words Document Object Model (DOM), щоб спростити найпоширеніші завдання створення документів". 也就是說，你可以透過 Aspose.Words DOM 來創建和修改文件的內容，這需要對樹狀結構有很好的理解，並且使用DocumentBuilder。 `DocumentBuilder` 是可讓您快速、輕鬆地將內容和格式插入的複雜結構**Document** 的外殼。

與 **DocumentBuilder** 一起使用的操作也可以在直接使用 Aspose.Words DOM 的類時來完成。 不過，直接使用 Aspose.Words DOM 類通常需要更多程式碼行數於 **DocumentBuilder**。

## 導航

文書導航是以虛擬光標的概念為基礎，您可以用各種 **DocumentBuilder.MoveToXXX** 的方法如 [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) 和 [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) 移動到文書中不同的位置。 這個虛擬光標表示在呼叫方法 [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/)、[Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index)、[InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) 和其他時，文字將插入的位置。 看看下面文章用光標進行導航來了解虛擬光標更多。

以下範例顯示如何前往書簽：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## 建構與修改

Aspose.Words API 提供許多負責格式化文件中不同元素的類別。 每個類別封裝與特定文書元素相關的格式化屬性，如文字、段落、部份章節等。 例如，[Font](https://reference.aspose.com/words/net/aspose.words/font/) 類別代表字元格式化屬性，[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) 類別代表段落格式化屬性，等等。 這些類別的物件是由相應的 **DocumentBuilder** 屬性返回，這些屬性具有與類別相同的名稱。 因此，你可以存取它們並設定所需的格式化方式，當文件建構時。

您也可以透過 `Write` 方法或任何的 **DocumentBuilder.InsertXXX** 方法，例如 [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/)、[InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) 等類似方法，在光標位置插入文字、檢查欄位、 OLE 物件、圖像、書籤、表單欄位等其他文件元素。

我們來看看如何透過 **DocumentBuilder** 來製作簡單的文件。

### 透過 DocumentBuilder 创建文件

開頭時，你需要建立一個 **DocumentBuilder** 並將其與 **Document** 物件關聯。 你透過呼叫其建構函式來建立 **DocumentBuilder** 的新實例並將其傳給 **Document** 物件以進行附加。

要插入文字，請將您想要插入的文字串傳遞給 **Write** 方法。

接下來的範例會教你如何透過文書建立器來製作簡單的文件。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### 指定文書格式

[Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/)屬性定義了文字格式。 這個物件包含不同字型屬性（字型名稱、字型大小、顏色等）。 某些重要的字型屬性也由 **DocumentBuilder** 屬性表示，讓您能直接存取它們。 這些是 [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/)、[Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) 和 [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) 的 bool 屬性。

接下來的程式碼範例示範了如何透過 **DocumentBuilder** 插入格式化文字。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/)指定在文件中從當前位置開始插入的所有文字所將要使用的字體格式。
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)指定當前段落和所有要插入的段落的格式。
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/)指定當前節選項與全部節選項的頁面和節選項屬性。
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) 和 [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) 指定會套用到文件中自當位置起的表格單元格和行之格式屬性。

在這種情況下，當前是指光標所在的欄位、段落、節或 سلول。

{{% /alert %}}

{{% alert color="primary" %}}

請注意，在您進入不同的位置時，**Font**、**ParagraphFormat** 和 **PageSetup** 的屬性會更新來反映此位置的格式化屬性。

{{% /alert %}}
