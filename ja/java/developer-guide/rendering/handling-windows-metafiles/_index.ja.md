---
title: Java内のWindowsメタファイルの処理
second_title: Aspose.WordsのためのJava
articleTitle: Windowsメタファイルの処理
linktitle: Windowsメタファイルの処理
description: "Aspose.WordsforJavaは、すべてのプラットフォームでメタファイル形式を再生する独自のWindowsメタファイルプレーヤーを実装し、基本的なメタファイル機能の処理をサポー"
type: docs
weight: 30
url: /ja/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windowsメタファイル形式は、ベクトルグラフィックスとラスターグラフィックスの両方を含むことができるイメージファイル形式です。 この形式は、グラフィックスデータをメモリまたはディスク上のファイルに格納するために使用されます。 メタファイルは、画面にイメージを表示するために実行する必要があるWindowsグラフィックスデバイスインターフェイス(GDI)に関数呼び出しのリストを格納します。 システムは、これらのコマンドを表示コンテキストで解釈して実行します。

以前は、WindowsメタファイルはMicrosoft Wordでサポートされている唯一のベクターイメージ形式でした。 Microsoft WordはSVG形式もサポートするようになりましたが、メタファイル形式は依然としてWord文書で一般的に使用されています。 また、Metafileは、MicrosoftVisioなどの他のアプリケーションの交換形式にすることもできます。 基本的に、メタファイルの主な目的はWindowsアプリケーション間のグラフィカル情報の交換を確実にすることです。

Windowsメタファイルには3つのバージョンがあります:

- WMF-16ビットGDIへの呼び出しを格納します。
- EMF-Win32/GDIへの呼び出しを格納します。
- EMF+メタファイルはGDI+への呼び出しを格納します。 EMF+メタファイルもデュアルであり、EMFとEMF+の両方の部分で同じグラフィックスを記述することができます。

Windowsメタファイルの既存の問題は、文書が通常保存されるほとんどの非Word形式ではサポートされていないことです。 したがって、メタファイル形式を他のラスタ形式またはベクトル形式に変換する必要があります。 WindowsメタファイルをGDI+に渡すだけで.NETのラスターイメージに変換するのは簡単ですが、GDI+でもメタファイルからベクターグラフィックスを抽出する機能が提供されていないため、他のプラットフォームでは不可能です。 これらの問題を解決するために、Aspose.Wordsは独自のWindowsメタファイルプレーヤーを実装しており、すべてのプラットフォームでベクタグラフィックスとラスタグラフグラフィックスの両方をメタファイル形式で再生することができます。

## Aspose.Wordsメタファイルプレーヤーの制御

[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/)クラスを使用すると、メタファイルプレーヤーを制御できます。 たとえば、ビットマップに変換するときに特別な意味を持つ[RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/)プロパティを使用してメタファイルイメージをレンダリングする方法を決定できます([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions)

## ラスター操作のサポート

ラスター操作は複雑なメタファイル機能であり、現在サポートされている機能は限られています。 ラスタ演算はWMFおよびEMFメタファイル形式で使用できます。 EMF+メタファイル形式はラスタ演算を直接使用しませんが、EMF部分、埋め込みWMFまたはEMFメタファイルを含めることができます。

バイナリラスタ操作と三項ラスタ操作があります:

- バイナリラスター操作は、線や曲線の描画などのペン描画コマンドに適用されます。 線を描画するとき、ペンの色は、16進数の色値で指定されたビット単位の論理演算を使用して、宛先ビットマップの色（デバイス表面上の対応するピク 次の画像の例は、20種類のカラーバーに適用された16個のバイナリラスター操作すべての効果を示しています。 垂直カラーバーは最初に描画され、水平バーは各バイナリラスター操作が適用された後に描画されます。 単純なケースでは、R2_BLACKは黒を描画し、R2_NOTは色を反転し、R2_NOPは背景を変更せず、R2_WHITEは白を描画します。

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- ビットマップイメージを描画するときには、三項ラスタ操作が適用されます。 対応するビットマップイメージピクセル、ブラシ、および宛先ビットマップの色を、指定されたhex色値でビット単位の論理演算を使用して結合します。 三項ラスタ演算を使用する最も一般的な目的の1つは、透明度のエミュレーションです。 以下の例で提供されている画像は、アイコンの透明度をエミュレートする方法を示しています。 ビットマップには、b/wマスクビットマップとカラービットマップの2種類があります。 まず、SRCANDラスタ操作でマスクビットマップが描画されます。 不透明なアイコン領域を白黒に変更し、透明な領域は変更されません。 次に、2番目のビットマップがSRCINVERTラスタ操作で描画されます。 黒の領域にカラーピクセルが表示され、透明な領域は変更されません。

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

ラスター操作をベクターグラフィックスに直接変換することはできません。 Aspose.Wordsラスタ操作の影響を受けるデバイスサーフェスを部分的にラスタライズすることにより、ラスタ操作をエミュレートします。 この目的のために、[EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations)プロパティが使用されます。

{{% alert color="primary" %}}

バイナリラスター操作は現在サポートされておらず、限られた数の三項ラスター操作はAspose.Wordsでサポートされていますが、ベクターグラフィックスへの変換の基本, R2_BLACK, R2_WHITE, R2_NOP. また、デバイスサーフェスのラスタライズは、特に多数のラスタ操作レコードが含まれている場合に、パフォーマンスに大きく影響します。

{{% /alert %}}

以下の例では、メタファイルレコードの一部をベクターグラフィックスに正しくレンダリングできない場合に、Aspose.Wordsがメタファイルをビットマップにレンダーする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
