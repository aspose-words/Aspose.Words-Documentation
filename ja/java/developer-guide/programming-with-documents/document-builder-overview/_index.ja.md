---
title: ドキュメントビルダー 会社概要 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントビルダー概要
linktitle: ドキュメントビルダー概要
type: docs
description: "DocumentBuilderを使用すると、動的文書をゼロから作成したり、新しい要素を既存の要素に追加したりすることができます。 DocumentBuilder は、テキスト、チェックボックス、テーブル、画像、その他のコンテンツ要素をテキスト、チェックボックス、テーブル、画像などの要素に差し込む方法を提供します。 Javaお問い合わせ"
weight: 30
url: /ja/java/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 強力なクラスで、 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 動的文書をゼロから作成したり、新しい要素を既存の要素に追加したりすることができます。

**DocumentBuilder** テキスト、チェックボックス、オブジェクト、段落、リスト、テーブル、画像、その他のコンテンツ要素をインサートする方法を提供します。 フォント、段落、セクションのフォーマットを指定し、他の操作を実行できます。

## ドキュメントビルダーまたは Aspose.Words DOM

**DocumentBuilder** クラスとメソッドを補完する Aspose.Words Document Object Model ( )DOM)最も一般的な文書作成タスクを簡素化します。 つまり、両方の文書の内容を作成および変更することができます。 Aspose.Words DOMツリー構造をよく理解し、ドキュメントビルダーを使用する必要があります。 ザ・オブ・ザ・ `DocumentBuilder` 複雑な「ファサード」 **Document** コンテンツやフォーマットを素早く簡単に入力できる構造です。

可能な操作 **DocumentBuilder** クラスのクラスを使う場合も可 Aspose.Words DOM 直接。 しかしながら、 Aspose.Words DOM クラスは、通常、使用するよりも多くのコードの行を必要とします **DocumentBuilder**お問い合わせ

## 文書の運行

ドキュメントナビゲーションは仮想カーソルの概念に基づいており、さまざまな方法でドキュメント内の別の場所に移動できます **DocumentBuilder.MoveToXXX** などの方法 [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) そして、 [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)お問い合わせ この仮想カーソルは、メソッドを呼び出すときにテキストが差し込まれる場所を示します。 [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), その他。 バーチャルカーソルについて詳しく知るには、次の記事「カーサーとナビゲート」を参照してください。

次のコードの例では、ブックマークに移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## 文書作成と修正

Aspose.Words API 文書のさまざまな要素をフォーマットする責任がある複数のクラスを提供します。 各クラスは、テキスト、段落、セクションなどの特定の文書要素に関連する特定の文書要素に関する整形プロパティをカプセル化します。 例えば、 [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) クラスは文字の書式プロパティを表し、 [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) クラスは段落の書式プロパティを表します。 これらのクラスのオブジェクトは、対応するクラスで返されます。 **DocumentBuilder** class と同じ名前を持つプロパティ。 そのため、ドキュメントビルド中に目的の書式を設定できます。

また、カーソル位置のテキスト、チェックボックス、ole オブジェクト、画像、ブックマーク、フォームフィールド、その他のドキュメント要素をカーソル位置で入力することもできます。 `Write` 方法または方法 **DocumentBuilder.InsertXXX** 方法、のような [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), そして同じような方法。

簡単なドキュメントを作成する方法を見てみましょう。 **DocumentBuilder**お問い合わせ

### DocumentBuilder を使用してドキュメントを作成する

始めるためには、作成する必要があります **DocumentBuilder** そしてそれをと関連付けて下さい **Document** オブジェクト。 新しいインスタンスを作成する **DocumentBuilder** コンストラクタを呼び出して、それをコンストラクタに渡します **Document** ビルダーに添付するためのオブジェクト。

テキストを差し込むには、ドキュメントに差し込む必要があるテキストの文字列を渡します。 **Write** メソッド。

以下のコードの例では、ドキュメントビルダーを使用して簡単なドキュメントを作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### ドキュメントのフォーマットを指定する

ザ・オブ・ザ・ [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) プロパティはテキストの書式を定義します。 このオブジェクトには、異なるフォント属性(フォント名、フォントサイズ、色など)が含まれています。 重要なフォント属性も、 **DocumentBuilder** 直接アクセスできるようにするプロパティ。 これらは [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), そして、 [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) boolean プロパティ.

次のコードの例では、フォーマットされたテキストを、 **DocumentBuilder**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- - - [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) 文書の現在の位置から入力されるすべてのテキストに適用される文字の書式を指定します。
- - - [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) 現在の段落と全ての段落の段落を差し込みます。
- - - [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) ページとセクションのプロパティを現在のセクションとセクション全体に指定します。
- - - [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) そして、 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) 文書の現在の位置からテーブルセルと行に適用される整形プロパティを指定します。

この状況では、カーソルが位置、段落、セクション、セル、または行を「current」と言います。

{{% /alert %}}

{{% alert color="primary" %}}

注意: **Font**, **ParagraphFormat**, そして、 **PageSetup** この場所の書式特性を反映するために、文書内の異なる場所に移動すると、プロパティが更新されます。

{{% /alert %}}
