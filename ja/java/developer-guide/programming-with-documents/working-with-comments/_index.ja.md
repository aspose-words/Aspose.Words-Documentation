---
title: コメントを書く Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: コメントを扱う
linktitle: コメントを扱う
description: "コメントの操作 Javaお問い合わせ"
type: docs
weight: 260
url: /ja/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**オンラインで試す**

この機能を試してみる [無料オンライン削除アノテーション](https://products.aspose.app/words/annotation)お問い合わせ

{{% /alert %}}

Aspose.Words ユーザーがコメントで作業できるようにする – ドキュメントのコメント Aspose.Words は、 [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) クラス。 また使用して下さい [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) そして、 [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) コメントに関連付けられるべきテキストの領域を指定するクラス。

## コメントを追加

Aspose.Words いくつかの方法でコメントを追加することができます。

1。 使い方 [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) レッスン
2。 使い方 [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) そして、 [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) クラス

次のコードの例では、段落にコメントを追加する方法を示します。 **Comment** クラス:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

次のコードの例では、テキストとテキストの領域を使用して段落にコメントを追加する方法を示します **CommentRangeStart** そして、 **CommentRangeEnd** クラス:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## コメントの抽出または削除

特に複数の査読者がある場合、Word文書(Track Changesに加えて)へのコメントを使用することは、文書をレビューするときに一般的な練習です。 ドキュメントから必要なのはコメントのみである状況があります。 レビューの検索リストを生成したいか、ドキュメントからすべての有用な情報を収集したか、不要なコメントを削除したいとしましょう。 特定の査読者のコメントを表示または削除する場合があります。

このサンプルでは、文書内のコメントから情報を収集し、文書からコメントを削除するための簡単な方法について説明します。 具体的には、次の方法について説明します。

- 文書からのすべてのコメントを抽出するか、特定の著者によって作られたものだけを抽出します。
- すべてのコメントを文書から削除するか、特定の著者からのみ削除します。

### コメントを抽出または削除する方法

このサンプルのコードは非常にシンプルで、すべてのメソッドは同じアプローチに基づいています。 Word文書のコメントは、 `Comment` オブジェクト内の Aspose.Words ドキュメントオブジェクトモデル。 ドキュメント内のすべてのコメントを収集するには、 [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) 最初のパラメータで設定したメソッド `NodeType.Comment`お問い合わせ 2番目のパラメータが **getChildNodes ノード** メソッドは、 true: この力は、 **getChildNodes ノード** 即時の子供を集めるのではなく、すべての子ノードから再帰的に選択します。

ドキュメントからコメントを抽出して削除する方法を説明するには、次の手順を実行します。

1。 ワード文書をWord文書で開く [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) レッスン
1。 ドキュメントからすべてのコメントをコレクションに追加
1。 コメントを抽出するには:
   1. オペレータのためにコレクションを通して下さい
   1。 すべてのコメントの著者名、日付、時刻、テキストを抽出し、リストします
   1. 特定の著者によって書かれたコメントの著者名、日付、時刻、テキストを抽出し、リストします。この場合、著者の「ks」
1。 コメントを削除する:
   1. オペレータのためのコレクションを使用して後方を行きます
   1. コメントを削除
1。 変更を保存する。

この演習では、次のWord文書を使用します。

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

ご覧のとおり、「pm」と「ks」の2つの著者からいくつかのコメントが含まれています。

### すべてのコメントを抽出する方法

ザ・オブ・ザ・ [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) メソッドは非常に便利で、任意のタイプのドキュメントノードのリストを取得するたびに使用できます。 生成されたコレクションは、ノードが列挙またはアクセス項目を列挙するときにのみ、このコレクションに選択されるため、即時にオーバーヘッドを作成しません。

次のコードの例では、文書のすべてのコメントの著者名、日時、テキストを抽出する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### 指定された著者のコメントを抽出する方法

コメントノードをコレクションに選択した後、必要な情報を抽出します。 このサンプルでは、著者の初期値、日付、時刻、コメントのプレーンテキストを1つの文字列にまとめます。代わりに他の方法で保存することもできます。

特定の著者からのコメントを抽出するオーバーロードされた方法は、ほぼ同じです, それはちょうど配列に情報を追加する前に、著者の名前をチェック.

次のコードの例では、指定された著者によるコメントの作者名、日時、テキストを抽出する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### コメントを削除する方法

すべてのコメントを削除している場合は、コメントを削除したコレクションを移動する必要はありません。 それらを呼び出して削除することができます [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) コメントコレクション。

次のコードの例では、ドキュメントのすべてのコメントを削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

選択的にコメントを削除する必要がある場合は、コメント抽出に使用するコードとプロセスが似ています。

次のコードの例では、指定された作者からコメントを削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

ここで強調する主なポイントは、オペレータの使用です。 簡単な抽出とは異なり、コメントを削除したいです。 適切なトリックは、最後のコメントから最初のコメントにコレクションを反復することです。 最後から始めて後方に移動すると、前のアイテムのインデックスは変更されず、コレクションの最初のアイテムに戻ることができます。

次のコードの例では、コメント抽出と削除のメソッドを示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc)お問い合わせ

{{% /alert %}}

起動すると、以下の結果が表示されます。 まず、すべての著者からすべてのコメントをリストし、選択した著者だけにコメントをリストします。 最後に、すべてのコメントを削除するコード。

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

出力されたWord文書は、それからコメントを削除しました。

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### CommentRangeStartとコメントRangeEndの間のテキストを削除する方法

使用方法 Aspose.Words また、CommentRangeStartとCommentRangeEndノード間のコメントを削除することもできます。

次のコードの例では、CommentRangeStartとCommentRangeEndの間にテキストを削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## コメントの返信を追加または削除する

ザ・オブ・ザ・ [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) このコメントに返信を追加する方法。 現行のMS Officeの制限は1つの(1)のみです。 このメソッドが既存の応答コメントで呼び出されると、型 InvalidOperationException の例外が発生します。

使うことができます。 [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) このコメントに指定した返信を削除する方法。

次のコードの例では、コメントに返信を追加し、コメントの返信を削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## コメントの返信を読む

Aspose.Words コメントの返信をお読みください。 ザ・オブ・ザ・ [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) プロパティはコレクションを返す [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) 指定されたコメントの即時の子供であるオブジェクト。

次のコードの例では、コメントの返信を繰り返して解決する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
