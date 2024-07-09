---
title: ノード間の選択されたコンテンツの抽出 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメント内のノード間のコンテンツの抽出
linktitle: ノード間コンテンツの抽出
type: docs
description: "異なる方法でドキュメントコンテンツを抽出する Javaお問い合わせ"
weight: 140
url: /ja/java/extract-selected-content-between-nodes/
---

文書を扱う場合、文書内の特定の範囲からコンテンツを簡単に抽出できることが重要です。 ただし、段落、表、画像などの複雑な要素で構成される場合があります。

どのコンテンツが抽出する必要があるかに関係なく、コンテンツを抽出する方法は、どのノードがコンテンツ間でコンテンツを抽出するために選択したかによって常に決定されます。 これらは、テキストの本文全体または単純なテキストが実行できます。

コンテンツの抽出時に考慮すべきさまざまなノードタイプが多々あります。 例えば、以下の間にコンテンツを抽出したい場合があります。

- 2つの特定の段落
- テキストの特定の実行
- ・マージフィールドなど、様々なタイプのフィールド
- ブックマークまたはコメントの開始と終了範囲
- 別のセクションに含まれているテキストのさまざまな体

いくつかの状況では、段落とフィールド間のコンテンツを抽出したり、実行とブックマークの間など、さまざまなノードタイプを組み合わせる必要があります。

この記事では、異なるノード間でテキストを抽出するためのコードの実装、および一般的なシナリオの例を提供します。

{{% alert color="primary" %}}

これらの例は、多くの可能性のいくつかのデモです。 パブリックの一部となるテキスト抽出機能の計画 API 将来的には、コードが不要になります。 その間に、この機能に関するリクエストを自由に投稿してください [Aspose.Words フォーラム](https://forum.aspose.com/c/words/8)お問い合わせ

{{% /alert %}}

## なぜ抽出コンテンツ

多くの場合、コンテンツの抽出の目的は、新しい文書に別々に複製または保存することです。 たとえば、コンテンツを抽出したり、

- 別の文書にコピーする
- ドキュメントの特定の部分をPDFまたはイメージに変換する
- 何度も文書内のコンテンツを複製する
- 文書の残りの部分とは別に抽出された内容を扱う

簡単に実現できます。 Aspose.Words 下のコード実装。

## 抽出コンテンツアルゴリズム

このセクションのコードは、上記の可能な状況の全てを、一般化および再利用可能な方法とします。 このテクニックの一般的な輪郭は以下を含みます。

1。 ドキュメントから抽出されるコンテンツの領域を予測するノードを収集します。 これらのノードの取得は、抽出したいものに基づいて、コード内のユーザーによって処理されます。
1。 これらのノードを渡す **ExtractContent** 以下に示す方法。 また、これらのノードがマーカーとして機能するか、抽出物に含まれているか否かを条件とするブールパラメータを渡す必要があります。
1。 抽出されるために指定されたクローンされたコンテンツ(コピノード)のリストを取得します。 選択したコンテンツのみを含む新しいドキュメントを作成するなど、ノードのこのリストを任意の方法で使用できます。

## コンテンツの抽出方法

本記事では、以下の書類を作業いたします。 様々なコンテンツが含まれているので、 また、ドキュメントには最初のページの中央にある2番目のセクションが含まれています。 ブックマークやコメントもドキュメントに表示されていますが、下のスクリーンショットでは表示されません。

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

ドキュメントからコンテンツを抽出するには、 `ExtractContent` 以下の方法と、適切なパラメータを渡します。

この方法の根本的な基礎は、ブロックレベルのノード(パラグラフとテーブル)を見つけ、同じコピーを作成するためにそれらをクローニングすることを含みます。 マーカーノードが渡されたらブロックレベルで、このメソッドは単にそのレベルにコンテンツをコピーして配列に追加することができます。

ただし、マーカーノードがインライン(段落の子)の場合、インラインノードで段落を分割する必要がある場合は、ラン、ブックマークフィールドなどが必要になります。 マーカー間で存在しないクローンされた親ノードのコンテンツが削除されます。 このプロセスは、インラインノードがまだ親段の書式を保持することを確認するために使用されます。

このメソッドは、パラメータとして渡されたノードのチェックを実行し、ノードが無効な場合には例外をスローします。 このメソッドに渡されるパラメータは次のとおりです。

1。 **StartNode** そして、 **EndNode**お問い合わせ 最初の2つのパラメータは、コンテンツの抽出が開始し、それぞれ終了するノードです。 これらのノードは、ブロックレベル(ブロックレベル)の両方で使用できます。[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) )またはインラインレベル(例えば [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) 等。:
   1. フィールドを渡すには、対応するフィールドを渡す必要があります **FieldStart** オブジェクト。
   1. ブックマークを渡すため、 **BookmarkStart** そして、 [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) ノードを渡す必要があります。
   1.コメントを渡すため、 [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) そして、 [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) ノードを使用する必要があります。
1。 **IsInclusive**お問い合わせ マーカーが抽出物に含まれているかどうかを定義します。 このオプションが設定されている場合 false 同じノードまたは連続ノードが渡され、空のリストが返されます。

      1. もし **FieldStart** ノードが渡されると、このオプションは、フィールド全体が含まれているか、除外されるかを定義します。
      1. もし **BookmarkStart** または **BookmarkEnd** ノードが渡されます。このオプションは、ブックマークが含まれているか、ブックマーク範囲間のコンテンツだけを定義します。
      1. もし **CommentRangeStart** または **CommentRangeEnd** ノードが渡されると、コメント自体が含まれているか、コメント範囲内のコンテンツだけであるかを定義します。

導入事例 **ExtractContent** あなたが見つけることができる方法 [詳しくはこちら](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java)お問い合わせ この方法は、この記事のシナリオで参照されます。

また、抽出ノードから簡単にドキュメントを生成するためのカスタムメソッドを定義します。 この方法は、以下の多くのシナリオで使用され、単に新しい文書を作成し、抽出されたコンテンツをそれにインポートします。

次のコードの例では、ノードのリストを取り、それらを新しいドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## パラグラフ間の抽出内容

上記の方法で特定の段落間のコンテンツを抽出する方法を示します。 この場合、ドキュメントの後半にある文字の体を抽出します。 第7項と第11項の間にあることをお伝えします。

以下のコードは、このタスクを実行します。 適切な段落は、使用して抽出されます [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) ドキュメントのメソッドと指定されたインデックスを渡します。 これらのノードを渡す **ExtractContent** これらは抽出に含まれているべき方法そして状態。 このメソッドは、これらのノード間でコピーしたコンテンツを新しいドキュメントに差し込みます。

次のコード例では、特定の段落間でコンテンツを抽出する方法を示します。 `ExtractContent` 上記の方法:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)お問い合わせ

{{% /alert %}}

出力文書には抽出された2つの段落が含まれています。

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## ノードの異なる種類間の抽出コンテンツ

ブロックレベルまたはインラインノードの組み合わせ間でコンテンツを抽出できます。 以下のこのシナリオでは、最初の段落と2番目のセクションの表の間にコンテンツを包括的に抽出します。 マーカーノードを呼び出して取得します [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) そして、 [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) ドキュメントの2番目のセクションで、適切な取得方法 **Paragraph** そして、 **Table** ノード。 わずかなバリエーションのために、代わりにコンテンツを複製し、元の下にインサートしてみましょう。

次のコード例では、段落とテーブルの間にコンテンツを抽出する方法を示します。 **ExtractContent** メソッド:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)お問い合わせ

{{% /alert %}}

段落とテーブルの内容を以下に複製しました。

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## パラグラフ間の抽出内容 スタイルに基づく

見出しのスタイルでマークされた段落の間など、同じまたは異なるスタイルの段落の間にコンテンツを抽出する必要があります。

以下は、この達成方法を示しています。 見出しを抽出することなく、「見出し1」と「ヘッダー3」のスタイルの最初のインスタンス間でコンテンツを抽出する簡単な例です。 これを行うには、最後のパラメータを最後に設定します。 false, マーカーノードが含まないことを指定します。

適切な実装では、これは、ドキュメントからこれらのスタイルのすべての段落間でコンテンツを抽出するためにループで実行する必要があります。 抽出されたコンテンツを新しい文書にコピーします。

次のコード例では、パラグラフ間でコンテンツを特定のスタイルで抽出する方法を示します。 **ExtractContent** メソッド:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)お問い合わせ

{{% /alert %}}

以下は、以前の操作の結果です。

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## 特定の実行間コンテンツの抽出

インラインノード間でコンテンツを抽出できます。 **Run** お問い合わせ **Runs** 異なる段落からマーカーとして渡すことができます。 以下のコードは、特定のテキストを同じ間に抽出する方法を示しています **Paragraph** ノード。

次のコード例では、同じ段落の特定の実行間でコンテンツを抽出する方法を示します。 **ExtractContent** メソッド:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)お問い合わせ

{{% /alert %}}

抽出されたテキストはコンソールに表示されます。

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## フィールドを使用してコンテンツを抽出する

マーカーとしてフィールドを使用するには、 `FieldStart` ノードを渡す必要があります。 最後のパラメータを `ExtractContent` フィールド全体が含まれているか否かを定義します。 「FullName」のマージフィールドとドキュメントの段落の間にコンテンツを抽出してみましょう。 ご利用にあたって [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String))方法の [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) クラス。 これは戻ります **FieldStart** merge フィールドの名前から渡されるノード。

ケースでは、最後に渡されたパラメータをセットしてみましょう。 **ExtractContent** メソッドへ false 抽出からフィールドを除外する。 抽出したコンテンツをPDFにレンダリングします。

次のコードの例では、ドキュメント内の特定のフィールドと段落の間にコンテンツを抽出する方法を示します。 **ExtractContent** メソッド:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)お問い合わせ

{{% /alert %}}

フィールドと段落の間の抽出されたコンテンツ、フィールドと段落マーカーノードがPDFにレンダリングされていない。

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## ブックマークからコンテンツを抽出する

ドキュメントでは、ブックマーク内で定義されるコンテンツは、 `BookmarkStart` および BookmarkEnd ノード。 これらの2つのノード間で見つかったコンテンツはブックマークを構成する。 これらのノードのいずれかをマーカーとして渡すことができます。, 別のブックマークからさえ, 限り、開始マーカーがドキュメントの終了マーカーの前に表示されます。.

サンプル文書では「Bookmark1」という1つのブックマークがあります。 このブックマークの内容は、ドキュメントの内容を強調しています。

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

このコンテンツを以下のコードで新しいドキュメントに抽出します。 ザ・オブ・ザ・ **IsInclusive** パラメータオプションは、ブックマークを保持または廃棄する方法を示します。

次のコード例では、ブックマークを参照したコンテンツを抽出する方法を示します。 **ExtractContent** メソッド:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)お問い合わせ

{{% /alert %}}

抽出された出力と `IsInclusive` パラメータセット trueお問い合わせ コピーはブックマークを保持します。

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

抽出された出力と **IsInclusive** パラメータセット falseお問い合わせ コピーには、ブックマークなしでコンテンツが含まれています。

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## コメントからコンテンツを抽出する

コメントはCommentRangeStart、CommentRangeEnd、コメントノードで構成されています。 これらのノードはすべてインラインです。 最初の2つのノードは、以下のスクリーンショットで見られるように、コメントによって参照されるドキュメントの内容をカプセル化します。

ザ・オブ・ザ・ **Comment** ノード自体は [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) 段落を含んだり実行したりできます。 コメントバブルとして見られたコメントのメッセージは、レビューペインで表します。 このノードはインラインで、ボディの子孫として、このメッセージの中からコンテンツを抽出することもできます。

ドキュメントにはコメントがあります。 レビュータブのマークアップを表示してみましょう:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

コメントは、見出し、第1段落、第2節の表をカプセル化します。 このコメントを新しいドキュメントに抽出してみましょう。 ザ・オブ・ザ・ **IsInclusive** オプションは、コメント自体が保存されているか、捨てられたかを判断します。

以下のコードの例では、以下の方法を示します。

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)お問い合わせ

{{% /alert %}}

最初に抽出された出力と `IsInclusive` パラメータセット trueお問い合わせ コピーにはコメントも含まれます。

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

第二に抽出された出力と **お問い合わせ** 設定する falseお問い合わせ コピーにはコメントがないコンテンツが含まれています。

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## DocumentVisitorを使用してコンテンツを抽出する

Aspose.Words 作成だけでなく、 Microsoft Word それらを動的に構築したり、データをテンプレートをマージしたりすることで文書を解析したり、ヘッダ、フッター、段落、テーブル、画像などの別の文書要素を抽出したりします。 別の可能なタスクは、特定のフォーマットやスタイルのすべてのテキストを見つけることです。

利用する [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) この利用シナリオを実装するクラスです。 よく知られているビジターデザインパターンに対応したクラスです。 と [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)ドキュメントツリー上で列挙を必要とするカスタム操作を定義して実行できます。

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) セットを提供して下さい **VisitXXX** 特定の文書要素(ノード)が遭遇したときに呼び出されるメソッド。 例えば、 [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) テキスト段落の先頭が見つかり、 [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) テキスト段落の終端が見つかったとき呼び出されます。 詳しくはこちら **DocumentVisitor.VisitXXX** メソッドは、必要に応じて(書式の取得)、例えば両方として使うことができるので、対応するオブジェクトを受け入れます。 [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) そして、 [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) お問い合わせ [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) オブジェクト。

詳しくはこちら **DocumentVisitor.VisitXXX** メソッドは、 **VisitorAction** ノードの列挙を制御する値。 列挙を続行するか、現在のノードをスキップするか、ノードの列挙を停止するかをリクエストできます。

これらは、プログラム的にドキュメントのさまざまな部分を決定し、抽出するために従うべき手順です。

- から派生したクラスを作成する [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)お問い合わせ
- 一部またはすべての実装をオーバーライドし、提供 **DocumentVisitor.VisitXXX** カスタム操作を実行する方法。
- コール [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) ノード上で、列挙を開始する場所から。 たとえば、ドキュメント全体を列挙したい場合は、 [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor)お問い合わせ

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) すべての既定の実装を提供 **DocumentVisitor.VisitXXX** メソッド。 これは、特定の訪問者が過度にする必要がある方法として、新しいドキュメント訪問者を簡単に作成できます。 すべてのビジターメソッドをオーバーライドする必要はありません。

次の例では、ビジターパターンを使用して新しい操作を追加する方法を示します。 Aspose.Words オブジェクトモデル。 この場合、単純なドキュメントコンバーターをテキスト形式に作成します。

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## 抽出テキスト 詳しくはこちら

ドキュメントからテキストを取得する方法は:

- 使用 [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) お問い合わせ [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) テキストをファイルに保存するか、ストリームとして保存する
- 使用 [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) そして渡して下さい `SaveFormat.Text` パラメータ。 内部的に、この呼び出しはテキストをメモリストリームに保存し、結果の文字列を返します。
- 使用 [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) テキストを全て取得する Microsoft Word フィールドコードを含む制御文字
- カスタムの実装 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) カスタマイズされた抽出を実行するために

### 使用方法 `Node.GetText` そして、 `Node.ToString`

ツイート ワード文書には、フィールド、末尾、セクションの末尾など、特殊な要素を設計する制御文字を含むことができます。 可能な単語制御文字の完全なリストは、 **ControlChar** クラス。 ザ・オブ・ザ・ [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) メソッドは、ノードに存在するすべての制御文字でテキストを返します。

ToString を呼び出すと、制御文字なしでのみドキュメントのプレーンテキスト表現を返します。 プレーンテキストとしてエクスポートの詳細については、 **Using SaveFormat.Text**お問い合わせ

次のコードの例では、呼び出しとの違いを示します。 **GetText** そして、 [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) ノードのメソッド:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### 使用方法 `SaveFormat.Text`

この例では、ドキュメントを以下のように保存します。

- フィールド文字とフィールドコード、形状、フットノート、エンドノート、コメント参照をフィルタアウト
- 段落の終端を置き換える [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) キャラクター [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) コンビネーション
- UTF8エンコーディングを使用する

次のコードの例では、TXT 形式のドキュメントを保存する方法を示します。

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## 形状から画像を抽出する

ドキュメント画像を抽出してタスクを実行する必要があります。 Aspose.Words これもできる。

次のコードの例では、ドキュメントから画像を抽出する方法を示します。

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}