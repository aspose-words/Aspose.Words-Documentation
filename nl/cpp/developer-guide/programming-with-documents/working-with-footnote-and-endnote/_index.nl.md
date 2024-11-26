---
title: Werken met voetnoot en eindnoot in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Footnote en Endnote
linktitle: Werken met Footnote en Endnote
description: "Voetnoten en eindnoten bewerken met C++."
type: docs
weight: 160
url: /nl/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words biedt ook een aantal klassen, methoden en eigenschappen voor het werken met voetnoten en eindnoten.

## EndNote invoegen en Nummeringopties instellen

Als u een voetnoot of eindnoot in een Word - document wilt invoegen, gebruikt u de methode [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Deze methode voegt een voetnoot of eindnoot in het document.

[EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) en [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) klassen vertegenwoordigen nummering opties voor voetnoot en eindnoot.

Het volgende codevoorbeeld laat zien hoe u endnote in het document invoegt en de nummeringsopties instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Aantal kolommen voor de lay-out van voetnoten instellen

U kunt het aantal kolommen voor de lay-out van voetnoten instellen met de Eigenschap [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Als deze eigenschap een waarde van 0 heeft, wordt het gebied voetnoten opgemaakt met een aantal kolommen op basis van het aantal kolommen op de weergegeven pagina.

Het volgende codevoorbeeld laat zien hoe u het aantal kolommen voor de lay-out van de voetnoot instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Stel de positie van voetnoot en EndNotein

De voetnootpositie kan onderaan elke pagina of onder de tekst op elke pagina staan. De eindnootpositie kan aan het einde van de sectie of aan het einde van het document staan.

Het volgende codevoorbeeld laat zien hoe u de positie van voetnoot en eindnoot instelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
