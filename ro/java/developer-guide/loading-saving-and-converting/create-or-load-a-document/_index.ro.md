---
title: Creați sau încărcați un Document în Java
second_title: Aspose.Words pentru Java
articleTitle: Crearea sau încărcarea unui Document
linktitle: Crearea sau încărcarea unui Document
type: docs
weight: 10
url: /ro/java/create-or-load-a-document/
description: "Aspose.Words vă permite să creați un document gol sau să îl încărcați dintr-un fișier sau flux folosind Java."
timestamp: 2024-01-27-14-07-04
---

Aproape orice sarcină pe care doriți să o efectuați cu Aspose.Words implică încărcarea unui document. Clasa `Document` reprezintă un document încărcat în memorie. Documentul are mai mulți constructori supraîncărcați, permițându-vă să creați un document gol sau să îl încărcați dintr-un fișier sau flux. Documentul poate fi încărcat în orice format de încărcare acceptat de Aspose.Words. Pentru lista tuturor formatelor de încărcare acceptate, consultați enumerarea [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/).

## Creați un Document nou {#create-a-new-document}

Vom apela constructorul [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) fără parametri pentru a crea un nou document gol. Dacă doriți să generați un document programatic, cel mai simplu mod este să utilizați clasa [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) pentru a adăuga conținutul documentului.

Următorul exemplu de cod arată cum să creați un document utilizând constructorul de documente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Notați valorile implicite:

- Un document gol conține o secțiune cu parametrii impliciți, un paragraf gol, câteva stiluri de documente. De fapt, acest document este același cu rezultatul creării "documentului nou" în Microsoft Word.
- Dimensiunea hârtiei documentului este [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Încărcați un Document

Pentru a încărca un document existent în oricare dintre formatele [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/), treceți numele fișierului sau fluxul într-unul dintre constructorii de documente. Formatul documentului încărcat este determinat automat de extensia acestuia.

### Încărcare dintr-un fișier {#load-from-a-file}

Treceți un nume de fișier ca șir la constructorul de documente pentru a deschide un document existent dintr-un fișier.

Următorul exemplu de cod arată cum să deschideți un document dintr-un fișier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Încărcare dintr-un flux {#load-from-a-stream}

Pentru a deschide un document dintr-un flux, pur și simplu treceți un obiect de flux care conține documentul în constructorul de documente.

Următorul exemplu de cod arată cum să deschideți un document dintr-un flux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
