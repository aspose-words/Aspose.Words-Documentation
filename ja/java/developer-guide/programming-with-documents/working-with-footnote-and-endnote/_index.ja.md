---
title: フットノートとエンドノートで作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: フットノートとエンドノートで作業
linktitle: フットノートとエンドノートで作業
description: "脚注を操作する方法と、脚注を操作する方法 Javaお問い合わせ"
type: docs
weight: 160
url: /ja/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words また、フットノートやエンドノートを扱うためのクラス、メソッド、プロパティを提供しています。

## インサートの終了と設定番号オプション

メモやWord文書にメモを記入したい場合は、 [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) メソッド。 このメソッドは、フットノートをドキュメントに差し込みます。

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) そして、 [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) フットノートとエンドノートの数値化オプションを表すクラスです。

次のコードの例では、ドキュメントにendnoteを差し込み、番号付けオプションを設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## 脚注レイアウト列のセット番号

フットノートのレイアウト列の数を設定できます。 [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) 宿泊施設 このプロパティに 0 の値がある場合、フットノート領域は、表示されたページ上の列の数に基づいて列の数でフォーマットされます。

次のコードの例では、フットノートレイアウトの列数を設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## フットノートとエンドノートの位置を設定します

各ページの一番下にあるか、各ページのテキストの下にあるようにする。 エンドノートの位置は、セクションの最後に、または文書の最後にすることができます。

次のコードの例では、フットノートとエンドノートの位置を設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
