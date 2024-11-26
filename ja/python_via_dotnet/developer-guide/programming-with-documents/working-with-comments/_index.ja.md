---
title: Python でのコメントの操作
second_title: Python via .NET用Aspose.Words
articleTitle: コメントの操作
linktitle: コメントの操作
description: "Python を使用してドキュメント内のコメントを追加、削除、または操作する方法。"
type: docs
weight: 260
url: /ja/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**オンラインで試す**

この機能は [無料のオンライン注釈削除](https://products.aspose.app/words/annotation) で試すことができます。

{{% /alert %}}

Aspose.Words を使用すると、ユーザーはコメントを操作できます。Aspose.Words のドキュメント内のコメントは [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) クラスで表されます。また、[CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) クラスと [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) クラスを使用して、コメントに関連付けるテキストの領域を指定します。

## コメントを追加する

Aspose.Words では、いくつかの方法でコメントを追加できます。

1. [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) クラスの使用
2. [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) クラスと [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) クラスの使用

次のコード例は、**Comment** クラスを使用して段落にコメントを追加する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

次のコード例は、テキスト領域と **CommentRangeStart** クラスおよび **CommentRangeEnd** クラスを使用して段落にコメントを追加する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## コメントの抽出または削除

Word 文書内で (変更の追跡に加えて) コメントを使用することは、文書をレビューするとき、特に複数のレビュー担当者がいる場合に一般的に行われます。ドキュメントに必要なものがコメントだけである場合があります。レビュー結果のリストを生成したいとします。あるいは、文書からすべての有用な情報を収集し、単に不要なコメントを削除したいとします。特定の査読者のコメントを表示または削除したい場合があります。

このサンプルでは、ドキュメント内のコメントから情報を収集する方法と、ドキュメントからコメントを削除する方法の両方を行う簡単な方法をいくつか見ていきます。具体的には次の方法について説明します。

- ドキュメントからすべてのコメント、または特定の作成者によって作成されたコメントのみを抽出します。
- ドキュメントからすべてのコメントを削除するか、特定の作成者からのみコメントを削除します。

### コメントを抽出または削除する方法

このサンプルのコードは実際には非常に単純で、すべてのメソッドは同じアプローチに基づいています。 Word 文書内のコメントは、Aspose.Words 文書オブジェクト モデルの [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) オブジェクトによって表されます。ドキュメント内のすべてのコメントを収集するには、最初のパラメータを [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment) に設定して [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) メソッドを使用します。 **get_child_nodes** メソッドの 2 番目のパラメーターが true に設定されていることを確認します。これにより、**get_child_nodes** は直接の子だけを収集するのではなく、すべての子ノードから再帰的に選択するようになります。

ドキュメントからコメントを抽出および削除する方法を説明するために、次の手順を実行します。

1. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスを使用して Word 文書を開きます
1. ドキュメントからすべてのコメントをコレクションに取得します
1. コメントを抽出するには:
   1. foreach 演算子を使用してコレクションを調べます
   1. すべてのコメントの作成者名、日付と時刻、テキストを抽出してリストします。
   1. 特定の著者 (この場合は著者「ks」) が書いたコメントの著者名、日付と時刻、テキストを抽出してリストします。
1. コメントを削除するには:
   1. for 演算子を使用してコレクションを逆方向に移動します。
   1. コメントを削除する
1. 変更を保存します

### すべてのコメントを抽出する方法

[get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) メソッドは非常に便利で、あらゆる種類のドキュメント ノードのリストを取得する必要があるときはいつでも使用できます。このコレクション内の項目を列挙またはアクセスする場合にのみノードがこのコレクションに選択されるため、結果のコレクションでは直ちにオーバーヘッドが発生しません。

次のコード例は、ドキュメント内のすべてのコメントの作成者名、日付と時刻、テキストを抽出する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### 指定した作成者のコメントを抽出する方法

コレクションに [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ノードを選択したら、必要な情報を抽出するだけです。このサンプルでは、作成者のイニシャル、日付、時刻、およびコメントのプレーン テキストが 1 つの文字列に結合されます。代わりに、他の方法で保存することもできます。

特定の作成者からのコメントを抽出するオーバーロードされたメソッドはほぼ同じで、情報を配列に追加する前に作成者の名前をチェックするだけです。

次のコード例は、指定した作成者によるコメントの作成者名、日付と時刻、テキストを抽出する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### コメントを削除する方法

すべてのコメントを削除する場合は、コレクション内を移動してコメントを 1 つずつ削除する必要はありません。コメント コレクションで [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) を呼び出すことで、それらを削除できます。

次のコード例は、ドキュメント内のすべてのコメントを削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

コメントを選択的に削除する必要がある場合、そのプロセスはコメント抽出に使用したコードにより似たものになります。

次のコード例は、指定した作成者によるコメントを削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

ここで強調すべき主な点は、for 演算子の使用です。単純な抽出とは異なり、ここではコメントを削除します。適切な方法は、最後の [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) から最初の [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) までコレクションを逆方向に反復することです。その理由は、最後から開始して後方に移動すると、前の項目のインデックスは変更されず、コレクション内の最初の項目に戻ることができるためです。

次のコード例は、コメントの抽出と削除のメソッドを示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx) からダウンロードできます。

{{% /alert %}}

### CommentRangeStart と CommentRangeEnd の間のコメントを削除する方法

Aspose.Words を使用すると、**CommentRangeStart** ノードと **CommentRangeEnd** ノードの間のコメントを削除することもできます。

次のコード例は、**CommentRangeStart** と **CommentRangeEnd** の間のテキストを削除する方法を示しています。

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## コメントの返信を追加または削除する

[add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) メソッドは、このコメントに返信を追加します。 Microsoft Office の既存の制限により、ドキュメント内では 1 レベルの返信のみが許可されることに注意してください。このメソッドが既存の Reply コメントに対して呼び出された場合、**InvalidOperationException** 型の例外が発生します。

[remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) メソッドを使用して、このコメントに対する指定された返信を削除できます。

次のコード例は、コメントに返信を追加し、コメントの返信を削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## コメントの返信を読む

[replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) プロパティは、指定されたコメントの直接の子である [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) オブジェクトのコレクションを返します。

次のコード例は、コメントの返信を反復処理して解決する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
