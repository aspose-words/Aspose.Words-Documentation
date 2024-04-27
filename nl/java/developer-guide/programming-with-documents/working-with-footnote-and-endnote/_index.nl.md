---
title: Werken met Voetnoot en Eindnote in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Voetnoot en Eindnoot
linktitle: Werken met Voetnoot en Eindnoot
description: "Hoe voetnoten en eindnoten te manipuleren met behulp van Java."
type: docs
weight: 160
url: /nl/java/working-with-footnote-and-endnote/
---

Aspose.Words biedt ook enkele klassen, methoden en eigenschappen voor het werken met voetnoten en eindnoten.

## Eindnote invoegen en nummeropties instellen

Als u een voetnoot of een endnote wilt invoegen in een Word-document, gebruik dan [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) methode. Deze methode voegt een voetnoot of eindnoot in het document.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) en [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) klassen vertegenwoordigen nummeringsopties voor voetnoot en eindnoot.

Het volgende voorbeeld van code laat zien hoe je endnote in het document invoegt en de nummeringsopties ervan instelt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Aantal kolommen van de voetnootindeling instellen

U kunt het aantal voetnoot layout kolommen met behulp van [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) eigendom. Als deze eigenschap de waarde van 0 heeft, wordt het gebied met voetnoten geformatteerd met een aantal kolommen op basis van het aantal kolommen op de weergegeven pagina.

Het volgende voorbeeld van code laat zien hoe het aantal kolommen voor voetnootindeling kan worden ingesteld:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## De positie van Voetnoot en Eindnoot instellen

De voetnootpositie kan zich onderaan elke pagina of onder de tekst op elke pagina bevinden. De eindnootpositie kan aan het einde van de sectie of aan het einde van het document zijn.

Het volgende voorbeeld van code laat zien hoe je de positie van voetnoot en endnote kunt instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
