---
title: 脚注と文末脚注の操作
second_title: Python via .NET用Aspose.Words
articleTitle: 脚注と文末脚注の操作
linktitle: 脚注と文末脚注の操作
description: "ffonote または endnote を文書に挿入し、Python を使用してオプションを指定します。"
type: docs
weight: 160
url: /ja/python-net/working-with-footnote-and-endnote/
---

Aspose.Words は、脚注と文末脚注を操作するためのいくつかのクラス、メソッド、プロパティも提供します。

## 文末脚注の挿入と番号付けオプションの設定

Word文書に脚注や文末脚注を挿入したい場合は、[insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/)メソッドを使用してください。このメソッドは、文書に脚注または文末脚注を挿入します。

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) クラスと [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) クラスは、脚注と文末脚注の番号付けオプションを表します。

次のコード例は、文書に文末脚注を挿入し、その番号付けオプションを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## 脚注レイアウトの列数を設定する

[columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) プロパティを使用して、脚注レイアウトの列数を設定できます。このプロパティの値が 0 の場合、脚注領域は、表示されているページの列数に基づいて、いくつかの列でフォーマットされます。

次のコード例は、脚注レイアウトの列数を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## 脚注と文末脚注の位置を設定する

脚注の位置は、各ページの下部または各ページのテキストの下に配置できます。文末脚注の位置は、セクションの終わりまたは文書の終わりにできます。

次のコード例は、脚注と文末脚注の位置を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
