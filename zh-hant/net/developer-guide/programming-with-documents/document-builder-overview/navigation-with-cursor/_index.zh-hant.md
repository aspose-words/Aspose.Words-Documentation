---
title: 在C#中使用游標進行導航
second_title: Aspose.Words for .NET
articleTitle: 以光標導航
linktitle: 以光標導航
description: "透過 C# 在不同的節點之間导航，例如段落、書籤或特定字元。"
type: docs
weight: 10
url: /zh-hant/net/navigation-with-cursor/
---

當你在處理一篇文件時，即使那是一篇簡短或長篇的文件，你仍要透過你的文件來導航。 透過虛擬光標進行導航代表了能夠在文件的不同節點之間進行導航的能力。

在短文文件中，在文件中移動非常簡單，因為您可以透過鍵盤的方向鍵或點擊滑鼠來定位插入點。 但當你有了許多頁面的大型文件時，這些基本技巧將不足夠。

這篇文章說明如何在文件中移動和用虛擬光標導航到它的不同部分。

## 偵測当前光标位置

在開始透過您的文件導航之前，您需要取得目前所選的節點。 您可以透過使用 [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) 屬性來取得選取的節點中光標的確切位置。 此外，除了取得當前節點，您也可以透過 [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) 和 [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) 屬性取得目前所選的段落或目前所選的部分。

透過 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 執行的任何插入動作將會插入到 [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) 之前。 當當前段落是空的或光標剛好定位在段落的末尾時，**CurrentNode** 返回空值。

## 在文書中使用的導航方法

當你在編輯文字時，了解如何導航你的文件以及如何正確地移動在其中非常重要。Aspose.Words 允許您在文件中移動並導航到不同的部分和部分--這與 Microsoft Word 的導航標籤的功能相似，讓您可以在 Word 文檔中不需 scroll 即可前往特定頁面或標題。

主要方法是，能夠將光標位置移動到您的文件中特定的節點上，您可以透過使用 [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) 方法來達成。

接下來這個程式碼範例示範了如何將 **DocumentBuilder** 移動到文件的不同節點：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

但除了基本的 **MoveTo** 方法之外，還有更具體的方法。

### 導航至文書開始或結束

您可以透過 [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) 和 [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) 的方法，前往您的文件開頭或結尾。

下列程式碼範例示範如何將光標位置移動到文件的開頭或結尾：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### 透過書签导航

您可以標記您想要找的區域，再輕鬆地移動到它。 您可以在文件中插入任意數量的書籤，然後透過識別具獨特名稱的書籤來穿梭閱讀。 您可以透過使用 [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) 方法來移動至一項書籤。

以下範例說明如何將光標位置移動到書籤：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### 導航到表格細胞

你可以透過 [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) 方法移動到一張表格单元格裡。 此方法將使您能夠將光標移動到特定表格中的任何單元格。 此外，您可以在 **MoveToCell** 方法中指定索引，將光標移動到任何位置或指定儲存格中的特定字符。

接下來的程式碼範例說明如何將光標位置移到指定的表格單元格：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### 導航至一個欄位

您可透過 [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) 方法在文件中移動到特定欄位。 此外，你也可以透過使用 [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) 方法移動到特定的併合字段。

接下來的程式碼範例示範了如何移動 दस्तावेज़ निर्माण器光標到特定欄位：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### 導航至標頭或页脚

你可以透過 [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) 方法移轉到標題或腳注的開頭。

接下來的程式碼範例示範了如何將文件建構器游標移動至文件標題或腳欄：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### 導航至一段或段落

您可以透過 [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) 或 [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) 方法移動到特定部分或段落。 此外，您可以在 **MoveToParagraph** 方法中指定索引以將光標移到段落中的任何位置或特定字符。

接下來的程式碼範例說明如何移動到文件的特定節和特定段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
