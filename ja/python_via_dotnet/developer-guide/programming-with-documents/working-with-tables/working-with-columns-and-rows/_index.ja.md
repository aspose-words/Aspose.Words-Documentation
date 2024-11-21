---
title: 列と行を操作する
second_title: Python via .NET用Aspose.Words
articleTitle: 列と行を操作する
linktitle: 列と行を操作する
description: "Python を使用して、テーブルの一部 (行、列、セル) を操作します。ヘッダ行Pythonを指定します。"
type: docs
weight: 30
url: /ja/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

テーブルの動作をより詳細に制御するには、列と行を操作する方法を学習してください。

## テーブル要素インデックスの検索

列、行、セルは、インデックスによって選択したドキュメント ノードにアクセスすることによって管理されます。ノードのインデックスを検索するには、親ノードから要素タイプのすべての子ノードを収集し、[IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) メソッドを使用してコレクション内の目的のノードのインデックスを検索します。

### 文書内の表の索引を検索する

場合によっては、ドキュメント内の特定の表に変更を加える必要があるかもしれません。これを行うには、インデックスによってテーブルを参照できます。

次のコード例は、ドキュメント内のテーブルのインデックスを取得する方法を示しています。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### テーブル内の行のインデックスの検索

同様に、選択したテーブルの特定の行を変更する必要がある場合があります。これを行うには、インデックスによって行を参照することもできます。

次のコード例は、テーブル内の行のインデックスを取得する方法を示しています。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### 行内のセルのインデックスを見つける

最後に、特定のセルに変更を加える必要がある場合がありますが、これはセル インデックスによって行うこともできます。

次のコード例は、行内のセルのインデックスを取得する方法を示しています。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## 列の操作

Aspose.Words Document Object Model (DOM) では、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ノードは [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ノードと [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) ノードで構成されます。したがって、Aspose.Words の `Document` オブジェクト モデルには、Word ドキュメントと同様に、列の概念がありません。

設計上、Microsoft Word と Aspose.Words のテーブル行は完全に独立しており、基本的なプロパティと操作はテーブルの行とセルにのみ含まれています。これにより、テーブルにいくつかの興味深い属性を持たせることができます。

- 表の各行にはまったく異なる数のセルを含めることができます
- 垂直方向では、各行のセルの幅を変えることができます。
- 行形式やセル数が異なる表を結合することが可能

列に対して実行される操作はすべて、実際には列に適用されているように見える方法で行セルを一括して変更することによって操作を実行する「ショートカット」です。つまり、同じテーブルの行のセル インデックスを反復処理するだけで、列に対する操作を実行できます。

次のコード例は、テーブルの「列」を構成するセルを収集するファサード クラスを証明することで、そのような操作を簡素化します。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

次のコード例は、テーブルに空の列を挿入する方法を示しています。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

次のコード例は、ドキュメント内のテーブルから列を削除する方法を示しています。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## 行をヘッダー行として指定

テーブルの最初の行を最初のページでのみヘッダー行として繰り返すか、テーブルが複数に分割されている場合は各ページで繰り返すかを選択できます。 Aspose.Words では、[HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/) プロパティを使用して、すべてのページでヘッダー行を繰り返すことができます。

複数のヘッダー行がテーブルの先頭に連続して配置されている場合は、複数のヘッダー行をマークすることもできます。これを行うには、**HeadingFormat** プロパティをこれらの行に適用する必要があります。

{{% alert color="primary" %}}

ヘッダー行はネストされたテーブルでは機能しないことに注意してください。つまり、別のテーブルの中にテーブルがある場合、この設定は効果がありません。これを許可しないのは、Aspose.Words ではなく Microsoft Word の制限です。

{{% /alert %}}

次のコード例は、後続のページで繰り返されるヘッダー行を含むテーブルを構築する方法を示しています。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## テーブルと行がページをまたがらないようにする

表の内容を複数のページに分割すべきではない場合があります。たとえば、タイトルが表の上にある場合は、適切な外観を維持するために、タイトルと表を常に同じページ上にまとめて配置する必要があります。

この機能を実現するには、次の 2 つの個別の手法が役立ちます。

- `Allow row break across pages`、テーブル行に適用されます
- `Keep with next`。表のセル内の段落に適用されます。

デフォルトでは、上記のプロパティは無効になっています。

### 行がページをまたがらないようにする

これには、行のセル内のコンテンツがページ全体に分割されないように制限することが含まれます。 Microsoft Word では、これはテーブルのプロパティの下に「ページをまたがる行の分割を許可する」オプションとして表示されます。 Aspose.Words では、これは [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) の [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) オブジェクトの下にプロパティ [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/) として見つかります。

次のコード例は、テーブル内の各行のページ間での行の分割を無効にする方法を示しています。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) からダウンロードできます。

{{% /alert %}}

### 表がページをまたがらないようにする

テーブルがページ間で分割されないようにするには、テーブル内に含まれるコンテンツを一緒に保持することを指定する必要があります。

これを行うために、Aspose.Words はユーザーがテーブルを選択し、テーブル セル内の段落ごとに [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) パラメータを true に有効にするメソッドを使用します。例外はテーブルの最後の段落で、false に設定する必要があります。

次のコード例は、テーブルを同じページ上にまとめて配置するように設定する方法を示しています。

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) からダウンロードできます。

{{% /alert %}}
