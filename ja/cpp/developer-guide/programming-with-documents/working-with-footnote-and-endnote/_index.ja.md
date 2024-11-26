---
title: C++での脚注と文末脚注の操作
second_title: C++の場合Aspose.Words
articleTitle: 脚注と文末脚注の操作
linktitle: 脚注と文末脚注の操作
description: "C++を使用して脚注と文末脚注を操作する方法。"
type: docs
weight: 160
url: /ja/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsは、脚注と文末脚注を操作するためのクラス、メソッド、プロパティも提供します。

## 文末脚注の挿入と番号付けオプションの設定

Word文書に脚注または文末脚注を挿入する場合は、[InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/)メソッドを使用してください。 このメソッドは、脚注または文末脚注を文書に挿入します。

[EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/)クラスと[FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/)クラスは、脚注と文末脚注の番号付けオプションを表します。

次のコード例は、文書にendnoteを挿入し、その番号付けオプションを設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## 脚注レイアウト列の数を設定する

[Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/)プロパティを使用して脚注レイアウト列の数を設定できます。 このプロパティの値が0の場合、脚注領域は、表示されるページの列数に基づいて列数で書式設定されます。

脚注レイアウトの列数を設定する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## 脚注とEndNoteの位置を設定します

脚注の位置は、各ページの下部または各ページのテキストの下に配置できます。 文末脚注の位置は、セクションの終わりまたは文書の終わりにすることができます。

次のコード例は、脚注と文末脚注の位置を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
