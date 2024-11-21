---
title: 列と列で作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 列と列を扱う
linktitle: 列と列を扱う
description: "テーブルの部分と作業 - 行、列、およびセルの使用 Javaお問い合わせ Header Rowを指定する Javaお問い合わせ"
type: docs
weight: 30
url: /ja/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

テーブルがどのように機能するかをコントロールするには、列と行を操作する方法を学びます。

## 表要素インデックスの検索

列、行、セルは、選択したドキュメントノードにアクセスして、そのインデックスによって管理されます。 任意のノードのインデックスを見つけることは、親ノードから要素タイプのすべての子ノードを収集し、その後使用することを含みます。 [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) コレクションの目的ノードのインデックスを見つける方法。

### ドキュメント内のテーブルのインデックスを見つける

ドキュメント内の特定のテーブルに変更を加える必要がある場合があります。 これを行うには、そのインデックスでテーブルを参照することができます。

次のコードの例では、ドキュメント内のテーブルのインデックスを取得する方法を示します。

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### 列のインデックスをテーブルで見つける

同様に、選択したテーブルの特定の行に変更を加える必要があります。 これを行うには、そのインデックスで行を参照することもできます。

次のコードの例では、テーブル内の行のインデックスを取得する方法を示します。

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### 行内のセルのインデックスを見つける

最後に、特定のセルに変更を加える必要があり、セルのインデックスでもこれを行うことができます。

次のコードの例では、行内のセルのインデックスを取得する方法を示します。

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## コラムを扱う

お問い合わせ Aspose.Words Document Object Model ( )DOM)、 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ノードは、 [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) ノードとその後 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) ノード。 したがって、 `Document` オブジェクトモデルの Aspose.Words、Word文書のように、列の概念はありません。

設計によって、テーブル列の Microsoft Word そして、 Aspose.Words 完全に独立しており、基本的なプロパティと操作はテーブルの行とセルにのみ含まれています。 これは、テーブルにいくつかの興味深い属性を持つ能力を与えます。

- 各テーブル行は、完全に異なる数のセルを持つことができます
- 縦に、各列のセルは異なる幅を持つことができます
- - - 異なる行のフォーマットと数のセルでテーブルに参加することが可能

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

列上で実行される操作は、実際に列に適用されるように見えるように、行セルを一括変更することによって動作を実行する「ショートカット」です。 つまり、同じテーブル行のセルインデックスを反復することで、列の操作を実行できます。

次のコードの例では、テーブルの「列」を構成するセルを収集するファサードクラスを生成することで、そのような操作を簡素化します。

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

以下のコードの例では、空白の列をテーブルに差し込む方法を示します。

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

次のコードの例では、文書内のテーブルから列を削除する方法を示します。

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Rows を Header Rows として指定する

ヘッダーの列は、テーブルが複数に分割されている場合は、最初のページまたは各ページのみで、テーブルの最初の行を繰り返すことができます。 インスタグラム Aspose.Words, どのページでもヘッダの列を繰り返すことができます。 [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) プロパティ.

また、テーブルの先頭に他の行が1つある場合は、複数のヘッダー行をマークすることもできます。 これを行うには、申請する必要があります **HeadingFormat** これらの行のプロパティ。

{{% alert color="primary" %}}

Header Rowsはネストされたテーブルでは動作しません。 つまり、テーブルを別のテーブルの中に置くと、この設定は効果がない。 それは制限です Microsoft Word これを許さない Aspose.Wordsお問い合わせ

{{% /alert %}}

次のコードの例では、ヘッダ行を含むテーブルを作成する方法を示します。次のページで繰り返す:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## 表と行をブレーク・アクロス・ページから保持 {#keep-tables-and-rows-from-breaking-across-pages}

表の内容がページ全体に分割されない場合があります。 たとえば、タイトルがテーブルの上にある場合は、タイトルとテーブルは常に同じページで一緒に保持され、適切な外観を維持する必要があります。

この機能を達成するために有用である2つの別の技術があります。

- - - `Allow row break across pages`, テーブル行に適用される
- - - `Keep with next`, テーブルセルの段落に適用されるもの

デフォルトでは、上記のプロパティは無効になっています。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### ページを渡る壊れ目から列を保って下さい {#keep-a-row-from-breaking-across-pages}

これは、ページ全体に分割されるから行のセル内のコンテンツを制限することを含みます。 インスタグラム Microsoft Word, これは、テーブルのプロパティのオプションとして見つけることができます "ページを突破するために行を許可します". インスタグラム Aspose.Words これは、下にあります [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) オブジェクト [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) プロパティとして [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)お問い合わせ

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

次のコードの例では、テーブルの各行のページに行を破棄する方法を示します。

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### ページ全体でテーブルを破る {#keep-a-table-from-breaking-across-pages}

ページの分割からテーブルを停止するには、テーブルに含まれているコンテンツが一緒に滞在するかどうかを指定する必要があります。

これを行うには、 Aspose.Words ユーザーがテーブルを選択してテーブルを有効にできるメソッドを使用します。 [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) パラメーターへ true テーブルセル内の各段落のため。 例外はテーブルの最後の段落です。 falseお問い合わせ

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

次のコードの例では、同じページで一緒に滞在するテーブルを設定する方法を示します。

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
