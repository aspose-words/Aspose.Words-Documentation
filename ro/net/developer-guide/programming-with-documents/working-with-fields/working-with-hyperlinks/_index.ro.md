---
title: Lucrul cu hyperlink-uri în C#
second_title: Aspose.Words pentru .NET
articleTitle: Adaugă sau modifică link-uri hipertext
linktitle: Adaugă sau modifică link-uri hipertext
description: "Cum să adaugi un link hipertext în documentul tău în C# folosind Aspose.Words pentru .NET."
type: docs
weight: 50
url: /ro/net/working-with-hyperlinks/
---

O legătură hipertext în Microsoft Word documente este câmpul `HYPERLINK`. În Aspose.Words, link-urile sunt implementate prin clasa [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/).

## Introduceți un hyperlink

Utilizează metoda [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) pentru a insera un link într-un document. Metoda acceptă trei parametri:

1. Textul legăturii care va fi afișat în document
2. Destinație link (URL sau numele unui semn de carte în cadrul documentului)
3. Parametru boolean care ar trebui să fie true dacă `URL` este un nume de marcaj într-un document

Metoda **InsertHyperlink** adaugă întotdeauna apostroful la începutul și sfârșitul URL-ului

{{% alert color="primary" %}}

Observați că trebuie să specificați formatarea fontului pentru textul afișat al hiperlink-ului în mod explicit folosind proprietatea `Font`.

{{% /alert %}}

Exemplul următor de cod arată cum se inserează un link într-un document folosind [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Înlocuiește sau Modifică Hyperlink-uri

Hyperlink în Microsoft Word documente este un câmp. "Un câmp dintr-un document Word, așa cum am menționat mai devreme, este o structură complexă care constă în mai multe noduri ce includ câmpul de început, codul câmpului, separatorul câmpului, rezultatul câmpului și câmpul de sfârșit." Câmpurile pot fi închise, conțin conținut bogat și se întind pe mai multe paragrafe sau secțiuni dintr-un document.

Pentru a înlocui sau modifica hyperlink-urile, este nevoie să găsești hyperlink-urile în document și să înlocuiești fie textul lor, URL-urile, fie ambele.

Exemplul de cod următor arată cum să găsești toate legăturile ipertекст din documentul Word și le schimbă pe numele lor de afișare `URL`:"

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
