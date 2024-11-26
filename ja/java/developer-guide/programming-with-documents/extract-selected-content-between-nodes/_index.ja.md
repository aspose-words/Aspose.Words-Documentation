---
title: Java内のノード間で選択したコンテンツを抽出する
second_title: Aspose.WordsのためのJava
articleTitle: ドキュメント内のノード間でコンテンツを抽出する
linktitle: ノード間でコンテンツを抽出する
type: docs
description: "Javaを使用して異なるドキュメントコンテンツを抽出します。"
weight: 140
url: /ja/java/extract-selected-content-between-nodes/
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

これらの例は、多くの可能性のほんの一部のデモンストレーションです。 将来的にはテキスト抽出機能をパブリックAPIの一部にする予定であり、余分なコードは必要ありません。 それまでの間、この機能に関するあなたの要求を自由に投稿してください [Aspose.Wordsフォーラム](https://forum.aspose.com/c/words/8).

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

この記事では、以下の文書で作業します。 ご覧のとおり、さまざまなコンテンツが含まれています。 また、ドキュメントには最初のページの中央から始まる2番目のセクションが含まれていることに注意してください。 ブックマークとコメントはドキュメント内にも存在しますが、下のスクリーンショットには表示されません。

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

ドキュメントからコンテンツを抽出するには、以下の`ExtractContent`メソッドを呼び出し、適切なパラメータを渡す必要があります。

この方法の基礎となる基礎には、ブロックレベルのノード(段落と表)を見つけて、それらを複製して同一のコピーを作成することが含まれます。 渡されたマーカーノードがブロックレベルの場合、メソッドはそのレベルのコンテンツを単純にコピーして配列に追加することができます。

ただし、マーカーノードがインライン（段落の子）の場合、インラインノードで段落を分割する必要があるため、状況はより複雑になります。 マーカーの間に存在しない複製された親ノード内のコンテンツは削除されます。 このプロセスは、インラインノードが親段落の書式設定を保持することを保証するために使用されます。

このメソッドは、パラメーターとして渡されたノードでもチェックを実行し、いずれかのノードが無効な場合は例外をスローします。 このメソッドに渡されるパラメータは次のとおりです:

1. **StartNode**と**EndNode**。 最初の2つのパラメータは、コンテンツの抽出を開始する場所と終了する場所をそれぞれ定義するノードです。 これらのノードは、ブロックレベル（[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)、[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)）またはインラインレベル（例：[Run](https://reference.aspose.com/words/java/com.aspose.words/run/), [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) など。):
   1. フィールドを渡すには、対応する**FieldStart**オブジェクトを渡す必要があります。
   1. ブックマークを渡すには、**BookmarkStart**ノードと[BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/)ノードを渡す必要があります。
   1. コメントを渡すには、[CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/)ノードと[CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)ノードを使用する必要があります。
1. **IsInclusive**. マーカーが抽出に含まれるかどうかを定義します。 このオプションがfalseに設定されていて、同じノードまたは連続したノードが渡された場合、空のリストが返されます:

      1. **FieldStart**ノードが渡された場合、このオプションはフィールド全体を含めるか除外するかを定義します。
      1. **BookmarkStart**または**BookmarkEnd**ノードが渡された場合、このオプションはブックマークが含まれているか、ブックマーク範囲の間のコンテンツのみを定義します。
      1. **CommentRangeStart**または**CommentRangeEnd**ノードが渡された場合、このオプションはコメント自体を含めるか、コメント範囲内のコンテンツのみを定義します。

あなたが見つけることができる**ExtractContent**メソッドの実装 [ここに](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). この方法については、この記事のシナリオで説明します。

また、抽出されたノードからドキュメントを簡単に生成するためのカスタムメソッドも定義します。 このメソッドは、以下のシナリオの多くで使用され、単純に新しいドキュメントを作成し、抽出されたコンテンツをインポートします。

次のコード例は、ノードのリストを取得して新しいドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## 段落間のコンテンツの抽出

これは、上記の方法を使用して特定の段落間のコンテンツを抽出する方法を示しています。 この場合、文書の前半に見つかった文字の本文を抽出します。 これは7番目と11番目の段落の間にあることがわかります。

以下のコードは、このタスクを実行します。 適切な段落は、文書の[getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean)メソッドを使用して抽出され、指定されたインデックスを渡します。 次に、これらのノードを**ExtractContent**メソッドに渡し、これらが抽出に含まれることを示します。 このメソッドは、これらのノード間でコピーされたコンテンツを返し、新しいドキュメントに挿入します。

次のコード例は、上記の`ExtractContent`メソッドを使用して特定の段落間のコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

出力文書には、抽出された2つの段落が含まれています。

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## 異なるタイプのノード間でコンテンツを抽出する

ブロックレベルノードまたはインラインノードの任意の組み合わせの間でコンテンツを抽出できます。 以下のこのシナリオでは、最初の段落と2番目のセクションのテーブルの間のコンテンツを包括的に抽出します。 適切な**Paragraph**と**Table**ノードを取得するために、文書の第二のセクションで[getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph)と[getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean)メソッドを呼び出すことによってマーカーノードを取得します。 わずかな変化のために、代わりにコンテンツを複製し、元の下に挿入してみましょう。

次のコード例は、**ExtractContent**メソッドを使用して段落とテーブルの間のコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

段落と表の間の内容が以下に複製された結果です。

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## スタイルに基づいて段落間のコンテンツを抽出する

見出しスタイルでマークされた段落間など、同じスタイルまたは異なるスタイルの段落間のコンテンツを抽出する必要がある場合があります。

以下のコードは、これを達成する方法を示しています。 これは、見出しも抽出せずに、"Heading 1"スタイルと"Header3"スタイルの最初のインスタンスの間のコンテンツを抽出する簡単な例です。 これを行うには、最後のパラメータをfalseに設定し、マーカーノードを含めるべきではないことを指定します。

適切な実装では、これをループで実行して、ドキュメントからこれらのスタイルのすべての段落の間のコンテンツを抽出する必要があります。 抽出されたコンテンツが新しいドキュメントにコピーされます。

次のコード例は、**ExtractContent**メソッドを使用して特定のスタイルを持つ段落間のコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

以下は、前の操作の結果です。

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## 特定の実行間でコンテンツを抽出する

**Run**などのインラインノード間でコンテンツを抽出することもできます。 異なる段落の**Runs**をマーカーとして渡すことができます。 以下のコードは、同じ**Paragraph**ノードの間にある特定のテキストを抽出する方法を示しています。

次のコード例は、**ExtractContent**メソッドを使用して、同じ段落の特定の実行間でコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

抽出されたテキストがコンソールに表示されます。

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## フィールドを使用したコンテンツの抽出

フィールドをマーカーとして使用するには、`FieldStart`ノードを渡す必要があります。 `ExtractContent`メソッドの最後のパラメータは、フィールド全体を含めるかどうかを定義します。 "FullName"差し込み項目と文書内の段落の間の内容を抽出してみましょう。 私たちは[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)クラスの[moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String))メソッドを使用します。 これにより、渡された差し込み項目の名前から**FieldStart**ノードが返されます。

この例では、**ExtractContent**メソッドに渡された最後のパラメータをfalseに設定して、フィールドを抽出から除外しましょう。 抽出されたコンテンツをPDFにレンダリングします。

次のコード例は、**ExtractContent**メソッドを使用して、ドキュメント内の特定のフィールドと段落の間のコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

フィールドと段落のマーカーノードをPDFにレンダリングせずに、フィールドと段落の間に抽出されたコンテンツ。

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## ブックマークからコンテンツを抽出する

ドキュメントでは、ブックマーク内で定義されているコンテンツは、`BookmarkStart`ノードとBookmarkEndノードによってカプセル化されます。 これらの2つのノードの間にあるコンテンツがブックマークを構成します。 開始マーカーがドキュメント内の終了マーカーの前に表示されている限り、これらのノードのいずれかを任意のマーカーとして渡すことができます。

サンプルドキュメントには、"Bookmark1"という名前のブックマークが1つあります。 このブックマークの内容は、ドキュメント内のコンテンツを強調表示しています:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

以下のコードを使用して、このコンテンツを新しいドキュメントに抽出します。 **IsInclusive**パラメータオプションは、ブックマークを保持または破棄する方法を示します。

次のコード例は、**ExtractContent**メソッドを使用してブックマークを参照しているコンテンツを抽出する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

`IsInclusive`パラメータがtrueに設定された抽出された出力。 コピーはブックマークも保持します。

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

**IsInclusive**パラメータがfalseに設定された抽出された出力。 コピーにはコンテンツが含まれていますが、ブックマークは含まれていません。

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## コメントからコンテンツを抽出する

コメントは、CommentRangeStart、CommentRangeEnd、およびコメントノードで構成されます。 これらのノードはすべてインラインです。 最初の2つのノードは、下のスクリーンショットに示されているように、コメントによって参照されるドキュメント内のコンテンツをカプセル化します。

**Comment**ノード自体は、段落と実行を含めることができる[InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/)です。 これは、レビューペインでコメントバブルとして表示されるコメントのメッセージを表します。 このノードはインラインであり、本文の子孫であるため、このメッセージ内からコンテンツを抽出することもできます。

私たちの文書には1つのコメントがあります。 レビュータブにマークアップを表示して表示しましょう:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

コメントは、見出し、最初の段落、および2番目のセクションのテーブルをカプセル化します。 このコメントを新しい文書に抽出しましょう。 **IsInclusive**オプションは、コメント自体が保持されるか破棄されるかを指定します。

次のコード例は、これを行う方法を以下に示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

まず、`IsInclusive`パラメータをtrueに設定して抽出された出力。 コピーにはコメントも含まれます。

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

次に、**isInclusive**がfalseに設定された抽出された出力。 コピーにはコンテンツが含まれていますが、コメントは含まれていません。

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## DocumentVisitorを使用してコンテンツを抽出する

Aspose.Wordsは、Microsoft Wordドキュメントを動的に構築したり、テンプレートをデータとマージしたりすることによって作成するだけでなく、ヘッダー、フッター、段落、表、画像などの別々のドキュメント要素を抽出するためにドキュメントを解析するためにも使用できます。 別の可能なタスクは、特定の書式設定またはスタイルのすべてのテキストを見つけることです。

この使用シナリオを実装するには、[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)クラスを使用します。 このクラスは、よく知られている訪問者のデザインパターンに対応しています。 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)を使用すると、ドキュメントツリー上で列挙を必要とするカスタム操作を定義して実行できます。

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)は、特定のドキュメント要素(ノード)が検出されたときに呼び出される**VisitXXX**メソッドのセットを提供します。 たとえば、テキスト段落の先頭が見つかったときに[VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph)が呼び出され、テキスト段落の末尾が見つかったときに[VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph)が呼び出されます。 各**DocumentVisitor.VisitXXX**メソッドは遭遇する対応するオブジェクトを受け入れるので、必要に応じて使用できます（たとえば、書式設定を取得します）。[VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph)と[VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph)の両方が[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)

各**DocumentVisitor.VisitXXX**メソッドは、ノードの列挙を制御する**VisitorAction**値を返します。 列挙を続行するか、現在のノードをスキップする(ただし列挙を続行する)か、またはノードの列挙を停止するように要求できます。

次の手順は、ドキュメントのさまざまな部分をプログラムで決定して抽出するために実行する必要があります:

- [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)から派生したクラスを作成します。
- いくつかのカスタム操作を実行するために、**DocumentVisitor.VisitXXX**メソッドの一部またはすべての実装をオーバーライドして提供します。
- 列挙を開始するノードで[Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor)を呼び出します。 たとえば、文書全体を列挙する場合は、[accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor)を使用します。

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)はすべての**DocumentVisitor.VisitXXX**メソッドの既定の実装を提供します。 これにより、特定の訪問者に必要なメソッドのみをオーバーライドする必要があるため、新しいドキュメント訪問者を簡単に作成できます。 すべてのビジターメソッドをオーバーライドする必要はありません。

次の例は、ビジターパターンを使用してAspose.Wordsオブジェクトモデルに新しい操作を追加する方法を示しています。 この場合、単純なドキュメントコンバータをテキスト形式に作成します:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## テキストのみを抽出する

文書からテキストを取得する方法は次のとおりです:

- プレーンテキストとしてファイルまたはストリームに保存するには、[Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)と[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)を使用します
- [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions)を使用して、`SaveFormat.Text`パラメータを渡します。 内部的には、これはsave as textをメモリストリームに呼び出し、結果の文字列を返します
- [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText)を使用して、フィールドコードを含むすべてのMicrosoft Word制御文字を含むテキストを取得します
- カスタム[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)を実装して、カスタマイズされた抽出を実行します

### `Node.GetText`と`Node.ToString`を使用する

Word文書には、フィールド、セルの終わり、セクションの終わりなどの特別な要素を指定する制御文字を含めることができます。 使用可能な単語制御文字の完全なリストは、**ControlChar**クラスで定義されています。 [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText)メソッドは、ノード内に存在するすべての制御文字を含むテキストを返します。

ToStringを呼び出すと、制御文字を含まない文書のプレーンテキスト表現のみが返されます。 プレーンテキストとしてエクスポートする方法の詳細については、**Using SaveFormat.Text**を参照してください。

次のコード例は、ノードで**GetText**メソッドと[ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString)メソッドを呼び出す際の違いを示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### `SaveFormat.Text`を使用する

この例では、次のようにドキュメントを保存します:

- フィールド文字とフィールドコード、図形、脚注、文末脚注、およびコメント参照を除外します
- 段落[ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)の末尾の文字を[ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)の組み合わせに置き換えます
- UTF8エンコーディングを使用します

次のコード例は、ドキュメントをTXT形式で保存する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## 図形から画像を抽出する

いくつかのタスクを実行するには、ドキュメントイメージを抽出する必要がある場合があります。 Aspose.Wordsを使用すると、これも行うことができます。

次のコード例は、ドキュメントから画像を抽出する方法を示しています:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
