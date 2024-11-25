---
title: Javaの`DataTable`からテーブルを構築する方法
second_title: Aspose.WordsのためのJava
articleTitle: A`DataTable`からテーブルを作成する
linktitle: A`DataTable`からテーブルを作成する
description: "Javaを使用して外部データベースからドキュメントテーブルを入力する例。"
type: docs
weight: 130
url: /ja/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

多くの場合、アプリケーションはデータベースからデータを取得し、**DataTable**の形式で格納します。 このデータを新しいテーブルとして文書に簡単に挿入し、テーブル全体に書式設定をすばやく適用することができます。

{{% alert color="primary" %}}

**DataTable**からドキュメントテーブルにデータを挿入する好ましい方法は、以下を使用することです [地域を持つMail Merge](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). この記事で紹介する手法は、データをマージするための適切なテンプレートを事前に作成できない場合、つまり、すべてをプログラムで実行する必要がある場合にのみ推奨されます。

{{% /alert %}}

Aspose.Wordsを使用すると、データベースからデータを簡単に取得してテーブルとして格納できます:

1. [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)に新しい[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)オブジェクトを作成します。
1. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)を使用して新しいテーブルを開始します。
1. **DataTable**の各列の名前をヘッダー行として挿入する場合は、各データ列を反復処理し、列名をテーブルの行に書き込みます。
1. **DataTable**内の各**DataRow**を反復処理します:
   1. **DataRow**内の各オブジェクトを反復処理します。
   1. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)を使用してオブジェクトを文書に挿入します。 使用されるメソッドは、挿入されるオブジェクトのタイプに依存します（例：テキストの場合は[DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()）、画像を表すバイト配列の場合は[DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])）。
   1. データ行の処理の終了時には、[DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)を使用して[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder)によって作成される行も終了します。
1. **DataTable**のすべての行が処理されたら、[DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)を呼び出してテーブルを終了します。
1. 最後に、[Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier)などの適切なテーブルプロパティのいずれかを使用して目的のテーブルスタイルを設定し、テーブル全体に書式設定を自動的に適用できます。
   この例では、**DataTable**の次のデータが使用されています:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

次のコード例は、Aspose.Wordsで上記のアルゴリズムを実行する方法を示しています:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

このメソッドは、**DocumentBuilder**とdataを使用して簡単に呼び出すことができます。

次のコード例は、`DataTable`からデータをインポートし、ドキュメント内の新しいテーブルに挿入する方法を示しています:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

下の図に示す表は、上記のコードを実行することによって生成されます。

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
