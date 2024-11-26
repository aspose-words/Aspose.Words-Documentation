---
title: C++でのブックマークの操作
second_title: C++の場合Aspose.Words
articleTitle: ブックマークの操作
linktitle: ブックマークの操作
description: "ブックマークの概念と、c++を使用してプログラムでブックマークを使用する方法を理解します。"
type: docs
weight: 180
url: /ja/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

ブックマークは、Microsoft Wordドキュメント内で、将来の参照のために名前を付けて識別する場所またはフラグメントを識別します。 たとえば、ブックマークを使用して、後で修正するテキストを識別することができます。 ドキュメントをスクロールしてテキストを見つける代わりに、ブックマークダイアログボックスを使用してドキュメントに移動できます。

Aspose.Wordsを使用してブックマークで実行できるアクションは、Microsoft Wordを使用して実行できるアクションと同じです。 新しいブックマークの挿入、削除、ブックマークへの移動、ブックマーク名の取得または設定、ブックマークに囲まれたテキストの取得または設定ができます。 Aspose.Wordsを使用すると、レポートまたはドキュメントのブックマークを使用して、ブックマークにデータを挿入したり、コンテンツに特別な書式を適用したりする ブックマークを使用して、文書内の特定の場所からテキストを取得することもできます。

## ブックマークを挿入する

[StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/)と[EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/)を使用して、それぞれ開始と終了をマークしてブックマークを作成します。 両方のメソッドに同じブックマーク名を渡すことを忘れないでください。 文書内のブックマークは、任意の範囲に重複してまたがることができます。 不適切に形成されたブックマークまたは重複した名前のブックマークは、文書を保存するときに無視されます。

次のコード例は、新しいブックマークを作成する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## ブックマークを取得する

ブックマークを反復処理するために、または他の目的のためにブックマークコレクションを取得する必要がある場合があります。 このノードに含まれる文書の部分を表す[Range](https://reference.aspose.com/words/cpp/aspose.words/range/)オブジェクトを返す任意の文書ノードによって公開される[Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/)プロパティを使用します。 このオブジェクトを使用して[BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/)を取得し、コレクションインデクサを使用して特定のブックマークを取得します。

次のコード例は、ブックマークコレクションからブックマークを取得する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

ブックマーク名とテキストを取得または設定する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

次のコード例は、テーブルをブックマークする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

ブックマークの名前を文書に既に存在する名前に変更した場合、エラーは生成されず、文書を保存するときに最初のブックマークのみが保存されます。

{{% alert color="primary" %}}

ドキュメント内のブックマークの中には、フォームフィールドに割り当てられているものがあります。 そのようなブックマークに移動してテキストを挿入すると、テキストがフォームフィールドコードに挿入されます。 これによりフォームフィールドが無効になることはありませんが、挿入されたテキストはフィールドコードの一部になるため表示されません。

{{% /alert %}}

## ブックマークに移動する

(プレーンテキストだけでなく)リッチコンテンツをブックマークに挿入する必要がある場合は、[MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/)を使用してカーソルをブックマークに移動し、[DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)メソッドと

## ブックマークのコンテンツを非表示にする

ブックマーク全体(*including the bookmarked content*)は、Aspose.Wordsを使用して`IF`フィールドの真の部分にカプセル化できます。 `IF`フィールドに式(*Left of Operator*)にネストされた差し込み項目が含まれ、差し込み項目の値に応じて、`IF`フィールドにWord文書のブックマークの内容が表示または非表示にな

ブックマークを表示/非表示にする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
