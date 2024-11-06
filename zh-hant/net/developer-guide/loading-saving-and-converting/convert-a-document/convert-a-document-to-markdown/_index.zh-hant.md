---
title: 將文書轉換為 C# 中的 Markdown
second_title:  Aspose.Words for .NET
articleTitle: 將一份文件轉換為 Markdown
linktitle: 將一份文件轉換為 Markdown
type: docs
description: "以 C# 將任何支援的載入格式轉換為 Markdown 並反向。"
keywords: how to convert a document to markdown c#
weight: 40
url: /zh-hant/net/convert-a-document-to-markdown/
---

Markdown是一種用來標記文本並將其轉換為 HTML、PDF、DOCX 等格式的流行格式。 許多開發人員選擇此格式來撰寫文件，準備在部落格上發表的文章、描述專案等等。

Markdown 之所以很受歡迎是因為它很容易與此格式合作，而且可以將它簡單地轉換為其他格式。 因此，Aspose.Words提供將文件從[any supported load format](https://reference.aspose.com/words/net/aspose.words/loadformat/)轉換為Markdown的能力，反之亦然-Aspose.Words也支援大多數流行的[save formats](https://reference.aspose.com/words/net/aspose.words/saveformat/)。

目前正在積極開發 Markdown 格式的處理功能，讓您能夠更方便、更舒服地處理文件。

## 將文件轉換成

若要將一文件轉換為 Markdown，您只需載入任何支援的格式之文件或以程式方式建立新的文件即可。 接著你需要將檔案儲存到 Markdown 格式。

以下範例展示了如何將DOCX轉成 Markdown：

**.Net**
{{< gist "aspose-words-gists" "51b4cb9c451832f23527892e19c7bca6" "docx-to-markdown.cs" >}}

您也可以在以 Markdown 格式輸出文件時，指定您要儲存圖像的物理目錄。 預設下，Aspose.Words 會將圖像儲存在與文檔檔案相同的資料夾中，但你可以透過 [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) 屬性來改變此行為。

指定一檔資料夾透過 **ImagesFolder** 是有用的，若您將一篇文章儲存到一個串流中，Aspose.Words並沒有儲存圖片使用的資料夹。

如果指定的 **ImagesFolder** 不存在，它將自動建立。

接下來的程式碼範例示範了如何在儲存檔案到串流時指定圖像的目錄。

**.Net**
{{< gist "aspose-words-gists" "51b4cb9c451832f23527892e19c7bca6" "images-folder.cs" >}}

## 在將檔案轉換為 Markdown 時指定儲存選項

Aspose.Words 提供將文件儲存成 Markdown 格式時，使用 [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 類別來進行進階選項的能力。 大部分屬性是從其他 [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) 命名空間類別的現有屬性中繼承或重載。 在這些之外，還有許多特定於 Markdown 格式的性質也已被加入。 例如，用來控制表格中內容對齊的 [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) 屬性，或用來控制在將文件轉換為 Markdown 格式時如何保存圖像的 [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) 和 [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) 屬性。

## 支援 Markdown 功能

Aspose.Words 目前支援以下 Markdown 功能，大多遵循 `CommonMark` 在 Aspose.Words API 中所定之規格，並作為相應的樣式或直接格式化方式來表示：

* 標題是具有 Heading 1 – Heading 6 風格的段落
* Blockquotes 是具有 "Quote" 在样式名称的段落
* IndentedCode 是以 " indentedCode " 在名稱中表示的段落。
* FencedCode 是具有FencedCode在样式名称中的段落
* InlineCode run with "InlineCode"在 `Font` 樣式名稱中
* 水平方向的線條是具有 `HorizontalRule` 形狀的段落。
* 斜體強調
* 斜體強調
* 折線格式化
* 清單是编号或有標記的段落
* Tables are represented with the `Table` class
* 連結是以 `FieldHyperlink` 類別表示

以下範例示範如何建立一個具有某些樣式的文件並儲存到 Markdown:

**.NET**
{{< gist "aspose-words-gists" "51b4cb9c451832f23527892e19c7bca6" "supported-features.cs" >}}

此程式碼範例的結果如下。

![markdown-example-aspose-words-net](markdown-example.png)

## 有用提示

有許多細微差別和有趣的案例，你能學到這些可以更靈活、更方便地處理 Markdown 這個檔案。 例如，有使用的能力：

* SetextHeading 讓你可以在 Markdown 中建立多行標題，而正常的 Markdown 標題只能是單行。 SetextHeading 基於Heading N風格，其層級只能是 1 或 2。 若 "Heading N" 中的 N 大於或等於 2，則相應的 SetextHeading 基於 "Heading 2"，否則在 "Heading 1"。
* 不一樣的標記用於無序列表的第一層 ("-"、"+" 或 "*"，預設標記是 "-"。) 和順序列表的不同數值 ("." 或 "]", 預設標記是 ".")。
