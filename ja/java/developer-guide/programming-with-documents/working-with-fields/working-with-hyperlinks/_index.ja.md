---
title: Hyperlinksと連携 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ハイパーリンクの追加または変更
linktitle: ハイパーリンクの追加または変更
description: "ドキュメントにハイパーリンクを追加する方法 Javaお問い合わせ"
type: docs
weight: 50
url: /ja/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

ハイパーリンク Microsoft Word ドキュメントは `HYPERLINK` フィールド。 インスタグラム Aspose.Words, ハイパーリンクの実装 [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) クラス。

## ハイパーリンクをインサートする

利用する [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) 文書にハイパーリンクを差し込む方法。 この方法は3つの変数を受け入れます:

1。 ドキュメントに表示されるリンクのテキスト
2。 リンク先(文書内のブックマークのURLまたは名前)
3。 Boolean パラメーター true もし `URL` ドキュメント内のブックマークの名前です。

ザ・オブ・ザ・ **InsertHyperlink** メソッドは URL の先頭と末尾に apostrophes を常に追加します。

{{% alert color="primary" %}}

ハイパーリンク表示テキストのフォントフォーマットを明示的に指定する必要があることに注意してください。 `Font` プロパティ.

{{% /alert %}}

次のコードの例では、ハイパーリンクをドキュメントに書き込む方法を示します。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## ハイパーリンクの置換または変更

ハイパーリンク Microsoft Word ドキュメントはフィールドです。 先に述べたように、Word文書のフィールドは、フィールドスタート、フィールドコード、フィールドセパレータ、フィールド結果、フィールドエンドを含む複数のノードで構成される複雑な構造です。 フィールドはネストされ、豊富なコンテンツと複数の段落やセクションを文書に含めることができます。

ハイパーリンクを交換または変更するには、文書内のハイパーリンクを見つけて、テキスト、URL、または両方を置き換える必要があります。

次のコードの例では、Word文書内のすべてのハイパーリンクを見つける方法と変更方法を示します。 `URL` 名前を表示して下さい:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
