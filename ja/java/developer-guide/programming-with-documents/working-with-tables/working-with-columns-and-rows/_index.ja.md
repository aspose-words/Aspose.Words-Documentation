---
title: Javaの列と行を操作する
second_title: Aspose.WordsのためのJava
articleTitle: 列と行の操作
linktitle: 列と行の操作
description: "Javaを使用して、テーブルの一部–行、列、およびセルを操作します。 ヘッダー行Javaを指定します。"
type: docs
weight: 30
url: /ja/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

テーブルの動作をより詳細に制御するには、列と行を操作する方法を学習します。

## テーブル要素インデックスの検索

列、行、およびセルは、選択したドキュメントノードにインデックスでアクセスすることによって管理されます。 ノードのインデックスを見つけるには、親ノードから要素タイプのすべての子ノードを収集し、[IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node)メソッドを使用してコレクション内の目的のノードのイン

### ドキュメント内のテーブルのインデックスを検索する

場合によっては、ドキュメント内の特定のテーブルに変更を加える必要があることがあります。 これを行うには、そのインデックスでテーブルを参照できます。

次のコード例は、ドキュメント内のテーブルのインデックスを取得する方法を示しています:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### テーブル内の行のインデックスの検索

同様に、選択したテーブルの特定の行に変更を加える必要がある場合があります。 これを行うには、そのインデックスで行を参照することもできます。

次のコード例は、テーブル内の行のインデックスを取得する方法を示しています:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### 行内のセルのインデックスの検索

最後に、特定のセルに変更を加える必要がある場合があり、セルインデックスでもこれを行うことができます。

次のコード例は、行のセルのインデックスを取得する方法を示しています:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## 列の操作

Aspose.Wordsドキュメントオブジェクトモデル(DOM)では、[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)ノードは[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)ノードと[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)ノードで構成されます。 したがって、Aspose.Wordsの`Document`オブジェクトモデルでは、Word文書のように、列の概念はありません。

設計上、Microsoft WordとAspose.Wordsのテーブル行は完全に独立しており、基本的なプロパティと操作はテーブルの行とセルにのみ含まれています。 これにより、テーブルにいくつかの興味深い属性を持たせることができます:

- 各テーブルの行には、完全に異なる数のセルを含めることができます
- 垂直方向には、各行のセルの幅が異なる場合があります
- 異なる行形式とセル数のテーブルを結合することができます

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

列に対して実行される操作は、実際には、列に適用されているように見えるように行セルをまとめて変更することによって操作を実行する「ショートカット」です。 つまり、同じテーブル行のセルインデックスを反復処理するだけで、列に対して操作を実行できます。

次のコード例では、テーブルの"列"を構成するセルを収集するファサードクラスを証明することにより、このような操作を簡素化します:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

次のコード例は、テーブルに空白の列を挿入する方法を示しています:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

次のコード例は、ドキュメント内のテーブルから列を削除する方法を示しています:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## 行をヘッダー行として指定する

テーブルの最初の行をヘッダー行として最初のページでのみ繰り返すか、テーブルが複数に分割されている場合は各ページで繰り返すかを選択できます。 Aspose.Wordsでは、[HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat)プロパティを使用してすべてのページでヘッダー行を繰り返すことができます。

そのような行がテーブルの先頭に次々に配置されている場合は、複数のヘッダー行にマークを付けることもできます。 これを行うには、これらの行に**HeadingFormat**プロパティを適用する必要があります。

{{% alert color="primary" %}}

ネスト構造になっているテーブルではヘッダ行は機能しないことに注意してください。 つまり、別のテーブルの中にテーブルがある場合、この設定は効果がありません。 これを許可しないのはMicrosoft Wordの制限であり、Aspose.Wordsではありません。

{{% /alert %}}

次のコード例は、後続のページで繰り返されるヘッダー行を含むテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## テーブルと行がページ間で分割されないようにする {#keep-tables-and-rows-from-breaking-across-pages}

テーブルの内容をページ間で分割してはならない場合があります。 たとえば、タイトルがテーブルの上にある場合、適切な外観を維持するために、タイトルとテーブルは常に同じページにまとめておく必要があります。

この機能を実現するのに便利な2つの別々の手法があります:

- `Allow row break across pages`は、テーブル行に適用されます
- `Keep with next`は、表のセルの段落に適用されます

デフォルトでは、上記のプロパティは無効になっています。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### 行がページ {#keep-a-row-from-breaking-across-pages}を越えて破損しないようにする

これには、行のセル内のコンテンツがページ間で分割されないように制限することが含まれます。 Microsoft Wordでは、これはテーブルのプロパティの下に"行をページ間で分割することを許可する"オプションとしてあります。 Aspose.Wordsでは、これは[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)の[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)オブジェクトの下にプロパティ[RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)としてあります。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

次のコード例は、テーブル内の各行のページ間で行を分割することを無効にする方法を示しています:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### テーブルがページ間で破壊されないようにする {#keep-a-table-from-breaking-across-pages}

テーブルがページ間で分割されないようにするには、テーブル内に含まれるコンテンツを一緒に保つように指定する必要があります。

これを行うために、Aspose.Wordsは、ユーザーがテーブルを選択し、テーブルセル内の各段落に対して[KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext)パラメータをtrueに有効にするメソッドを使用します。 例外は、テーブルの最後の段落であり、falseに設定する必要があります。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

次のコード例は、同じページに一緒に滞在するようにテーブルを設定する方法を示しています:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
