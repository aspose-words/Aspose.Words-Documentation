---
title: Salvarea unui Document în C++
second_title: Aspose.Words pentru C++
articleTitle: Salvarea unui Document
linktitle: Salvarea unui Document
type: docs
description: "Salvați un document în orice format acceptat folosind C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /ro/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Majoritatea sarcinilor pe care trebuie să le efectuați cu Aspose.Words implică salvarea unui document. Pentru a salva un document, Aspose.Words furnizează metoda [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) a clasei [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Documentul poate fi salvat în orice format de salvare acceptat de Aspose.Words. Pentru lista tuturor formatelor de salvare acceptate, consultați enumerarea [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Salvați într-un fișier {#save-a-document-to-a-file}

Pur și simplu utilizați metoda [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) cu un nume de fișier. Aspose.Words va determina formatul de salvare din extensia de fișier pe care o specificați.

Următorul exemplu de cod arată cum să încărcați și să salvați un document într-un fișier:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Salvați într-un flux {#save-a-document-to-a-stream}

Treceți un obiect de flux la metoda [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Este necesar să specificați formatul de salvare în mod explicit atunci când salvați într-un flux.

Următorul exemplu de cod arată cum să încărcați și să salvați un document într-un flux:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Salvați în PCL {#save-a-document-to-pcl}

Aspose.Words acceptă salvarea unui document în PCL (Printer Command Language). Aspose.Words poate salva documente în PCL 6 (PCL 6 Format îmbunătățit sau PCL XL). Clasa `PclSaveOptions` poate fi utilizată pentru a specifica opțiuni suplimentare la salvarea unui document în formatul PCL.

Următorul exemplu de cod arată cum să salvați un document în PCL folosind opțiunile de salvare:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
