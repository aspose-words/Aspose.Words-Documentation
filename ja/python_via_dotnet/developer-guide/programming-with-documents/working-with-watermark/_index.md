---
title: Python でのウォーターマークの操作
second_title: Python via .NET用Aspose.Words
articleTitle: ウォーターマークの使用
linktitle: ウォーターマークの使用
description: "Python を使用してドキュメント内のウォーターマークを作成および管理します。"
type: docs
weight: 340
url: /ja/python-net/working-with-watermark/
---

このトピックでは、Aspose.Words を使用してプログラムでウォーターマークを操作する方法について説明します。ウォーターマークは、文書内のテキストの背後に表示される背景画像です。ウォーターマークには、[Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) クラスで表されるテキストまたはイメージを含めることができます。

{{% alert color="primary" %}}

**オンラインで試す**

この機能は [無料のオンライン文書透かし](https://products.aspose.app/words/watermark) で試すことができます。

{{% /alert %}}

## 文書に透かしを追加する方法

Microsoft Word では、[ウォーターマークの挿入] コマンドを使用して、ウォーターマークをドキュメントに簡単に挿入できます。 Aspose.Words は、ドキュメントにウォーターマークを追加または削除するための [ウォーターマーク](https://reference.aspose.com/words/python-net/aspose.words/watermark/) クラスを提供します。 Aspose.Words は、使用できる 3 種類のウォーターマーク ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text)、[IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image)、[NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) を定義する [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) 列挙を提供します。

### テキストの透かしを追加する

次のコード例は、[set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) メソッドを使用して [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) を定義することによって、ドキュメントにテキストの透かしを挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### 画像の透かしを追加する

次のコード例は、[set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) メソッドを使用して [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) を定義することにより、ドキュメントに画像のウォーターマークを挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

ウォーターマークは、シェイプクラスを使用して挿入することもできます。ヘッダーやフッターに任意の形状や画像を挿入することは非常に簡単で、考えられるあらゆる種類の透かしを作成できます。

次のコード例では、Word 文書にウォーターマークを挿入します。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [ここ](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}


## 文書から透かしを削除する

[Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) クラスは、ドキュメントからウォーターマークを削除するための Remove メソッドを提供します。

次のコード例は、ドキュメントからウォーターマークを削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) クラス オブジェクトを使用してウォーターマークが追加されている場合、ドキュメントからウォーターマークを削除するには、挿入時にウォーターマーク形状の名前のみを設定し、割り当てられた名前でウォーターマーク形状を削除する必要があります。

次のコード例は、透かし図形の名前を設定し、ドキュメントから削除する方法を示しています。

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## 表のセルに透かしを追加する

場合によっては、透かしや画像を表のセルに挿入し、表の外に表示する必要がある場合は、[is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) プロパティを使用できます。このプロパティは、図形がテーブルの内側に表示されるかテーブルの外側に表示されるかを示すフラグを取得または設定します。このプロパティは、[optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) メソッドを使用して Microsoft Word 2010 用にドキュメントを最適化する場合にのみ機能することに注意してください。

次のコード例は、このプロパティの使用方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
