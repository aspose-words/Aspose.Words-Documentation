---
title: C++での固定ページ形式への変換
second_title: C++の場合Aspose.Words
articleTitle: 固定ページ形式への変換
linktitle: 固定ページ形式への変換
description: "ドキュメントをPDF、XPS、HTML、XAML、PostScript、およびPCL形式で保存します。"
type: docs
weight: 10
url: /ja/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Wordsは独自のページレイアウトエンジンを実装します。 その仕様を掘り下げる前に、まず文書を高いレベルで議論することは価値があります。

## 文書とは何ですか？

文書について考えるとき、ユーザーは通常、単語、画像、表、およびチャートを含む多数の紙のシートを想像します。 ドキュメントには、テキスト、スプレッドシート、スライド、CAD図面、フローチャートなど、さまざまなタイプがあり、したがって、本質的に異なるレイアウトを持つことができます。 これは、ユーザーが実際に文書の最終的な意図された外観を見ることができるときです。

## さまざまなアプリケーションでの文書の表示

さまざまな文書の表示または公開アプリケーションを使用すると、ユーザーは特定の形式の文書（Adobe Acrobat、XPS Viewer）を開き、時には編集（AdobeInDesign）することができます。 これらのアプリケーションは、通常、いわゆる"固定ページ"形式の文書を生成します。 このような文書形式は、文書のコンテンツがすべてのページ上のどこに配置されるかを正確に記述します。 内部的には、PDFまたはXPS形式には、すべてのページの説明と、ページ上のコンテンツのレイアウトを指定する描画命令が含まれています。 これは、コンテンツがラスター形式またはベクトル形式で表示される場所を記述する画像形式に似ています。

対照的に、一部のテキスト編集アプリケーションでは、ドキュメントのページの表示をサポートしていません。 たとえば、Microsoft Notepadは、単にテキストを表示、編集、印刷する以外の機能はほとんどサポートしていません。 ここで重要な観察は、このようなアプリケーションは、ドキュメントのページを表示することも、それらのうちのいくつが印刷されるかをユーザーに伝えることもできず、ドキュメントのコンテンツを表示することしかできないということです。 文書は、プレーンテキスト形式で保存することができ、他の多くのアプリケーションで開くことができます。 任意のファイルのバイナリコンテンツを表示できるアプリケーションを使用すると、ドキュメントファイルに何が保存されているかを確認できます。

MicrosoftWordPadなどのやや洗練されたテキスト編集アプリケーションでは、画像の挿入、文字の書式設定、段落の余白、間隔などのより多くの書式設定機能をサポー ただし、RTF形式にはドキュメントのコンテンツのみが含まれ、ページに関する情報はありません。

Microsoft Wordは、今日のWindowsの中で最も高度なテキスト編集アプリケーションです。 これは、文書の内容を柔軟かつ広範囲に記述するDOCX形式でファイルをフォーマットし、ユーザーがページサイズ、文書セクションの向きを指定することができ、WYSIWYGアプリケーションであることも、画面上に文書ページを表示することができます。 それにもかかわらず、文書ファイルで利用可能なページに文書の内容がどのように表示されるかに関する情報はまだありません。 ドキュメントファイルには、コンテンツ自体と、ドキュメントオブジェクト同士の関係、およびいくつかの幾何学的制約のみが記述されています。 その結果、文書を表示する前に、Microsoft Wordはその情報自体を計算します。 ここで、ページレイアウトが機能します。

## また見て下さい

* [ページレイアウトとは何ですか](/words/cpp/what-is-a-page-layout/)
* [ページレイアウトの作成](/words/cpp/creating-a-page-layout/)
* [文書を固定ページ形式で保存する](/words/cpp/saving-a-document-to-fixed-page-format/)
* [レイアウトオプションの指定](/words/cpp/specify-layout-options/)
