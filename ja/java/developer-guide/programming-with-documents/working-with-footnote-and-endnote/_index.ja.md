---
title: Javaで脚注と文末脚注を操作する
second_title: Aspose.WordsのためのJava
articleTitle: 脚注と文末脚注の操作
linktitle: 脚注と文末脚注の操作
description: "Javaを使用して脚注と文末脚注を操作する方法。"
type: docs
weight: 160
url: /ja/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsは、脚注と文末脚注を操作するためのクラス、メソッド、プロパティも提供します。

## 文末脚注の挿入と番号付けオプションの設定

Word文書に脚注または文末脚注を挿入する場合は、[InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String)メソッドを使用してください。 このメソッドは、脚注または文末脚注を文書に挿入します。

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/)クラスと[FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/)クラスは、脚注と文末脚注の番号付けオプションを表します。

次のコード例は、文書にendnoteを挿入し、その番号付けオプションを設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## 脚注レイアウト列の数を設定する

[Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns)プロパティを使用して脚注レイアウト列の数を設定できます。 このプロパティの値が0の場合、脚注領域は、表示されるページの列数に基づいて列数で書式設定されます。

脚注レイアウトの列数を設定する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## 脚注とEndNoteの位置を設定します

脚注の位置は、各ページの下部または各ページのテキストの下に配置できます。 文末脚注の位置は、セクションの終わりまたは文書の終わりにすることができます。

次のコード例は、脚注と文末脚注の位置を設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
