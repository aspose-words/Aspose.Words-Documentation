---
title: C# でのウォーターマークの操作
second_title: .NET用Aspose.Words
articleTitle: ウォーターマークの使用
linktitle: ウォーターマークの使用
description: "C# を使用したドキュメントの透かし操作。"
type: docs
weight: 340
url: /ja/net/working-with-watermark/
---

このトピックでは、Aspose.Words を使用してプログラムでウォーターマークを操作する方法について説明します。透かしは、文書内のテキストの背後に表示される背景画像です。ウォーターマークには、[Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) クラスで表されるテキストまたはイメージを含めることができます。

{{% alert color="primary" %}}

**オンラインで試す**

この機能は [無料のオンライン文書透かし](https://products.aspose.app/words/watermark) で試すことができます。

{{% /alert %}}

## 文書に透かしを追加する

Microsoft Word では、[ウォーターマークの挿入] コマンドを使用して、ウォーターマークをドキュメントに簡単に挿入できます。 Aspose.Words は、ドキュメントにウォーターマークを追加または削除するための [ウォーターマーク](https://reference.aspose.com/words/net/aspose.words/watermark/) クラスを提供します。 Aspose.Words は、使用できる 3 つのタイプのウォーターマーク (テキスト、イメージ、およびなし) を定義する [透かしの種類](https://reference.aspose.com/words/net/aspose.words/watermark/type/)enumeration を提供します。

### テキストの透かしを追加する

次のコード例は、[SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) メソッドを使用して [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) を定義することにより、ドキュメントにテキストの透かしを挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### 画像の透かしを追加する

次のコード例は、[SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) メソッドを使用して [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) を定義することにより、ドキュメントに画像のウォーターマークを挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

ウォーターマークは、シェイプクラスを使用して挿入することもできます。ヘッダーやフッターに任意の形状や画像を挿入することは非常に簡単で、考えられるあらゆる種類の透かしを作成できます。

次のコード例では、Word 文書にウォーターマークを挿入します。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}


## 文書から透かしを削除する

[Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) クラスは、ドキュメントからウォーターマークを削除するための Remove メソッドを提供します。

次のコード例は、ドキュメントからウォーターマークを削除する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

[Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) クラス オブジェクトを使用してウォーターマークが追加されている場合、ドキュメントからウォーターマークを削除するには、挿入時にウォーターマーク形状の名前のみを設定し、割り当てられた名前でウォーターマーク形状を削除する必要があります。

次のコード例は、透かし図形の名前を設定し、ドキュメントから削除する方法を示しています。

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## 表のセルに透かしを追加する

場合によっては、透かしや画像を表のセルに挿入し、表の外に表示する必要がある場合は、[IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) プロパティを使用できます。このプロパティは、図形がテーブルの内側に表示されるかテーブルの外側に表示されるかを示すフラグを取得または設定します。このプロパティは、[OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) メソッドを使用して Microsoft Word 2010 用にドキュメントを最適化する場合にのみ機能することに注意してください。

次のコード例は、このプロパティの使用方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
