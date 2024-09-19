---
title: 在 C# 中與段落一起工作
second_title: 「Aspose.Words for .NET」
articleTitle: 「與段落合作」
linktitle: 「與段落合作」
description: "在 C# 文檔中插入一段落。 在 C# 中設定段落樣式。 「與段落風格分隔符 C# 一起工作。」 使用C#操作段落節點。"
type: docs
weight: 210
url: /zh-hant/net/working-with-paragraphs/
---

段落是由組成一個邏輯ブロック並結束於特殊字符的文字組成的，這個特殊字符是 *段落換行*。 「在 Aspose.Words 中，段落用 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 類別來表示。」

## 插入一段

要將新段落插入到文件中，事實上你需要將段落斷字元插入到它。[DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) 不僅將文本串插入到文件中，還會加入一段斷字元。

「當前的字體格式是透過 [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) 属性所指定，而當前的段落格式則是透過 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) 属性來決定的。」 在下面的部分，我們將更詳細地說明段落格式化。

接下來這個程式碼範例展示了如何將一段落插入到文件中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## 格式段落

「目前的段落格式化是透過 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) 物件來表示的，而這個物件是由 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) 屬性所回傳出來的。」 「此物件封裝了 Microsoft Word 中可用的各種段落格式設定屬性。」 您可以輕鬆地將段落格式重置為預設格式--「普通」風格、左對齊、無缩进、无间距、无边框、无阴影，只需呼叫 [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/) 即可。

以下範例程式碼示範如何設定段落格式：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## 適用段落風格

有些格式物件，如 **Font** 或 **ParagraphFormat** 支持樣式。 「一個內建或使用者定義的樣式由 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 物件表示，而這個物件包含合適的樣式屬性，例如名稱、基底樣式、字體、樣式段落格式等。」

「此外，**Style**物件公開 [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) 屬性，其會返回由 [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) 列舉值所表示的無地區設定風格識別碼。」 事實上，內建樣式在 Microsoft Word 中的名稱是針對不同語言進行本地化的。 透過样式标识，你可以不管文件語言，找到正确的样式。 列舉值對應於內置的 Microsoft Word 樣式，例如 *Normal*、* Heading 1* 、 *Heading 2* 等。 所有由使用者定義的風格都設定於 **StyleIdentifier.User** 列舉值。

以下範例顯示如何應用段落格式：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### 將風格分隔符插入以使用不同的段落風格

在 Microsoft Word 中可以使用鍵盤快捷方式 Ctrl+Alt+Enter 在段落結尾添加書式分隔符。 「這個功能讓你可以在一個邏輯的印刷段落中用兩種不同的段落式。 「如果你想要某個特定標題的開始部分在目錄中出現，但你不想讓整個標題都出現在目錄中，那你可以使用這個功能。」

接下來的程式碼範例示範如何插入樣式分隔符，以適應不同的段落樣式：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### 識別段落風格分隔符

「Aspose.Words 在 [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) 公有屬性上暴露 `Paragraph` 類別，以辨識使用書式分隔符的段落，如下例所示：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## 在段落上應用邊框和陰影

「Aspose.Words 中的邊框由 [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) 類別表示 – 這是一組 [Border](https://reference.aspose.com/words/net/aspose.words/border/) 物件，可以使用索引或邊框類型來存取。」 「邊界類型由 [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) 列舉來表示。」 有些枚舉值適用於多個或只有一個文檔元素。 「例如，**BorderType.Bottom**適用於段落或資料表細胞，而**BorderType.DiagonalDown**僅指定資料表細胞中的對角線邊界。」

「邊界集」和「每個獨立的邊界」都有類似的屬性，例如顏色、線條樣式、線條寬度、從文字的距離以及可選的陰影。 「他們被同名的屬性所代表。」 您可以透過結合屬性值來取得不同邊框類型。 「此外，**BorderCollection** 和 **Border** 物件允許您透過呼叫 [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) 方法將這些值重設為預設值。」

{{% alert color="primary" %}}

請注意，當邊界屬性重置為預設值時，邊界變不可見。

{{% /alert %}}

Aspose.Words 也有 [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) 類別，它包含文檔元素的陰影屬性。 您可以透過 [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) 列舉值設定所需陰影紋理和應用在元素背景與前景的顏色。 **TextureIndex** 也讓您能將不同圖案應用在 **Shading** 物件上。 「例如，若要設定文件元素的背景顏色，請使用 **TextureIndex.TextureSolid** 的值並設定前景遮蔽顏色。」

「接下來的程式碼範例展示了如何將邊框和陰影應用到段落上：」

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## 「計數段落行數」

如果您想要在任何 Word 文檔中計數段落中的行數，以下範例程式碼可被利用：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}