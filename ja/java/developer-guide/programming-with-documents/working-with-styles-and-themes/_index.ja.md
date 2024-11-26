---
title: スタイルとテーマの操作
second_title: Aspose.WordsのためのJava
articleTitle: スタイルとテーマの操作
linktitle: スタイルとテーマの操作
description: "Microsoft Word書式設定機能を強化し、Javaを使用してスタイルとテーマを操作します。"
type: docs
weight: 110
url: /ja/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

[StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)クラスは、組み込みを管理し、ユーザー定義の設定をスタイルに適用するために使用されます。

## スタイルに基づいてコンテンツを抽出する方法

単純なレベルでは、Word文書からスタイルに基づいてコンテンツを取得することは、特定のスタイルでフォーマットされた段落やテキストの実行を識別、リスト、カウントするのに役立ちます。 たとえば、例、タイトル、参照、キーワード、図の名前、ケーススタディなど、ドキュメント内の特定の種類のコンテンツを特定する必要がある場合があります。

これをさらに数ステップ実行するために、これを使用して、使用するスタイルによって定義された文書の構造を活用して、HTMLなどの別の出力のために文書を再利用することもできます。 これは実際にAsposeのドキュメントがどのように構築されているかであり、Aspose.Wordsをテストに入れます。 Aspose.Wordsを使用して構築されたツールは、ソースWord文書を取得し、特定の見出しレベルでトピックに分割します。 XMLファイルは、左側に表示されるナビゲーションツリーを構築するために使用されるAspose.Wordsを使用して生成されます。 そしてAspose.Wordsは各トピックをHTMLに変換します。 Word文書内の特定のスタイルでフォーマットされたテキストを取得するための解決策は、通常、Aspose.Wordsを使用して経済的で簡単です。

スタイルに基づいてコンテンツを取得するAspose.Wordsがどのように簡単に処理されるかを説明するために、例を見てみましょう。 この例では、サンプルWord文書から特定の段落スタイルと文字スタイルで書式設定されたテキストを取得します。

高レベルでは、これには次のものが含まれます:

1. [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)クラスを使用してWord文書を開く。
1. ドキュメント内のすべての段落とすべての実行のコレクションを取得します。
1. 必要な段落と実行のみを選択します。

具体的には、このサンプルWord文書から、'Heading 1'段落スタイルと'Intense Emphasis'文字スタイルで書式設定されたテキストを取得します。

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

このサンプル文書では、'Heading 1'段落スタイルで書式設定されたテキストは'タブの挿入'、'クイックスタイル'、'テーマ'であり、'強烈な強調'文字スタイルで書式設定されたテキストは、'ギャラリー'や'全体的な外観'などの青、斜体、太字のテキストのいくつかのインスタンスです。

スタイルベースのクエリの実装は、Aspose.Wordsドキュメントオブジェクトモデルでは、すでに配置されているツールを使用するだけなので、非常に簡単です。 このソリューションには、2つのクラスメソッドが実装されています:

1. **ParagraphsByStyleName**–このメソッドは、特定のスタイル名を持つ文書内の段落の配列を取得します。
1. **RunsByStyleName**–このメソッドは、特定のスタイル名を持つドキュメント内の実行の配列を取得します。

これらのメソッドはどちらも非常に似ていますが、唯一の違いは、ノードタイプと、段落ノードと実行ノード内のスタイル情報の表現です。 指定したスタイルで書式設定されたすべての段落を見つけるために、以下のコード例に示すParagraphsByStyleNameの実装を次に示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

この実装では、`Document`クラスの[Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)メソッドも使用され、すべての直接の子ノードのコレクションが返されます。

また、段落内の項目にアクセスするときにのみ段落がこのコレクションに読み込まれるため、paragraphコレクションは即時のオーバーヘッドを作成しないこ次に、標準のforeach演算子を使用してコレクションを調べ、指定されたスタイルを持つ段落をparagraphsWithStyle配列に追加するだけです。 `Paragraph`スタイル名は[Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat)オブジェクトの[Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName)プロパティにあります。

RunsByStyleNameの実装はほぼ同じですが、明らかに`NodeType.Run`を使用して実行ノードを取得しています。 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/)オブジェクトの[Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle)プロパティは、**Run**ノードのスタイル情報にアクセスするために使用されます。

次のコード例では、指定したスタイルで書式設定されたすべての実行を検索します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

両方のクエリが実装されている場合は、documentオブジェクトを渡し、取得するコンテンツのスタイル名を指定するだけです:

{{% /alert %}}

次のコード例では、クエリを実行して結果を表示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

すべてが完了すると、サンプルを実行すると、次の出力が表示されます:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

ご覧のとおり、これは非常に簡単な例であり、収集された段落の数とテキストを示し、サンプルWord文書で実行されます。

## 別の段落スタイルを配置するには、スタイル区切り文字を挿入します

スタイルセパレータは、Ctrl+Alt+EnterキーボードショートカットをMSWordに使用して段落の最後に追加できます。 この機能を使用すると、1つの論理的に印刷された段落で使用される2つの異なる段落スタイルを使用できます。 特定の見出しの先頭からのテキストを目次に表示したいが、見出し全体を目次に表示したくない場合は、この機能を使用できます。

次のコード例は、異なる段落スタイルを配置するためにスタイル区切り文字を挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## テンプレートからすべてのスタイルをコピーする

ある文書から別の文書にすべてのスタイルをコピーする場合があります。 `Document.CopyStylesFromTemplate`メソッドを使用すると、指定したテンプレートからドキュメントにスタイルをコピーできます。 スタイルがテンプレートからドキュメントにコピーされると、ドキュメント内の同様の名前のスタイルがテンプレート内のスタイルの説明と一致するよ テンプレートの一意のスタイルがドキュメントにコピーされます。 ドキュメント内の一意のスタイルはそのまま残ります。

次のコード例は、あるドキュメントから別のドキュメントにスタイルをコピーする方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## テーマのプロパティを操作する方法

ドキュメントテーマプロパティにアクセスするために、Aspose.Wordsに基本的なAPIを追加しました。 今のところ、このAPIには次のパブリックオブジェクトが含まれています:

- テーマ
- ThemeFonts
- ThemeColors

テーマプロパティを取得する方法は次のとおりです:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

そして、ここでは、テーマのプロパティを設定する方法です:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
