---
title: Javaのドキュメントビルダーの概要
second_title: Aspose.WordsのためのJava
articleTitle: ドキュメントビルダーの概要
linktitle: ドキュメントビルダーの概要
type: docs
description: "DocumentBuilder動的なドキュメントを最初から作成したり、既存のドキュメントに新しい要素を追加したりできます。 DocumentBuilderは、テキスト、checkboxes、テーブル、画像、およびその他のコンテンツ要素をJavaに挿入するメソッドを提供します。"
weight: 30
url: /ja/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)は[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)に関連付けられた強力なクラスで、動的なドキュメントを最初から作成したり、既存のドキュメントに新しい要素を追加したりできます。[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)は、[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)に関連付けられた強力なクラスです。

**DocumentBuilder**

## ドキュメントビルダーまたはAspose.WordsDOM

**DocumentBuilder**

**DocumentBuilder**で可能な操作は、Aspose.WordsDOMのクラスを直接使用する場合にも可能です。 ただし、Aspose.WordsDOMクラスを直接使用するには、通常、**DocumentBuilder**を使用するよりも多くのコード行が必要です。

## ドキュメントナビゲーション

文書ナビゲーションは仮想カーソルの概念に基づいており、[MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)や[MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)などのさまざまな**DocumentBuilder.MoveToXXX**メソッドを使用して文書内の別の場所に移動できます。 この仮想カーソルは、メソッドを呼び出すときにテキストが挿入される場所を示します[Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), と他の人。 仮想カーソルの詳細については、次の記事"カーソルを使用したナビゲーション"を参照してください。

次のコード例は、ブックマークに移動する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## 文書の作成と変更

Aspose.WordsAPIは、文書のさまざまな要素の書式設定を担当するいくつかのクラスを提供します。 各クラスは、text、paragraph、sectionなどの特定のドキュメント要素に関連する書式設定プロパティをカプセル化します。 たとえば、[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)クラスは文字の書式設定プロパティを表し、[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)クラスは段落の書式設定プロパティを表します。 これらのクラスのオブジェクトは、クラスと同じ名前を持つ対応する**DocumentBuilder**プロパティによって返されます。 したがって、ドキュメントのビルド中にそれらにアクセスして目的の書式設定を設定できます。

テキスト、checkbox、oleオブジェクト、画像、ブックマーク、フォームフィールド、その他のドキュメント要素を`Write`メソッドまたは[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)、[InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String)などの**DocumentBuilder.InsertXXX**メソッドのいずれかを使用して、カーソル位置に挿入することもできます。

**DocumentBuilder**を使用して簡単な文書を作成する方法を見てみましょう。

### DocumentBuilderを使用して文書を作成する

開始するには、**DocumentBuilder**を作成し、それを**Document**オブジェクトに関連付ける必要があります。 コンストラクタを呼び出して**DocumentBuilder**の新しいインスタンスを作成し、それを**Document**オブジェクトに渡してビルダーに添付します。

テキストを挿入するには、ドキュメントに挿入する必要があるテキストの文字列を**Write**メソッドに渡します。

次のコード例は、ドキュメントビルダーを使用して単純なドキュメントを作成する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### 文書の書式設定を指定する

[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)プロパティはテキストの書式設定を定義します。 このオブジェクトには、さまざまなフォント属性(フォント名、フォントサイズ、色など)が含まれています。 いくつかの重要なフォント属性は、直接アクセスできるように**DocumentBuilder**プロパティでも表されます。 これらは、[Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold)、[Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic)、および[Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)ブールプロパティです。

次のコード例は、**DocumentBuilder**を使用して書式設定されたテキストを挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)は、文書内の現在の位置から挿入されたすべてのテキストに適用される文字書式を指定します。
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)挿入する現在の段落とすべての段落の段落書式を指定します。
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/)は、現在のセクションおよび挿入されるセクション全体のページおよびセクションプロパティを指定します。
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)と[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)は、文書内の現在の位置からテーブルのセルと行に適用される書式設定プロパティを指定します。

この場合、「現在」とは、カーソルが置かれている位置、段落、セクション、セル、または行を意味します。

{{% /alert %}}

{{% alert color="primary" %}}

**Font**、**ParagraphFormat**、および**PageSetup**プロパティは、ドキュメント内の別の場所に移動するたびに更新され、この場所の書式設定プロパティが反映されることに注意してく

{{% /alert %}}
