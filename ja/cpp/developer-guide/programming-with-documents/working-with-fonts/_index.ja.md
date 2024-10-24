---
title: C++でのフォントの操作
second_title: C++の場合Aspose.Words
articleTitle: フォントの操作
linktitle: フォントの操作
description: "C++を使用して詳細にフォントの書式設定。"
type: docs
weight: 230
url: /ja/cpp/working-with-fonts/
---

フォントは、特定のサイズ、色、およびデザインを持つ文字のセットです。 Aspose.Wordsを使用すると、[Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/)名前空間と[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)クラスを使用してフォントを操作できます。

## フォントの書式設定

現在のフォントの書式設定は、[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/)プロパティによって返される**Font**オブジェクトによって表されます。 **Font**クラスには、さまざまなフォントプロパティが含まれており、Microsoft Wordで使用可能なフォントプロパティを複製しています。

次のコード例は、フォントの書式設定を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

フォントでテキストの塗りつぶしの書式設定を設定するための塗りつぶしプロパティも使用できるようになりました。 これは、例えば、テキスト塗りつぶしの前景色や透明度を変更する機能を提供します。

## フォントの行間隔を取得する

フォントの行間隔は、連続する2行のテキストのベースライン間の垂直方向の距離です。 したがって、行間隔には、文字自体の高さとともに行間の空白が含まれます。

次の例に示すように、この値を取得するために[LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/)プロパティが**Font**クラスに導入されました:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## フォントEmphasisMark

一部の東アジア言語では、強調を示すために特別な強調マークを使用しています。 **Font**クラスは、書式設定時に適用される`EmphasisMark`列挙値を取得または設定する[EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/)プロパティを提供します。

次のコード例は、**EphasisMark**プロパティを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
