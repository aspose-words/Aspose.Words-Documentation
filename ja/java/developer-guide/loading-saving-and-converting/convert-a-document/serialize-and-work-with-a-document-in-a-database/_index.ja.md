---
title: データベース内のドキュメントをシリアル化して操作する
second_title: Aspose.WordsのためのJava
articleTitle: データベース内のドキュメントをシリアル化して操作する
linktitle: データベース内のドキュメントをシリアル化して操作する
description: "データベース内でこの文書を操作するために、文書をバイト配列に変換します。 Javaを使用して、データベースとの間で文書を格納および取得できます。"
type: docs
weight: 40
url: /ja/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを操作するときに実行する必要があるタスクの1つは、データベースとの間で**Document**オブジェクトを格納および取得することです。 たとえば、任意のタイプのコンテンツ管理システムを実装している場合は、これが必要になります。 以前のバージョンの文書はすべてデータベースシステムに保存する必要があります。 データベースに文書を格納する機能は、アプリケーションがwebベースのサービスを提供する場合にも非常に便利です。

Aspose.Wordsは、データベース内でこの文書を処理するために、文書をバイト配列に変換する機能を提供します。

## 文書をバイト配列に変換する

ドキュメントをデータベースに格納したり、web経由で送信するためのドキュメントを準備するには、多くの場合、ドキュメントをシリアル化してバイトアレイを取得する必要があります。

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)オブジェクトをAspose.Wordsでシリアル化するには:

1. **Document**クラスの[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int)メソッドオーバーロードを使用して**MemoryStream**に保存します。
1. **ToArray** メソッドを呼び出します。このメソッドは、ドキュメントをバイト形式で表すバイト配列を返します。

上記の手順を逆にして、バイトを**Document**オブジェクトにロードし直すことができます。

{{% alert color="primary" %}}

選択した保存形式は、**Document**オブジェクトに保存して再読み込みするときに最高の忠実度が保持されるようにするために重要です。 このため、一連のOOXMLファイル形式を使用することをお勧めします。

{{% /alert %}}

次の例は、**Document**オブジェクトをシリアル化してバイト配列を取得する方法と、バイト配列をシリアル化解除して**Document**オブジェクトを再度取得する方法を示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## データベース内の文書の保存、読み取り、削除

このセクションでは、文書をデータベースに保存し、それを処理するために`Document`オブジェクトにロードする方法を示します。 簡単にするために、ファイル名は、データベースから文書を格納および取得するために使用されるキーです。 データベースには2つの列が含まれています。 最初の列"FileName"は文字列として格納され、文書を識別するために使用されます。 2番目の列"FileContent"は、文書オブジェクトをバイト形式で格納する`BLOB`オブジェクトとして格納されます。

次のコード例は、データベースへの接続を設定し、コマンドを実行する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

この例では、MySQLデータベースを使用してAspose.Words文書を格納します。

{{% /alert %}}

次のコード例は、ドキュメントをデータベースに保存し、同じドキュメントを再度読み取り、最後にドキュメントを含むレコードをデータベースから削除する方:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### 文書をデータベースに保存する

データベースに文書を保存するには、この資料の冒頭で説明したように、この文書をバイト配列に変換します。 次に、このバイト配列をデータベースフィールドに保存します。

次のコード例は、指定したデータベースにドキュメントを保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

すべての作業を行うSQL式であるcommandStringを指定します:

- 文書をデータベースに保存するには、"INSERTINTO"コマンドが使用され、FileNameとFileContentの二つのレコードフィールドの値とともにテーブルが指定されます。 追加のパラメータを回避するために、ファイル名は**Document**オブジェクト自体から取得されます。 `FileContent`フィールド値には、格納されているドキュメントのバイナリ表現を含むメモリストリームからのバイトが割り当てられます。
- 残りのコード行は、Aspose.Wordsドキュメントをデータベースに格納するコマンドを実行します。

### データベースからドキュメントを取得する

データベースからドキュメントを取得するには、ドキュメントデータを含むレコードをバイト配列として選択します。 次に、レコードからバイト配列を**MemoryStream**にロードし、**MemoryStream**からドキュメントをロードする**Document**オブジェクトを作成します。

次のコード例は、このドキュメントを取得するためのキーとしてファイル名を使用して、指定されたデータベースからドキュメントを取得して返す方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

SQLコマンド"SELECT*FROM"は、ファイル名に基づいて適切なレコードを取得するために使用されます。

{{% /alert %}}

### データベースから文書を削除する

データベースからドキュメントを削除するには、**Document**オブジェクトを操作せずに適切なSQLコマンドを使用します。

次のコード例は、レコードを取得するファイル名を使用して、データベースからドキュメントを削除する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
