---
title: Werk Met Voetnoot en Eindnoot in Java
second_title: Aspose.Words vir Java
articleTitle: Werk met Voetnoot en Eindnoot
linktitle: Werk met Voetnoot en Eindnoot
description: "Hoe om voetnotas en eindnotas te manipuleer met behulp van Java."
type: docs
weight: 160
url: /af/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words bied ook'n paar klasse, metodes en eienskappe vir die werk met voetnotas en eindnotas.

## Voeg Eindnota en Stel Nommering Opsies in

As jy'n voetnoot of'n eindnoot in'n Word-dokument wil invoeg, gebruik asseblief [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) metode. Hierdie metode plaas'n voetnoot of eindnoot in die dokument.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) en [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) klasse verteenwoordig nommering opsies vir voetnoot en eindnoot.

Die volgende kode voorbeeld toon hoe om endnote in die dokument te voeg en stel sy nommering opsies:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Stel Aantal Voetnoot Uitleg Kolomme

Jy kan die aantal voetnoot uitleg kolomme stel met behulp van [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) eiendom. As hierdie eienskap die waarde van 0 het, word die voetnotasarea geformateer met'n aantal kolomme gebaseer op die aantal kolomme op die vertoon bladsy.

Die volgende kode voorbeeld toon hoe om die aantal kolomme vir voetnoot uitleg stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Stel Die Posisie Van Voetnoot en EndNote

Die voetnootposisie kan onderaan elke bladsy of onder die teks op elke bladsy wees. Die eindnota posisie kan aan die einde van die afdeling of aan die einde van die dokument wees.

Die volgende kode voorbeeld toon hoe om die posisie van voetnoot en eindnoot stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
