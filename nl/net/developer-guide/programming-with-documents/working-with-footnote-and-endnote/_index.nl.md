---
title: Werken met Voetnoot en Eindnote in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Voetnoot en Eindnoot
linktitle: Werken met Voetnoot en Eindnoot
description: "Hoe voetnoten en eindnoten te manipuleren met behulp van C#."
type: docs
weight: 160
url: /nl/net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words bevat ook enkele klassen, methoden en eigenschappen voor het werken met voetnoten en eindnoten.

## Eindnote invoegen en nummeropties instellen

Als u voetnoot of endnote wilt invoegen in Word-document, gebruik dan de [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) methode. Deze methode voegt een voetnoot of eindnoot toe aan het document.

[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) en [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) klassen vertegenwoordigen nummeringsopties voor voetnoot en eindnoot.

Het volgende voorbeeld van code laat zien hoe je endnote in het document invoegt en de nummeringsopties ervan instelt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Aantal kolommen van de voetnootindeling instellen

U kunt het aantal voetnoot layout kolommen instellen met behulp van de [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) eigendom. Als deze eigenschap de waarde van 0 heeft, wordt het gebied met voetnoten geformatteerd met een aantal kolommen op basis van het aantal kolommen op de getoonde pagina.

Het volgende voorbeeld van code laat zien hoe u het aantal kolommen voor voetnootindeling kunt instellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## De positie van Voetnoot en Eindnoot instellen

De voetnootpositie kan zich onderaan elke pagina of onder de tekst op elke pagina bevinden. De eindnootpositie kan aan het einde van de sectie of aan het einde van het document zijn.

Het volgende voorbeeld van code laat zien hoe je de positie van voetnoot en eindnoot kunt instellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
