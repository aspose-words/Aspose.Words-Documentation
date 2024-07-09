---
title: ソリューション Windows メタファイル Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ソリューション Windows メタファイル
linktitle: ソリューション Windows メタファイル
description: "Aspose.Words お問い合わせ Java 独自の実装 Windows すべてのプラットフォームでMetafile形式を再生し、基本的なメタファイル機能の処理をサポートし、異なるタイプのメタファイルプレーヤーにフォールバックを実行できます。"
type: docs
weight: 30
url: /ja/java/handling-windows-metafiles/
---

Windows Metafile形式は、ベクトルとラスターグラフィックスの両方を含むことができる画像ファイル形式です。 この形式は、メモリやディスク上のファイルに保存するために使用されます。 metafile は関数呼び出しのリストを格納します。 Windows 画面上の画像を表示するために実行しなければならないグラフィックデバイスインターフェイス(GDI)。 システムは、これらのコマンドを display コンテキストで解釈し、実行します。

元々, Windows Metafileは、サポートされている唯一のベクトル画像フォーマットでした Microsoft Wordお問い合わせ Microsoft Word また、SVG形式にも対応していますが、Word文書ではメタファイル形式も一般的に使われています。 また、Metafile は、他のアプリケーション用のインターチェンジ形式になる可能性があります。 Microsoft ヴィシオ。 基本的に、Metafileの主な目的は、間のグラフィカル情報の交換を確実にすることです Windows アプリケーション。

3つのバージョンがあります Windows メタファイル:

- WMF - 16bit GDIに電話を格納します。
- EMF - Win32/GDI にコールを格納します。
- EMF+ Metafile は GDI+ に電話をかけます。 EMF+ メタファイルもデュアルで、EMF と EMF+ の両方の部分で同じグラフィックを記述することができます。

既存の問題は、 Windows Metafileは、ほとんどの非Wordフォーマットではサポートされていないため、文書は通常保存されます。 そのため、Metafile形式を他のラスターやベクター形式に変換する必要があります。 変換が簡単です Windows rasterイメージへのメタファイル .NET GDI+ に渡すだけで、GDI+ がメタファイルからベクトルグラフィックを抽出する機能を提供していないので、他のプラットフォームでは不可能です。 これらの課題を解決するため Aspose.Words 独自の実装 Windows すべてのプラットフォームで、ベクトルとラスターグラフィックスの両方のMetafile形式を再生することができるMetafileプレーヤー。

## コントロール Aspose.Words メタファイルプレーヤー

ザ・オブ・ザ・ [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) class を使用すると、メタファイルプレーヤーを制御することができます。 例えば、メタファイル画像がレンダーされるべきかを、 [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) ビットマップへ変換する際に特別な意味を持つプロパティ(また参照) [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) プロパティ

## ラスターオペレーションをサポート

Raster操作は複雑なメタファイル機能で、現在サポートが制限されています。 WMFとEMFのメタファイルフォーマットでラスター操作が可能です。 EMF+ メタファイルフォーマットは、ラスター操作を直接使用しませんが、EMF 部品、埋め込み WMF または EMF メタファイルを含むことができます。

バイナリと任意のラスター操作があります。

- 境界ラスター操作は、描画線や曲線などのペン描画コマンドに適用されます。 ラインを描画するとき、ペンの色は、指定したビットワイズ論理操作を六角カラー値で使用することにより、宛先ビットマップカラー(デバイス表面上の対応ピクセルの色)と組み合わせられます。 下の画像例は、20種類のカラーバーに適用されるすべての16のバイナリラスター操作の効果を示しています。 垂直色のバーが最初に描画され、各バイナリのラスター操作が適用される後に水平バーが描画されます。 シンプルなケースでは、 R2_BLACK 黒を引く、 R2_NOTは色を逆転させます、 R2_NOP 背景を変更しない R2_WHITE 白を描きます。

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- ビットマップイメージを描画する際に、Ternary raster 操作を適用します。 ビットマップの画像ピクセル、ブラシ、宛先ビットマップの色をビットワイズ論理操作で指定する六角カラー値で組み合わせます。 用語集操作を使用する最も一般的な目的の1つは、透明性のエミュレーションです。 下の例に示した画像は、アイコンの透明度をエミュレートする方法を示しています。 b/wマスクビットマップとカラービットマップの2種類があります。 まず、マスクビットマップはSRCANDラスター操作で描画されます。 不透明なアイコン領域を黒と白に変更し、透明の領域は変更されないままにします。 その後、SRCINVERTのラスター操作で2番目のビットマップが描画されます。 透明領域が変わらず、黒い領域に色ピクセルを表示。

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

ラスター操作はベクトルグラフィックに直接変換することはできません。 Aspose.Words raster 操作によって影響される装置表面を部分的にraster 操作を塗って下さい。 この目的のために、 [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) プロパティが使用されます。

{{% alert color="primary" %}}

バイナリーラスター操作は現在サポートされていませんが、 暫定ラスター操作の限られた数がサポートされています Aspose.Words, たとえば、ベクトルグラフィックへの変換の基本的な例を直接扱うことができます。 R2_BLACK, R2_WHITE, R2_NOPお問い合わせ また、デバイス面のラスタライズは性能に著しく影響します。特に、ラスター操作レコードの重要な数が関与している場合。

{{% /alert %}}

以下に示す例は、 Aspose.Words メタファイルレコードの一部を正しくベクトルグラフィックにレンダリングできないとき、ビットマップにメタファイルをレンダリングします。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
