---
title: テーブルを作成する方法 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: テーブルを作成する
linktitle: テーブルを作成する
description: "ドキュメント内のテーブルを作成するさまざまな方法 Javaお問い合わせ"
type: docs
weight: 20
url: /ja/java/create-a-table/
---

Aspose.Words ユーザーは、スクラッチから文書にテーブルを作成したり、さまざまな方法を提供したりすることができます。 この記事では、各メソッドを使用して文書にフォーマットされたテーブルを追加する方法、および記事の最後に各メソッドの比較について詳しく説明します。

## デフォルトのテーブルスタイル

新しく作成されたテーブルは、使用しているものと同様のデフォルト値が与えられます。 Microsoft Word:::

| テーブルプロパティ | デフォルトで Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| ボーダー色 |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

表は、タイトに位置付けられているか、ページ上のどこに置くことができるかを浮かぶとインラインにすることができます。 デフォルトでは、 Aspose.Words 常にインラインテーブルを作成します。

{{% /alert %}}

## DocumentBuilder でテーブルを作成する

インスタグラム Aspose.Words, ユーザーは、ドキュメントでテーブルを作成できます。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)お問い合わせ テーブルを作成するための基本的なアルゴリズムは次のとおりです。

1。 のテーブルをと開けて下さい [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2。 セルをテーブルに追加する [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) - これは自動的に新しい行を開始します
3。 オプションで、 [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) セルのフォーマットを指定するプロパティ
4。 セルコンテンツを適切な状態で入力 **DocumentBuilder** などの方法 [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), その他
5。 繰り返しステップ 2-4 行が完了するまで
6。 電話番号 [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 現在の行を終了するには
7。 オプションで、 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) 行のフォーマットを指定するプロパティ
8。 繰り返しステップ 2-7 テーブルが完了するまで
9月9日 電話番号 [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) テーブルを造ることを終えるため

{{% alert color="primary" %}}

重要な細部:

- - - [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) セル内で呼び出すこともできます。この場合、セル内のネストテーブルの作成が開始されます。
- 呼び出し後 [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), 新しいセルが作成され、他のメソッドを使用して追加するコンテンツも作成されます。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 現在のセルにクラスを追加します。 同じ行に新しいセルを作成するには、呼び出します **InsertCell** お問い合わせ
- 場合 **InsertCell** 直後に呼び出される [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 行の最後に、テーブルは新しい行を続行します。
- ザ・ [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) 呼び出し後、テーブルを終了するメソッドは一度だけ呼び出されるべきです **EndRow**お問い合わせ お問い合わせ **EndTable** カーソルを現在のセルからテーブル直後に位置に移動します。

{{% /alert %}}

表を作成するプロセスは、次の画像で明確に見ることができます。

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

次のコードの例では、単純なテーブルを作成する方法を示します。 **DocumentBuilder** デフォルトフォーマット:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

次のコードの例では、DocumentBuilder を使用して整形テーブルを作成する方法を示します。

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

次のコードの例では、DocumentBuilder を使用してネストされたテーブルをインサートする方法を示します。

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## 表を作成 DOM ( )Document Object Model)

テーブルを直接入れることができます。 DOM 新規追加 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) 特定の位置にあるノード。

テーブルノード作成直後にテーブル自体が完全に空になるので、まだ行やセルは含まないことに注意してください。 行とセルをテーブルに差し込むには、適切な行を追加します。 [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) そして、 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 子ノードへ DOMお問い合わせ

{{% alert color="primary" %}}

テーブルを作成するこの方法は、使用時に同じテーブルのデフォルトを使用します。 **DocumentBuilder**お問い合わせ

{{% /alert %}}

次のコードの例では、適切な子ノードをドキュメントツリーに追加することで、新しいテーブルをゼロから作成する方法を示します。

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## HTMLからテーブルを作成する

Aspose.Words HTML ソースからコンテンツをドキュメントに挿すサポート [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) メソッド。 入力は完全なHTMLページか部分的なスニペットである場合もあります。

これを使う **InsertHtml** メソッドは、テーブルタグでテーブルをドキュメントに差し込むことができます。 `<table>`, `<tr>`, `<td>`お問い合わせ

次のコードの例では、HTMLタグを含む文字列からテーブルを文書に書き込む方法を示します。

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## 既存のテーブルのコピーをインサート

ドキュメントの既存のテーブルに基づいてテーブルを作成する必要がある場合は、多くの場合あります。 すべての書式を保持しながらテーブルを複製する最も簡単な方法は、テーブルノードのクローンを作成することです。 [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) メソッド。

既存の行やセルのコピーをテーブルに追加するために同じ技術を使うことができます。

次のコードの例では、ノードコンストラクタを使用してテーブルを複製する方法を示します。

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)お問い合わせ

{{% /alert %}}

次のコードの例では、テーブルの最後の行をクローンし、テーブルに追加する方法を示します。

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)お問い合わせ

{{% /alert %}}

データソースから各レコードで動的に成長するドキュメントでテーブルを作成したい場合は、上記の方法はお勧めしません。 代わりに、目的の出力は使用することによってより容易に達成されます Mail merge 地域とともに。 このテクニックについてもっと学ぶことができます [Mail Merge 地域別](/words/java/types-of-mail-merge-operations/) セクション。

## テーブルを作成する方法を比較する

Aspose.Words ドキュメントに新しいテーブルを作成するいくつかの方法を提供します。 各方法には独自の利点と欠点があります。そのため、その選択は特定の状況に依存します。

テーブルを作成する方法を見て、その長所と短所を比較してみましょう。

|  メソッド | メリット |  欠点 |
|  :-  |  :-  |  :-  |
| ヴィクトリア `DocumentBuilder` | テーブルなどの文書コンテンツをインサートするための標準的な方法 | 時には、同じビルダーインスタンスで複数のテーブルを同時に作成するのは困難です |
| ヴィクトリア DOM |  ノードを直接作成し、インサートする、周囲のコードに適しています。 DOM 使わずに **DocumentBuilder** | ほとんどの操作を実行する前に、テーブルは「空」を作成します。 [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) 欠落した子ノードを作成する |
| HTMLから | のようなタグを使用してHTMLソースから新しいテーブルを作成できます `<table>`, `<tr>`, `<td>` | できる限り Microsoft Word 表形式は HTML に適用できます |
| 既存のテーブルをクローニング | すべての行とセルのフォーマットを保持しながら、既存のテーブルのコピーを作成できます | 適切な子ノードは、テーブルが使用可能になる前に削除する必要があります |
