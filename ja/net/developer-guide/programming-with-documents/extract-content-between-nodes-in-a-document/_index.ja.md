---
title: ドキュメントノード間でコンテンツを抽出する方法
second_title: .NET用Aspose.Words
articleTitle: ドキュメント内のノード間のコンテンツの抽出
linktitle: ノード間でコンテンツを抽出する
description: "C# を使用してドキュメントのコンテンツを別の形式で抽出します。"
type: docs
weight: 140
url: /ja/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

ドキュメントを操作する場合、ドキュメント内の特定の範囲からコンテンツを簡単に抽出できることが重要です。ただし、コンテンツは段落、表、画像などの複雑な要素で構成される場合があります。

どのようなコンテンツを抽出する必要があるかに関係なく、そのコンテンツを抽出する方法は常に、コンテンツを抽出するためにどのノードが選択されるかによって決まります。これらは、テキスト本文全体または単純なテキストの連続です。

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
- 文書の特定の部分を PDF または画像に変換します
- 文書内の内容を何度も複製する
- 文書の残りの部分とは別に抽出されたコンテンツを操作します

これは、Aspose.Words と以下のコード実装を使用して簡単に実現できます。

## コンテンツ抽出アルゴリズム

このセクションのコードは、一般化された再利用可能な 1 つのメソッドを使用して、上で説明したすべての考えられる状況に対処します。この手法の概要は次のとおりです。

1. ドキュメントから抽出されるコンテンツの領域を決定するノードを収集します。これらのノードの取得は、抽出したい内容に基づいてユーザーのコード内で処理されます。
1. これらのノードを以下に示す **ExtractContent** メソッドに渡します。また、マーカーとして機能するこれらのノードを抽出に含めるかどうかを示すブール値パラメーターも渡す必要があります。
1. 抽出するように指定されたクローンコンテンツ (コピーされたノード) のリストを取得します。このノードのリストは、選択したコンテンツのみを含む新しいドキュメントを作成するなど、適切な方法で使用できます。

## コンテンツを抽出する方法

ドキュメントからコンテンツを抽出するには、以下の **ExtractContent** メソッドを呼び出し、適切なパラメータを渡す必要があります。この方法の基礎となるのは、ブロック レベルのノード (段落とテーブル) を検索し、それらを複製して同一のコピーを作成することです。渡されたマーカー ノードがブロック レベルの場合、メソッドはそのレベルのコンテンツを単純にコピーして配列に追加できます。

ただし、マーカー ノードがインライン (段落の子) である場合、実行やブックマーク フィールドなどの段落をインライン ノードで分割する必要があるため、状況はより複雑になります。クローン化された親ノードのコンテンツはそうではありません。マーカー間に存在するものが削除されます。このプロセスは、インライン ノードが親段落の書式設定を確実に保持するために使用されます。このメソッドは、パラメーターとして渡されたノードのチェックも実行し、いずれかのノードが無効な場合は例外をスローします。このメソッドに渡されるパラメータは次のとおりです。

1.**StartNode**と**EndNode**。最初の 2 つのパラメータは、コンテンツの抽出をそれぞれ開始および終了する場所を定義するノードです。これらのノードは、ブロック レベル ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 、 [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) またはインライン レベル ([Run](https://reference.aspose.com/words/net/aspose.words/run/) 、 [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) 、[BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) など) の両方にすることができます。
   1. フィールドを渡すには、対応する **FieldStart** オブジェクトを渡す必要があります。
   1. ブックマークを渡すには、**BookmarkStart** ノードと [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) ノードを渡す必要があります
   1. コメントを渡すには、[CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) ノードと [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) ノードを使用する必要があります
1.**IsInclusive**。マーカーが抽出に含まれるかどうかを定義します。このオプションが false に設定されており、同じノードまたは連続したノードが渡された場合、空のリストが返されます。
   1. **FieldStart** ノードが渡された場合、このオプションはフィールド全体を含めるか除外するかを定義します。
   1. **BookmarkStart** または **BookmarkEnd** ノードが渡された場合、このオプションはブックマークが含まれるか、それともブックマーク範囲間のコンテンツのみが含まれるかを定義します。
   1. **CommentRangeStart** または **CommentRangeEnd** ノードが渡された場合、このオプションはコメント自体を含めるか、コメント範囲内のコンテンツのみを含めるかを定義します。

**ExtractContent** メソッドの実装には [Aspose.Words GitHubで](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs) があります。この方法は、この記事のシナリオで参照されます。

また、抽出されたノードからドキュメントを簡単に生成するためのカスタム メソッドも定義します。このメソッドは、以下の多くのシナリオで使用され、単純に新しいドキュメントを作成し、抽出されたコンテンツをそこにインポートします。

次のコード例は、ノードのリストを取得して新しいドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## 段落間のコンテンツを抽出する

これは、上記のメソッドを使用して特定の段落間のコンテンツを抽出する方法を示しています。この場合、文書の前半にある手紙の本文を抽出したいと考えています。これは 7 番目の段落と 11 番目の段落の間にあることがわかります。

以下のコードはこのタスクを実行します。ドキュメント上で [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) メソッドを使用し、指定されたインデックスを渡すことで、適切な段落が抽出されます。次に、これらのノードを **ExtractContent** メソッドに渡し、これらのノードが抽出に含まれることを示します。このメソッドは、これらのノード間でコピーされたコンテンツを返し、新しいドキュメントに挿入されます。

次のコード例は、上記の `ExtractContent` メソッドを使用して特定の段落間のコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## 異なるタイプのノード間でコンテンツを抽出する

ブロック レベルまたはインライン ノードの任意の組み合わせの間でコンテンツを抽出できます。以下のこのシナリオでは、最初の段落と 2 番目のセクションの表の間のコンテンツを包括的に抽出します。ドキュメントの 2 番目のセクションで [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) メソッドと [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) メソッドを呼び出して、適切な **Paragraph** ノードと **Table** ノードを取得することにより、マーカー ノードを取得します。わずかなバリエーションとして、代わりにコンテンツを複製し、元のものの下に挿入してみましょう。

次のコード例は、**ExtractContent** メソッドを使用して段落と表の間のコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## スタイルに基づいて段落間のコンテンツを抽出する

見出しスタイルでマークされた段落間など、同じまたは異なるスタイルの段落間でコンテンツを抽出する必要がある場合があります。以下のコードは、これを実現する方法を示しています。これは、見出しを抽出せずに、「見出し 1」スタイルと「見出し 3」スタイルの最初のインスタンスの間のコンテンツを抽出する簡単な例です。これを行うには、最後のパラメータを false に設定します。これは、マーカー ノードを含めないことを指定します。

適切な実装では、これをループで実行して、ドキュメントからこれらのスタイルのすべての段落間のコンテンツを抽出する必要があります。抽出されたコンテンツは新しいドキュメントにコピーされます。

次のコード例は、**ExtractContent** メソッドを使用して特定のスタイルで段落間のコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## 特定の実行間のコンテンツの抽出

[Run](https://reference.aspose.com/words/net/aspose.words/run/) などのインライン ノード間でもコンテンツを抽出できます。さまざまな段落の **Runs** をマーカーとして渡すことができます。以下のコードは、同じ **Paragraph** ノード間の特定のテキストを抽出する方法を示しています。

次のコード例は、**ExtractContent** メソッドを使用して、同じ段落の特定の実行の間でコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## フィールドを使用してコンテンツを抽出する

フィールドをマーカーとして使用するには、`FieldStart` ノードを渡す必要があります。 `ExtractContent` メソッドの最後のパラメータは、フィールド全体を含めるかどうかを定義します。文書内の「FullName」差し込みフィールドと段落の間のコンテンツを抽出してみましょう。 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)クラスの[MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/)メソッドを使用します。これにより、渡された差し込み項目の名前から **FieldStart** ノードが返されます。

この例では、**ExtractContent** メソッドに渡される最後のパラメータを false に設定して、フィールドを抽出から除外しましょう。抽出したコンテンツを PDF にレンダリングします。

次のコード例は、**ExtractContent** メソッドを使用してドキュメント内の特定のフィールドと段落の間のコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## ブックマークからコンテンツを抽出する

ドキュメントでは、ブックマーク内で定義されたコンテンツは、`BookmarkStart` ノードと BookmarkEnd ノードによってカプセル化されます。これら 2 つのノードの間にあるコンテンツがブックマークを構成します。ドキュメント内で開始マーカーが終了マーカーより前に表示される限り、これらのノードのいずれかを任意のマーカーとして渡すことができます。異なるブックマークのマーカーであっても同様です。以下のコードを使用して、このコンテンツを新しいドキュメントに抽出します。 **IsInclusive** パラメータ オプションは、ブックマークを保持または破棄する方法を示します。

次のコード例は、**ExtractContent** メソッドを使用してブックマークを参照しているコンテンツを抽出する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## コメントからコンテンツを抽出する

コメントは、CommentRangeStart、CommentRangeEnd、および Comment ノードで構成されます。これらのノードはすべてインラインです。以下のスクリーンショットに示すように、最初の 2 つのノードは、コメントによって参照されるドキュメント内のコンテンツをカプセル化します。

**Comment** ノード自体は、段落とランを含めることができる [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) です。これは、レビュー ペインのコメント バブルとして表示されるコメントのメッセージを表します。このノードはインラインで本文の子孫であるため、このメッセージ内からコンテンツを抽出することもできます。

コメントは、見出し、最初の段落、および 2 番目のセクションの表をカプセル化します。このコメントを新しいドキュメントに抽出してみましょう。 **IsInclusive** オプションは、コメント自体を保持するか破棄するかを決定します。

次のコード例は、これを行う方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## DocumentVisitor を使用してコンテンツを抽出する方法

この使用シナリオを実装するには、[DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) クラスを使用します。このクラスは、よく知られている Visitor デザイン パターンに対応します。 **DocumentVisitor** **,** を使用すると、ドキュメント ツリーに対する列挙を必要とするカスタム操作を定義して実行できます。

**DocumentVisitor** は、特定の文書要素 (ノード) が見つかったときに呼び出される一連の **VisitXXX** メソッドを提供します。たとえば、テキスト段落の先頭が見つかると [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) が呼び出され、テキスト段落の終わりが見つかると [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) が呼び出されます。各 **DocumentVisitor.VisitXXX** メソッドは、検出した対応するオブジェクトを受け入れるため、必要に応じてそれを使用できます (書式設定の取得など)。たとえば、**DocumentVisitor.VisitParagraphStart** と **DocumentVisitor.VisitParagraphEnd** は両方とも [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) オブジェクトを受け入れます。

各 **DocumentVisitor.VisitXXX** メソッドは、ノードの列挙を制御する [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) 値を返します。列挙を続行するか、現在のノードをスキップする (ただし列挙は続行する) か、ノードの列挙を停止するかを要求できます。

ドキュメントのさまざまな部分をプログラムで判断して抽出するには、次の手順に従う必要があります。

- **DocumentVisitor**から派生したクラスを作成する
- **DocumentVisitor.VisitXXX** メソッドの一部またはすべての実装をオーバーライドして提供し、カスタム操作を実行します。
- 列挙を開始したいノード上で [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) を呼び出します。たとえば、ドキュメント全体を列挙したい場合は、[Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/) を使用します。

**DocumentVisitor** は、すべての **DocumentVisitor.VisitXXX** メソッドのデフォルト実装を提供します。これにより、特定の訪問者に必要なメソッドのみをオーバーライドする必要があるため、新しいドキュメント訪問者の作成が容易になります。すべての訪問者メソッドをオーバーライドする必要はありません。

次の例は、訪問者パターンを使用して Aspose.Words オブジェクト モデルに新しい操作を追加する方法を示しています。この場合、テキスト形式への単純なドキュメントコンバータを作成します。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) からダウンロードできます。

{{% /alert %}}

## テキストのみを抽出する方法

ドキュメントからテキストを取得する方法は次のとおりです。

- [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) と [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) を使用して、ファイルまたはストリームにプレーン テキストとして保存します
- [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) を使用し、**SaveFormat.Text** パラメータを渡します。内部的には、メモリ ストリームへのテキストとして保存を呼び出し、結果の文字列を返します。
- [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) を使用して、フィールド コードを含むすべての Microsoft Word 制御文字を含むテキストを取得します
- カスタム [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) を実装して、カスタマイズされた抽出を実行します

### `Node.GetText`と`Node.ToString`の使用

Word 文書には、フィールド、セルの終わり、セクションの終わりなどの特別な要素を指定する制御文字を含めることができます。使用可能な Word 制御文字の完全なリストは、**ControlChar** クラスで定義されています。 **Node.GetText** メソッドは、ノード内に存在するすべての制御文字を含むテキストを返します。

**ToString** を呼び出すと、制御文字を含まないドキュメントのプレーン テキスト表現のみが返されます。プレーン テキストとしてのエクスポートの詳細については、次のセクション **「SaveFormat.Textの使用」** を参照してください。

次のコード例は、ノードでの **GetText** メソッドと **ToString** メソッドの呼び出しの違いを示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### `SaveFormat.Text`の使用

この例では、ドキュメントを次のように保存します。

- フィールド文字とフィールドコード、形状、脚注、文末脚注、およびコメント参照をフィルタリングして除外します。
- 段落の終わりの **ControlChar.Cr** 文字を **ControlChar.CrLf** の組み合わせに置き換えます
- UTF8エンコーディングを使用します

次のコード例は、ドキュメントを TXT 形式で保存する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## 図形から画像を抽出する

一部のタスクを実行するには、ドキュメント画像を抽出する必要がある場合があります。 Aspose.Words を使用すると、これも行うことができます。

次のコード例は、ドキュメントから画像を抽出する方法を示しています。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}