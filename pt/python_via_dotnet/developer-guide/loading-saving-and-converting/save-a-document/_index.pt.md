---
title: Salvar um documento em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Salvar um documento
linktitle: Salvar um documento
type: docs
description: "Salve um documento em qualquer formato compatível usando Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /pt/python-net/save-a-document/
---

A maioria das tarefas que você precisa realizar com Aspose.Words envolve salvar um documento. Para salvar um documento Aspose.Words fornece o método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) da classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Existem sobrecargas que permitem salvar um documento em um arquivo ou fluxo. O documento pode ser salvo em qualquer formato de salvamento suportado pelo Aspose.Words. Para obter a lista de todos os formatos de salvamento suportados, consulte a enumeração [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Salvar um documento em um arquivo {#save-a-document-to-a-file}

Basta usar o método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) com um nome de arquivo. Aspose.Words determinará o formato de salvamento a partir da extensão de arquivo que você especificar.

O exemplo de código a seguir mostra como carregar e salvar um documento em um arquivo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Salvar um documento em um stream {#save-a-document-to-a-stream}

Passe um objeto de fluxo para o método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). É necessário especificar explicitamente o formato de salvamento ao salvar em um stream.

O exemplo de código a seguir mostra como carregar e salvar um documento em um fluxo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Salvar um documento em PCL {#save-a-document-to-pcl}

Aspose.Words suporta salvar um documento em PCL (Printer Command Language). Aspose.Words pode salvar documentos no formato PCL 6 (PCL 6 Enhanced ou PCL XL). A classe [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) pode ser usada para especificar opções adicionais ao salvar um documento no formato PCL.

O exemplo de código a seguir mostra como salvar um documento em PCL usando opções de salvamento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

