---
title: Lucrul cu hyperlink-uri în C++
second_title: Aspose.Words pentru C++
articleTitle: Adăugați sau modificați hyperlink-uri
linktitle: Adăugați sau modificați hyperlink-uri
description: "Cum să adăugați un hyperlink în documentul dvs. utilizând Aspose.Words pentru C++."
type: docs
weight: 180
url: /ro/cpp/working-with-hyperlinks/
---

Un hyperlink în documentele Microsoft Word este câmpul `HYPERLINK`. În Aspose.Words, hyperlink-urile sunt implementate prin clasa [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Introducerea unui Hyperlink

Utilizați metoda [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) pentru a insera un hyperlink în document. Această metodă acceptă trei parametri:

1. Textul linkului care urmează să fie afișat în document
2. Destinația legăturii (URL sau un nume al unui marcaj din interiorul documentului)
3. Parametru Boolean care ar trebui să fie adevărat dacă `URL` este un nume al unui marcaj din interiorul documentului

Metoda **InsertHyperlink** adaugă întotdeauna apostrofe la începutul și la sfârșitul URL.

{{% alert color="primary" %}}

Rețineți că trebuie să specificați formatarea fontului pentru textul afișat hyperlink folosind în mod explicit proprietatea `Font`.

{{% /alert %}}

Următorul exemplu de cod arată cum să inserați un hyperlink într-un document folosind [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Înlocuiți sau modificați Hyperlink-urile

Hyperlink în Microsoft Word documente este un câmp. Un câmp dintr-un document Word este o structură complexă formată din mai multe noduri care includ începutul câmpului, codul câmpului, separatorul câmpului, rezultatul câmpului și sfârșitul câmpului. Câmpurile pot fi imbricate, conțin conținut bogat și acoperă mai multe paragrafe sau secțiuni dintr-un document.

Clasa `FieldHyperlink` implementează câmpul `HYPERLINK`.

Următorul exemplu de cod arată cum să găsiți toate hyperlink-urile în documentul Word și să le modificați `URL` și numele afișat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
