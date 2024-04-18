---
title: Documentbouwer Overzicht in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Overzicht documentbouwer
linktitle: Overzicht documentbouwer
type: docs
description: "DocumentBuilder kunt u dynamische documenten bouwen vanaf nul of nieuwe elementen toevoegen aan bestaande met behulp van Python. DocumentBuilder biedt methoden om tekst, checkboxen, tabellen, afbeeldingen en andere inhoud elementen in te voegen Python."
weight: 30
url: /nl/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) is een machtige klasse die zich associeert met [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) en kunt u dynamische documenten vanaf nul bouwen of nieuwe elementen toevoegen aan een bestaande.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) voorziet in methoden om tekst, aanvinkkasten, ole objecten, paragrafen, lijsten, tabellen, afbeeldingen en andere inhoudselementen in te voegen. Hiermee kunt u lettertypen, alinea of sectieopmaak specificeren en andere bewerkingen uitvoeren.

## Documentbouwer of Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) vormt een aanvulling op de in de Aspose.Words Document Object Model (DOM) vereenvoudiging van de meest voorkomende documentenopbouwtaken. Dat wil zeggen, u kunt de inhoud van documenten zowel via de Aspose.Words DOM, wat een goed begrip van de boomstructuur vereist, en het gebruik van de DocumentBuilder. De `DocumentBuilder` is een "gevel" voor het complex **Document** structuur waarmee u snel en eenvoudig inhoud en opmaak kunt invoegen.

Operaties die mogelijk zijn met [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) zijn ook mogelijk bij het gebruik van de klassen van de Aspose.Words DOM Direct. Gebruik Aspose.Words DOM klassen direct vereist meestal meer regels van code dan gebruik [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Documentnavigatie

Documentnavigatie is gebaseerd op het concept van een virtuele cursor, waarmee u naar een andere locatie in het document met behulp van verschillende **DocumentBuilder.move_to_XXX** methoden zoals [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) en [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Deze virtuele cursor geeft aan waar de tekst zal worden ingevoegd bij het aanroepen van de methoden [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), en anderen. Zie het volgende artikel "Navigatie met Cursor" om meer te weten te komen over de virtuele cursor.

Het volgende voorbeeld van code laat zien hoe naar een bladwijzer te navigeren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Documenten bouwen en wijzigen

Aspose.Words API verstrekt verschillende klassen die verantwoordelijk zijn voor het formatteren van verschillende elementen van een document. Elk van de klassen omvat opmaakeigenschappen die verband houden met een specifiek documentelement, zoals tekst, paragraaf, sectie en andere. Zo is het [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) klasse vertegenwoordigt karakteropmaak eigenschappen, de [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) klasse vertegenwoordigt alinea-opmaak eigenschappen, enzovoort. Objecten van deze klassen worden teruggegeven door de overeenkomstige [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) eigenschappen die dezelfde namen hebben als de klassen. Daarom kunt u ze openen en de gewenste opmaak instellen tijdens de documentbouw.

U kunt ook tekst, selectievakje, ole object, afbeeldingen, bladwijzers, formuliervelden en andere document elementen op de cursor positie invoegen met behulp van de `Write` methode of een van de **DocumentBuilder.insert_XXX** methoden, zoals [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), en soortgelijke methoden.

Eens kijken hoe je een eenvoudig document aanmaakt met de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Een document aanmaken met DocumentBuilder

Om te beginnen moet je een [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) en vereenzelvig het met een [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object. U maakt een nieuwe instantie van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) door de constructeur aan te roepen en door te geven aan een [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object voor bevestiging aan de bouwer.

Geef om een tekst in te voegen de tekstreeks die u in het document moet invoegen aan de [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) methode.

Het volgende voorbeeld van code laat zien hoe je een eenvoudig document maakt met behulp van een documentbouwer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Documentopmaak specificeren

De [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) eigenschap definieert tekstopmaak. Dit object bevat verschillende lettertypeattributen (lettertypenaam, lettergrootte, kleur, enzovoort). Enkele belangrijke lettertype-attributen worden ook vertegenwoordigd door [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) eigenschappen waarmee u ze direct kunt openen. Dit zijn de [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), en [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) Booleaanse eigendommen.

Het volgende voorbeeld van code laat zien hoe je een geformatteerde tekst invoegt met behulp van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) specificeert de opmaak van tekens die zal worden toegepast op alle tekst die vanaf de huidige positie in het document wordt ingevoegd.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) specificeert de alinea-opmaak voor de huidige en alle in te voegen alinea's.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) specificeert de pagina- en sectieeigenschappen voor het huidige gedeelte en de gehele sectie die zal worden ingevoegd.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) en [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) opmaakeigenschappen specificeren die vanaf de huidige positie in het document op tabelcellen en rijen zullen worden toegepast.

In deze situatie betekent "huidig" de positie, paragraaf, sectie, cel of rij waarin de cursor zich bevindt.

{{% /alert %}}

{{% alert color="primary" %}}

Merk op dat de [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), en [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) eigenschappen worden bijgewerkt wanneer u navigeert naar een andere locatie in het document om de opmaak eigenschappen van deze locatie weer te geven.

{{% /alert %}}
