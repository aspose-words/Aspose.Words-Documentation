---
title: C++でのWindowsメタファイルの処理
second_title: C++の場合Aspose.Words
articleTitle: Windowsメタファイルの処理
linktitle: Windowsメタファイルの処理
description: "C++の場合Aspose.Words 独自のWindowsメタファイルプレーヤーを実装して、すべてのプラットフォームでメタファイル形式を再生し、基本的なメタファイル機能の処理をサポートし、別のタイプのメタファイルプレーヤーへのフォールバックを実行できます。"
type: docs
weight: 30
url: /ja/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windowsメタファイル形式は、ベクトルグラフィックスとラスターグラフィックスの両方を含むことができるイメージファイル形式です。 この形式は、グラフィックスデータをメモリまたはディスク上のファイルに格納するために使用されます。 メタファイルは、画面にイメージを表示するために実行する必要があるWindowsグラフィックスデバイスインターフェイス(GDI)に関数呼び出しのリストを格納します。 システムは、これらのコマンドを表示コンテキストで解釈して実行します。

以前は、WindowsメタファイルはMicrosoft Wordでサポートされている唯一のベクターイメージ形式でした。 Microsoft WordはSVG形式もサポートするようになりましたが、メタファイル形式は依然としてWord文書で一般的に使用されています。 また、Metafileは、Microsoft Visioなどの他のアプリケーションの交換形式になる可能性があります。 基本的に、メタファイルの主な目的はWindowsアプリケーション間のグラフィカル情報の交換を確実にすることです。

Windowsメタファイルには3バージョンがあります:

- WMF-ストアは16ビットGDIを呼び出します。
- EMF-ストアはWin32/GDIを呼び出します。
- EMF+メタファイルはGDI+への呼び出しを格納します。 EMF+メタファイルもデュアルであり、EMFとEMF+の両方の部分で同じグラフィックを記述することができます。

Windowsメタファイルの既存の問題は、文書が通常保存されるほとんどの非Word形式ではサポートされていないことです。 したがって、メタファイル形式を他のラスタ形式またはベクトル形式に変換する必要があります。 Windowsメタファイルをgdi+に渡すだけで.NETのラスターイメージに変換するのは簡単ですが、Gdi+でもメタファイルからベクターグラフィックスを抽出する機能が提供されていないため、他のプラットフォームでは不可能です。 これらの問題を解決するために、Aspose.Wordsは独自のWindowsメタファイルプレーヤーを実装しており、すべてのプラットフォームでベクタグラフィックスとラスタグラフグラフィックスの両方をメタファイル形式で再生することができます。

## Aspose.Wordsメタファイルプレーヤーの制御

[MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/)クラスを使用すると、メタファイルプレーヤーを制御できます。 たとえば、ビットマップに変換するときに特別な意味を持つ[RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/)プロパティを使用してメタファイルイメージをレンダリングする方法を決定できます([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)

ビットマップへの保存は.NET以外のプラットフォームでは動作が異なります。 .NETGDI+レンダリングは、最も複雑なメタファイル形式であってもほぼ完全に機能する参照ですが、他のプラットフォームでは問題が発生したり、まったくサポー

## ラスター操作のサポート

ラスター操作は複雑なメタファイル機能であり、現在サポートされている機能は限られています。 ラスター操作は、WMFおよびEMFメタファイル形式で使用できます。 EMF+メタファイル形式はラスター操作を直接使用しませんが、EMFパーツ、埋め込みWMF、またはEMFメタファイルを含めることができます。

バイナリラスタ操作と三項ラスタ操作があります:

- バイナリラスター操作は、線や曲線の描画などのペン描画コマンドに適用されます。 線を描画するとき、ペンの色は、16進数の色値で指定されたビット単位の論理演算を使用して、宛先ビットマップの色（デバイス表面上の対応するピク 次の画像の例は、20種類のカラーバーに適用された16個のバイナリラスター操作すべての効果を示しています。 垂直カラーバーは最初に描画され、水平バーは各バイナリラスター操作が適用された後に描画されます。 単純なケースでは、R2_BLACKは黒を描画し、R2_NOTは色を反転し、R2_NOPは背景を変更せず、R2_WHITEは白を描画します。

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- ビットマップイメージを描画するときには、三項ラスタ操作が適用されます。 対応するビットマップイメージピクセル、ブラシ、および宛先ビットマップの色を、指定されたhex色値でビット単位の論理演算を使用して結合します。 三項ラスタ演算を使用する最も一般的な目的の1つは、透明度のエミュレーションです。 以下の例で提供されている画像は、アイコンの透明度をエミュレートする方法を示しています。 ビットマップには、b/wマスクビットマップとカラービットマップの2種類があります。 まず、SRCANDラスタ操作でマスクビットマップが描画されます。 不透明なアイコン領域を白黒に変更し、透明な領域は変更されません。 次に、SRCINVERTラスター操作で2番目のビットマップが描画されます。 黒の領域にカラーピクセルが表示され、透明な領域は変更されません。

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

ラスター操作をベクターグラフィックスに直接変換することはできません。 Aspose.Wordsラスタ操作の影響を受けるデバイスサーフェスを部分的にラスタライズすることにより、ラスタ操作をエミュレートします。 この目的のために、[EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/)プロパティが使用されます。

{{% alert color="primary" %}}

バイナリラスター操作は現在サポートされておらず、限られた数の三項ラスター操作はAspose.Wordsでサポートされていますが、ベクターグラフィックスへの変換の基本, R2_BLACK, R2_WHITE, R2_NOP. また、デバイスサーフェスのラスタライズは、特に多数のラスタ操作レコードが含まれている場合に、パフォーマンスに大きく影響します。

{{% /alert %}}

以下の例では、メタファイルレコードの一部をベクターグラフィックスに正しくレンダリングできない場合に、Aspose.Wordsがメタファイルをビットマップにレンダーする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## メタファイルのフォールバック設定

Aspose.Wordsは、最も複雑またはまれな多くのメタファイル機能をサポートしていません。 ユーザーは[IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/)インターフェイスを実装し、警告メッセージを受け取ることができます。 Aspose.Wordsがメタファイル内でサポートされていない機能を検出した場合、[WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/)で警告メッセージが発行されます。**Metafile**. この場合、Aspose.Wordsは異なるタイプのメタファイルプレーヤへのフォールバックを実行することができます。 フォールバックに関する警告メッセージも発行されます。

まず、Aspose.Wordsは、[RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/)プロパティによって制御されるベクターメタファイルプレーヤーからラスターへのフォールバックを実行します。 フォールバック機能が無効になっている場合、Aspose.Wordsはサポートされていない機能の代わりに一部の置換グラフィックスをレンダリングしようとします。

Aspose.Wordsは、.NETでgdi+を使用してメタファイルをラスターに正常に再生します。

次に、EMF+デュアルメタファイルがEMF+パートをEMFパートに再生することからフォールバックするオプションがあります。 これは[EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/)によって制御されます。 EMFパートを再生するときにいくつかの問題が発生した場合は、ラスターへのフォールバックも実行される可能性があります。

ラスター操作については、[EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) が無効になっている場合、ラスター操作はサポートされていないとみなされ、ビットマップ メタファイル プレーヤーが有効になっている場合は、そのプレーヤーへのフォールバックがトリガーされます。したがって、ラスター操作を含むメタファイルがあり、ラスター操作エミュレーションを使用せずに、代替グラフィックスを含むベクター出力を取得する場合は、[MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector** を選択します。
