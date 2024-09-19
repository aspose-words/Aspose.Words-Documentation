---
title: 在C#中與「Markdown」功能工作
second_title: 「Aspose.Words為.NET」
articleTitle: 與 Markdown 功能工作
linktitle: 與 Markdown 功能工作
description: "如何以C#實作「Markdown」功能。 「所有功能都表示為對應的風格或直接格式。」"
type: docs
weight: 420
url: /zh-hant/net/working-with-markdown-features/
---

這篇文章討論如何透過Aspose.Words來實作Markdown功能。Markdown是一種簡單的方式來格式化普通文字，並可以輕易地轉換成HTML。Aspose.Words支援以下Markdown功能：

- 標題
- 引用區块
- 水平方向的線條
「- 粗體強調」
「- 斜體強調」

「 Markdown 功能實作主要依循 `CommonMark` 規格在 Aspose.Words API 中，所有功能皆以對應的風格或直接格式來表現。」 這意味著

-粗體和斜體分別表示為 `Font.Bold` 和 `Font.Italic`。
「- 標題是具有標頭1至標頭6風格的段落。」
"- 引用是具有「引文」風格名稱的段落。"
「- HorizontalRule 是具有水平線形狀的段落。」

{{% alert color="primary" %}}

翻譯 Markdown 的細微差別會是 Aspose.Words Document Object Model (DOM)，如文章 [Translate Markdown to Document Object Model (DOM)](/words/net/translate-markdown-to-document-object-model/) 所述。

{{% /alert %}}

## Markdown 文本強調

「本節示範如何透過以下強調來製作一個 markdown 文檔：」

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

接下來這個程式碼片段可用於產生上面所給的 markdown 文檔。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## 「Markdown 文檔有標題」

「本節示範如何以以下 headings 的形式製作 markdown 文檔：」

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

「以下代碼片段可用於產生上述給定的 markdown 文檔。」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## 「Markdown 具有塊引用之文件」

本節示範如何根據以下範例產生一份具有塊引言的markdown文件：

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

「以下程式碼片段可用來產生上面給定的 markdown 文檔。」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Markdown 水平線式文件

「本節示範如何建立一個包含水平線條的 markdown 文件：」

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

「下面的程式碼片段可用來產生上面給定的 markdown 文檔。」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## 閱讀 Markdown 文檔

接下來這個程式碼片段會教你如何讀取一個 markdown 文檔。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## 指定 Markdown 保存選項

「Aspose.Words API 在儲存文档到 Markdown 格式時提供 [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 類別來指定其他選項。」

「接下來的程式碼範例示範了如何指定各種不同的Markdown儲存選項。」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## 「如何在輸出到 Markdown 的同時，對表格內部的內容進行對齊？」

Aspose.Words API 提供 [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) 列舉，定義了將資料排印到表格的對齊方向，同時將資料輸出到 Markdown 文檔。 「接下來的程式碼範例說明了如何在表格內對齊內容。」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
