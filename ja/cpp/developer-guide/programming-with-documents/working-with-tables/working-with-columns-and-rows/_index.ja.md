---
title: C++での列と行の操作
second_title: C++の場合Aspose.Words
articleTitle: 列と行の操作
linktitle: 列と行の操作
description: "C++を使用して、テーブルの一部（行、列、およびセル）を操作します。 ヘッダー行C++を指定します。"
type: docs
weight: 30
url: /ja/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

テーブルの動作をより詳細に制御するには、列と行を操作する方法を学習します。

## テーブル要素インデックスの検索

列、行、およびセルは、選択したドキュメントノードにインデックスでアクセスすることによって管理されます。 ノードのインデックスを見つけるには、親ノードから要素タイプのすべての子ノードを収集し、[IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/)メソッドを使用してコレクション内の目的のノードのイン

### ドキュメント内のテーブルのインデックスを検索する

場合によっては、ドキュメント内の特定のテーブルに変更を加える必要があることがあります。 これを行うには、そのインデックスでテーブルを参照できます。

次のコード例は、ドキュメント内のテーブルのインデックスを取得する方法を示しています:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### テーブル{#find-the-index-of-a-row-in-a-table}内の行のインデックスを検索します

同様に、選択したテーブルの特定の行に変更を加える必要がある場合があります。 これを行うには、そのインデックスで行を参照することもできます。

次のコード例は、テーブル内の行のインデックスを取得する方法を示しています:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### 行{#find-the-index-of-a-cell-in-a-row}のセルのインデックスを検索します

最後に、特定のセルに変更を加える必要がある場合があり、セルインデックスでもこれを行うことができます。

次のコード例は、行のセルのインデックスを取得する方法を示しています:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## 列の操作

Aspose.Wordsドキュメントオブジェクトモデル(DOM)では、[Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)ノードは[Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)ノードと[Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)ノードで構成されます。 したがって、Aspose.Wordsの`Document`オブジェクトモデルでは、Word文書のように、列の概念はありません。

設計上、Microsoft WordとAspose.Wordsのテーブル行は完全に独立しており、基本的なプロパティと操作はテーブルの行とセルにのみ含まれています。 これにより、テーブルにいくつかの興味深い属性を持たせることができます:

- 各テーブルの行には、完全に異なる数のセルを含めることができます
- 垂直方向には、各行のセルの幅が異なる場合があります
- 異なる行形式とセル数のテーブルを結合することができます

列に対して実行される操作は、実際には、列に適用されているように見えるように行セルをまとめて変更することによって操作を実行する「ショートカット」です。 つまり、同じテーブル行のセルインデックスを反復処理するだけで、列に対して操作を実行できます。

次のコード例では、テーブルの"列"を構成するセルを収集するファサードクラスを証明することにより、このような操作を簡素化します:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

次のコード例は、テーブルに空白の列を挿入する方法を示しています:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

次のコード例は、ドキュメント内のテーブルから列を削除する方法を示しています:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## 行をヘッダー行として指定する

テーブルの最初の行をヘッダー行として最初のページでのみ繰り返すか、テーブルが複数に分割されている場合は各ページで繰り返すかを選択できます。 Aspose.Wordsでは、[HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/)プロパティを使用してすべてのページでヘッダー行を繰り返すことができます。

そのような行がテーブルの先頭に次々に配置されている場合は、複数のヘッダー行にマークを付けることもできます。 これを行うには、これらの行に**HeadingFormat**プロパティを適用する必要があります。

{{% alert color="primary" %}}

ネスト構造になっているテーブルではヘッダ行は機能しないことに注意してください。 つまり、別のテーブルの中にテーブルがある場合、この設定は効果がありません。 これを許可しないのはMicrosoft Wordの制限であり、Aspose.Wordsではありません。

{{% /alert %}}

次のコード例は、後続のページで繰り返されるヘッダー行を含むテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## テーブルと行がページ間で破損しないようにする

テーブルの内容をページ間で分割してはならない場合があります。 たとえば、タイトルがテーブルの上にある場合、適切な外観を維持するために、タイトルとテーブルは常に同じページにまとめておく必要があります。

この機能を実現するのに便利な2つの別々の手法があります:

- `Allow row break across pages`は、テーブル行に適用されます
- `Keep with next`は、表のセルの段落に適用されます

デフォルトでは、上記のプロパティは無効になっています。

### 行がページ{#keep-a-row-from-breaking-across-pages}を越えて破損しないようにする

これには、行のセル内のコンテンツがページ間で分割されないように制限することが含まれます。 Microsoft Wordでは、これはテーブルのプロパティの下に"行をページ間で分割することを許可する"オプションとしてあります。 Aspose.Wordsでは、これは[Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)の[RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/)オブジェクトの下にプロパティ[RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/)としてあります。

次のコード例は、テーブル内の各行のページ間で行を分割することを無効にする方法を示しています:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### テーブルがページ間で破壊されないようにする{#keep-a-table-from-breaking-across-pages}

テーブルがページ間で分割されないようにするには、テーブル内に含まれるコンテンツを一緒に保つように指定する必要があります。

これを行うために、Aspose.Wordsは、ユーザーがテーブルを選択し、テーブルセル内の各段落に対して[KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/)パラメータをtrueに有効にするメソッドを使用します。 例外は、テーブルの最後の段落であり、falseに設定する必要があります。

次のコード例は、同じページに一緒に滞在するようにテーブルを設定する方法を示しています:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
