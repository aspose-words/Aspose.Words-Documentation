---
title: スタイルとテーマで働く
second_title: Aspose.Words お問い合わせ Java
articleTitle: スタイルとテーマで働く
linktitle: スタイルとテーマで働く
description: "強化された Microsoft Word 機能のフォーマット、スタイルとテーマを使用して作業 Javaお問い合わせ"
type: docs
weight: 110
url: /ja/java/working-with-styles-and-themes/
---

ザ・オブ・ザ・ [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) クラスは組み込みの管理とユーザー定義の設定をスタイルに適用するために使われます。

## スタイルに基づいてコンテンツを抽出する方法

シンプルなレベルでは、Word文書からスタイルに基づいてコンテンツを取得することは、特定のスタイルでフォーマットされたテキストの段落を特定、リスト、カウントするのに便利です。 たとえば、例、タイトル、参照、キーワード、図名、ケーススタディなど、ドキュメント内の特定の種類のコンテンツを識別する必要があるかもしれません。

この手順をさらに進めるには、使用するスタイルで定義されたドキュメントの構造を活用し、HTMLなどの別の出力のドキュメントを再特定することもできます。 これは、Aspose のドキュメントが構築されているという事実です。 Aspose.Words テストに。 使用するツール Aspose.Words ソースのWord文書を取り、特定の見出しレベルでトピックに分割します。 XMLファイルの作成 Aspose.Words 左側のナビゲーションツリーをビルドするために使用されます。 そしてそれから Aspose.Words 各トピックをHTMLに変換します。 ワード文書の特定のスタイルでフォーマットされたテキストを取得するためのソリューションは、典型的に経済的で簡単です。 Aspose.Wordsお問い合わせ

簡単に説明する方法 Aspose.Words スタイルに基づいてコンテンツの取得を処理します。例を見てみましょう。 この例では、特定の段落スタイルとサンプルワード文書からの文字スタイルでフォーマットされたテキストを取得しています。

高いレベルでは、以下が含まれます。

1。 ワード文書の開設 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) クラス。
1。 すべての段落のコレクションを取得し、すべての文書で実行します。
1。 必要な段落だけを選択し、実行します。

具体的には、このサンプルワード文書から「見出し1」の段落スタイルと「インテンスエンファシス」の文字スタイルでフォーマットされたテキストを取得します。

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

このサンプル文書では、「見出し1」の段落スタイルでフォーマットされたテキストは「インサートタブ」、「クイックスタイル」と「テーマ」です。そして「インテンス強調」の文字スタイルでフォーマットされたテキストは、ブルー、イタリゼーション、大胆なテキスト(「ギャラリー」や「オーバーオール」など)のいくつかの例です。

スタイルベースのクエリの実装は非常に簡単です Aspose.Words 既に配置されているツールを使用するため、ドキュメントオブジェクトモデル。 このソリューションでは、2つのクラスメソッドが実装されています。

1。 **ParagraphsByStyleName** – – このメソッドは、特定のスタイル名を持つドキュメント内のそれらの段落の配列を取得します。
1。 **RunsByStyleName** – – このメソッドは、特定のスタイル名を持つドキュメントで実行するそれらの配列を取得します。

これらのメソッドは、ノードタイプと段落内のスタイル情報の表現とノードの実行だけの違いが非常に似ています。 以下に示すコード例に示す ParagraphsByStyleName の実装で、指定されたスタイルでフォーマットされたすべての段落を見つけます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

この実装では、 [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) のメソッド `Document` クラスは、すべての即時の子ノードのコレクションを返す。

また、段落のコレクションは、段落がそれらに項目にアクセスしたときにのみ、このコレクションにロードされるので、すぐにオーバーヘッドを作成しないことを指摘する価値もあります。 それから、あなたがする必要があるのは、標準のforeach演算子を使用してコレクションを通過し、段落に指定されたスタイルを持っている段落を追加することです withStyle 配列。 ザ・オブ・ザ・ `Paragraph` スタイル名は、 [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) のプロパティ [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) オブジェクト。

RunsByStyleName の実装はほぼ同じですが、明らかに使用しています `NodeType.Run` 実行ノードを取得する。 ザ・オブ・ザ・ [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) プロパティ [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) オブジェクトはスタイル情報にアクセスするために使われます **Run** ノード。

以下のコードの例では、指定されたスタイルでフォーマットされたすべての実行がわかります。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

クエリの両方が実装されると、ドキュメントオブジェクトを渡すと、取得したいコンテンツのスタイル名を指定します。

{{% /alert %}}

以下のコード例ではクエリを実行し、結果を表示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

すべてが行われると、サンプルを実行すると、次の出力が表示されます。

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

あなたが見ることができるように、これは非常に単純な例で、収集された段落の番号とテキストを表示し、サンプルWord文書で実行します。

## 異なるパラグラフスタイルを置くインサートスタイルの分離器

スタイルセパレータは、Ctrl + Alt + キーボードショートカットをMS Wordに入力することで、段落の最後に追加できます。 この機能は、1つの論理的な印刷された段落で使用される2つの異なる段落のスタイルを可能にします。 特定の見出しの先頭からテキストを表示したいが、コンテンツの表に見出し全体が望まない場合は、この機能を使うことができます。

次のコード例では、異なる段落スタイルを置くスタイルセパレータをインサートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## テンプレートからのすべてのスタイルをコピーする

1つの文書から別の文書にすべてのスタイルをコピーしたい場合があります。 使うことができます。 `Document.CopyStylesFromTemplate` 指定されたテンプレートからドキュメントにスタイルをコピーする方法。 スタイルがテンプレートからドキュメントにコピーされると、ドキュメントのスタイルが変更され、テンプレートのスタイルの説明と一致します。 テンプレートのユニークなスタイルはドキュメントにコピーされます。 文書のユニークなスタイルはそのまま残っています。

次のコードの例では、一つの文書からスタイルを別の文書にコピーする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## 操作方法 テーマのプロパティ

基本追加 API お問い合わせ Aspose.Words ドキュメントテーマのプロパティへのアクセス 今のところ、 API 以下のパブリックオブジェクトを含みます。

- - - テーマ
- テーマフォント
- テーマカラー

テーマのプロパティを取得する方法は次のとおりです。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

テーマのプロパティを設定する方法は次のとおりです。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
