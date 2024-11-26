---
title: Salvarea unui Document în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Salvarea unui Document
linktitle: Salvarea unui Document
type: docs
description: "Salvați un document în orice format acceptat folosind Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /ro/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Majoritatea sarcinilor pe care trebuie să le efectuați cu Aspose.Words implică salvarea unui document. Pentru a salva un document, Aspose.Words furnizează metoda [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) a clasei [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Există supraîncărcări care permit salvarea unui document într-un fișier sau flux. Documentul poate fi salvat în orice format de salvare acceptat de Aspose.Words. Pentru lista tuturor formatelor de salvare acceptate, consultați enumerarea [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Salvarea unui Document într-un fișier {#save-a-document-to-a-file}

Pur și simplu utilizați metoda [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) cu un nume de fișier. Aspose.Words va determina formatul de salvare din extensia de fișier pe care o specificați.

Următorul exemplu de cod arată cum să încărcați și să salvați un document într-un fișier:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Salvarea unui Document într-un flux {#save-a-document-to-a-stream}

Treceți un obiect de flux la metoda [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Este necesar să specificați formatul de salvare în mod explicit atunci când salvați într-un flux.

Următorul exemplu de cod arată cum să încărcați și să salvați un document într-un flux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Salvați un Document în PCL {#save-a-document-to-pcl}

Aspose.Words acceptă salvarea unui document în PCL (Printer Command Language). Aspose.Words poate salva documente în PCL 6 (PCL 6 Format îmbunătățit sau PCL XL). Clasa [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) poate fi utilizată pentru a specifica opțiuni suplimentare la salvarea unui document în formatul PCL.

Următorul exemplu de cod arată cum să salvați un document în PCL folosind opțiunile de salvare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

