---
title: Python でドキュメントを変換する
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントを変換する
linktitle: ドキュメントを変換する
type: docs
url: /ja/python-net/convert-a-document/
weight: 30
description: "Python を使用して、ドキュメントをある形式から別の形式に簡単に変換できます。 DOCX や DOC などの Microsoft Word 形式、ODT や OTT などの OpenDocument 形式、HTML や XHTML などの Web 形式、MarkDown や TXT などのテキスト形式など、最も一般的な形式をすべて使用できます。"
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
---

ドキュメントをある形式から別の形式に簡単かつ確実に変換できる機能は、Aspose.Words の主な機能領域の 1 つです。このような変換は、ロード操作と保存操作を組み合わせたものにすぎません。

Aspose.Words を使用して実行するほぼすべてのタスクには、何らかの形式でのドキュメントの読み込みまたは保存が含まれます。前のセクションで説明したように、[LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 列挙は Aspose.Words でサポートされるすべての *load* または *import* 形式を指定し、[SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 列挙は Aspose.Words でサポートされるすべての *save* または *export* 形式を指定します。したがって、Aspose.Words は、サポートされている任意のロード形式からサポートされている任意の保存形式にドキュメントを変換できます。通常、このような変換には数段階の計算が必要です。ただし、ユーザーの観点から見ると、ドキュメント形式から別のドキュメント形式への変換自体は非常に簡単で、次の 2 つの手順だけで実行できます。

1. コンストラクターの 1 つを使用して、ドキュメントを [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) オブジェクトにロードします。
1. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) オブジェクトで [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドの 1 つを呼び出し、目的の出力形式を指定します。

{{% alert color="primary" %}}

**オンラインで試す**

[無料のオンラインコンバーター](https://products.aspose.app/words/conversion) ツールを使用して変換機能を試すことができます。

{{% /alert %}}

このセクションでは、一般的な変換と、読み込みおよび保存時に形式のいくつかの組み合わせを使用するためのアイデアについて説明します。このセクションの例を使用すると、変換プロセス自体は非常に汎用的であり、[サポートされているドキュメント形式](/words/ja/python-net/supported-document-formats/) の数が多いため数百ものオプションがあるため、考えられるすべてのオプションを説明することに意味がないことが理解できます。

{{% alert color="primary" %}}

以下は最も一般的な変換の組み合わせであり、すべての組み合わせが特定のページにリンクされているわけではないことに注意してください。これは、私たちの記事にすべての変換ペアの例が含まれていないためです。ほとんどすべての変換は非常に似ています。現在のセクションの記事を読んでこれを確認してください。

{{% /alert %}}

<div class="row">
		<div class="col-md-4">
				<h2>WordをPDFに変換</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOCをPDFに変換</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOCXをPDFに変換</a></li>
								<li>その他</li>
						</ul>
				<h2>画像をPDFに変換</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">JPGをPDFに変換</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">TIFFをPDFに変換</a></li>
								<li>その他</li>
						</ul>
				<h2>Web フォーマットを PDF に変換</h2>
						<ul>
								<li>MarkdownをPDFに変換</li>
								<li>HTML を PDF に変換する</li>
								<li>MHT (MHTML) を PDF に変換する</li>
								<li>その他</li>
						</ul>
				<h2>他の形式を PDF に変換する</h2>
						<ul>
								<li>RTFをPDFに変換</li>
								<li>ODTをPDFに変換</li>
								<li>TXTをPDFに変換</li>
								<li>MobiをPDFに変換</li>
								<li>その他</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>PDFをWordに変換</h2>
						<ul>
								<li><a href="/words/ja/python-net/convert-pdf-to-other-document-formats/">PDF を他のドキュメント形式に変換する</a></li>
        <li>PDFをDOCに変換</li>
								<li>その他</li>
						</ul>
				<h2>PDFを画像に変換</h2>
						<ul>
								<li><a href="/words/ja/python-net/convert-a-document-to-an-image/">ドキュメントを画像に変換する</a></li>
        <li>PDFをSVGに変換</li>
								<li>その他</li>
						</ul>
				<h2>PDF を Web 形式に変換</h2>
						<ul>
        <li>PDFをMarkdownに変換</li>
								<li>PDF を HTML に変換</li>
								<li>PDFをEPUBに変換</li>
								<li>その他</li>
						</ul>
				<h2>PDF を他の形式に変換する</h2>
						<ul>
								<li>PDFをRTFに変換</li>
								<li>PDFをXPSに変換</li>
								<li>その他</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>ドキュメントを画像に変換する</h2>
						<ul>
								<li><a href="/words/ja/python-net/convert-a-document-to-an-image/">ドキュメントを画像に変換する</a></li>
								<li><a href="/words/ja/python-net/convert-a-document-to-an-image/">ドキュメントを画像に変換する</a></li>
								<li>その他</li>
						</ul>
				<h2>ドキュメントをMarkdownに変換する</h2>
						<ul>
								<li><a href="/words/ja/python-net/convert-a-document-to-markdown/">ドキュメントをMarkdownに変換する</a></li>
								<li>HTMLをMarkdownに変換</li>
								<li>その他</li>
						</ul>
				<h2>ドキュメントを HTML に変換する</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">WordからHTMLへの変換</a></li>
								<li>MarkdownをHTMLに変換</li>
								<li>Mobi を EPUB に変換</li>
								<li>その他</li>
						</ul>
		</div>
</div>