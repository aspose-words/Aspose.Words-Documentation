---
title: Werken met Voetnoot en Eindnoot
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Voetnoot en Eindnoot
linktitle: Werken met Voetnoot en Eindnoot
description: "Flotnotes of endnotes in een document invoegen en de opties specificeren met behulp van Python."
type: docs
weight: 160
url: /nl/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words bevat ook enkele klassen, methoden en eigenschappen voor het werken met voetnoten en eindnoten.

## Eindnote invoegen en nummeropties instellen

Als u voetnoot of endnote wilt invoegen in Word-document, gebruik dan [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) methode. Deze methode voegt een voetnoot of eindnoot toe aan het document.

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) en [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) klassen vertegenwoordigen nummeringsopties voor voetnoot en eindnoot.

Het volgende voorbeeld van code laat zien hoe je endnote in het document invoegt en de nummeringsopties ervan instelt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Aantal kolommen van de voetnootindeling instellen

U kunt het aantal voetnoot layout kolommen instellen met behulp van de [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) eigendom. Als deze eigenschap de waarde van 0 heeft, wordt het gebied met voetnoten geformatteerd met een aantal kolommen op basis van het aantal kolommen op de getoonde pagina.

Het volgende voorbeeld van code laat zien hoe u het aantal kolommen voor voetnootindeling kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## De positie van Voetnoot en Eindnoot instellen

De voetnootpositie kan zich onderaan elke pagina of onder de tekst op elke pagina bevinden. De eindnootpositie kan aan het einde van de sectie of aan het einde van het document zijn.

Het volgende voorbeeld van code laat zien hoe je de positie van voetnoot en eindnoot kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
