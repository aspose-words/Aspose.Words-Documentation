---
title: C# でのスタイルとテーマの操作
second_title: .NET用Aspose.Words
articleTitle: スタイルとテーマの操作
linktitle: スタイルとテーマの操作
description: "高度な Microsoft Word フォーマット機能。C# を使用してスタイルとテーマを操作します。"
type: docs
weight: 110
url: /ja/net/working-with-styles-and-themes/
---

[StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) クラスは、組み込みの設定を管理し、スタイルにユーザー定義の設定を適用するために使用されます。

## スタイルへのアクセス

[Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) プロパティを使用して、ドキュメント内で定義されたスタイルのコレクションを取得できます。このコレクションは、ドキュメント内の組み込みスタイルとユーザー定義スタイルの両方を保持します。特定のスタイルは、その名前/エイリアス、スタイル識別子、またはインデックスによって取得できます。次のコード例は、ドキュメントで定義されているスタイルのコレクションにアクセスする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## スタイルに基づいてコンテンツを抽出する方法

単純なレベルでは、Word 文書からスタイルに基づいてコンテンツを取得すると、特定のスタイルで書式設定された段落やテキストの続きを識別、一覧表示、カウントするのに役立ちます。たとえば、例、タイトル、参考文献、キーワード、図の名前、ケーススタディなど、ドキュメント内の特定の種類のコンテンツを識別する必要がある場合があります。

これをさらにいくつか進めて、使用するスタイルによって定義されたドキュメントの構造を利用して、ドキュメントを HTML などの別の出力に再利用することもできます。実際、これが Aspose ドキュメントの構築方法であり、Aspose.Words をテストします。 Aspose.Words を使用して構築されたツールは、ソース Word 文書を取得し、特定の見出しレベルでトピックに分割します。 XML ファイルは、左側に表示されているナビゲーション ツリーの構築に使用される Aspose.Words を使用して生成されます。そして、Aspose.Words は各トピックを HTML に変換します。

Word 文書内の特定のスタイルで書式設定されたテキストを取得するソリューションは、通常、Aspose.Words を使用すると経済的で簡単です。

### ソリューション

Aspose.Words がスタイルに基づいてコンテンツの取得をどのように簡単に処理するかを説明するために、例を見てみましょう。この例では、特定の段落スタイルと文字スタイルで書式設定されたテキストをサンプル Word 文書から取得します。大まかに言うと、これには次のことが含まれます。 # [Document](https://reference.aspose.com/words/net/aspose.words/document/) クラスを使用して Word 文書を開きます。 # コレクションを取得します。ドキュメント内のすべての段落とすべての段落。# 必要な段落と段落のみを選択します。具体的には、このサンプル Word 文書から、「見出し 1」段落スタイルと「強い強調」文字スタイルで書式設定されたテキストを取得します。

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


このサンプル文書では、「見出し 1」段落スタイルで書式設定されたテキストは「タブの挿入」、「クイック スタイル」、および「テーマ」であり、「強調」文字スタイルで書式設定されたテキストは青のいくつかのインスタンスです。 「ギャラリー」や「全体的な外観」などの斜体の太字のテキスト。

### コード

スタイルベースのクエリの実装は、Aspose.Words ドキュメント オブジェクト モデルでは、すでに存在するツールを使用するだけなので非常に簡単です。このソリューションには 2 つのクラス メソッドが実装されています。 # **ParagraphsByStyleName** – このメソッドは、次の段落の配列を取得します。特定のスタイル名を持つドキュメント。# **RunsByStyleName** – このメソッドは、特定のスタイル名を持つドキュメント内の実行の配列を取得します。これらのメソッドはどちらも非常に似ており、唯一の違いはノード タイプとスタイルの表現です。段落内の情報を取得してノードを実行します。これは、ParagraphsByStyleName の実装です。以下の例では、指定されたスタイルで書式設定されたすべての段落を検索します。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

この実装では、`Document` クラスの `Document.GetChildNodes` メソッドも使用されます。このメソッドは、指定されたタイプを持つすべてのノード (この場合はすべての段落) のコレクションを返します。

**Document.GetChildNodes** メソッドの 2 番目のパラメーターが true に設定されていることに注意してください。これにより、**Document.GetChildNodes** メソッドは直接の子ノードのみを選択するのではなく、すべての子ノードから再帰的に選択するようになります。

{{% /alert %}}

段落コレクション内の項目にアクセスした場合にのみ段落がこのコレクションに読み込まれるため、段落コレクションによって直ちにオーバーヘッドが発生するわけではないことも指摘しておく価値があります。次に、標準の foreach 演算子を使用してコレクションを調べ、指定されたスタイルを持つ段落を段落WithStyle 配列に追加するだけです。 `Paragraph` スタイル名は、[Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) オブジェクトの [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) プロパティで確認できます。 RunsByStyleName の実装はほぼ同じですが、実行ノードの取得には明らかに [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) を使用しています。 [Run](https://reference.aspose.com/words/net/aspose.words/run/) オブジェクトの [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) プロパティは、**Run** ノード内のスタイル情報にアクセスするために使用されます。以下の例では、指定されたスタイルでフォーマットされたすべての実行を検索します。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


両方のクエリが実装されている場合、必要なのは、ドキュメント オブジェクトを渡し、取得するコンテンツのスタイル名を指定することだけです。以下の例では、クエリを実行して結果を表示します。この例のテンプレート ファイルは [ここ](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx) からダウンロードできます。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### 最終結果

すべてが完了したら、サンプルを実行すると次の出力が表示されます。

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


ご覧のとおり、これは非常に単純な例であり、サンプル Word 文書内で収集された段落と実行の数とテキストを示しています。

## テンプレートからすべてのスタイルをコピー

すべてのスタイルをあるドキュメントから別のドキュメントにコピーしたい場合があります。 `Document.CopyStylesFromTemplate` メソッドを使用して、指定したテンプレートからドキュメントにスタイルをコピーできます。スタイルがテンプレートからドキュメントにコピーされると、ドキュメント内の同じ名前のスタイルが、テンプレート内のスタイルの説明と一致するように再定義されます。テンプレートの固有のスタイルがドキュメントにコピーされます。ドキュメント内の固有のスタイルはそのまま残ります。 Below code の例は、あるドキュメントから別のドキュメントにスタイルをコピーする方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## テーマのプロパティを操作する方法

ドキュメントのテーマのプロパティにアクセスするための基本的な API を Aspose.Words に追加しました。現時点では、この API には次のパブリック オブジェクトが含まれています。

- テーマ
- テーマフォント
- テーマカラー

テーマのプロパティを取得する方法は次のとおりです。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

テーマのプロパティを設定する方法は次のとおりです。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
