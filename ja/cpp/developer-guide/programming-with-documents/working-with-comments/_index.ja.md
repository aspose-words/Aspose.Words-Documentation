---
title: C++でのコメントの操作
second_title: C++の場合Aspose.Words
articleTitle: コメントの操作
linktitle: コメントの操作
description: "C++を使用してコメントを操作します。"
type: docs
weight: 260
url: /ja/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**オンラインで試す**

あなたは私たちのこの機能を試すことができます [無料オンライン注釈を削除](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Wordsはユーザーがコメントを操作できるようにします–Aspose.Wordsのドキュメント内のコメントは[Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)クラスで表されます。 また、[CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/)クラスと[CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/)クラスを使用して、コメントに関連付けるテキストの領域を指定します。

## コメントを追加する

Aspose.Wordsでは、いくつかの方法でコメントを追加できます:

1. [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)クラスの使用
2. [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/)クラスと[CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)クラスの使用

次のコード例は、**Comment**クラスを使用して段落にコメントを追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

次のコード例は、テキストの領域と**CommentRangeStart**クラスと**CommentRangeEnd**クラスを使用して段落にコメントを追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## コメントの抽出または削除

Word文書でコメントを使用する(変更の追跡に加えて)ことは、文書をレビューするとき、特に複数のレビュー担当者がいる場合に一般的な方法です。 あなたが文書から必要とする唯一のものがコメントである状況があるかもしれません。 レビュー結果のリストを生成したい場合や、ドキュメントからすべての有用な情報を収集し、不要なコメントを削除したい場合などです。 特定のレビュー担当者のコメントを表示または削除することができます。

このサンプルでは、ドキュメント内のコメントから情報を収集し、ドキュメントからコメントを削除するための簡単な方法をいくつか見ていきます。 具体的には、次の方法について説明します:

- ドキュメントからすべてのコメントを抽出するか、特定の作成者によって作成されたコメントのみを抽出します。
- ドキュメントからすべてのコメントを削除するか、特定の作成者からのみ削除します。

### コメントを抽出または削除する方法

このサンプルのコードは実際には非常に単純であり、すべてのメソッドは同じアプローチに基づいています。 Word文書内のコメントは、Aspose.Wordsドキュメントオブジェクトモデル内の[Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)オブジェクトによって表されます。 ドキュメント内のすべてのコメントを収集するには、最初のパラメータを[NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/)に設定して[GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/)メソッドを使用します。 **GetChildNodes**メソッドの2番目のパラメータがtrueに設定されていることを確認してください：これにより、**GetChildNodes**は直接の子のみを収集するのではなく、すべての子ノードか

ドキュメントからコメントを抽出して削除する方法を説明するために、次の手順を実行します:

1. [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)クラスを使用してWord文書を開く
1. ドキュメントのすべてのコメントをコレクションに取得する
1. コメントを抽出するには:
   1. Foreach演算子を使用してコレクションを調べます
   1. すべてのコメントの著者名、日付と時刻、テキストを抽出してリストします
   1. 特定の著者、この場合は著者'ks'によって書かれたコメントの著者名、日付と時刻とテキストを抽出してリストします
1. コメントを削除するには:
   1. For the演算子を使用してコレクションを逆方向に移動します
   1. コメントを削除する
1. 変更を保存する

### すべてのコメントを抽出する方法

**GetChildNodes**メソッドは非常に便利で、任意のタイプのドキュメントノードのリストを取得する必要があるたびに使用できます。 このコレクション内の項目を列挙またはアクセスする場合にのみ、ノードがこのコレクション内で選択されるため、結果のコレクションでは即時オーバ

次のコード例は、ドキュメント内のすべてのコメントの作成者名、日付と時刻、およびテキストを抽出する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### 指定された著者のコメントを抽出する方法

コレクションにコメントノードを選択したら、必要な情報を抽出するだけです。 このサンプルでは、作成者のイニシャル、日付、時刻、およびコメントのプレーンテキストが1つの文字列に結合されています。代わりに、他の方法で保存することもできます。

特定の著者からコメントを抽出するオーバーロードされたメソッドはほぼ同じですが、配列に情報を追加する前に著者の名前をチェックするだけです。

次のコード例は、指定された作成者によるコメントの作成者名、日付と時刻、およびテキストを抽出する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### コメントを削除する方法

すべてのコメントを削除する場合は、コメントを1つずつ削除するコレクション内を移動する必要はありません。commentsコレクションで`NodeCollection.Clear`を呼び出すことで、それらを削除できます。

次のコード例は、ドキュメント内のすべてのコメントを削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

コメントを選択的に削除する必要がある場合、プロセスはコメント抽出に使用したコードに似たものになります。

次のコード例は、指定した作成者によるコメントを削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

ここで強調する主なポイントは、for演算子の使用です。 単純な抽出とは異なり、ここではコメントを削除します。 適切なトリックは、最後のコメントから最初のコメントまでコレクションを逆方向に反復することです。 この理由最後から開始して後方に移動すると、前の項目のインデックスは変更されず、コレクション内の最初の項目に戻ることができます。

次のコード例は、コメントの抽出と削除のメソッドを示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### CommentRangeStartとCommentRangeEndの間のコメントを削除する方法

Aspose.Wordsを使用すると、**CommentRangeStart**ノードと**CommentRangeEnd**ノードの間のコメントを削除することもできます。

次のコード例は、**CommentRangeStart**と**CommentRangeEnd**の間のテキストを削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## コメントの返信を追加および削除する

[AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/)メソッドはこのコメントに返信を追加します。 既存のMicrosoft Officeの制限により、文書内では1レベルの返信のみが許可されていることに注意してください。 このメソッドが既存の返信コメントに対して呼び出されると、タイプ*InvalidOperationException*の例外が発生します。

このコメントに対する指定された返信を削除するには、[RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/)メソッドを使用できます。

次のコード例は、コメントに返信を追加し、コメントの返信を削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## コメントの返信を読む

[Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/)プロパティは、指定されたコメントの直接の子である**Comment**オブジェクトのコレクションを返します。

次のコード例は、コメントの返信を反復処理して解決する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
