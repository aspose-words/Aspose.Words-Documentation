---
title: ドキュメントの作成または読み込み Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントの作成または読み込み
linktitle: ドキュメントの作成または読み込み
type: docs
weight: 10
url: /ja/java/create-or-load-a-document/
description: "Aspose.Words 空白の文書を作成するか、ファイルから読み込むか、または使用するストリーム Javaお問い合わせ"
timestamp: 2024-01-27-14-07-04
---

あなたが実行したいほとんどすべてのタスク Aspose.Words 文書の読み込みを伴う。 ザ・オブ・ザ・ `Document` クラスはメモリに読み込まれたドキュメントを表します。 ドキュメントには複数のオーバーロードコンストラクタがあり、空白のドキュメントを作成したり、ファイルやストリームからロードしたりすることができます。 ドキュメントは、サポートされている任意のロード形式にロードすることができます Aspose.Wordsお問い合わせ すべてのサポートされているロードフォーマットのリストについては、 [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) パンフレット

## 新しいドキュメントを作成する {#create-a-new-document}

お電話にて承っております。 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 新しい空白の文書を作成するパラメータのないコンストラクタ。 ドキュメントをプログラム的に生成したい場合、最も簡単な方法は、 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) ドキュメントの内容を追加するクラス。

次のコードの例では、ドキュメントビルダーを使用してドキュメントを作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

デフォルト値に注意:

- 空白の文書には、デフォルトパラメータ、1つの空の段落、いくつかの文書スタイルで1つのセクションが含まれています。 実際にはこの文書は「新規文書」の作成の結果と同じです Microsoft Wordお問い合わせ
- - - 文書用紙サイズはあります [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/)お問い合わせ**Letter**お問い合わせ

{{% /alert %}}

## ドキュメントをロードする

既存の文書をあらゆるものに読み込むため [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) フォーマットは、ファイル名やストリームをドキュメントコンストラクタの1つに渡します。 ロードされた文書の形式は、拡張子によって自動的に決定されます。

### ファイルから読み込む {#load-from-a-file}

ファイル名をドキュメントコンストラクターに渡すと、既存のドキュメントをファイルから開くことができます。

次のコードの例では、ファイルからドキュメントを開く方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)お問い合わせ

### ストリームから読み込む {#load-from-a-stream}

ストリームからドキュメントを開くには、ドキュメントを含むストリームオブジェクトをドキュメントコンストラクターに渡すだけです。

次のコードの例では、ストリームからドキュメントを開く方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)お問い合わせ

{{% /alert %}}
