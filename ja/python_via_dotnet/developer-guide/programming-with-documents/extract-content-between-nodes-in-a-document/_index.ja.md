---
title: ドキュメントノード間でコンテンツを抽出する
second_title: Python用Aspose.Words
articleTitle: ドキュメント内のノード間のコンテンツの抽出
linktitle: ノード間でコンテンツを抽出する
description: "Python を使用して、ドキュメント内の範囲から特定のコンテンツを簡単に抽出する方法。"
type: docs
weight: 140
url: /ja/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを操作する場合、ドキュメント内の特定の範囲からコンテンツを簡単に抽出できることが重要です。ただし、コンテンツは段落、表、画像などの複雑な要素で構成される場合があります。

どのようなコンテンツを抽出する必要があるかに関係なく、そのコンテンツを抽出する方法は常に、コンテンツを抽出するためにどのノードが選択されるかによって決まります。これらは、テキスト本文全体または単純なテキストの続きです。

多くの状況が考えられるため、コンテンツを抽出する際にはさまざまなノード タイプを考慮する必要があります。たとえば、次の間のコンテンツを抽出したい場合があります。

- 2 つの特定の段落
- 特定のテキストの続き
- 差し込みフィールドなどのさまざまなタイプのフィールド
- ブックマークまたはコメントの開始範囲と終了範囲
- さまざまなテキスト本文が別のセクションに含まれています

状況によっては、段落とフィールドの間、またはランとブックマークの間でコンテンツを抽出するなど、異なるノード タイプを組み合わせる必要がある場合もあります。

この記事では、異なるノード間でテキストを抽出するためのコード実装と、一般的なシナリオの例を示します。

{{% alert color="primary" %}}

これらの例は、さまざまな可能性のほんの一部を示しています。将来的にはテキスト抽出機能がパブリック API の一部となる予定であり、追加のコードは必要ありません。それまでの間、この機能に関するリクエストをお気軽に [Aspose.Words フォーラム](https://forum.aspose.com/c/words/8) に投稿してください。

{{% /alert %}}

## コンテンツを抽出する理由

多くの場合、コンテンツを抽出する目的は、コンテンツを複製するか、新しいドキュメントに個別に保存することです。たとえば、コンテンツを抽出して次のことを行うことができます。

- 別のドキュメントにコピーします
- 文書の特定の部分を PDF または画像に変換
- 文書内の内容を何度も複製する
- 文書の残りの部分とは別に抽出されたコンテンツを操作します

これは、Aspose.Words と以下のコード実装を使用して簡単に実現できます。

## コンテンツ抽出アルゴリズム

このセクションのコードは、一般化された再利用可能な 1 つのメソッドを使用して、上で説明したすべての考えられる状況に対処します。この手法の概要には次のものが含まれます。

1. ドキュメントから抽出されるコンテンツの領域を決定するノードを収集します。これらのノードの取得は、抽出したい内容に基づいてユーザーのコード内で処理されます。
1. これらのノードを以下に示す **ExtractContent** メソッドに渡します。また、マーカーとして機能するこれらのノードを抽出に含めるかどうかを示すブール値パラメーターも渡す必要があります。
1. 抽出するように指定されたクローンコンテンツ (コピーされたノード) のリストを取得します。このノードのリストは、選択したコンテンツのみを含む新しいドキュメントを作成するなど、適切な方法で使用できます。

## コンテンツを抽出する方法

ドキュメントからコンテンツを抽出するには、以下の **コンテンツの抽出** メソッドを呼び出し、適切なパラメータを渡す必要があります。この方法の基礎となるのは、ブロック レベルのノード (段落とテーブル) を検索し、それらを複製して同一のコピーを作成することです。渡されたマーカー ノードがブロック レベルの場合、メソッドはそのレベルのコンテンツを単純にコピーして配列に追加できます。

ただし、マーカー ノードがインライン (段落の子) である場合、実行やブックマーク フィールドなどの段落をインライン ノードで分割する必要があるため、状況はより複雑になります。クローン化された親ノードのコンテンツはそうではありません。マーカー間に存在するものが削除されます。このプロセスは、インライン ノードが親段落の書式設定を確実に保持するために使用されます。このメソッドは、パラメーターとして渡されたノードのチェックも実行し、いずれかのノードが無効な場合は例外をスローします。このメソッドに渡されるパラメータは次のとおりです。

1.**スタートノード**と**エンドノード**。最初の 2 つのパラメータは、コンテンツの抽出をそれぞれ開始および終了する場所を定義するノードです。これらのノードは、ブロック レベル ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)、またはインライン レベル ([Run](https://reference.aspose.com/words/python-net/aspose.words/run/)、[FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)、[BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) など)) の両方にすることができます。
   1. フィールドを渡すには、対応する [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) オブジェクトを渡す必要があります。
   1. ブックマークを渡すには、[BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ノードと [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) ノードを渡す必要があります。
   1. コメントを渡すには、[CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ノードと [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) ノードを使用する必要があります。
1.**包括的です**。マーカーが抽出に含まれるかどうかを定義します。このオプションが false に設定され、同じノードまたは連続したノードが渡された場合、空のリストが返されます。
   1. [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ノードが渡された場合、このオプションはフィールド全体を含めるか除外するかを定義します。
   1. [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) または [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) ノードが渡された場合、このオプションはブックマークが含まれるか、それともブックマーク範囲間のコンテンツのみが含まれるかを定義します。
   1. [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) または [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) ノードが渡された場合、このオプションはコメント自体を含めるか、コメント範囲内のコンテンツのみを含めるかを定義します。

**コンテンツの抽出** メソッドの実装には [ここ](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py) があります。この方法は、この記事のシナリオで参照されます。

また、抽出されたノードからドキュメントを簡単に生成するためのカスタム メソッドも定義します。このメソッドは、以下の多くのシナリオで使用され、単純に新しいドキュメントを作成し、抽出されたコンテンツをそこにインポートします。

次のコード例は、ノードのリストを取得して新しいドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## 段落間のコンテンツを抽出する

これは、上記のメソッドを使用して特定の段落間のコンテンツを抽出する方法を示しています。この場合、文書の前半にある手紙の本文を抽出したいと考えています。これは 7 番目の段落と 11 番目の段落の間にあることがわかります。

以下のコードはこのタスクを実行します。ドキュメント上で [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) メソッドを使用し、指定されたインデックスを渡すことで、適切な段落が抽出されます。次に、これらのノードを **コンテンツの抽出** メソッドに渡し、これらのノードが抽出に含まれることを示します。このメソッドは、これらのノード間でコピーされたコンテンツを返し、新しいドキュメントに挿入されます。

次のコード例は、上記の **コンテンツの抽出** メソッドを使用して特定の段落間のコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## 異なるタイプのノード間でコンテンツを抽出する

ブロック レベルまたはインライン ノードの任意の組み合わせの間でコンテンツを抽出できます。以下のこのシナリオでは、最初の段落と 2 番目のセクションの表の間のコンテンツを包括的に抽出します。ドキュメントの 2 番目のセクションで [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) および [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) メソッドを呼び出して、適切な [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ノードと [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ノードを取得することにより、マーカー ノードを取得します。わずかなバリエーションとして、代わりにコンテンツを複製し、元のものの下に挿入してみましょう。

次のコード例は、**コンテンツの抽出** メソッドを使用して段落と表の間のコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## スタイルに基づいて段落間のコンテンツを抽出する

見出しスタイルでマークされた段落間など、同じまたは異なるスタイルの段落間でコンテンツを抽出する必要がある場合があります。

以下のコードは、これを実現する方法を示しています。これは、見出しを抽出せずに、「見出し 1」スタイルと「見出し 3」スタイルの最初のインスタンスの間のコンテンツを抽出する簡単な例です。これを行うには、最後のパラメータを false に設定します。これは、マーカー ノードを含めないことを指定します。

適切な実装では、これをループ内で実行して、ドキュメントからこれらのスタイルのすべての段落間のコンテンツを抽出する必要があります。抽出されたコンテンツは新しいドキュメントにコピーされます。

次のコード例は、**コンテンツの抽出** メソッドを使用して特定のスタイルで段落間のコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## 特定の実行間のコンテンツの抽出

[Run](https://reference.aspose.com/words/python-net/aspose.words/run/) などのインライン ノード間でもコンテンツを抽出できます。異なる段落からの連続をマーカーとして渡すことができます。以下のコードは、同じ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ノード間の特定のテキストを抽出する方法を示しています。

次のコード例は、**コンテンツの抽出** メソッドを使用して、同じ段落の特定の実行の間でコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## フィールドを使用してコンテンツを抽出する

フィールドをマーカーとして使用するには、[FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ノードを渡す必要があります。 **コンテンツの抽出** メソッドの最後のパラメータは、フィールド全体を含めるかどうかを定義します。文書内の「FullName」差し込みフィールドと段落の間のコンテンツを抽出してみましょう。 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)クラスの[DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/)メソッドを使用します。これにより、渡された差し込みフィールドの名前から [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ノードが返されます。

この例では、**コンテンツの抽出** メソッドに渡される最後のパラメータを `False` に設定して、フィールドを抽出から除外しましょう。抽出したコンテンツを PDF にレンダリングします。

次のコード例は、**コンテンツの抽出** メソッドを使用してドキュメント内の特定のフィールドと段落の間のコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## ブックマークからコンテンツを抽出する

ドキュメントでは、ブックマーク内で定義されたコンテンツは、[BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ノードと [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) ノードによってカプセル化されます。これら 2 つのノードの間にあるコンテンツがブックマークを構成します。ドキュメント内で開始マーカーが終了マーカーより前に表示される限り、これらのノードのいずれかを任意のマーカーとして渡すことができます。異なるブックマークのマーカーであっても同様です。以下のコードを使用して、このコンテンツを新しいドキュメントに抽出します。 **包括的です** パラメーター オプションは、ブックマークを保持または破棄する方法を示します。

次のコード例は、**コンテンツの抽出** メソッドを使用してブックマークを参照しているコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## コメントからコンテンツを抽出する

コメントは、[CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/)、[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)、および [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ノードで構成されます。これらのノードはすべてインラインです。以下のスクリーンショットに示すように、最初の 2 つのノードは、コメントによって参照されるドキュメント内のコンテンツをカプセル化します。 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ノード自体は、段落とランを含めることができる [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) です。これは、レビュー ペインのコメント バブルとして表示されるコメントのメッセージを表します。このノードはインラインで本文の子孫であるため、このメッセージ内からコンテンツを抽出することもできます。

コメントは、見出し、最初の段落、および 2 番目のセクションの表をカプセル化します。このコメントを新しいドキュメントに抽出してみましょう。 **包括的です** オプションは、コメント自体を保持するか破棄するかを決定します。

次のコード例は、これを行う方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## テキストのみを抽出する方法

ドキュメントからテキストを取得する方法は次のとおりです。

- [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) を使用してプレーンテキストとしてファイルまたはストリームに保存します
- [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) を使用し、[SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) パラメータを渡します。内部的には、メモリ ストリームへのテキストとして保存を呼び出し、結果の文字列を返します。
- [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) を使用して、フィールド コードを含むすべての Microsoft Word 制御文字を含むテキストを取得します

### Node.get_text と Node.to_string の使用

Word 文書には、フィールド、セルの終わり、セクションの終わりなどの特別な要素を指定する制御文字を含めることができます。使用可能な Word 制御文字の完全なリストは、[ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) クラスで定義されています。 [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) メソッドは、ノード内に存在するすべての制御文字を含むテキストを返します。

[to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) を呼び出すと、制御文字を含まないドキュメントのプレーン テキスト表現のみが返されます。プレーン テキストとしてのエクスポートの詳細については、「[SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) の使用」を参照してください。

次のコード例は、ノードでの [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) メソッドと [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) メソッドの呼び出しの違いを示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### `SaveFormat.Text`の使用

この例では、ドキュメントを次のように保存します。

- フィールド文字とフィールドコード、形状、脚注、文末脚注、およびコメント参照をフィルタリングして除外します。
- 段落の終わりの **ControlChar.Cr** 文字を **ControlChar.CrLf** の組み合わせに置き換えます
- UTF8エンコーディングを使用します

次のコード例は、ドキュメントを TXT 形式で保存する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## 図形から画像を抽出する

一部のタスクを実行するには、ドキュメント画像を抽出する必要がある場合があります。 Aspose.Words を使用すると、これも行うことができます。

次のコード例は、ドキュメントから画像を抽出する方法を示しています。

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
