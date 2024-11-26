---
title: 用 C# 轉換文件
second_title: Aspose.Words for .NET
articleTitle: 轉換一個文件
linktitle: 轉換一個文件
type: docs
url: /zh-hant/net/convert-a-document/
weight: 30
description: "用C#輕鬆將檔案從一個格式轉為另一個格式。 您可以工作於所有最受歡迎的格式，包括 Microsoft Word 的格式，如 DOCX 或 DOC、OpenDocument 格式，如 ODT 或 OTT、網路格式，如 HTML 或 XHTML、文字格式，如 Markdown 或 TXT 等。"
keywords: "convert a document c#, convert documents from one format to another c#, convert to markdown c#, convert pdf to docx C#, convert docx to pdf C#, convert doc to pdf C#, convert a document Aspose for .NET"
timestamp: 2024-01-27-14-07-04
---

輕鬆且可靠地將文件從一種格式轉換為另一種格式的能力，是 Aspose.Words 主要功能領域之一。 這樣的轉換只不過是加載和儲存的組合動作。

## 什麼是文件轉換 {#what-is-document-conversion}

您想要用 Aspose.Words 執行的幾乎任何任務都涉及以某種格式載入或儲存文件。 如前文所述，[LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) 枚舉指定由 Aspose.Words 支援的所有 *load* 或 *import* 格式，而 [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 枚舉則指定所有由 Aspose.Words 支援的 *save* 或 *export* 格式。 因此，Aspose.Words可以將任何支援的載入格式轉換成任何支援的儲存格式。 一般來說，這樣的轉換需要幾階段的計算。 然而，從用戶的角度來看，將一份文件轉換成另一份文件本身就是非常簡單的，而且只需要做兩步。

1. 透過其构造函数，将您的文档加载到一个 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 对象中。
1. 在 **Document** 物件上呼叫其中一種 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 方法，並指定所需的輸出格式。

{{% alert color="primary" %}}

**試試看線上**

你可以使用我們的 [Free online converter](https://products.aspose.app/words/conversion) 工具來試用轉換功能。

{{% /alert %}}

## 熱門轉換 {#popular-conversions}

本節敘述一些流行的轉換方式，以及在讀取與儲存時處理某種格式組合的想法。 透過本節的範例，你會發現轉換過程本身十分普遍，而描述所有可能的選項也沒有什麼意義，因為由於有數百種不同的 [formats supported by Aspose.Words for .NET](/words/net/supported-document-formats/) 格式，所以有許多不同的格式。

{{% alert color="primary" %}}

請注意，以下是最受歡迎的轉換組合，但並非每個組合都能連結到特定的頁面。 這是因為我們的文章沒有每個轉換對照的範例--幾乎所有的轉換都非常相似。 請透過閱讀本節的文章來確保這點。

{{% /alert %}}

<div class="row">
	<div class="col-md-4">
		<h2>將Word轉成PDF</h2>
			<ul>
				<li><a href="/words/net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Convert DOC to PDF</a></li>
				<li><a href="/words/net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Convert DOCX to PDF</a></li>
				<li>以及其他人</li>
			</ul>
		<h2>將圖片轉換為 PDF</h2>
			<ul>
				<li><a href="/words/net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Convert JPG to PDF</a></li>
				<li><a href="/words/net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Convert TIFF to PDF</a></li>
				<li>以及他人</li>
			</ul>
    <h2>將網頁轉換為PDF</h2>
			<ul>
				<li>將 Markdown 轉換為 PDF</li>
				<li>將 HTML 轉換為 PDF</li>
				<li>將 MHT (MHTML) 轉換為 PDF</li>
				<li>以及其他的人</li>
			</ul>
		<h2>將其他格式轉換為PDF</h2>
			<ul>
				<li>將 RTF 轉換為 PDF</li>
				<li>將 ODT 轉換為 PDF</li>
				<li>將 TXT 轉換為 PDF</li>
				<li>將Mobi轉換為PDF</li>
				<li>以及其他</li>
			</ul>
	</div>
	<div class="col-md-4">
		<h2>將 PDF 轉換為 Word</h2>
			<ul>
				<li><a href="/words/net/convert-pdf-to-other-document-formats/">Convert PDF to DOCX</a></li>
        <li>將PDF轉換為DOC</li>
				<li>以及其他的人</li>
			</ul>
		<h2>將PDF轉換為圖像</h2>
			<ul>
				<li><a href="/words/net/convert-a-document-to-an-image/">Convert PDF to JPG</a></li>
        <li>將PDF轉為SVG</li>
				<li>和其他人</li>
			</ul>
		<h2>將 PDF 轉為網際網路</h2>
			<ul>
        <li>將PDF轉為 Markdown</li>
				<li>將PDF轉換為HTML</li>
				<li>將PDF轉換為EPUB</li>
				<li>及另等</li>
			</ul>
		<h2>將 PDF 轉為其他格式</h2>
			<ul>
				<li>將 PDF 轉換為 RTF</li>
				<li>將 PDF 轉換為 XPS</li>
				<li>以及其他</li>
			</ul>
	</div>
	<div class="col-md-4">
		<h2>將文件轉換為圖像</h2>
			<ul>
				<li><a href="/words/net/convert-a-document-to-an-image/">Convert PDF to JPG</a></li>
				<li><a href="/words/net/convert-a-document-to-an-image/">Convert DOCX to JPG</a></li>
				<li>以及其他</li>
			</ul>
		<h2>將文件轉換為 Markdown</h2>
			<ul>
				<li><a href="/words/net/convert-a-document-to-markdown/">Convert a Document to Markdown</a></li>
				<li>將 HTML 轉換為 Markdown</li>
				<li>和其他人</li>
			</ul>
		<h2>將文件轉換為 HTML</h2>
			<ul>
				<li><a href="/words/net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Convert Word to HTML</a></li>
				<li>將 Markdown 轉換為 HTML</li>
				<li>將 Mobi 轉換為 EPUB</li>
				<li>以及其他</li>
			</ul>
		<h2>在資料庫中處理文件</h2>
			<ul>
				<li><a href="/words/net/serialize-and-work-with-a-document-in-a-database/">Serialize and Work with a Document in a Database</a></li>
			</ul>
		<h2>其他例子</h2>
			<ul>
				<li><a href="/words/net/convert-a-document-to-mhtml-and-send-it-by-email/">Convert a Document to MHTML and Send It by Email</a></li>
				<li>將 DOCX 轉換為 DOC</li>
				<li>將HTML轉換為Word</li>
				<li>及其他</li>
			</ul>
	</div>
</div>
