---
title: Javaで文書を作成または読み込む
second_title: Aspose.WordsのためのJava
articleTitle: 文書の作成または読み込み
linktitle: 文書の作成または読み込み
type: docs
weight: 10
url: /ja/java/create-or-load-a-document/
description: "Aspose.Wordsを使用すると、空の文書を作成したり、Javaを使用してファイルまたはストリームから読み込むことができます。"
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsを使用して実行するほとんどのタスクには、文書の読み込みが含まれます。 `Document`クラスは、メモリにロードされた文書を表します。 ドキュメントには複数のオーバーロードされたコンストラクターがあり、空のドキュメントを作成したり、ファイルやストリームからロードしたりできます。 ドキュメントはAspose.Wordsでサポートされている任意の読み込み形式で読み込むことができます。 サポートされているすべてのロード形式の一覧については、[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)列挙体を参照してください。

## 新しい文書 {#create-a-new-document}を作成する

パラメータなしで[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)コンストラクタを呼び出して、新しい空の文書を作成します。 プログラムでドキュメントを生成する場合、最も簡単な方法は[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder)クラスを使用してドキュメントの内容を追加することです。

次のコード例は、document builderを使用してドキュメントを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

デフォルト値に注意してください:

- 空白の文書には、デフォルトのパラメータ、空の段落、いくつかの文書スタイルを持つセクションが含まれています。 実際には、この文書はMicrosoft Wordに"新しい文書"を作成した結果と同じです。
- 原稿用紙サイズは[PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)です。**Letter**.

{{% /alert %}}

## 文書を読み込む

既存のドキュメントを[LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)形式のいずれかで読み込むには、ファイル名またはストリームをドキュメントコンストラクターのいずれかに渡します。 ロードされた文書の形式は、その拡張子によって自動的に決定されます。

### ファイル {#load-from-a-file}から読み込む

ファイル名を文字列としてドキュメントコンストラクタに渡して、ファイルから既存のドキュメントを開きます。

ファイルからドキュメントを開く方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### ストリーム {#load-from-a-stream}から読み込む

ストリームからドキュメントを開くには、ドキュメントを含むstreamオブジェクトをドキュメントコンストラクタに渡すだけです。

次のコード例は、ストリームからドキュメントを開く方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
