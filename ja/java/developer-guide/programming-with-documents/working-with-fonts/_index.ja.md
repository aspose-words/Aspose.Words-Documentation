---
title: Javaでのフォントの操作
second_title: Aspose.WordsのためのJava
articleTitle: フォントの操作
linktitle: フォントの操作
description: "Javaを使用した詳細なフォントの書式設定。"
type: docs
weight: 230
url: /ja/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

フォントは、特定のサイズ、色、およびデザインを持つ文字のセットです。 Aspose.Wordsを使用すると、[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)クラスを含むさまざまなフォント関連のクラスを使用してフォントを操作できます。

## フォントの書式設定

現在のフォントの書式は、[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)プロパティによって返される**Font**オブジェクトで表されます。 **Font**クラスには、Microsoft Wordで可能なさまざまなフォントプロパティが含まれています。

次のコード例は、フォントの書式設定を設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

フォントでテキストの塗りつぶしの書式設定を設定するための塗りつぶしプロパティも使用できるようになりました。 これは、例えば、テキスト塗りつぶしの前景色や透明度を変更する機能を提供します。

## フォントの行間隔を取得する

フォントの行間隔は、連続する2行のテキストのベースライン間の垂直方向の距離です。 したがって、行間には、文字自体の高さとともに行間の空白が含まれます。

次の例に示すように、この値を取得するために[LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing)プロパティが**Font**クラスに導入されました:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## フォントEmphasisMark

**Font**クラスは、書式設定に適用されるEmphasisMark列挙値を取得または設定する[EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark)プロパティを提供します。

次のコード例は、**EphasisMark**プロパティを設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
