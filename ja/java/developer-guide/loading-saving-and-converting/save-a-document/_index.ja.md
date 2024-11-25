---
title: Javaに文書を保存する
second_title: Aspose.WordsのためのJava
articleTitle: 文書を保存する
linktitle: 文書を保存する
type: docs
description: "Javaを使用して、サポートされている任意の形式で文書を保存します。"
weight: 20
url: /ja/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsで実行する必要があるタスクのほとんどには、文書の保存が含まれます。 ドキュメントAspose.Wordsを保存するには、[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)クラスの[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String))メソッドを提供します。 文書はAspose.Wordsでサポートされている任意の保存形式で保存できます。 サポートされているすべての保存形式の一覧については、[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)列挙を参照してください。

## ファイル {#save-a-document-to-a-file}に保存する

ファイル名を指定して[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String)メソッドを使用するだけです。 Aspose.Wordsは、指定したファイル拡張子から保存形式を決定します。

次のコード例は、ドキュメントを読み込んでファイルに保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## ストリーム {#save-a-document-to-a-stream}に保存する

Streamオブジェクトを[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)メソッドに渡します。 ストリームに保存するときは、保存形式を明示的に指定する必要があります。

ドキュメントを読み込んでストリームに保存する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## PCL {#save-a-document-to-pcl}に保存

Aspose.Wordsは、PCL(プリンタコマンド言語)への文書の保存をサポートします。 Aspose.Wordsは、文書をPCL6(PCL6EnhancedまたはPCLXL)形式で保存できます。 `PclSaveOptions`クラスは、ドキュメントをPCL形式で保存するときに追加のオプションを指定するために使用できます。

次のコード例は、保存オプションを使用して文書をPCLに保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
