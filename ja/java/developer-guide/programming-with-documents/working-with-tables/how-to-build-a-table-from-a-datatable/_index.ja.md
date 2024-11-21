---
title: からテーブルを作成する方法 `DataTable` お問い合わせ Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: からテーブルを作る `DataTable`
linktitle: からテーブルを作る `DataTable`
description: "外部データベースからドキュメントテーブルを埋め込む例 Javaお問い合わせ"
type: docs
weight: 130
url: /ja/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

多くの場合、アプリケーションはデータベースからデータをプルし、そのフォームに格納します **DataTable**お問い合わせ このデータを新しいテーブルに簡単に追加し、テーブル全体に素早く書式を適用することができます。

{{% alert color="primary" %}}

データの入力の優先方法は、 **DataTable** ドキュメントテーブルに [Mail Merge 地域別](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained)お問い合わせ この記事で提示された技術は、事前に適切なテンプレートを作成することができない場合にのみ提案され、他の言葉では、すべてがプログラム的に起こることを必要とする場合。

{{% /alert %}}

使用方法 Aspose.Words, データベースからデータを簡単に取得し、テーブルとして保存することができます。

1。 新規作成 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) あなたの上のオブジェクト [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)お問い合わせ
1。 新しいテーブルを使い始める [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)お問い合わせ
1。 それぞれの列の名前を入力したい場合 **DataTable** ヘッダー行として、各データ列を繰り返し、列名をテーブルの行に書きます。
1。 一人ひとりを応援する **DataRow** お問い合わせ **DataTable**:::
   1.各オブジェクトを各オブジェクトで反復する **DataRow**お問い合わせ
   1. オブジェクトをドキュメントにインサートする [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)お問い合わせ 使用されるメソッドは、オブジェクトの型をインサートするなどに依存します。 [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) テキストとテキスト [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) バイト配列のイメージを表す。
   1. データ行の処理の終了時も作成される行を終了します [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) ご利用にあたって [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)お問い合わせ
1。 からすべての行を一度 **DataTable** 呼ばれることによってテーブルを終えました [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)お問い合わせ
1。 最後に、希望するテーブルスタイルを、次のような適切なテーブルプロパティのいずれかで設定できます。 [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) テーブル全体にフォーマットを自動的に適用する。
   当社の次のデータ **DataTable** この例で使用されます。

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

以下のコード例では、上記のアルゴリズムを実行する方法を示します。 Aspose.Words:::

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

メソッドは簡単にあなたの使用を呼び出すことができます **DocumentBuilder** データ。

次のコードの例では、データからデータをインポートする方法を示します。 `DataTable` ドキュメントに新しいテーブルに差し込みます。

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

下図の表は、上記のコードを実行することで生成されます。

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
