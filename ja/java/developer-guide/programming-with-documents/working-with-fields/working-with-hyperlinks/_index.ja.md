---
title: Java内のハイパーリンクの操作
second_title: Aspose.WordsのためのJava
articleTitle: ハイパーリンクの追加または変更
linktitle: ハイパーリンクの追加または変更
description: "Javaを使用して文書にハイパーリンクを追加する方法。"
type: docs
weight: 50
url: /ja/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word文書内のハイパーリンクは`HYPERLINK`フィールドです。 Aspose.Wordsでは、ハイパーリンクは[FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/)クラスを介して実装されます。

## ハイパーリンクを挿入する

ドキュメントにハイパーリンクを挿入するには、[InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean)メソッドを使用します。 このメソッドは、次の3つのパラメーターを受け入れます:

1. ドキュメントに表示されるリンクのテキスト
2. リンク先(URLまたは文書内のブックマークの名前)
3. `URL`がドキュメント内のブックマークの名前である場合にtrueにする必要があるBooleanパラメータ

**InsertHyperlink**メソッドは、常にURLの先頭と末尾にアポストロフィを追加します。

{{% alert color="primary" %}}

`Font`プロパティを使用して、ハイパーリンク表示テキストのフォント書式を明示的に指定する必要があることに注意してください。

{{% /alert %}}

次のコード例は、[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)を使用してドキュメントにハイパーリンクを挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## ハイパーリンクの置換または変更

Microsoft Word文書内のハイパーリンクはフィールドです。 前述したように、Word文書のフィールドは、フィールドの開始、フィールドコード、フィールドの区切り文字、フィールドの結果、フィールドの終了を含む複数のノードで構成される複雑な構造です。 フィールドは入れ子にすることができ、リッチコンテンツを含み、ドキュメント内の複数の段落またはセクションにまたがることができます。

ハイパーリンクを置き換えたり変更したりするには、文書内のハイパーリンクを見つけて、テキストURLsまたはその両方を置き換える必要があります。

次のコード例は、Word文書内のすべてのハイパーリンクを検索し、それらの`URL`と表示名を変更する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
