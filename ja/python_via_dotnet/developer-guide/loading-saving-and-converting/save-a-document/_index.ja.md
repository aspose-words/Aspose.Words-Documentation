---
title: Python でドキュメントを保存する
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントを保存する
linktitle: ドキュメントを保存する
type: docs
description: "Python を使用して、サポートされている形式でドキュメントを保存します。"
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /ja/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words を使用して実行する必要があるタスクのほとんどには、ドキュメントの保存が含まれます。ドキュメントを保存するために、Aspose.Words は [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスの [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドを提供します。ドキュメントをファイルまたはストリームに保存できるオーバーロードがあります。ドキュメントは、Aspose.Words がサポートする任意の保存形式で保存できます。サポートされているすべての保存形式のリストについては、[SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 列挙を参照してください。

## ドキュメントをファイルに保存する {#save-a-document-to-a-file}

ファイル名を指定して [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドを使用するだけです。 Aspose.Words は、指定したファイル拡張子から保存形式を決定します。

次のコード例は、ドキュメントをファイルにロードして保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}

## ドキュメントをストリーム {#save-a-document-to-a-stream} に保存する

ストリーム オブジェクトを [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドに渡します。ストリームに保存する場合は、保存形式を明示的に指定する必要があります。

次のコード例は、ドキュメントをストリームにロードして保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

## ドキュメントを PCL {#save-a-document-to-pcl} に保存する

Aspose.Words は、PCL (プリンター コマンド言語) へのドキュメントの保存をサポートしています。 Aspose.Words は、ドキュメントを PCL 6 (PCL 6 Enhanced または PCL XL) 形式で保存できます。 [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) クラスを使用すると、ドキュメントを PCL 形式で保存するときに追加のオプションを指定できます。

次のコード例は、保存オプションを使用してドキュメントを PCL に保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

