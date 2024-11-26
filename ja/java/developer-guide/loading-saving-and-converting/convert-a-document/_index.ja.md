---
title: Javaで文書を変換する
second_title: Aspose.WordsのためのJava
articleTitle: 文書を変換する
linktitle: 文書を変換する
type: docs
weight: 30
url: /ja/java/convert-a-document/
description: "文書をある形式から別の形式に簡単に変換できます。 DOCXやDOCなどのMicrosoft Word形式、ODTやOTTなどのOpenDocument形式、HTMLやXHTMLなどのweb形式、MarkDownやTXTなどのテキスト形式、Javaを使用したその他の最も一般的な形式で作業できます。"
timestamp: 2024-09-25-11-08-55
---

文書をある形式から別の形式に簡単かつ確実に変換する機能は、Aspose.Wordsの主な機能領域の1つです。 このような変換は、読み込み操作と保存操作の組み合わせにすぎません。

## ドキュメント変換 {#what-is-document-conversion}とは何ですか

Aspose.Wordsを使用して実行するほとんどのタスクには、文書を何らかの形式で読み込んだり保存したりすることが含まれます。 前のセクションで説明したように、[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)列挙体はAspose.Wordsでサポートされるすべての*load*または*import*形式を指定し、[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)列挙体はAspose.Wordsでサポートされるすべての*save*または*export* したがって、Aspose.Wordsは、サポートされている任意の読み込み形式からサポートされている任意の保存形式に文書を変換できます。 原則として、このような変換にはいくつかの計算段階が必要です。 ただし、ユーザーの観点からは、ドキュメント形式から別の形式への変換自体は非常に簡単で、2つの手順で実行できます:

1. コンストラクタのいずれかを使用して、ドキュメントを[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)オブジェクトにロードします。
1. **Document**オブジェクトで[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int)メソッドのいずれかを呼び出し、目的の出力形式を指定します。

{{% alert color="primary" %}}

**オンラインで試す**

あなたは私たちのこの機能を試すことができます [無料オンラインコンバータ](https://products.aspose.app/words/conversion).

{{% /alert %}}

## 人気のコンバージョン {#popular-conversions}

現在のセクションでは、一般的な変換と、読み込みと保存時にフォーマットのいくつかの組み合わせを操作するためのアイデアについて説明します。 このセクションの例を使用すると、変換プロセス自体が非常に普遍的であり、可能なオプションの数が多いために数百のオプションがあるため、す [JavaのAspose.Wordsでサポートされている形式](/words/java/supported-document-formats/).

{{% alert color="primary" %}}

以下は最も一般的な変換の組み合わせであり、すべての組み合わせが明確なページにリンクされているわけではないことに注意してください。 私たちの記事は、変換のすべてのペアのための例を持っていないので、これは事実である–ほとんどすべての変換はかなり似ています。 現在のセクションの記事を調べて、これを確認してください。

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>単語をPDFに変換する</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOCをPDFに変換する</a></li>
				<li><a href="/words/java/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">DOCXをPDFに変換する</a></li>
				<li>その他</li>
			</ul>
		<h2>画像をPDFに変換する</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-pdf/#convert-an-image-to-pdf">JPGをPDFに変換する</a></li>
				<li><a href="/words/java/convert-a-document-to-pdf/#convert-an-image-to-pdf">TIFFをPDFに変換する</a></li>
				<li>その他</li>
			</ul>
		<h2>Web形式をPDFに変換する</h2>
			<ul>
				<li>MarkdownをPDFに変換する</li>
				<li>HTMLをPDFに変換する</li>
				<li>MHT(MHTML)をPDFに変換します</li>
				<li>その他</li>
			</ul>
		<h2>他の形式をPDFに変換する</h2>
			<ul>
				<li>RTFをPDFに変換する</li>
				<li>ODTをPDFに変換する</li>
				<li>TXTをPDFに変換する</li>
				<li>MobiをPDFに変換する</li>
				<li>その他</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>文書を画像に変換する</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-an-image/">DOCXをJPGに変換する</a></li>
				<li>DOCをPNGに変換する</li>
				<li>その他</li>
			</ul>
		<h2>文書をMarkdownに変換する</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-markdown/">文書をMarkdownに変換する</a></li>
				<li>HTMLをMarkdownに変換する</li>
				<li>その他</li>
			</ul>
		<h2>文書をHTMLに変換する</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">単語をHTMLに変換する</a></li>
				<li>MarkdownをHTMLに変換する</li>
				<li>MobiをEPUBに変換する</li>
				<li>その他</li>
			</ul>
		<h2>データベースで文書を作業する</h2>
			<ul>
				<li><a href="/words/java/serialize-and-work-with-a-document-in-a-database/">データベース内のドキュメントをシリアル化して操作する</a></li>
			</ul>
		<h2>その他の例</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-mhtml-and-send-it-by-email/">文書をMHTMLに変換し、電子メールで送信します</a></li>
				<li>DOCXをDOCに変換する</li>
				<li>HTMLを単語に変換する</li>
				<li>その他</li>
			</ul>
	</div>
</div>
