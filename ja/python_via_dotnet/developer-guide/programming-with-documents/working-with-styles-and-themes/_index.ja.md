---
title: スタイルとテーマの操作
second_title: Python via .NET用Aspose.Words
articleTitle: スタイルとテーマの操作
linktitle: スタイルとテーマの操作
description: "Python を使用して、ドキュメント内のスタイルとテーマにアクセスして管理します。"
type: docs
weight: 110
url: /ja/python-net/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

[StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) クラスは、組み込みの設定を管理し、スタイルにユーザー定義の設定を適用するために使用されます。

## スタイルへのアクセス

[Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) プロパティを使用して、ドキュメント内で定義されたスタイルのコレクションを取得できます。このコレクションは、ドキュメント内の組み込みスタイルとユーザー定義スタイルの両方を保持します。特定のスタイルは、その名前/エイリアス、スタイル識別子、またはインデックスによって取得できます。次のコード例は、ドキュメントで定義されているスタイルのコレクションにアクセスする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## スタイルに基づいてコンテンツを抽出する方法

単純なレベルでは、Word 文書からスタイルに基づいてコンテンツを取得すると、特定のスタイルで書式設定された段落やテキストの続きを識別、一覧表示、カウントするのに役立ちます。たとえば、例、タイトル、参考文献、キーワード、図の名前、ケーススタディなど、ドキュメント内の特定の種類のコンテンツを識別する必要がある場合があります。

これをさらにいくつか進めて、使用するスタイルによって定義されたドキュメントの構造を利用して、ドキュメントを HTML などの別の出力に再利用することもできます。実際、これが Aspose ドキュメントの構築方法であり、Aspose.Words をテストします。 Aspose.Words を使用して構築されたツールは、ソース Word 文書を取得し、特定の見出しレベルでトピックに分割します。 XML ファイルは、左側に表示されているナビゲーション ツリーの構築に使用される Aspose.Words を使用して生成されます。そして、Aspose.Words は各トピックを HTML に変換します。

Word 文書内の特定のスタイルで書式設定されたテキストを取得するソリューションは、通常、Aspose.Words を使用すると経済的で簡単です。

### ソリューション

Aspose.Words がスタイルに基づいてコンテンツの取得をどのように簡単に処理するかを説明するために、例を見てみましょう。この例では、サンプル Word 文書から特定の段落スタイルと文字スタイルで書式設定されたテキストを取得します。大まかに言うと、これには以下が含まれます。
- [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスを使用して Word 文書を開きます。
- ドキュメント内のすべての段落とすべてのランのコレクションを取得します。
- 必要な段落とランのみを選択します。具体的には、このサンプル Word 文書から、「見出し 1」段落スタイルと「強強調」文字スタイルで書式設定されたテキストを取得します。

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


このサンプル文書では、「見出し 1」段落スタイルで書式設定されたテキストは「タブの挿入」、「クイック スタイル」、および「テーマ」であり、「強調」文字スタイルで書式設定されたテキストは青のいくつかのインスタンスです。 「ギャラリー」や「全体的な外観」などの斜体の太字のテキスト。

### コード

Aspose.Words ドキュメント オブジェクト モデルでは、既に存在するツールを使用するだけなので、スタイルベースのクエリの実装は非常に簡単です。このソリューションには 2 つのクラス メソッドが実装されています。
- **段落ごとのスタイル名** – このメソッドは、ドキュメント内の特定のスタイル名を持つ段落の配列を取得します。
- **runs_by_style_name** – このメソッドは、ドキュメント内で特定のスタイル名を持つランの配列を取得します。これらのメソッドは両方とも非常に似ていますが、唯一の違いは、ノード タイプと、段落ノードおよび実行ノード内のスタイル情報の表現です。以下は `paragraphs_by_style_name` の実装です。 以下の例では、指定されたスタイルで書式設定されたすべての段落を検索します。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

この実装では、[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスの [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) メソッドも使用されます。このメソッドは、指定されたタイプを持つすべてのノード (この場合はすべての段落) のコレクションを返します。

[Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) メソッドの 2 番目のパラメーターが `True` に設定されていることに注意してください。これにより、[Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) メソッドは直接の子ノードのみを選択するのではなく、すべての子ノードから再帰的に選択するようになります。

{{% /alert %}}

段落コレクション内の項目にアクセスした場合にのみ段落がこのコレクションに読み込まれるため、段落コレクションによって直ちにオーバーヘッドが発生するわけではないことも指摘しておく価値があります。次に、標準の foreach 演算子を使用してコレクションを調べ、指定されたスタイルを持つ段落を段落_with_style 配列に追加するだけです。 `Paragraph` スタイル名は、[Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) オブジェクトの [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) プロパティで確認できます。 **runs_by_style_name** の実装はほぼ同じですが、実行ノードの取得には明らかに [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) を使用しています。 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) オブジェクトの [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) プロパティは、[Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ノード内のスタイル情報にアクセスするために使用されます。以下の例では、指定されたスタイルでフォーマットされたすべての実行を検索します。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


両方のクエリが実装されている場合、必要なのは、ドキュメント オブジェクトを渡し、取得するコンテンツのスタイル名を指定することだけです。以下の例では、クエリを実行して結果を表示します。この例のテンプレート ファイルは [ここ](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx) からダウンロードできます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### 最終結果

すべてが完了したら、サンプルを実行すると次の出力が表示されます。

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


ご覧のとおり、これは非常に単純な例であり、サンプル Word 文書内で収集された段落と実行の数とテキストを示しています。

## テンプレートからすべてのスタイルをコピー

すべてのスタイルをあるドキュメントから別のドキュメントにコピーしたい場合があります。 [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) メソッドを使用して、指定したテンプレートからドキュメントにスタイルをコピーできます。スタイルがテンプレートからドキュメントにコピーされると、ドキュメント内の同じ名前のスタイルが、テンプレート内のスタイルの説明と一致するように再定義されます。テンプレートの固有のスタイルがドキュメントにコピーされます。ドキュメント内の固有のスタイルはそのまま残ります。 Below code の例は、あるドキュメントから別のドキュメントにスタイルをコピーする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## テーマのプロパティを操作する方法

ドキュメントのテーマのプロパティにアクセスするための基本的な API を Aspose.Words に追加しました。現時点では、この API には次のパブリック オブジェクトが含まれています。

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

テーマのプロパティを取得する方法は次のとおりです。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

テーマのプロパティを設定する方法は次のとおりです。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
