---
title: C# の DataTable からテーブルを構築する方法
second_title: .NET用Aspose.Words
articleTitle: DataTable からテーブルを構築する
linktitle: DataTable からテーブルを構築する
description: "C# を使用して外部データベースからドキュメント テーブルを埋める例。"
type: docs
weight: 120
url: /ja/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

多くの場合、アプリケーションはデータベースからデータを取得し、**DataTable** の形式で保存します。このデータを新しい表としてドキュメントに簡単に挿入し、表全体に書式設定をすばやく適用できます。

{{% alert color="primary" %}}

**DataTable** からドキュメント テーブルにデータを挿入する推奨される方法は、[Mail Merge とリージョン](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) を使用することです。この記事で紹介する手法は、データを結合するための適切なテンプレートを事前に作成できない場合、つまり、すべてをプログラムで実行する必要がある場合にのみ推奨されます。

{{% /alert %}}

Aspose.Words を使用すると、データベースからデータを簡単に取得し、テーブルとして保存できます。

1. **Document** 上に新しい **DocumentBuilder** オブジェクトを作成します。
1. **DocumentBuilder** を使用して新しいテーブルを開始します。
1. **DataTable** の各列の名前をヘッダー行として挿入する場合は、各データ列を反復処理して、テーブル内の行に列名を書き込みます。
1. **DataTable** 内の各 **DataRow** を反復処理します。
   1. **DataRow** 内の各オブジェクトを反復処理します。
   1. **DocumentBuilder** を使用してオブジェクトをドキュメントに挿入します。使用される方法は、挿入されるオブジェクトのタイプによって異なります。たとえば、テキストの場合は **DocumentBuilder.Writeln**、画像を表すバイト配列の場合は **DocumentBuilder.InsertImage** です。
   1. **DataRow** の処理の終了時に、**DocumentBuilder.EndRow** を使用して **DocumentBuilder** によって作成されている行も終了します。
1. **DataTable** からのすべての行が処理されたら、**DocumentBuilder.EndTable** を呼び出してテーブルを終了します。
1. 最後に、**Table.StyleIdentifier** などの適切なテーブル プロパティの 1 つを使用して目的のテーブル スタイルを設定し、テーブル全体に書式設定を自動的に適用します。

**ImportTableFromDataTable** メソッドは、**DocumentBuilder** オブジェクト、データを含む **DataTable**、および **DataTable** の列見出しがテーブルの先頭に含まれるかどうかを指定するフラグを受け入れます。このメソッドは、ビルダーの現在の位置と書式設定を使用して、これらのパラメーターからテーブルを構築します。 `DataTable` からデータをインポートし、DocumentBuilder を使用して新しいテーブルに挿入するメソッドを提供します。

この例では、**DataTable** 内の次のデータが使用されます。

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

次のコード例は、Aspose.Words で上記のアルゴリズムを実行する方法を示しています。

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

このメソッドは、**DocumentBuilder** とデータを使用して簡単に呼び出すことができます。

次のコード例は、`DataTable` からデータをインポートし、それをドキュメント内の新しいテーブルに挿入する方法を示しています。

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
