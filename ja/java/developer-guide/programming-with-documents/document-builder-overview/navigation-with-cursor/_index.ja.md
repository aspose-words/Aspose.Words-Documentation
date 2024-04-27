---
title: Cursorのナビゲーション Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: Cursorによるナビゲーション
linktitle: Cursorによるナビゲーション
description: "段落、ブックマーク、または特定の文字などのドキュメント内の異なるノード間でナビゲート Javaお問い合わせ"
type: docs
weight: 5
url: /ja/java/navigation-with-cursor/
---

文書を扱う間、短くても長いものであっても、ドキュメントをナビゲートする必要があります。 仮想カーソルを持つナビゲーションは、ドキュメント内の異なるノード間でナビゲートする機能を表します。

短い文書では、キーボードの矢印キーを使用しても、マウスをクリックして必要な場所にあるインサートポイントを見つけるだけで、ドキュメントを移動するのは簡単です。 しかし、多くのページを持っている大きな文書を持っていると、これらの基本技術は不十分です。

この記事では、ドキュメントを移動する方法を説明し、仮想カーソルを別の部分に移動します。

## 現在のカーソル位置の検出

ドキュメントをナビゲートするプロセスを開始する前に、現在選択したノードを取得する必要があります。 選択したノードでカーソルの位置を正確に取得できます。 [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) 宿泊施設 また、現在のノードを取得する代わりに、現在選択されているパラグラフまたは現在選択されているセクションを使用できます。 [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) そして、 [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) プロパティ。

実行するインサート操作 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 事前に差し込みます [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode)お問い合わせ 現在の段落が空かカーソルが段落の直前に置かれるとき、 **CurrentNode** null を返します。

## ドキュメントでメソッドをナビゲートする

テキストを編集するときは、ドキュメントをナビゲートする方法と、その中に正確に移動する方法を知ることが重要です。 Aspose.Words ドキュメントを移動し、さまざまなセクションと部分に移動することができます。これはナビゲーションペインの機能に似ています Microsoft Word ページに移動するか、スクロールせずにWord文書で見出します。

main メソッドは、ドキュメント内の特定のノードにカーソル位置を移動させることができるので、これを実現できます。 [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) メソッド。

次のコードの例では、移動する方法を示します。 **DocumentBuilder** ドキュメント内の異なるノードへ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

しかし、基本に加えて **MoveTo** メソッドは、より特定のものがあります。

### ドキュメントの開始または終了にナビゲート

ドキュメントの先頭または末尾に移動できます。 [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) そして、 [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) メソッド。

次のコードの例では、カーソルの位置を先頭またはドキュメントの末尾に移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### ブックマークでナビゲート

あなたが見つけたい場所をマークし、簡単にそれを移動することができます。 必要に応じて多くのブックマークをドキュメントに差し込み、ブックマークを一意の名前で特定することでそれらをナビゲートできます。 ブックマークに移動して、 [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) メソッド。

次のコードの例では、カーソル位置をブックマークに移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### テーブルセルに移動

使用するとテーブルセルに移動できます。 [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) メソッド。 このメソッドは、特定のテーブルでカーソルを任意のセルに移動することができます。 また、カーソルをセル内の任意の位置または指定された文字に移動するインデックスを指定できます。 **MoveToCell** メソッド。

次のコードの例では、カーソル位置を指定されたテーブルセルに移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### フィールドに移動

ドキュメント内の特定のフィールドに使用することで移動できます。 [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) メソッド。 また、特定のマージフィールドに使用することで移動することができます。 [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) メソッド。

次のコードの例では、ドキュメントビルダーカーソルを特定のフィールドに移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### ヘッダーまたはフッターに移動

ヘッダーまたはフッターの先頭に移動して、 [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) メソッド。

次のコードの例では、ドキュメントビルダーカーソルをドキュメントヘッダーまたはフッターに移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### セクションまたはパラグラフに移動

特定のセクションまたは段落に使用することで移動することができます [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) または [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) メソッド。 また、カーソルを任意の位置またはパラグラフ内の指定された文字に移動させるインデックスを指定できます。 **MoveToParagraph** メソッド。

次のコードの例では、特定のセクションとドキュメント内の特定の段落に移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
