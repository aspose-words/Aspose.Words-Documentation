---
title: C++でテーブルを作成する方法
second_title: C++の場合Aspose.Words
articleTitle: テーブルを作成する
linktitle: テーブルを作成する
description: "C++を使用してテーブルを作成するさまざまな方法。 ドキュメント用にC++でテーブルを作成します。 C++でテーブルを追加します。"
type: docs
weight: 20
url: /ja/cpp/create-a-table/
---

Aspose.Wordsを使用すると、ユーザーは文書内にテーブルを最初から作成でき、そのためのいくつかの異なる方法が提供されます。 この記事では、各メソッドを使用して書式設定されたテーブルをドキュメントに追加する方法の詳細と、記事の最後にある各メソッドの比較について

## デフォルトのテーブルスタイル

新しく作成されたテーブルには、Microsoft Wordで使用されているものと同様のデフォルト値が与えられます:

| テーブルプロパティ | Aspose.Wordsのデフォルト |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2pt |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

テーブルは、しっかりと配置されている場合はインラインに、ページ上の任意の場所に配置できる場合はフローティングにすることができます。 既定では、Aspose.Wordsは常にインラインテーブルを作成します。

{{% /alert %}}

## DocumentBuilderでテーブルを作成する

Aspose.Wordsでは、ユーザーは[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)を使用して文書内にテーブルを作成できます。 テーブルを作成するための基本的なアルゴリズムは次のとおりです:

1. テーブルを[StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)で開始します
2. [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/)を使用してテーブルにセルを追加する–これにより、新しい行が自動的に開始されます
3. 必要に応じて、[CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/)プロパティを使用してセルの書式を指定します
4. [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/)、[InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/)などの適切な**DocumentBuilder**メソッドを使用してセルの内容を挿入します
5. 行が完了するまで、手順2-4を繰り返します
6. 現在の行を終了するには[EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/)を呼び出します
7. 必要に応じて、[RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/)プロパティを使用して行の書式を指定します
8. テーブルが完了するまで、手順2-7を繰り返します
9. テーブルの構築を完了するには[EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/)を呼び出します

{{% alert color="primary" %}}

重要な詳細:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)はセル内で呼び出すこともでき、その場合、セル内でネストされたテーブルの作成を開始します。
- [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/)を呼び出した後、新しいセルが作成され、[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)クラスの他のメソッドを使用して追加したコンテンツが現在のセルに追加されます。 同じ行に新しいセルを作成するには、**InsertCell**を再度呼び出します。
- [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/)と行の終わりの直後に**InsertCell**が呼び出された場合、テーブルは新しい行で続行されます。
- テーブルを終了する[EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/)メソッドは、**EndRow**を呼び出した後に一度だけ呼び出す必要があります。 **EndTable**を呼び出すと、カーソルが現在のセルからテーブルの直後の位置に移動します。

{{% /alert %}}

テーブルを作成するプロセスは、次の図ではっきりと見ることができます:

![creating-table-process](creating-table-process.jpg)

次のコード例は、既定の書式設定で**DocumentBuilder**を使用して単純なテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

次のコード例は、DocumentBuilderを使用して書式設定されたテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

次のコード例は、DocumentBuilderを使用して入れ子になったテーブルを挿入する方法を示しています:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## DOM（ドキュメントオブジェクトモデル）を介してテーブルを作成する

特定の位置に新しい[Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)ノードを追加することで、テーブルをDOMに直接挿入できます。

テーブルノードの作成直後に、テーブル自体は完全に空になります。つまり、まだ行とセルが含まれていないことに注意してください。 テーブルに行とセルを挿入するには、適切な[Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)と[Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)の子ノードをDOMに追加します。

{{% alert color="primary" %}}

テーブルを作成するこの方法では、**DocumentBuilder**を使用する場合と同じテーブルのデフォルトが使用されます。

{{% /alert %}}

次のコード例は、適切な子ノードをドキュメントツリーに追加して、新しいテーブルを最初から作成する方法を示しています:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## HTMLからテーブルを作成する

Aspose.Wordsは、[InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/)メソッドを使用してHTMLソースからドキュメントにコンテンツを挿入することをサポートします。 入力は、完全なHTMLページまたは部分的なスニペットにすることができます。

**InsertHtml**メソッドを使用すると、ユーザーは次のようなテーブルタグを介して文書にテーブルを挿入できます`<table>`, `<tr>`, `<td>`.

次のコード例は、HTMLタグを含む文字列からドキュメントにテーブルを挿入する方法を示しています:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## 既存のテーブルのコピーを挿入する

ドキュメント内の既存のテーブルに基づいてテーブルを作成する必要がある場合がよくあります。 すべての書式設定を保持しながらテーブルを複製する最も簡単な方法は、[Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/)メソッドを使用してテーブルノードを複製することです。

同じ手法を使用して、既存の行またはセルのコピーをテーブルに追加できます。

次のコード例は、ノードコンストラクターを使用してテーブルを複製する方法を示しています:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

次のコード例は、テーブルの最後の行を複製してテーブルに追加する方法を示しています:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

データソースからの各レコードで動的に成長するドキュメント内のテーブルを作成する場合は、上記の方法はお勧めしません。 代わりに、領域でMail mergeを使用すると、目的の出力がより簡単に達成されます。 この技術についての詳細を学ぶことができます [地域を持つMail Merge](/words/cpp/types-of-mail-merge-operations/) セクション。

## テーブルを作成する方法を比較する

Aspose.Wordsは、文書内に新しいテーブルを作成するためのいくつかのメソッドを提供します。 各方法には独自の長所と短所があるため、使用する選択は特定の状況に依存することがよくあります。

テーブルを作成するこれらの方法を詳しく見て、その長所と短所を比較してみましょう:

| メソッド | 利点 | デメリット |
| :- | :- | :- |
| `DocumentBuilder` | テーブルやその他のドキュメントコンテンツを挿入するための標準的な方法 | 同じビルダーインスタンスで同時に多くの種類のテーブルを作成するのが難しい場合があります |
| DOM経由 | **DocumentBuilder**を使用せずにノードを作成してDOMに直接挿入する周囲のコードに適しています | ほとんどの操作を実行する前に、[EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/)を呼び出して不足している子ノードを作成する必要があります |
| HTMLから | 次のようなタグを使用してHTMLソースから新しいテーブルを作成できます`<table>`, `<tr>`, `<td>` | すべての可能なMicrosoft Wordテーブル形式をHTMLに適用できるわけではありません |
| 既存のテーブルのクローン作成 | すべての行とセルの書式設定を保持しながら、既存のテーブルのコピーを作成できます | テーブルを使用する準備が整う前に、適切な子ノードを削除する必要があります |
