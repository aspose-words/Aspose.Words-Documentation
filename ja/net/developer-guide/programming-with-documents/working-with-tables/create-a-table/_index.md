---
title: C# でテーブルを作成する方法
second_title: .NET用Aspose.Words
articleTitle: テーブルを作成する
linktitle: テーブルを作成する
description: "C# でテーブルをさまざまな方法で作成する方法についてのガイドです。 C# でドキュメントのテーブルを作成します。"
type: docs
weight: 20
url: /ja/net/create-a-table/
---

Aspose.Words を使用すると、ユーザーはドキュメント内にテーブルを最初から作成でき、そのためのいくつかの異なる方法が提供されます。この記事では、各方法を使用して書式設定された表を文書に追加する方法の詳細と、記事の最後で各方法の比較を説明します。

## デフォルトのテーブルスタイル

新しく作成されたテーブルには、Microsoft Word で使用されるものと同様のデフォルト値が与えられます。

|  テーブルのプロパティ |  Aspose.Wordsのデフォルト |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

表は、厳密に配置されている場合はインラインに、ページ上の任意の場所に配置できる場合はフローティングにできます。デフォルトでは、Aspose.Words は常にインライン テーブルを作成します。

{{% /alert %}}

## DocumentBuilder でテーブルを作成する

Aspose.Words では、ユーザーは [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) を使用してドキュメント内にテーブルを作成できます。テーブルを作成するための基本的なアルゴリズムは次のとおりです。

1. [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) でテーブルを開始します
2. [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) を使用してテーブルにセルを追加します。これにより、自動的に新しい行が開始されます
3. 必要に応じて、[CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) プロパティを使用してセルの書式設定を指定します
4. [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/)、[InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) などの適切な **DocumentBuilder** メソッドを使用してセルの内容を挿入します。
5. 行が完成するまでステップ 2 ～ 4 を繰り返します。
6. [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) を呼び出して現在の行を終了します
7. 必要に応じて、[RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) プロパティを使用して行の書式設定を指定します
8. テーブルが完成するまでステップ 2 ～ 7 を繰り返します。
9. [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) を呼び出してテーブルの構築を完了します

{{% alert color="primary" %}}

重要な詳細:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) はセル内で呼び出すこともでき、その場合はセル内でネストされたテーブルの作成が開始されます。
* [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) を呼び出した後、新しいセルが作成され、[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) クラスの他のメソッドを使用して追加したコンテンツはすべて現在のセルに追加されます。同じ行に新しいセルを作成するには、**InsertCell** を再度呼び出します。
* [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) の直後および行の終わりの直後に **InsertCell** が呼び出された場合、テーブルは新しい行に続きます。
* テーブルを終了する [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) メソッドは、**EndRow** を呼び出した後に 1 回だけ呼び出す必要があります。 **EndTable** を呼び出すと、カーソルが現在のセルからテーブルの直後の位置に移動します。

{{% /alert %}}

テーブルを作成するプロセスは、次の図で明確に見ることができます。

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

次のコード例は、デフォルトの書式設定で **DocumentBuilder** を使用して単純なテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

次のコード例は、DocumentBuilder を使用して書式設定されたテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

次のコード例は、DocumentBuilder を使用してネストされたテーブルを挿入する方法を示しています。

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## DOM (Document Object Model) 経由でテーブルを作成する

特定の位置に新しい [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) ノードを追加することで、テーブルを DOM に直接挿入できます。

テーブル ノードの作成直後は、テーブル自体が完全に空である、つまり行やセルがまだ含まれていないことに注意してください。テーブルに行とセルを挿入するには、適切な [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) および [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 子ノードを DOM に追加します。

{{% alert color="primary" %}}

テーブルを作成するこの方法では、**DocumentBuilder** を使用する場合と同じテーブルのデフォルトが使用されます。

{{% /alert %}}

次のコード例は、適切な子ノードをドキュメント ツリーに追加して、新しいテーブルを最初から作成する方法を示しています。

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## HTMLからテーブルを作成する

Aspose.Words は、[InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) メソッドを使用した HTML ソースからドキュメントへのコンテンツの挿入をサポートしています。入力は、完全な HTML ページまたは部分的なスニペットにすることができます。

**InsertHtml** メソッドを使用すると、`<table>`、`<tr>`、`<td>` などのテーブル タグを介してドキュメントにテーブルを挿入できます。

次のコード例は、HTML タグを含む文字列からドキュメントに表を挿入する方法を示しています。

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## 既存のテーブルのコピーを挿入する

ドキュメント内の既存の表に基づいて表を作成する必要がある場合がよくあります。すべての書式設定を保持したままテーブルを複製する最も簡単な方法は、[Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) メソッドを使用してテーブル ノードのクローンを作成することです。

同じ手法を使用して、既存の行またはセルのコピーをテーブルに追加できます。

次のコード例は、ノード コンストラクターを使用してテーブルを複製する方法を示しています。

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、テーブルの最後の行のクローンを作成し、それをテーブルに追加する方法を示しています。

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

データ ソースのレコードごとに動的に増加するテーブルをドキュメント内に作成する場合、上記の方法はお勧めできません。代わりに、リージョンで Mail merge を使用すると、目的の出力をより簡単に実現できます。このテクニックについて詳しくは、[Mail Merge とリージョン](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) セクションをご覧ください。

## テーブルの作成方法を比較する

Aspose.Words には、ドキュメント内に新しいテーブルを作成するためのいくつかの方法が用意されています。各方法には独自の長所と短所があるため、どちらを使用するかは特定の状況によって決まります。

テーブルを作成するこれらの方法を詳しく見て、その長所と短所を比較してみましょう。

|  方法 | 利点 |  短所 |
|  :-  |  :-  |  :-  |
| `DocumentBuilder`経由 | 表やその他のドキュメントコンテンツを挿入するための標準的な方法 | 同じビルダー インスタンスで同時に多くの種類のテーブルを作成するのが難しい場合がある |
| DOM経由 |  **DocumentBuilder** を使用せずにノードを直接作成して DOM に挿入する周囲のコードとの適合性が向上します。 | テーブルは「空」で作成されます。ほとんどの操作を実行する前に、[EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) を呼び出して不足している子ノードを作成する必要があります。 |
| HTMLから | `<table>`、`<tr>`、`<td>`などのタグを使用してHTMLソースから新しいテーブルを作成できます | 考えられるすべての Microsoft Word テーブル形式を HTML に適用できるわけではありません |
| 既存のテーブルのクローン作成 | すべての行とセルの書式設定を保持したまま、既存のテーブルのコピーを作成できます。 | テーブルを使用できるようにするには、適切な子ノードを削除する必要があります。 |