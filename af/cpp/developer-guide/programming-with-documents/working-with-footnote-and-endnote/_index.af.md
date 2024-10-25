---
title: Werk Met Voetnoot en Eindnoot in C++
second_title: Aspose.Words vir C++
articleTitle: Werk met Voetnoot en Eindnoot
linktitle: Werk met Voetnoot en Eindnoot
description: "Hoe om voetnotas en eindnotas te manipuleer met behulp van C++."
type: docs
weight: 160
url: /af/cpp/working-with-footnote-and-endnote/
---

Aspose.Words bied ook'n paar klasse, metodes en eienskappe vir die werk met voetnotas en eindnotas.

## Voeg Eindnota en Stel Nommering Opsies in

As jy'n voetnoot of eindnoot in'n Word-dokument wil invoeg, gebruik asseblief die [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/) - metode. Hierdie metode plaas'n voetnoot of eindnoot in die dokument.

[EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) en [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) klasse verteenwoordig nommering opsies vir voetnoot en eindnoot.

Die volgende kode voorbeeld toon hoe om endnote in die dokument te voeg en stel sy nommering opsies:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Stel Aantal Voetnoot Uitleg Kolomme

U kan die aantal voetnoot-uitlegkolomme stel deur die [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/) - eienskap te gebruik. As hierdie eienskap'n waarde van 0 het, word die voetnotasarea geformateer met'n aantal kolomme gebaseer op die aantal kolomme op die vertoon bladsy.

Die volgende kode voorbeeld toon hoe om die aantal kolomme vir voetnoot uitleg stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Stel Die Posisie Van Voetnoot en EndNote

Die voetnootposisie kan onderaan elke bladsy of onder die teks op elke bladsy wees. Die eindnota posisie kan aan die einde van die afdeling of aan die einde van die dokument wees.

Die volgende kode voorbeeld toon hoe om die posisie van voetnoot en eindnoot stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
