---
title: Lucrul cu hyperlink-uri
second_title: Aspose.Words pentru Python via .NET
articleTitle: Adăugați sau modificați hyperlink-uri
linktitle: Adăugați sau modificați hyperlink-uri
description: "Adăugați, înlocuiți sau modificați un hyperlink într-un document folosind Python."
type: docs
weight: 50
url: /ro/python-net/working-with-hyperlinks/
---

Un hyperlink în documentele Microsoft Word este câmpul `HYPERLINK`. În Aspose.Words, hyperlink-urile sunt implementate prin clasa [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/).

## Introducerea unui Hyperlink

Utilizați metoda [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) pentru a insera un hyperlink în document. Această metodă acceptă trei parametri:

1. Textul linkului care urmează să fie afișat în document
2. Destinația legăturii (URL sau un nume al unui marcaj din interiorul documentului)
3. Parametru Boolean care ar trebui să fie adevărat dacă `URL` este un nume al unui marcaj din interiorul unui document

Metoda **InsertHyperlink** adaugă întotdeauna apostrofe la începutul și la sfârșitul URL.

{{% alert color="primary" %}}

Rețineți că trebuie să specificați formatarea fontului pentru textul afișat hyperlink folosind în mod explicit proprietatea `Font`.

{{% /alert %}}

Următorul exemplu de cod arată cum să inserați un hyperlink într-un document folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Înlocuiți sau modificați Hyperlink-urile

Hyperlink în Microsoft Word documente este un câmp. Un câmp dintr-un document Word este o structură complexă formată din mai multe noduri care includ începutul câmpului, codul câmpului, separatorul câmpului, rezultatul câmpului și sfârșitul câmpului. Câmpurile pot fi imbricate, conțin conținut bogat și acoperă mai multe paragrafe sau secțiuni dintr-un document.

Pentru a înlocui sau modifica hyperlink-urile, este necesar să găsiți hyperlink-urile din document și să înlocuiți fie textul lor, URLs, fie ambele.

Următorul exemplu de cod arată cum să găsiți toate hyperlink-urile în documentul Word și să le modificați `URL` și numele afișat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
