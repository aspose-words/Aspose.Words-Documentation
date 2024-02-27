---
title: C# でのドキュメントの作成またはロード
second_title: .NET用Aspose.Words
articleTitle: ドキュメントの作成またはロード
linktitle: ドキュメントの作成またはロード
type: docs
url: /ja/net/create-or-load-a-document/
description: "空のドキュメントを作成するか、C# を使用してファイルまたはストリームからドキュメントをロードします。"
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Aspose.Words を使用して実行するほぼすべてのタスクには、ドキュメントのロードが含まれます。 `Document` クラスは、メモリにロードされたドキュメントを表します。ドキュメントにはいくつかのオーバーロードされたコンストラクターがあり、空のドキュメントを作成したり、ファイルまたはストリームからロードしたりできます。ドキュメントは、Aspose.Words がサポートする任意のロード形式でロードできます。サポートされているすべてのロード形式のリストについては、[LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) 列挙を参照してください。

## 新しいドキュメントの作成 {#create-a-new-document}

パラメーターを指定せずに [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) コンストラクターを呼び出して、新しい空のドキュメントを作成します。プログラムでドキュメントを生成する場合、最も簡単な方法は、[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) クラスを使用してドキュメントのコンテンツを追加することです。

次のコード例は、ドキュメント ビルダーを使用してドキュメントを作成する方法を示しています。

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

デフォルト値に注意してください。

- 空のドキュメントには、デフォルト パラメータを含む 1 つのセクション、1 つの空の段落、いくつかのドキュメント スタイルが含まれます。実はこのドキュメントはMicrosoft Wordで「新規ドキュメント」を作成した結果と同じです。
- 原稿の用紙サイズは[PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**です。

{{% /alert %}}

## ドキュメント{#load-a-document}をロードする

既存のドキュメントを [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) 形式でロードするには、ファイル名またはストリームを Document コンストラクターの 1 つに渡します。ロードされたドキュメントの形式は、拡張子によって自動的に決定されます。

### ファイルからロード {#load-from-a-file}

ファイル名を文字列として Document コンストラクターに渡し、ファイルから既存のドキュメントを開きます。

次のコード例は、ファイルからドキュメントを開く方法を示しています。

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

### ストリーム {#load-from-a-stream} からのロード

ストリームからドキュメントを開くには、ドキュメントを含むストリーム オブジェクトを Document コンストラクターに渡すだけです。

次のコード例は、ストリームからドキュメントを開く方法を示しています。

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}
