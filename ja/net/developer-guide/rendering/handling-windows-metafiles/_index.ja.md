---
title: C# での Windows メタファイルの処理
second_title: .NET用Aspose.Words
articleTitle: Windows メタファイルの処理
linktitle: Windows メタファイルの処理
description: "Aspose.Words for .NET は、すべてのプラットフォームでメタファイル形式を再生するための独自の Windows メタファイル プレーヤーを実装し、基本的なメタファイル機能の処理をサポートし、C# を使用して別のタイプのメタファイル プレーヤーへのフォールバックを実行できます。"
type: docs
weight: 30
url: /ja/net/handling-windows-metafiles/
---

Windows メタファイル形式は、ベクター グラフィックスとラスター グラフィックスの両方を含めることができる画像ファイル形式です。この形式は、グラフィック データをメモリまたはディスク上のファイルに保存するために使用されます。メタファイルには、画面に画像を表示するために実行する必要がある Windows グラフィック デバイス インターフェイス (GDI) の関数呼び出しのリストが保存されます。システムは、表示コンテキストでこれらのコマンドを解釈して実行します。

以前は、Microsoft Word がサポートするベクター イメージ形式は Windows メタファイルのみでした。 Microsoft Word は SVG 形式もサポートするようになりましたが、Word ドキュメントでは依然としてメタファイル形式が一般的に使用されています。また、メタファイルは、Microsoft Visio などの他のアプリケーションの交換形式になる可能性があります。基本的に、メタファイルの主な目的は、Windows アプリケーション間でグラフィック情報を確実に交換することです。

Windows メタファイルには 3 つのバージョンがあります。

- WMF – 呼び出しを 16 ビット GDI に保存します。
- EMF – Win32/GDI への呼び出しを保存します。
- EMF+ メタファイルは、GDI+ への呼び出しを保存します。 EMF+ メタファイルはデュアルにすることもでき、EMF 部分と EMF+ 部分の両方で同じグラフィックスを記述します。

Windows メタファイルに関する既存の問題は、通常ドキュメントが保存される Word 以外のほとんどの形式で Windows メタファイルがサポートされていないことです。したがって、メタファイル形式を他のラスター形式またはベクター形式に変換する必要があります。 Windows メタファイルを GDI+ に渡すだけで .NET 上のラスター イメージに変換するのは簡単ですが、GDI+ ですらメタファイルからベクター グラフィックスを抽出する機能を提供していないため、他のプラットフォームでは不可能です。これらの問題を解決するために、Aspose.Words は独自の Windows メタファイル プレーヤーを実装しており、すべてのプラットフォームでメタファイル形式のベクター グラフィックスとラスター グラフィックスの両方を再生できます。

## Aspose.Words メタファイル プレーヤーの制御

[MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/) クラスを使用すると、メタファイル プレーヤーを制御できます。たとえば、[RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) プロパティを使用してメタファイル イメージをどのようにレンダリングするかを決定できます。[RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) プロパティは、ビットマップに変換するときに特別な意味を持ちます ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/) プロパティも参照)。

ビットマップへの保存は、.NET 以外のプラットフォームでは動作が異なります。 .NET GDI+ レンダリングは、最も複雑なメタファイル形式でもほぼ完璧に機能するリファレンスですが、他のプラットフォームでは問題が発生したり、まったくサポートされなかったりする可能性があります。

## ラスター操作のサポート

ラスター操作は複雑なメタファイル機能であり、現在サポートが限定されています。ラスター操作は、WMF および EMF メタファイル形式で使用できます。 EMF+ メタファイル形式はラスター操作を直接使用しませんが、EMF パーツ、埋め込み WMF または EMF メタファイルを含めることができます。

2 値ラスター操作と 3 値ラスター操作があります。

- バイナリ ラスター操作は、線や曲線の描画などのペン描画コマンドに適用されます。線を描画するとき、16 進数のカラー値を使用して指定されたビット単位の論理演算を使用して、ペンの色が宛先ビットマップの色 (デバイス表面上の対応するピクセルの色) と結合されます。以下の画像例は、20 の異なるカラー バーに適用された 16 のバイナリ ラスター操作すべての効果を示しています。垂直のカラー バーが最初に描画され、水平のバーは各バイナリ ラスター操作が適用された後に描画されます。単純なケースでは、R2_BLACK は黒を描画し、R2_NOT は色を反転し、R2_NOP は背景を変更せず、R2_WHITE は白を描画します。

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="処理-Windows-メタファイル-aspose-words-net-1" style="width:650px"/>

- ビットマップ イメージを描画する場合、3 値ラスター操作が適用されます。これらは、指定された 16 進カラー値を使用したビットごとの論理演算を使用して、対応するビットマップ イメージ ピクセル、ブラシ、および宛先ビットマップのカラーを組み合わせます。 3 値ラスター操作を使用する最も一般的な目的の 1 つは、透明度のエミュレーションです。以下の例で提供されている画像は、アイコンの透明度をエミュレートする方法を示しています。ビットマップには、白黒マスク ビットマップとカラー ビットマップの 2 種類があります。まず、SRCAND ラスター演算を使用してマスク ビットマップが描画されます。不透明なアイコン領域を白黒に変更し、透明な領域は変更しません。次に、SRCINVERT ラスター操作を使用して 2 番目のビットマップが描画されます。透明な領域は変更せずに、黒い領域にカラー ピクセルを表示します。

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="処理-Windows-メタファイル-aspose-words-net-2" style="width:650px"/>

ラスター操作をベクター グラフィックスに直接変換することはできません。 Aspose.Words は、ラスター操作の影響を受けるデバイス サーフェスを部分的にラスター化することで、ラスター操作をエミュレートします。この目的のために、[EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) プロパティが使用されます。

{{% alert color="primary" %}}

バイナリ ラスター操作は現在サポートされておらず、限られた数の三値ラスター操作が Aspose.Words によってサポートされていますが、ベクター グラフィックスへの変換の基本的なケース (R2_BLACK、R2_WHITE、R2_NOP など) を直接処理できます。また、デバイス サーフェスのラスター化は、特に多数のラスター操作レコードが関係する場合、パフォーマンスに大きな影響を与えます。

{{% /alert %}}

以下に示す例は、一部のメタファイル レコードをベクター グラフィックスに正しくレンダリングできない場合に、Aspose.Words がどのようにメタファイルをビットマップにレンダリングするかを示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cs" >}}

## メタファイルのフォールバック設定

Aspose.Words は、最も複雑またはまれな多くのメタファイル機能をサポートしていません。ユーザーは [IWarningCallBack](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) インターフェイスを実装し、警告メッセージを受け取ることができます。 Aspose.Words は、メタファイル内でサポートされていない機能を検出すると、[WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/).**Metafile** を含む警告メッセージを発行します。この場合、Aspose.Words は別のタイプのメタファイル プレーヤーへのフォールバックを実行する可能性があります。フォールバックに関する警告メッセージも発行されます。

まず、Aspose.Words はベクター メタファイル プレーヤーからラスターへのフォールバックを実行します。これは [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) プロパティによって制御されます。フォールバック機能が無効になっている場合、Aspose.Words はサポートされていない機能の代わりに、いくつかの代替グラフィックをレンダリングしようとします。

Aspose.Words は、.NET で GDI+ を使用してメタファイルをラスターに正常に再生するため、このコールバック オプションは安全になります。

次に、EMF+ デュアル メタファイルには、EMF+ パートの再生から EMF パートにフォールバックするオプションがあります。 [EmfPlusDualRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/) によって制御されます。 EMF パートの再生時に問題が発生した場合は、ラスターへのフォールバックも実行されることがあります。

ラスター操作に関しては、[EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) が無効になっている場合、ラスター操作はサポートされていないとみなされ、有効になっている場合はビットマップ メタファイル プレーヤーへのフォールバックがトリガーされます。したがって、ラスター操作を含むメタファイルがあるが、ラスター操作エミュレーションは使用せず、置換グラフィックスを含むベクトル出力を取得したい場合は、[MetafileRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingmode/).**Vector** を選択します。
