---
title: Creați sau încărcați un Document în C++
second_title: Aspose.Words pentru C++
articleTitle: Crearea sau încărcarea unui Document
linktitle: Crearea sau încărcarea unui Document
type: docs
description: "Creați un document gol sau pentru a-l încărca dintr-un fișier sau flux folosind C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /ro/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Aproape orice sarcină pe care doriți să o efectuați cu Aspose.Words implică încărcarea unui document. Clasa `Document` reprezintă un document încărcat în memorie. Documentul are mai mulți constructori supraîncărcați, permițându-vă să creați un document gol sau să îl încărcați dintr-un fișier sau flux. Documentul poate fi încărcat în orice format de încărcare acceptat de Aspose.Words. Pentru lista tuturor formatelor de încărcare acceptate, consultați enumerarea [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Creați un Document nou {#create-a-new-document}

Vom apela constructorul [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) fără parametri pentru a crea un nou document gol. Dacă doriți să generați un document programatic, cel mai simplu mod este să utilizați clasa [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) pentru a adăuga conținutul documentului.

Următorul exemplu de cod arată cum să creați un document utilizând constructorul de documente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Notați valorile implicite:

- Un document gol conține o secțiune cu parametrii impliciți, un paragraf gol, câteva stiluri de documente. De fapt, acest document este același cu rezultatul creării "documentului nou" în Microsoft Word.
- Dimensiunea hârtiei documentului este [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Încărcați un Document

Pentru a încărca un document existent în oricare dintre formatele `LoadFormat`, treceți numele fișierului sau fluxul într-unul dintre constructorii de documente. Formatul documentului încărcat este determinat automat de extensia acestuia.

### Încărcare dintr-un fișier {#load-from-a-file}

Treceți un nume de fișier ca șir la constructorul de documente pentru a deschide un document existent dintr-un fișier.

Următorul exemplu de cod arată cum să deschideți un document dintr-un fișier:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Încărcare dintr-un flux {#load-from-a-stream}

Pentru a deschide un document dintr-un flux, pur și simplu treceți un obiect de flux care conține documentul în constructorul de documente.

Următorul exemplu de cod arată cum să deschideți un document dintr-un flux:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
