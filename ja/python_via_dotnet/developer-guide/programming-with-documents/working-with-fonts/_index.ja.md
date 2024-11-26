---
title: Python でのフォントの操作
second_title: Python via .NET用Aspose.Words
articleTitle: フォントの操作
linktitle: フォントの操作
description: "Python を使用してフォント設定をカスタマイズします。"
type: docs
weight: 230
url: /ja/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

フォントとは、特定のサイズ、色、デザインを持つ文字のセットです。 Aspose.Words では、[fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) モジュールと [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) クラスを使用してフォントを操作できます。

## フォントの書式設定

現在のフォントの書式設定は、[Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) プロパティによって返される **Font** オブジェクトによって表されます。 **Font** クラスには、Microsoft Word で使用可能なフォント プロパティを複製した、さまざまなフォント プロパティが含まれています。

次のコード例は、フォントの書式設定を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

フォントの塗りつぶしプロパティを使用して、テキストの塗りつぶし書式を設定できるようになりました。たとえば、テキスト塗りつぶしの前景色や透明度を変更する機能が提供されます。

## フォントの行間隔の取得

フォントの行間隔は、テキストの連続する 2 行のベースライン間の垂直方向の距離です。したがって、行間隔には、行間の空白スペースと文字自体の高さが含まれます。

以下の例に示すように、この値を取得するために、[line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) プロパティが [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) クラスに導入されました。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## フォント強調マーク

一部の東アジア言語では、強調を示すために特別な強調記号を使用します。 **Font** クラスは、書式設定に適用される [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) 列挙値を取得または設定するための [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) プロパティを提供します。

次のコード例は、**EphasisMark** プロパティを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
