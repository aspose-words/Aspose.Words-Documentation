---
title: 透かしの作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 透かしのある作業
linktitle: 透かしのある作業
type: docs
description: "ドキュメント透かし操作を使用して Javaお問い合わせ"
weight: 70
url: /ja/java/working-with-watermark/
---

このトピックでは、透かしを使ってプログラム的に作業する方法について説明します Aspose.Wordsお問い合わせ 透かしは文書のテキストの後ろに表示する背景画像です。 透かしは、テキストやイメージを表わすことができます。 [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) クラス。

{{% alert color="primary" %}}

**オンラインで試す**

この機能を試してみる [無料オンライン文書透かし](https://products.aspose.app/words/watermark)お問い合わせ

{{% /alert %}}

## ドキュメントに透かしを追加する

インスタグラム Microsoft Word, Insert Watermark コマンドを使用してドキュメントに透かしを簡単に差し込むことができます。 Aspose.Words 提供して下さい [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) 文書に透かしを追加または削除するクラス。 Aspose.Words 提供して下さい [ウォーターマーク タイプ:](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)3種類の透かし(テキスト、画像、およびなし)を定義する列挙。

### テキスト透かしを追加

次のコードの例では、ドキュメントにテキスト透かしを記述する方法を示します。 [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) 利用する [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) メソッド:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### 画像透かしを追加

次のコードの例では、ドキュメントにイメージ透かしを入れる方法を示します。 [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) 利用する [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) メソッド:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

形状クラスでも透かしを出すこともできます。 形状やイメージをヘッダやフッターに挿しやすく、想像力のあるタイプの透かしを作成します。

次のコードは、ウォーターマークをWord文書に差し込みます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)お問い合わせ

{{% /alert %}}


## ドキュメントから透かしを取り除く

ザ・オブ・ザ・ [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) クラスは `Remove` ドキュメントから透かしを取り除く方法。

次のコードの例では、文書から透かしを削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

インサート時に透かし形状の名前だけを設定し、割り当てられた名前で透かし形状を削除しなければならない文書から透かしを削除する。

次のコードの例では、透かしの形の名前を設定し、文書から削除する方法を示します。

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## ウォーターマークをテーブルセルに追加する

時々、テーブルのセルに透かし/画像を入れ、テーブルの外に表示する必要があります。 [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) 宿泊施設 このプロパティは、形状がテーブルまたは外側に表示されているかどうかを示すフラグを取得します。 このプロパティはドキュメントを最適化する際にのみ機能します Microsoft Word 2010年 使用 [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) メソッド。

以下のコードの例では、このプロパティを使用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
