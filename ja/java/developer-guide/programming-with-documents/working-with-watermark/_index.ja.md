---
title: Javaでの透かしの操作
second_title: Aspose.WordsのためのJava
articleTitle: 透かしの操作
linktitle: 透かしの操作
type: docs
description: "Javaを使用した文書の透かし操作。"
weight: 70
url: /ja/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

このトピックでは、Aspose.Wordsを使用して透かしをプログラムで操作する方法について説明します。 透かしは、ドキュメント内のテキストの後ろに表示される背景画像です。 透かしには、[Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/)クラスで表されるテキストまたは画像を含めることができます。

{{% alert color="primary" %}}

**オンラインで試す**

あなたは私たちのこの機能を試すことができます [無料のオンライン文書透かし](https://products.aspose.app/words/watermark).

{{% /alert %}}

## 文書に透かしを追加する

Microsoft Wordでは、[透かしの挿入]コマンドを使用して、文書に透かしを簡単に挿入できます。 Aspose.Wordsは、ドキュメント内の透かしを追加または削除するための[watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/)クラスを提供します。 Aspose.Wordsは[WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)列挙体を提供し、使用する透かしの3つのタイプ(テキスト、イメージ、およびなし)を定義します。

### テキスト透かしを追加

次のコード例は、[SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String)メソッドを使用して[TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/)を定義して、ドキュメントにテキスト透かしを挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### 画像の透かしを追加

次のコード例は、[SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage)メソッドを使用して[ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/)を定義して、ドキュメントに画像透かしを挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

透かしは、shapeクラスを使用して挿入することもできます。 ヘッダーやフッターに任意の形状や画像を挿入し、したがって、任意の想像できるタイプの透かしを作成することは非常に簡単です。

Word文書に透かしを挿入するコード例を次に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## 文書から透かしを削除する

[Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/)クラスは、文書から透かしを削除するための`Remove`メソッドを提供します。

次のコード例は、ドキュメントから透かしを削除する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

ドキュメントから透かしを削除するには、挿入中に透かし図形の名前のみを設定し、割り当てられた名前で透かし図形を削除する必要があります。

次のコード例は、透かし図形の名前を設定してドキュメントから削除する方法を示しています:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## 表のセルに透かしを追加する

テーブルのセルに透かし/画像を挿入してテーブルの外に表示する必要がある場合は、[IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean)プロパティを使用できます。 このプロパティは、図形がテーブルの内側に表示されるか、テーブルの外側に表示されるかを示すフラグを取得または設定します。 このプロパティは、[OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int)メソッドを使用してMicrosoft Word2010のドキュメントを最適化する場合にのみ機能することに注意してください。

次のコード例は、このプロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
