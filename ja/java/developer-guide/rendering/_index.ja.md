---
title: レンダリング Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: レンダリング
linktitle: レンダリング
description: "使用条件 Aspose.Words お問い合わせ Java フローレイアウトのドキュメントをページにフォーマットし、そのような文書や選択したページを別の文書に変換するためのレンダリング機能(PDF、HTML、 XPS, 等)または表示のためのイメージ(TIFF、PNG、SVG、等)のフォーマット、それ以上の転換、または印刷。"
type: docs
weight: 30
url: /ja/java/rendering/
---

「レンダリング」という用語を使用します。 Aspose.Words ドキュメントをファイル形式またはページコンセプトを持つ媒体に変換するプロセスを記述します。 ドキュメントをページのレンダリングについて話しています。 次の図は、レンダリングが何であるかを示しています Aspose.Wordsお問い合わせ

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

レンダリング機能の Aspose.Words 以下を実行できるようにします。

- ドキュメントまたは選択したページをPDFに変換し、 XPS, HTML、XAML、PostScript、およびPCLフォーマット。
- ドキュメントをマルチページTIFF文書に変換したり、任意のページをラスター画像に変換したり、BMP、PNG、JPEGに保存します。
- ドキュメントページをスケーラブルなベクトルグラフィックスイメージ(SVG)に変換し、ベクトルイメージに変換し、EMFとして保存します。
- 特定のサイズまたはスケールでドキュメントページをレンダリング(描画) `Graphics` ドキュメントページのサムネイル、フルサイズまたはスケール画像を作成するオブジェクト。
- レンダリング a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ドキュメントから任意のイメージ形式または任意のイメージ形式に別々にオブジェクト `Graphics` オブジェクト。
- スイングコンポーネント内のドキュメントの任意のページを表示します。
- 標準を使用して文書ページを印刷またはプレビュー Java 印刷インフラ。

## フローレイアウトまたは固定レイアウト ドキュメントフォーマット {#flow-layout-or-fixed-layout-document-formats}

ロードできるドキュメントフォーマットのほとんど Aspose.Words "flow-layout" 形式として知られています。 フローレイアウトフォーマットには、DOC、OOXML、RTF、ODT、HTMLが含まれます。 これらのフォーマットの文書は、段落、表、ヘッダー、フッター、画像、フィールド、およびフォーマットなどのさまざまな要素で構成されています。例えば、太字、斜文字、フォント、サイズ。 しかし、フローレイアウトのフォーマットには、各特定の段落または文字がページ上に表示されている位置に関する情報が含まれていません。

対照的に、PDFなどの「固定レイアウト」(別名「固定ページ」)フォーマットおよび XPS すべての文書要素の正確な位置情報を含む。 これらのフォーマットは、ページにレイアウトされた後に文書の元の外観を保存し、表示された情報の高い精度を提供します。

## ページのレイアウト エンジン {#page-layout-engine}

Aspose.Words フローレイアウトのドキュメントをページにフォーマットする独自のページレイアウトエンジンを実装します。 Aspose.Words PDF や PDF などの固定レイアウトのドキュメントを生成するレンダラーの数を実装します。 XPS, または印刷や図面などの別の媒体にページを出力します。 エクスポートは HTML や XAML で paginated することもできます。 つまり、ドキュメントは通常の HTML や XAML (flow-layout 形式) として保存したり、要素の絶対的な位置を特徴とする HTML や XAML として保存することができます。

使用の最も重要な利点 Aspose.Words ページのレイアウトエンジンは、それが方法を模倣することです Microsoft Word’s ページレイアウトエンジンの仕組み そのため、変換するとき Microsoft Word PDF への文書化 XPS, またはそれを使用して印刷して下さい Aspose.Words, 出力は、それによって行われたかのようにほぼ正確に表示されます Microsoft Wordお問い合わせ 注意: Aspose.Words 利用しない Microsoft Wordお問い合わせ