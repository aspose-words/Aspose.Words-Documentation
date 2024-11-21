---
title: Python でのドキュメントの作成またはロード
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントの作成またはロード
linktitle: ドキュメントの作成またはロード
type: docs
url: /ja/python-net/create-or-load-a-document/
description: "空のドキュメントを作成するか、Python を使用してファイルまたはストリームからドキュメントをロードします。"
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Aspose.Words を使用して実行するほぼすべてのタスクには、ドキュメントのロードが含まれます。 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスは、メモリにロードされたドキュメントを表します。ドキュメントにはいくつかのオーバーロードされたコンストラクターがあり、空のドキュメントを作成したり、ファイルまたはストリームからロードしたりできます。ドキュメントは、Aspose.Words がサポートする任意のロード形式でロードできます。サポートされているすべてのロード形式のリストについては、[LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 列挙を参照してください。

## 新しいドキュメントを作成する

パラメーターを指定せずに [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) コンストラクターを呼び出して、新しい空のドキュメントを作成します。プログラムでドキュメントを生成する場合、最も簡単な方法は、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) クラスを使用してドキュメントのコンテンツを追加することです。

次のコード例は、ドキュメント ビルダーを使用してドキュメントを作成する方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

デフォルト値に注意してください。

- 空のドキュメントには、デフォルト パラメータを含む 1 つのセクション、1 つの空の段落、いくつかのドキュメント スタイルが含まれます。実はこのドキュメントはMicrosoft Wordで「新規ドキュメント」を作成した結果と同じです。
・原稿用紙サイズは[PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter)です。

{{% /alert %}}

## ドキュメントをロードする

既存のドキュメントを [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 形式でロードするには、ファイル名またはストリームを [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) コンストラクターの 1 つに渡します。ロードされたドキュメントの形式は、拡張子によって自動的に決定されます。

### ファイルからロードする

ファイル名を文字列として [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) コンストラクターに渡し、ファイルから既存のドキュメントを開きます。

次のコード例は、ファイルからドキュメントを開く方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

### ストリームからロードする

ストリームからドキュメントを開くには、ドキュメントを含むストリーム オブジェクトを [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) コンストラクターに渡すだけです。

次のコード例は、ストリームからドキュメントを開く方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}
