---
title: C# でのフォントの操作
second_title: .NET用Aspose.Words
articleTitle: フォントの操作
linktitle: フォントの操作
description: "C# を使用した詳細なフォントの書式設定。 C#の強調マーク。 C# を使用してフォントの行間隔を取得します。"
type: docs
weight: 230
url: /ja/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

フォントとは、特定のサイズ、色、デザインを持つ文字のセットです。 Aspose.Words では、[Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) 名前空間と [Font](https://reference.aspose.com/words/net/aspose.words/font/) クラスを使用してフォントを操作できます。

## フォントの書式設定

現在のフォントの書式設定は、[Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) プロパティによって返される **Font** オブジェクトによって表されます。 **Font** クラスには、Microsoft Word で使用可能なフォント プロパティを複製した、さまざまなフォント プロパティが含まれています。

次のコード例は、フォントの書式設定を設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

フォントの塗りつぶしプロパティを使用して、テキストの塗りつぶし書式を設定することもできます。これにより、たとえば前景色やテキスト塗りつぶしの透明度を変更できるようになります。

## フォントの行間隔の取得

フォントの行間隔は、テキストの連続する 2 行のベースライン間の垂直方向の距離です。したがって、行間隔には、行間の空白スペースと文字自体の高さが含まれます。

次の例に示すように、この値を取得するために [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) プロパティが **Font** クラスに導入されました。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## フォント強調マーク

一部の東アジア言語では、強調を示すために特別な強調記号を使用します。 **Font** クラスは、フォーマット時に適用される [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) 列挙値を取得または設定するための [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) プロパティを提供します。

次のコード例は、**EphasisMark** プロパティを設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
