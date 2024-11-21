---
title: Lucrul cu hyperlink-uri în Java
second_title: Aspose.Words pentru Java
articleTitle: Adăugați sau modificați hyperlink-uri
linktitle: Adăugați sau modificați hyperlink-uri
description: "Cum să adăugați un hyperlink în documentul dvs. folosind Java."
type: docs
weight: 50
url: /ro/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un hyperlink în documentele Microsoft Word este câmpul `HYPERLINK`. În Aspose.Words, hyperlink-urile sunt implementate prin clasa [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## Introduceți un Hyperlink

Utilizați metoda [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) pentru a insera un hyperlink în document. Această metodă acceptă trei parametri:

1. Textul linkului care urmează să fie afișat în document
2. Destinația legăturii (URL sau un nume al unui marcaj din interiorul documentului)
3. Parametru Boolean care ar trebui să fie adevărat dacă `URL` este un nume al unui marcaj din interiorul unui document

Metoda **InsertHyperlink** adaugă întotdeauna apostrofe la începutul și la sfârșitul URL.

{{% alert color="primary" %}}

Rețineți că trebuie să specificați formatarea fontului pentru textul afișat hyperlink folosind în mod explicit proprietatea `Font`.

{{% /alert %}}

Următorul exemplu de cod arată cum să inserați un hyperlink într-un document folosind [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Înlocuiți sau modificați Hyperlink-urile

Hyperlink în Microsoft Word documente este un câmp. Un câmp dintr-un document Word, așa cum am spus mai devreme, este o structură complexă formată din mai multe noduri care includ începutul câmpului, codul câmpului, separatorul câmpului, rezultatul câmpului și sfârșitul câmpului. Câmpurile pot fi imbricate, conțin conținut bogat și acoperă mai multe paragrafe sau secțiuni dintr-un document.

Pentru a înlocui sau modifica hyperlink-urile, este necesar să găsiți hyperlink-urile din document și să înlocuiți fie textul lor, URLs, fie ambele.

Următorul exemplu de cod arată cum să găsiți toate hyperlink-urile în documentul Word și să le modificați `URL` și numele afișat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
