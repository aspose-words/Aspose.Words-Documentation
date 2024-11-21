---
title: C++での透かしの操作
second_title: C++の場合Aspose.Words
articleTitle: 透かしの操作
linktitle: 透かしの操作
type: docs
description: "C++を使用した文書の透かし操作。"
weight: 340
url: /ja/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

このトピックでは、Aspose.Wordsを使用してwatermarkをプログラムで操作する方法について説明します。 透かしは、ドキュメント内のテキストの後ろに表示される背景画像です。 透かしには、[Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/)クラスで表されるテキストまたは画像を含めることができます。

## 文書に透かしを追加する

Microsoft Wordでは、[透かしの挿入]コマンドを使用して、文書に透かしを簡単に挿入できます。 Aspose.Wordsは、ドキュメント内の透かしを追加または削除するための[watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/)クラスを提供します。 Aspose.Wordsは、使用する透かしの3つのタイプ(テキスト、イメージ、およびなし)を定義する[WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)列挙体を提供します。

### テキスト透かしを追加

次のコード例は、[SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/)メソッドを使用して[TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/)を定義することにより、文書にテキスト透かしを挿入する方法を示しています。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### 画像の透かしを追加

次のコード例は、[SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/)メソッドを使用して[ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/)を定義することにより、ドキュメントに画像透かしを挿入する方法を示しています。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

透かしは、shapeクラスを使用して挿入することもできます。 ヘッダーやフッターに任意の形状や画像を挿入し、したがって、任意の想像できるタイプの透かしを作成することは非常に簡単です。 次のコード例では、word文書に透かしを挿入します。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## 文書から透かしを削除する

[Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/)クラスは、ドキュメントから透かしを削除するremoveメソッドを提供します。

次のコード例は、ドキュメントから透かしを削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

透かしが[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)クラスオブジェクトを使用して追加されている場合、文書から透かしを削除するには、挿入中に透かし図形の名前のみを設定し、割り当て

次のコード例は、透かし図形の名前を設定してドキュメントから削除する方法を示しています:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## テーブルセルに透かしを追加する

テーブルのセルに透かし/画像を挿入してテーブルの外に表示する必要がある場合は、[IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/)プロパティを使用できます。 このプロパティは、図形がテーブルの内側に表示されるか、テーブルの外側に表示されるかを示すフラグを取得または設定します。 このプロパティは、[OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/)メソッドを使用してMicrosoft Word2010のドキュメントを最適化する場合にのみ機能することに注意してください。

次のコード例は、このプロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
