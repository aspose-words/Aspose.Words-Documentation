---
title: 在C#中渲染
second_title: Aspose.Words for .NET
articleTitle: 渲染
linktitle: 渲染
description: "用 Aspose.Words 的 .NET 渲染功能將流式布局文件格式化為頁面，並將此文件或選定的頁面轉換為其他文件（PDF、HTML、XPS 等）或圖像（TIFF、PNG、SVG 等）格式以供查看、進一步轉換或列印，同時使用 C#。"
type: docs
weight: 20
url: /zh-hant/net/rendering/
timestamp: 2024-01-27-14-07-04
---

我們在 Aspose.Words 中使用渲染這個詞來描述將一篇文章轉換成具有頁面或頁面概念的檔案格式或媒介的過程。 我們在討論的是將一份文件分成頁面的呈現。 圖示是說明在 Aspose.Words 中的 rendering。

![rendering_aspose-words](rendering-1.png)

Aspose.Words的渲染功能可讓您進行以下動作：

將文件或選取的頁面轉換為 PDF、XPS、HTML、XAML、PostScript 和 PCL 等格式。
將一篇文件轉換成多頁的 TIFF 文檔，或將任何一個頁面轉換成位圖，並儲存為 BMP、PNG 或 JPEG。
將文件頁面轉換為可縮放的向量圖形圖像（SVG），或將它轉換成向量圖像並儲存為 EMF 檔案。
"- 在 .NET 圖形物件上以特定尺寸或比例來渲染 (畫出) 文檔頁面，以產生縮圖、全尺寸或已縮放的文檔頁面圖像。"
- 獨立從文件中 render [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 物件，可輸出任何圖像格式或 .NET 圖形物件。
"- 在 Windows 格式中顯示文件的任何一頁。"
 - 透過標準的 .NET 列印基礎架構列印或預覽文件頁面。

## 流式排版或固定式排版文件格式 {#flow-layout-or-fixed-layout-document-formats}

可載入至 Aspose.Words 的文件格式多數都被稱為『流式排版』格式。 Flow-layout格式包含DOC、OOXML、RTF、ODT和HTML。 這些格式的文件包含各種元素，如段落、表格、標題、腳條、圖像、欄位和他們的格式化方式，例如粗體、斜體、字型、大小等。 然而，流式排版格式並不包含資訊，說明每個特定的段落或字元在頁面上顯示的所在位置。

相較之下，固定格式（亦稱為固定頁面）的格式如PDF和 XPS 包含所有文件元素的確切定位資訊。 這些格式保留了文件在分頁後的原始外观，提供了顯示信息的更高準確性。

## 頁面排版引擎 {#page-layout-engine}

Aspose.Words實作自己的頁面排版引擎，它將一份流式設計文件格式化為頁面。Aspose.Words也實作許多輸出器，它們可以產生固定式設計之文件，例如 PDF 或 XPS，或以其他介質來輸出頁面，例如列印或繪圖。 請注意，輸出也可以分頁為 HTML 和 XAML。 這意味著文件可以儲存為一般化的HTML或XAML (流程格式)，或者為具有元素的絕對位置的分頁HTML和XAML。

使用 Aspose.Words 頁面排版引擎的最重要優點，是它模仿 Microsoft Word 頁面排版引擎的動作方式。 因此，當您把一份 Microsoft Word 文檔轉換成 PDF、XPS 或使用 Aspose.Words 列印它時，輸出結果幾乎與 Microsoft Word 做出的結果相同。 注意，Aspose.Words 並不利用 Microsoft Word。
