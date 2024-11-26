---
title: C++で文書を作成またはロードする
second_title: C++の場合Aspose.Words
articleTitle: 文書の作成または読み込み
linktitle: 文書の作成または読み込み
type: docs
description: "空の文書を作成するか、c++を使用してファイルまたはストリームからロードします。"
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /ja/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsを使用して実行するほとんどのタスクには、文書の読み込みが含まれます。 `Document`クラスは、メモリにロードされたドキュメントを表します。 ドキュメントには複数のオーバーロードされたコンストラクターがあり、空のドキュメントを作成したり、ファイルやストリームからロードしたりできます。 文書はAspose.Wordsでサポートされている任意の読み込み形式で読み込むことができます。 サポートされているすべてのロード形式の一覧については、[LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)列挙体を参照してください。

## 新しい文書{#create-a-new-document}を作成する

パラメータなしで[Document](https://reference.aspose.com/words/cpp/class/aspose.words.document)コンストラクタを呼び出して、新しい空の文書を作成します。 プログラムでドキュメントを生成する場合、最も簡単な方法は[DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder)クラスを使用してドキュメントの内容を追加することです。

次のコード例は、document builderを使用してドキュメントを作成する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

デフォルト値に注意してください:

- 空白の文書には、デフォルトのパラメータ、空の段落、いくつかの文書スタイルを持つセクションが含まれています。 実際には、この文書はMicrosoft Wordに"新しい文書"を作成した結果と同じです。
- 原稿用紙サイズは[PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/)です。**Letter**.

{{% /alert %}}

## 文書を読み込む

既存のドキュメントを`LoadFormat`形式のいずれかで読み込むには、ファイル名またはストリームをドキュメントコンストラクターのいずれかに渡します。 ロードされた文書の形式は、その拡張子によって自動的に決定されます。

### ファイル{#load-from-a-file}から読み込む

ファイル名を文字列としてドキュメントコンストラクタに渡して、ファイルから既存のドキュメントを開きます。

ファイルからドキュメントを開く方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### ストリーム{#load-from-a-stream}から読み込む

ストリームからドキュメントを開くには、ドキュメントを含むstreamオブジェクトをドキュメントコンストラクタに渡すだけです。

次のコード例は、ストリームからドキュメントを開く方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
