---
title: C++で固定ページ形式に保存する
second_title: C++の場合Aspose.Words
articleTitle: 文書を固定ページ形式で保存する
linktitle: 文書を固定ページ形式で保存する
description: "ドキュメントを固定ページ形式（PDF、XPS、HTML、XAML、PostScript、およびPCL）に保存するにはどうすればよいですか？ 指示を参照してください。"
type: docs
weight: 15
url: /ja/cpp/saving-a-document-to-fixed-page-format/
---

ページレイアウトが作成され、オブジェクトのジオメトリとページ上の位置が計算された後、文書はAspose.Wordsでサポートされている固定ページ形式で保存できます。

文書を固定ページ形式で保存する場合は、これらすべての形式に共通のレンダリングオプションを使用できます。 彼らは制御することができます:

- 出力ドキュメントに含まれるページの数と範囲([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- ページごとの文書保存の進行状況([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/))。
- 数値のレンダリングに使用される文字のセット([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/))。
- メタファイルプレーヤー([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/))。 詳細については、以下を参照してください。 [Windowsメタファイルの処理](/words/cpp/handling-windows-metafiles/) 記事。
- 選択した保存形式([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/))に応じて、JPEG画像を再圧縮するための品質レートの値が若干異なる場合があります。
- Aspose.Words出力([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/))におけるベクターグラフィックスの最適化。
- Tiff、Png、Bmp、Jpeg、Emf形式に保存するときのグラフィックオプション([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- ドキュメントをグレースケール([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/))で保存します。
- DrawingML図形とフォールバック図形のレンダリングを切り替える([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/))。
- DMLエフェクトレンダリングモードの切り替え([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/))。

次の例は、`Save`メソッドとレンダリングオプションを使用してドキュメントをJPEG形式に保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
