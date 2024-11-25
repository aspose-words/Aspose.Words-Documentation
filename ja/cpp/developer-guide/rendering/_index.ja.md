---
title: C++でのレンダリング
second_title: C++の場合Aspose.Words
articleTitle: レンダリング
linktitle: レンダリング
description: "使用 C++の場合Aspose.Words フローレイアウト文書をページにフォーマットし、そのような文書または選択されたページを他の文書（PDF、HTML、XPSなど）に変換するレンダリング機能。）または画像（TIFF、PNG、SVGなど）。）表示、さらに変換、または印刷のためのフォーマット。"
type: docs
weight: 20
url: /ja/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

Aspose.Wordsで"レンダリング"という用語を使用して、文書をファイル形式またはページ分割された媒体またはページの概念を持つ媒体に変換するプロセスを説明し ドキュメントをページにレンダリングすることについて話しています。 次の図は、Aspose.Wordsでのレンダリングを示しています。

![rendering-aspose-words-cpp](rendering-1.png)

Aspose.Wordsのレンダリング機能を使用すると、次の操作を実行できます:

- ドキュメントまたは選択したページをPDF、XPS、HTML、XAML、PostScript、およびPCL形式に変換します。
- ドキュメントを複数ページのTIFFドキュメントに変換するか、任意のページをラスターイメージに変換してBMP、PNG、またはJPEGとして保存します。
- ドキュメントページをスケーラブルベクターグラフィックイメージ(SVG)に変換するか、ベクター画像に変換してEMFとして保存します。
- ドキュメントページを特定のサイズまたは縮尺で`Graphics`オブジェクトにレンダリング(描画)して、ドキュメントページのサムネイル、フルサイズまたは縮尺のイ
- ドキュメントとは別に[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)オブジェクトを任意の画像形式または`Graphics`オブジェクトにレンダリングします。
- 文書の任意のページをWindows形式で表示します。

## フローレイアウトまたは固定レイアウトドキュメントフォーマット{#flow-layout-or-fixed-layout-document-formats}

Aspose.Wordsに読み込むことができるドキュメント形式のほとんどは、"フローレイアウト"形式として知られています。 フローレイアウト形式には、DOC、OXML、RTF、ODT、およびHTMLが含まれます。 これらの形式の文書は、段落、表、ヘッダー、フッター、画像、フィールド、およびそれらの書式設定（太字、斜体、フォント、サイズなど）などのさまざまな要素で構成され ただし、フローレイアウト形式には、特定の各段落または文字がページに表示される位置に関する情報は含まれていません。

対照的に、PDFやXPSなどの"固定レイアウト"("固定ページ"とも呼ばれます)形式には、すべてのドキュメント要素の正確な位置情報が含まれています。 これらの形式は、ページにレイアウトされた後の文書の元の外観を維持し、表示された情報の精度を高めます。

## ページレイアウトエンジン{#page-layout-engine}

Aspose.Wordsは、フローレイアウトドキュメントをページに書式設定する独自のページレイアウトエンジンを実装します。 Aspose.Wordsは、PDFやXPSなどの固定レイアウト文書を生成するレンダラー、または印刷や描画などの別の媒体にページを出力するレンダラーを実装します。Aspose.Wordsは、PDFやXPSなどの固定レイアウト文書を生成するレンダラーの数を実装します。 エクスポートは、HTMLおよびXAML用にページ分割することもできます。 つまり、ドキュメントは通常のHTMLまたはXAML(flow-layout format)として、または要素の絶対位置を特徴とする「ページ分割」HTMLおよびXAMLとして保存できます。

Aspose.Wordsページレイアウトエンジンを使用する最も重要な利点は、Microsoft Wordのページレイアウトエンジンの動作を模倣することです。 したがって、Microsoft Word文書をPDFやXPSに変換したり、Aspose.Wordsを使用して印刷したりすると、出力はMicrosoft Wordによって行われたかのようにほぼ正確に表示されます。 Aspose.WordsはMicrosoft Wordを利用しないことに注意してください。