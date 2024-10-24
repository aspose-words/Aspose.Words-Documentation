---
title: C++で文書を保存する
second_title: C++の場合Aspose.Words
articleTitle: 文書を保存する
linktitle: 文書を保存する
type: docs
description: "C++を使用して、サポートされている任意の形式で文書を保存します。"
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /ja/cpp/save-a-document/
---

Aspose.Wordsで実行する必要があるタスクのほとんどには、文書の保存が含まれます。 ドキュメントAspose.Wordsを保存するには、[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)クラスの[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)メソッドを提供します。 文書はAspose.Wordsでサポートされている任意の保存形式で保存できます。 サポートされているすべての保存形式の一覧については、[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)列挙体を参照してください。

## ファイル{#save-a-document-to-a-file}に保存する

ファイル名を指定して[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)メソッドを使用するだけです。 Aspose.Wordsは、指定したファイル拡張子から保存形式を決定します。

次のコード例は、ドキュメントを読み込んでファイルに保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## ストリーム{#save-a-document-to-a-stream}に保存する

Streamオブジェクトを[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)メソッドに渡します。 ストリームに保存するときは、保存形式を明示的に指定する必要があります。

ドキュメントを読み込んでストリームに保存する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## PCL{#save-a-document-to-pcl}に保存する

Aspose.Words文書をPCL(Printer Command Language)に保存することをサポートします。 Aspose.Wordsは文書をPCL6(PCL6EnhancedまたはPCL XL)形式で保存できます。 `PclSaveOptions`クラスは、文書をPCL形式で保存するときに追加のオプションを指定するために使用できます。

次のコード例は、保存オプションを使用して文書をPCLに保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
