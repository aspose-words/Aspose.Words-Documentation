---
title: データベース内のドキュメントをシリアル化する
second_title: .NET用Aspose.Words
articleTitle: データベース内のドキュメントをシリアル化して操作する
linktitle: データベース内のドキュメントをシリアル化して操作する
description: "C# を使用してデータベース内でこのドキュメントを操作できるように、ドキュメントをバイト配列に変換します。ドキュメントをデータベースに保存したり、データベースから取得したりできます。"
type: docs
weight: 10
url: /ja/net/serialize-and-work-with-a-document-in-a-database/
---

ドキュメントを操作するときに実行する必要があるタスクの 1 つは、**Document** オブジェクトをデータベースに格納したりデータベースから取得したりすることです。たとえば、何らかのコンテンツ管理システムを実装する場合、これが必要になります。ドキュメントの以前のバージョンはすべてデータベース システムに保存する必要があります。ドキュメントをデータベースに保存する機能は、アプリケーションが Web ベースのサービスを提供する場合にも非常に役立ちます。

Aspose.Words は、データベース内のこのドキュメントをその後処理するために、ドキュメントをバイト配列に変換する機能を提供します。

## ドキュメントをバイト配列に変換する

ドキュメントをデータベースに保存したり、Web 経由で送信できるようにドキュメントを準備したりするには、多くの場合、ドキュメントをシリアル化してバイト配列を取得する必要があります。

[Document](https://reference.aspose.com/words/net/aspose.words/document/) オブジェクトを Aspose.Words でシリアル化するには:

1. **Document** クラスの [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) メソッド オーバーロードを使用して、それを **MemoryStream** に保存します。
1. **ToArray** メソッドを呼び出します。このメソッドは、ドキュメントをバイト形式で表すバイト配列を返します。

上記の手順を逆にして、バイトを **Document** オブジェクトにロードし直すことができます。

{{% alert color="primary" %}}

選択した保存形式は、**Document** オブジェクトへの保存および再ロード時に最高の忠実度が維持されるようにするために重要です。このため、一連の OOXML ファイル形式を使用することをお勧めします。

{{% /alert %}}

次の例は、**Document** オブジェクトをシリアル化してバイト配列を取得し、バイト配列をシリアル化解除して **Document** オブジェクトを再度取得する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

## データベース内のドキュメントの保存、読み取り、削除

このセクションでは、ドキュメントをデータベースに保存し、それを `Document` オブジェクトにロードして操作する方法を説明します。わかりやすくするために、ファイル名はデータベースへのドキュメントの保存とデータベースからのドキュメントの取得に使用されるキーです。データベースには 2 つの列が含まれています。最初の列「FileName」は文字列として保存され、ドキュメントを識別するために使用されます。 ２列目の「FileContent」は、文書オブジェクトをバイト形式で格納する`BLOB`オブジェクトとして格納される。

次のコード例は、データベースへの接続を設定してコマンドを実行する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

この例では、Microsoft Access .mdb データベースを使用して Aspose.Words ドキュメントを保存します。

{{% /alert %}}

次のコード例は、ドキュメントをデータベースに保存し、同じドキュメントを再度読み取り、最後にドキュメントを含むレコードをデータベースから削除する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### ドキュメントをデータベースに保存する

ドキュメントをデータベースに保存するには、この記事の冒頭で説明したように、このドキュメントをバイト配列に変換します。次に、このバイト配列をデータベース フィールドに保存します。

次のコード例は、指定したデータベースにドキュメントを保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

commandString を指定します。これは、すべての作業を実行する SQL 式です。

- ドキュメントをデータベースに保存するには、「INSERT INTO」コマンドを使用し、テーブルを 2 つのレコード フィールド (FileName と FileContent) の値とともに指定します。追加のパラメータを避けるために、ファイル名は **Document** オブジェクト自体から取得されます。 `FileContent` フィールド値には、保存されたドキュメントのバイナリ表現を含むメモリ ストリームからバイトが割り当てられます。
- コードの残りの行は、Aspose.Words ドキュメントをデータベースに保存するコマンドを実行します。

### データベースからドキュメントを取得する

データベースからドキュメントを取得するには、ドキュメント データをバイト配列として含むレコードを選択します。次に、レコードからバイト配列を **MemoryStream** にロードし、**MemoryStream** からドキュメントをロードする **Document** オブジェクトを作成します。

次のコード例は、ファイル名をキーとして使用して、指定されたデータベースからドキュメントを取得して返す方法を示し、このドキュメントを取得します。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

SQL コマンド「SELECT * FROM」は、ファイル名に基づいて適切なレコードをフェッチするために使用されます。

{{% /alert %}}

### データベースからドキュメントを削除する

データベースからドキュメントを削除するには、**Document** オブジェクトを操作せずに、適切な SQL コマンドを使用します。

次のコード例は、ファイル名を使用してレコードをフェッチし、データベースからドキュメントを削除する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
