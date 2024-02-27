---
title: Python でのブックマークの操作
second_title: Python via .NET用Aspose.Words
articleTitle: ブックマークの操作
linktitle: ブックマークの操作
description: "Python を使用してブックマークを挿入、取得、移動、表示、非表示にする方法。"
type: docs
weight: 180
url: /ja/python-net/working-with-bookmarks/
---

ブックマークは、将来の参照のために名前を付けて特定した場所またはフラグメントを Microsoft Word ドキュメント内で識別します。たとえば、ブックマークを使用して、後で修正するテキストを特定できます。ドキュメントをスクロールしてテキストを見つける代わりに、[ブックマーク] ダイアログ ボックスを使用してテキストに移動できます。

Aspose.Words を使用してブックマークで実行できるアクションは、Microsoft Word を使用して実行できるアクションと同じです。新しいブックマークの挿入、削除、ブックマークへの移動、ブックマーク名の取得または設定、ブックマークに囲まれたテキストの取得または設定を行うことができます。 Aspose.Words を使用すると、レポートやドキュメントでブックマークを使用して、ブックマークにデータを挿入したり、そのコンテンツに特別な書式設定を適用したりすることもできます。ブックマークを使用して、文書内の特定の場所からテキストを取得することもできます。

## ブックマークを挿入する

[start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) と [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) を使用して、それぞれ開始と終了をマークしてブックマークを作成します。同じブックマーク名を両方のメソッドに渡すことを忘れないでください。文書内のブックマークは、任意の範囲に重ねたり、またがったりすることができます。間違った形式のブックマークや重複した名前のブックマークは、ドキュメントの保存時に無視されます。

{{% alert color="primary" %}}

ブックマーク内のすべての空白はアンダースコアに置き換えられました。 DOCX や DOC などの MS Word 形式のブックマークには空白を含めることができないため、この制限は MS Word 形式に由来しています。ただし、PDF ではそのようなブックマークが可能です。これで、PDF または XPS アウトラインでブックマークを使用する必要がある場合、空白を含めてブックマークを使用できるようになりました。

{{% /alert %}}

次のコード例は、新しいブックマークを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## ブックマークを取得する

場合によっては、ブックマークを反復処理するため、またはその他の目的でブックマーク コレクションを取得する必要があります。このノードに含まれるドキュメントの部分を表す [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) オブジェクトを返すドキュメント ノードによって公開される [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) プロパティを使用します。このオブジェクトを使用して [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) を取得し、コレクション インデクサーを使用して特定のブックマークを取得します。

{{% alert color="primary" %}}

これらの例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、ブックマーク コレクションからブックマークを取得する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

次のコード例は、ブックマーク名とテキストを取得または設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

次のコード例は、テーブルをブックマークする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

ブックマークの名前をドキュメント内に既に存在する名前に変更しても、エラーは生成されず、ドキュメントを保存するときに最初のブックマークのみが保存されます。

ドキュメント内の一部のブックマークはフォーム フィールドに割り当てられていることに注意してください。このようなブックマークに移動してそこにテキストを挿入すると、そのテキストがフォーム フィールド コードに挿入されます。これによってフォーム フィールドは無効になりませんが、挿入されたテキストはフィールド コードの一部になるため表示されなくなります。

次のコード例は、ブックマークされたテーブルの列にアクセスする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## ブックマークに移動

リッチ コンテンツ (プレーン テキストだけでなく) をブックマークに挿入する必要がある場合は、[move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) を使用してカーソルをブックマークに移動し、[DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) メソッドとプロパティを使用してコンテンツを挿入する必要があります。

## 表示 ブックマークの内容を非表示にする

ブックマーク全体 (*ブックマークされたコンテンツを含む*) は、Aspose.Words を使用して `IF` フィールドの True 部分内にカプセル化できます。 `IF` フィールドの式 (*演算子の左側*) にネストされた差し込みフィールドが含まれており、差し込みフィールドの値に応じて、`IF` フィールドで Word 文書のブックマークの内容が表示または非表示になります。

次のコード例は、ブックマークを表示/非表示にする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
