---
title: ブックマークでの作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ブックマークと連携
linktitle: ブックマークと連携
description: "ブックマークの概念を理解し、ブックマークをプログラムで使用する方法 Javaお問い合わせ"
type: docs
weight: 180
url: /ja/java/working-with-bookmarks/
---

ブックマークを識別する Microsoft Word 将来の参照の名前と識別する場所やフラグメントを文書化します。 たとえば、ブックマークを使用して、後で修正したいテキストを識別できます。 ドキュメントをスクロールしてテキストを見つける代わりに、ブックマーク ダイアログ ボックスを使用してそれに行くことができます。

と Aspose.Words, ブックマークをレポートやドキュメントで使用して、いくつかのデータをブックマークに差し込むか、コンテンツを特別なフォーマットを適用することができます。 また、ブックマークを使用して文書内の特定の場所からテキストを取得することもできます。

ブックマークを使用して実行できるアクション Aspose.Words 使うことができるものと同じです。 Microsoft Wordお問い合わせ 新しいブックマーク、削除、ブックマークに移動、ブックマーク名の取得、またはテキストの埋め込みを設定することができます。

## ブックマークを入力

使用条件 [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) そして、 [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) それぞれ、開始と終了をマークすることでブックマークを作成する。 同じブックマーク名を両方のメソッドに渡すことを忘れないでください。 ドキュメントのブックマークは、任意の範囲を重ねてスパンさせることができます。 文書が保存されると、重複した名前を持つ著名なブックマークやブックマークが無視されます。

{{% alert color="primary" %}}

ブックマークのすべての空白はアンダースコアに置き換えられました。 DOCX や DOC など、MS の Word 形式のブックマークはホワイトスペースがないため、この制限は MS Word 形式から来た。 ただし、PDFではこのようなブックマークを使用できます。 そのため、PDFでブックマークを使用する必要がある場合、 XPS またはSWFの輪郭は、白いスペースでそれらを使うことができます。

{{% /alert %}}

次のコードの例では、新しいブックマークを作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## ブックマークを入手

時々、ブックマークや他の目的のために反復するためにブックマークコレクションを取得する必要があります。 利用する **Node.getランゲ** 任意のドキュメント ノードによって露出されるプロパティ **Range** このノードに含まれるドキュメントの部分を表すオブジェクト。 このオブジェクトを使用して、 **BookmarkCollection** 次に、コレクションのインデックスを使用して、特定のブックマークを取得します。

{{% alert color="primary" %}}

以下の例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx)お問い合わせ

{{% /alert %}}

以下のコードの例では、ブックマークコレクションからブックマークを取得する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

次のコードの例では、ブックマーク名とテキストの取得または設定方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

次のコードの例では、テーブルをブックマークする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

文書に既に存在する名前にブックマークの名前を変更すると、ドキュメントを保存したときにエラーが生成されず、最初のブックマークのみが保存されます。

ドキュメントのブックマークはフィールドのフォームに割り当てられます。 このようなブックマークに移動し、テキストをフォームフィールドコードに差し込みます。 フォームフィールドを無効化しませんが、フィールドコードの一部になるため、インサートされたテキストは表示されません。

以下のコードの例では、ブックマークされたテーブルの列へのアクセス方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## ブックマークに移動

豊富なコンテンツ(単なるテキストではなく)をブックマークに入れる必要がある場合は、 [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) カーソルをブックマークに移動し、次に使用します **DocumentBuilder** コンテンツをインサートするメソッドとプロパティ。

## ブックマークコンテンツを非表示にする

ブックマーク全体(*ブックマークコンテンツを含む*)は、真の部分内でカプセル化することができます `IF` フィールド使用 Aspose.Wordsお問い合わせ そのような方法では、 `IF` フィールドは、式(*演算子の左)でネストされたマージフィールドを含み、マージフィールドの値に応じて、 `IF` フィールドは、Word文書のブックマークの内容を表示または非表示にします。

次のコードの例では、ブックマークを表示/非表示する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
