---
title: 概要とテーブルの作成
second_title: Python via .NET用Aspose.Words
articleTitle: 概要とテーブルの作成
linktitle: 概要とテーブルの作成
description: "Python を使用してドキュメント内のテーブルを作成および管理します。"
type: docs
weight: 10
url: /ja/python-net/create-a-table/
---

Aspose.Words を使用すると、ユーザーはドキュメント内にテーブルを最初から作成でき、そのためのいくつかの異なる方法が提供されます。この記事では、各方法を使用して書式設定された表を文書に追加する方法の詳細と、記事の最後で各方法の比較を説明します。

## デフォルトのテーブルスタイル

新しく作成されたテーブルには、Microsoft Word で使用されるものと同様のデフォルト値が与えられます。

| テーブルのプロパティ | Aspose.Wordsのデフォルト |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

表は、厳密に配置されている場合はインラインに、ページ上の任意の場所に配置できる場合はフローティングにできます。デフォルトでは、Aspose.Words は常にインライン テーブルを作成します。

{{% /alert %}}

## DocumentBuilder でテーブルを作成する

Aspose.Words では、ユーザーは [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を使用してドキュメント内にテーブルを作成できます。テーブルを作成するための基本的なアルゴリズムは次のとおりです。

1. [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) でテーブルを開始します
2. [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) を使用してテーブルにセルを追加します。これにより、自動的に新しい行が開始されます
3. 必要に応じて、[CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) プロパティを使用してセルの書式設定を指定します
4. [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str)、[InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str) などの適切な **DocumentBuilder** メソッドを使用してセルの内容を挿入します。
5. 行が完成するまでステップ 2 ～ 4 を繰り返します。
6. [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) を呼び出して現在の行を終了します
7. 必要に応じて、[RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) プロパティを使用して行の書式設定を指定します
8. テーブルが完成するまでステップ 2 ～ 7 を繰り返します。
9. [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) を呼び出してテーブルの構築を完了します

{{% alert color="primary" %}}

重要な詳細:

- [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) はセル内で呼び出すこともできます。その場合、セル内でネストされたテーブルの作成が開始されます。
- [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) を呼び出した後、新しいセルが作成され、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) クラスの他のメソッドを使用して追加したコンテンツはすべて現在のセルに追加されます。同じ行に新しいセルを作成するには、**InsertCell** を再度呼び出します。
- [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) の直後および行の終わりの直後に **InsertCell** が呼び出された場合、テーブルは新しい行に続きます。
- テーブルを終了する [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) メソッドは、**EndRow** を呼び出した後に 1 回だけ呼び出す必要があります。 **EndTable** を呼び出すと、カーソルが現在のセルからテーブルの直後の位置に移動します。

{{% /alert %}}

テーブルを作成するプロセスは、次の図で明確に見ることができます。

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="テーブル作成プロセス" style="zoom:50%;" />

次のコード例は、デフォルトの書式設定で **DocumentBuilder** を使用して単純なテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

次のコード例は、DocumentBuilder を使用して書式設定されたテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

次のコード例は、DocumentBuilder を使用して入れ子になったテーブルを挿入する方法を示しています。

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## DOM (Document Object Model) 経由でテーブルを作成する

特定の位置に新しい [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ノードを追加することで、テーブルを DOM に直接挿入できます。

テーブル ノードの作成直後は、テーブル自体が完全に空である、つまり行やセルがまだ含まれていないことに注意してください。テーブルに行とセルを挿入するには、適切な [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) および [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) 子ノードを DOM に追加します。

{{% alert color="primary" %}}

テーブルを作成するこの方法では、**DocumentBuilder** を使用する場合と同じテーブルのデフォルトが使用されます。

{{% /alert %}}

次のコード例は、適切な子ノードをドキュメント ツリーに追加して、新しいテーブルを最初から作成する方法を示しています。

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create HTML からのテーブル

Aspose.Words は、[InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) メソッドを使用した HTML ソースからドキュメントへのコンテンツの挿入をサポートしています。入力は、完全な HTML ページまたは部分的なスニペットにすることができます。

**InsertHtml** メソッドを使用すると、`<table>`、`<tr>`、`<td>` などのテーブル タグを介してドキュメントにテーブルを挿入できます。

次のコード例は、HTML タグを含む文字列からドキュメントに表を挿入する方法を示しています。

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## 既存のテーブルのコピーを挿入する

ドキュメント内の既存の表に基づいて表を作成する必要がある場合がよくあります。すべての書式設定を保持したままテーブルを複製する最も簡単な方法は、[Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/) メソッドを使用してテーブル ノードのクローンを作成することです。

同じ手法を使用して、既存の行またはセルのコピーをテーブルに追加できます。

次のコード例は、ノード コンストラクターを使用してテーブルを複製する方法を示しています。

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、テーブルの最後の行のクローンを作成し、それをテーブルに追加する方法を示しています。

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

データ ソースのレコードごとに動的に増加するテーブルをドキュメント内に作成する場合、上記の方法はお勧めできません。代わりに、リージョンで Mail merge を使用すると、目的の出力をより簡単に実現できます。

## テーブルの作成方法を比較する

Aspose.Words には、ドキュメント内に新しいテーブルを作成するためのいくつかの方法が用意されています。各方法には独自の長所と短所があるため、どちらを使用するかは特定の状況によって決まります。

テーブルを作成するこれらの方法を詳しく見て、その長所と短所を比較してみましょう。

|  方法 | 利点 |  短所 |
|  :-  |  :-  |  :-  |
| DocumentBuilder経由 | 表やその他のドキュメントコンテンツを挿入するための標準的な方法 | 同じビルダー インスタンスで同時に多くの種類のテーブルを作成するのが難しい場合がある |
| DOM経由 |  **DocumentBuilder** を使用せずにノードを直接作成して DOM に挿入する周囲のコードとの適合性が向上します。 | テーブルは「空」で作成されます。ほとんどの操作を実行する前に、[EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) を呼び出して不足している子ノードを作成する必要があります。 |
| HTMLから | `<table>`、`<tr>`、`<td>`などのタグを使用してHTMLソースから新しいテーブルを作成できます | 考えられるすべての Microsoft Word テーブル形式を HTML に適用できるわけではありません |
| 既存のテーブルのクローン作成 | すべての行とセルの書式設定を保持したまま、既存のテーブルのコピーを作成できます。 | テーブルを使用できるようにするには、適切な子ノードを削除する必要があります。 |