---
title: データベースでドキュメントをシリアライズし、作業
second_title: Aspose.Words お問い合わせ Java
articleTitle: データベースでドキュメントをシリアライズし、作業
linktitle: データベースでドキュメントをシリアライズし、作業
description: "ドキュメントをバイト配列に変換し、このドキュメントをデータベースに作成します。 ドキュメントをデータベースから保存して取得することができます。 Javaお問い合わせ"
type: docs
weight: 40
url: /ja/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

文書を扱うときに、必要なタスクの1つが保存され、取得 **Document** オブジェクトとデータベースから。 例えば、どんな種類のコンテンツ管理システムを実装していたら必要です。 以前のバージョンのドキュメントは、データベースシステムに保存する必要があります。 アプリケーションがWebベースのサービスを提供するときにデータベースに文書を保存する機能も非常に便利です。

Aspose.Words ドキュメントをバイト配列に変換し、データベース内のこのドキュメントで以降の作業を行う機能を提供します。

## 文書をバイト配列に変換する

データベースに文書を保存したり、Web上で送信するための文書を用意したりするには、バイト配列を取得するために文書をシリアライズする必要があります。

シリアライズするには [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) オブジェクト Aspose.Words:::

1。 保存する **MemoryStream** 利用する [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) 方法積み過ぎの **Document** クラス。
1。 お問い合わせ **ToArray** バイト 形式のドキュメントを表すバイトの配列を返すメソッド。

上記の手順は、バイトをロードするために逆にすることができます **Document** オブジェクト。

{{% alert color="primary" %}}

選択した保存形式は、保存とリロード時に、最も高い忠実度が保持されていることを確認することが重要です。 **Document** オブジェクト。 そのため、OOXMLファイル形式のシリーズを使用することをお勧めします。

{{% /alert %}}

以下の例は、シリアライズする方法を示しています **Document** バイト配列を取得するオブジェクト、バイト配列の初期化方法 **Document** 再びオブジェクト:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)お問い合わせ

{{% /alert %}}

## データベースでドキュメントを保存、読み込み、削除

このセクションでは、ドキュメントをデータベースに保存し、それを読み込みます。 `Document` それを操作するためのオブジェクト。 シンプルさのために、ファイル名はデータベースから文書を保存し、取得するために使用されるキーです。 データベースには2つのカラムが含まれています。 最初の列「FileName」は文字列として保存され、文書を識別するために使用されます。 2番目のカラム「FileContent」はそのまま保存されます。 `BLOB` バイトフォームでドキュメントオブジェクトを格納するオブジェクト。

次のコードの例では、データベースへの接続を設定し、コマンドを実行する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

この例では、MySQLデータベースを使用して保存します。 Aspose.Words ドキュメント。

{{% /alert %}}

次のコードの例では、ドキュメントをデータベースに保存する方法、そして再び同じドキュメントを読んで、最終的にデータベースからドキュメントを含むレコードを削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### ドキュメントをデータベースに保存する

データベース内のドキュメントを保存するには、この記事の先頭に記述されているように、このドキュメントをバイトの配列に変換します。 次に、このバイト配列をデータベースフィールドに保存します。

以下のコードの例では、指定されたデータベースにドキュメントを保存する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

すべての作業を行うSQL式である commandString を指定する:

- - - ドキュメントをデータベースに保存するには、「INSERT INTO」コマンドが使われ、2つのレコードフィールドの値とともに指定したテーブルが「FileName」と「FileContent」です。 追加のパラメータを避けるために、ファイル名はから取られます **Document** オブジェクト自体。 ザ・オブ・ザ・ `FileContent` フィールド値は、保存されたドキュメントのバイナリ表現を含むメモリストリームからバイトを割り当てられます。
- - - コードの残りの行は、保存するコマンドを実行します。 Aspose.Words データベース内のドキュメント。

### データベースからドキュメントを取得する

データベースからドキュメントを取得するには、ドキュメントデータを含むレコードをバイトの配列として選択します。 その後、レコードからバイト配列をロードします **MemoryStream** そして作成して下さい **Document** ドキュメントをロードするオブジェクト **MemoryStream**お問い合わせ

次のコードの例では、このドキュメントをフェッチするキーとしてファイル名を使用して指定されたデータベースからドキュメントを取得し、返す方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

SQL コマンド "SELECT * FROM" は、ファイル名に基づいて適切なレコードを取得するために使用されます。

{{% /alert %}}

### データベースからドキュメントを削除する

データベースからドキュメントを削除するには、操作なしで適切なSQLコマンドを使用します。 **Document** オブジェクト。

次のコードの例では、データベースからドキュメントを削除する方法、ファイル名を使用してレコードを取得する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
