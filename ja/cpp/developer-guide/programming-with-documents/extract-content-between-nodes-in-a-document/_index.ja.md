---
title: ドキュメントノード間でコンテンツを抽出する方法
second_title: C++の場合Aspose.Words
articleTitle: ドキュメント内のノード間でコンテンツを抽出する
linktitle: ノード間でコンテンツを抽出する
type: docs
description: "C++を使用して異なるドキュメントコンテンツを抽出します。"
weight: 140
url: /ja/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを操作するときは、ドキュメント内の特定の範囲からコンテンツを簡単に抽出できることが重要です。 ただし、コンテンツは、段落、表、画像などの複雑な要素で構成されている場合があります。

どのコンテンツを抽出する必要があるかにかかわらず、そのコンテンツを抽出する方法は、コンテンツを抽出するために選択されたノードによって常に決定されます。 これらは、テキスト本文全体または単純なテキスト実行にすることができます。

多くの可能な状況があるため、コンテンツを抽出する際に考慮すべき多くの異なるノードタイプがあります。 たとえば、次の間でコンテンツを抽出することができます:

- 二つの特定の段落
- テキストの特定の実行
- 差し込み項目など、さまざまなタイプの項目
- ブックマークまたはコメントの開始範囲と終了範囲
- 別のセクションに含まれるテキストのさまざまなボディ

状況によっては、段落とフィールドの間、または実行とブックマークの間のコンテンツの抽出など、異なるノードタイプを組み合わせる必要がある場合もあ

この記事では、異なるノード間でテキストを抽出するためのコード実装と、一般的なシナリオの例について説明します。

{{% alert color="primary" %}}

これらの例は、多くの可能性のほんの一部のデモンストレーションです。 将来的には、テキスト抽出機能をパブリックAPIの一部にする予定であり、追加のコードは必要ありません。 それまでの間、この機能に関するあなたの要求を自由に投稿してください [Aspose.Wordsフォーラム](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## なぜコンテンツを抽出するのか

多くの場合、コンテンツを抽出する目的は、コンテンツを複製または新しいドキュメントに個別に保存することです。 たとえば、コンテンツを抽出することができます。:

- 別の文書にコピーします
- 文書の特定の部分をPDFまたは画像に変換する
- ドキュメント内のコンテンツを何度も複製します
- ドキュメントの残りの部分とは別に抽出されたコンテンツを操作します

これは、Aspose.Wordsと以下のコード実装を使用して簡単に実現できます。

## コンテンツの抽出アルゴリズム

このセクションのコードは、1つの一般化された再利用可能な方法で、上記のすべての状況に対処します。 この手法の一般的な概要には、次のものが含まれます:

1. ドキュメントから抽出されるコンテンツの領域を指示するノードを収集します。 これらのノードの取得は、抽出したいものに基づいて、コード内のユーザーによって処理されます。
1. これらのノードを以下に示す**ExtractContent**メソッドに渡します。 また、マーカーとして機能するこれらのノードを抽出に含めるかどうかを示すbooleanパラメータを渡す必要があります。
1. 抽出されるように指定された複製されたコンテンツ（コピーされたノード）のリストを取得します。 このノードのリストは、選択したコンテンツのみを含む新しいドキュメントを作成するなど、任意の適用可能な方法で使用できます。

## コンテンツを抽出する方法

ドキュメントからコンテンツを抽出するには、以下の`ExtractContent`メソッドを呼び出し、適切なパラメータを渡す必要があります。 この方法の基礎となる基礎には、ブロックレベルのノード(段落と表)を見つけて、それらを複製して同一のコピーを作成することが含まれます。 渡されたマーカーノードがブロックレベルの場合、メソッドはそのレベルのコンテンツを単純にコピーして配列に追加することができます。

ただし、マーカーノードがインライン（段落の子）の場合、インラインノードで段落を分割する必要があるため、状況はより複雑になります。 マーカーの間に存在しない複製された親ノード内のコンテンツは削除されます。 このプロセスは、インラインノードが親段落の書式設定を保持することを保証するために使用されます。 このメソッドは、パラメーターとして渡されたノードでもチェックを実行し、いずれかのノードが無効な場合は例外をスローします。 このメソッドに渡されるパラメータは次のとおりです:

1. **StartNode**と**EndNode**。 最初の2つのパラメータは、コンテンツの抽出を開始する場所と終了する場所をそれぞれ定義するノードです。 これらのノードは、ブロックレベル（段落、テーブル）またはインラインレベル（Run、FieldStart、BookmarkStartなど）の両方にすることができます。):
   1. フィールドを渡すには、対応する**FieldStart**オブジェクトを渡す必要があります。
   1. ブックマークを渡すには、**BookmarkStart**ノードとBookmarkEndノードを渡す必要があります。
   1. コメントを渡すには、CommentRangeStartノードとCommentRangeEndノードを使用する必要があります。
1. **IsInclusive**. マーカーが抽出に含まれるかどうかを定義します。 このオプションがfalseに設定されていて、同じノードまたは連続したノードが渡された場合、空のリストが返されます:

      1. **FieldStart**ノードが渡された場合、このオプションはフィールド全体を含めるか除外するかを定義します。
      1. **BookmarkStart**または**BookmarkEnd**ノードが渡された場合、このオプションはブックマークが含まれているか、ブックマーク範囲の間のコンテンツのみを定義します。
      1. **CommentRangeStart**または**CommentRangeEnd**ノードが渡された場合、このオプションはコメント自体を含めるか、コメント範囲内のコンテンツのみを定義します。

あなたが見つけることができる**ExtractContent**メソッドの実装 [ここに](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). この方法については、この記事のシナリオで説明します。

また、抽出されたノードからドキュメントを簡単に生成するためのカスタムメソッドも定義します。 このメソッドは、以下のシナリオの多くで使用され、単純に新しいドキュメントを作成し、抽出されたコンテンツをインポートします。

次のコード例は、ノードのリストを取得して新しいドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## 段落間のコンテンツの抽出

これは、上記の方法を使用して特定の段落間のコンテンツを抽出する方法を示しています。 この場合、文書の前半に見つかった文字の本文を抽出します。 これは7番目と11番目の段落の間にあることがわかります。

以下のコードは、このタスクを実行します。 適切な段落は、文書上の[GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/)メソッドを使用して抽出され、指定されたインデックスを渡します。 次に、これらのノードを**ExtractContent**メソッドに渡し、これらが抽出に含まれることを示します。 このメソッドは、これらのノード間でコピーされたコンテンツを返し、新しいドキュメントに挿入します。

次のコード例は、上記の`ExtractContent`メソッドを使用して特定の段落間のコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## 異なるタイプのノード間でコンテンツを抽出する

ブロックレベルノードまたはインラインノードの任意の組み合わせの間でコンテンツを抽出できます。 以下のこのシナリオでは、最初の段落と2番目のセクションのテーブルの間のコンテンツを包括的に抽出します。 我々は適切な段落とテーブルノードを取得するために、文書の第二のセクションで`Body.FirstParagraph`と[GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/)メソッドを呼び出すことにより、マーカーノードを取得します。 わずかな変化のために、代わりにコンテンツを複製し、元の下に挿入してみましょう。

次のコード例は、`ExtractContent`メソッドを使用して段落とテーブルの間のコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## スタイルに基づいて段落間のコンテンツを抽出する

見出しスタイルでマークされた段落間など、同じスタイルまたは異なるスタイルの段落間のコンテンツを抽出する必要がある場合があります。 以下のコードは、これを達成する方法を示しています。 これは、見出しを抽出せずに、"Heading1"スタイルと"Header3"スタイルの最初のインスタンスの間のコンテンツを抽出する簡単な例です。 これを行うには、最後のパラメータをfalseに設定し、マーカーノードを含めるべきではないことを指定します。

適切な実装では、これをループで実行して、ドキュメントからこれらのスタイルのすべての段落の間のコンテンツを抽出する必要があります。 抽出されたコンテンツが新しいドキュメントにコピーされます。

次のコード例は、`ExtractContent`メソッドを使用して特定のスタイルを持つ段落間のコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## 特定の実行間でコンテンツを抽出する

[Run](https://reference.aspose.com/words/cpp/aspose.words/run/)などのインラインノード間でコンテンツを抽出することもできます。 異なる段落の**Runs**をマーカーとして渡すことができます。 以下のコードは、同じ**Paragraph**ノードの間にある特定のテキストを抽出する方法を示しています。

次のコード例は、**ExtractContent**メソッドを使用して、同じ段落の特定の実行間でコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## フィールドを使用したコンテンツの抽出

フィールドをマーカーとして使用するには、`FieldStart`ノードを渡す必要があります。 `ExtractContent`メソッドの最後のパラメータは、フィールド全体を含めるかどうかを定義します。 "FullName"差し込み項目と文書内の段落の間の内容を抽出してみましょう。 私たちは[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)クラスの[MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/)メソッドを使用します。 これにより、渡された差し込み項目の名前から**FieldStart**ノードが返されます。

この例では、**ExtractContent**メソッドに渡された最後のパラメータをfalseに設定して、フィールドを抽出から除外しましょう。 抽出されたコンテンツをPDFにレンダリングします。

次のコード例は、**ExtractContent**メソッドを使用して、ドキュメント内の特定のフィールドと段落の間のコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## ブックマークからコンテンツを抽出する

ドキュメントでは、ブックマーク内で定義されているコンテンツは、`BookmarkStart`ノードとBookmarkEndノードによってカプセル化されます。 これらの2つのノードの間にあるコンテンツがブックマークを構成します。 開始マーカーがドキュメント内の終了マーカーの前に表示されている限り、これらのノードのいずれかを任意のマーカーとして渡すことができます。 以下のコードを使用して、このコンテンツを新しいドキュメントに抽出します。 **IsInclusive**パラメータオプションは、ブックマークを保持または破棄する方法を示します。

次のコード例は、**ExtractContent**メソッドを使用してブックマークを参照しているコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## コメントからコンテンツを抽出する

コメントは、CommentRangeStart、CommentRangeEnd、およびコメントノードで構成されます。 これらのノードはすべてインラインです。 最初の2つのノードは、下のスクリーンショットに示されているように、コメントによって参照されるドキュメント内のコンテンツをカプセル化します。

**Comment**ノード自体は、段落と実行を含めることができるInlineStoryです。 これは、プレビューペインでコメントバブルとして表示されるコメントのメッセージを表します。 このノードはインラインであり、本文の子孫であるため、このメッセージ内からコンテンツを抽出することもできます。

コメントは、見出し、最初の段落、および2番目のセクションのテーブルをカプセル化します。 このコメントを新しい文書に抽出しましょう。 **IsInclusive**オプションは、コメント自体が保持されるか破棄されるかを指定します。

次のコード例は、これを行う方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## DocumentVisitorを使用してコンテンツを抽出する方法

この使用シナリオを実装するには、[DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/)クラスを使用します。 このクラスは、よく知られている訪問者のデザインパターンに対応しています。 **DocumentVisitor,**を使用すると、ドキュメントツリー上で列挙を必要とするカスタム操作を定義して実行できます。

**DocumentVisitor**

各**DocumentVisitor.VisitXXX**メソッドは、ノードの列挙を制御する[VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/)値を返します。 列挙を続行するか、現在のノードをスキップする(ただし列挙を続行する)か、またはノードの列挙を停止するように要求できます。

次の手順は、ドキュメントのさまざまな部分をプログラムで決定して抽出するために実行する必要があります:

- **DocumentVisitor**から派生したクラスを作成します
- いくつかのカスタム操作を実行するために**DocumentVisitor.VisitXXX**メソッドの一部またはすべての実装をオーバーライドして提供します
- 列挙を開始するノードで`Node.Accept`を呼び出します。 たとえば、文書全体を列挙する場合は、`Document.Accept`を使用します

**DocumentVisitor**

この例では、ビジターパターンを使用してAspose.Wordsオブジェクトモデルに新しい操作を追加する方法を示します。 この場合、単純なドキュメントコンバータをテキスト形式に作成します:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## テキストのみを抽出する方法

文書からテキストを取得する方法は次のとおりです:

- プレーンテキストとしてファイルまたはストリームに保存するには、[Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)と[SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)を使用します
- [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/)を使用して、**SaveFormat.Text**パラメータを渡します。 内部的には、これはsave as textをメモリストリームに呼び出し、結果の文字列を返します
- [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/)を使用して、フィールドコードを含むすべてのMicrosoft Word制御文字を含むテキストを取得します
- カスタム[DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/)を実装して、カスタマイズされた抽出を実行します

### `Node.GetText`と`Node.ToString`を使用する

Word文書には、フィールド、セルの終わり、セクションの終わりなどの特別な要素を指定する制御文字を含めることができます。 使用可能な単語制御文字の完全なリストは、[ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/)クラスで定義されています。 **Node.GetText**メソッドは、ノード内に存在するすべての制御文字を含むテキストを返します。

**ToString**を呼び出すと、制御文字を含まない文書のプレーンテキスト表現のみが返されます。

次のコード例は、ノードで**GetText**メソッドと**ToString**メソッドを呼び出す際の違いを示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### `SaveFormat.Text`を使用する

この例では、次のようにドキュメントを保存します:

- フィールド文字とフィールドコード、図形、脚注、文末脚注、およびコメント参照を除外します
- 段落**ControlChar.Cr**の末尾の文字を**ControlChar.CrLf**の組み合わせに置き換えます
- UTF8エンコーディングを使用します

次のコード例は、文書をTXT形式で保存する方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## 図形から画像を抽出する

いくつかのタスクを実行するには、ドキュメントイメージを抽出する必要がある場合があります。 Aspose.Wordsを使用すると、これも行うことができます。

次のコード例は、ドキュメントから画像を抽出する方法を示しています:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
