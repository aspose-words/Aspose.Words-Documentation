---
title: Javaでのブックマークの操作
second_title: Aspose.WordsのためのJava
articleTitle: ブックマークの操作
linktitle: ブックマークの操作
description: "ブックマークの概念と、Javaを使用してプログラムでブックマークを使用する方法を理解します。"
type: docs
weight: 180
url: /ja/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

ブックマークは、Microsoft Wordドキュメント内で、将来の参照のために名前を付けて識別する場所またはフラグメントを識別します。 たとえば、ブックマークを使用して、後で修正するテキストを識別することができます。 ドキュメントをスクロールしてテキストを見つける代わりに、ブックマークダイアログボックスを使用してドキュメントに移動できます。

Aspose.Wordsを使用すると、レポートまたはドキュメントのブックマークを使用して、ブックマークにデータを挿入したり、その内容に特別な書式を適用したりで ブックマークを使用して、文書内の特定の場所からテキストを取得することもできます。

Aspose.Wordsを使用してブックマークで実行できるアクションは、Microsoft Wordを使用して実行できるアクションと同じです。 新しいブックマークの挿入、削除、ブックマークへの移動、ブックマーク名の取得または設定、ブックマークに囲まれたテキストの取得または設定ができます。

## ブックマークを挿入する

[startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String)と[endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String)を使用して、それぞれ開始と終了をマークしてブックマークを作成します。 両方のメソッドに同じブックマーク名を渡すことを忘れないでください。 文書内のブックマークは、任意の範囲に重複してまたがることができます。 不適切に形成されたブックマークまたは重複した名前のブックマークは、文書を保存するときに無視されます。

{{% alert color="primary" %}}

ブックマーク内のすべての空白はアンダースコアに置き換えられました。 DOCXやDOCのようなMSワード形式のブックマークには空白を含めることができないため、この制限はMSワード形式から発生しました。 ただし、PDFはそのようなブックマークを許可します。 したがって、PDF、XPS、またはSWFのアウトラインでブックマークを使用する必要がある場合は、空白で使用できます。

{{% /alert %}}

次のコード例は、新しいブックマークを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## ブックマークを取得する

ブックマークを反復処理するために、または他の目的のためにブックマークコレクションを取得する必要がある場合があります。 このノードに含まれる文書の部分を表す**Range**オブジェクトを返す任意の文書ノードによって公開される**Node.getRange**プロパティを使用します。 このオブジェクトを使用して**BookmarkCollection**を取得し、コレクションインデクサを使用して特定のブックマークを取得します。

{{% alert color="primary" %}}

以下の例のサンプルファイルは、以下からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

次のコード例は、ブックマークコレクションからブックマークを取得する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

ブックマーク名とテキストを取得または設定する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

次のコード例は、テーブルをブックマークする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

ブックマークの名前を文書に既に存在する名前に変更した場合、エラーは生成されず、文書を保存するときに最初のブックマークのみが保存されます。

ドキュメント内のブックマークの中には、フォームフィールドに割り当てられているものがあります。 そのようなブックマークに移動してテキストを挿入すると、テキストがフォームフィールドコードに挿入されます。 これによりフォームフィールドが無効になることはありませんが、挿入されたテキストはフィールドコードの一部になるため表示されません。

次のコード例は、ブックマークされたテーブルの列にアクセスする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## ブックマークに移動する

(プレーンテキストだけでなく)リッチコンテンツをブックマークに挿入する必要がある場合は、[moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)を使用してカーソルをブックマークに移動し、**DocumentBuilder**メソッドと

## ブックマークのコンテンツを非表示にする

ブックマーク全体(*including the bookmarked content*)は、Aspose.Wordsを使用して`IF`フィールドの真の部分にカプセル化できます。 `IF`フィールドに式(*Left of Operator*)にネストされた差し込み項目が含まれ、差し込み項目の値に応じて、`IF`フィールドにWord文書のブックマークの内容が表示または非表示にな

次のコード例は、ブックマークを表示/非表示にする方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
