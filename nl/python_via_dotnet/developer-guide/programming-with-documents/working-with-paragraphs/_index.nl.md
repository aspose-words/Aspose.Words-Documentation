---
title: Werken met alinea's in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met alinea's
linktitle: Werken met alinea's
description: "Paragraaf invoegen en de opmaak specificeren in een document dat Python."
type: docs
weight: 210
url: /nl/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Een alinea is een verzameling tekens die worden gecombineerd tot een logisch blok en eindigend met een speciaal karakter, een *paragraf break*. In Aspose.Words, een lid wordt vertegenwoordigd door de [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Klasse.

## Paragraaf invoegen

Om een nieuwe paragraaf in het document in te voegen, moet je er een paragraaf breekteken in voegen. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) voegt ook een tekstreeks in het document toe, maar voegt er bovendien een paragraafbreuk aan toe.

De huidige lettertypeopmaak wordt ook gespecificeerd door de [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) eigenschap en de huidige paragraafopmaak wordt bepaald door de [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) eigendom.

Het volgende voorbeeld van code laat zien hoe je een paragraaf in een document invoegt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Formaat paragraaf

De huidige paragraafopmaak wordt weergegeven door een [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) object dat door de [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) eigendom. Dit object inkapselt verschillende alinea-opmaak eigenschappen beschikbaar in Microsoft Word. U kunt de alinea-opmaak eenvoudig terugzetten naar normale stijl, links uitgelijnd, geen inspringing, geen afstand, geen randen en geen schaduw door aan te roepen [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

Het volgende voorbeeld van code laat zien hoe je paragraafopmaak instelt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Een alineastijl toepassen

Sommige formatteren objecten zoals [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) of [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) ondersteuningsstijlen. Een enkele ingebouwde of gebruiker gedefinieerde stijl wordt vertegenwoordigd door een [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) object dat de bijbehorende stijleigenschappen zoals naam, basisstijl, lettertype en paragraafopmaak van de stijl bevat, enzovoort.

Bovendien [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) object geeft de [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) eigenschap die een locale-onafhankelijke stijl identifier vertegenwoordigd door een [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) Waarde van de opsomming. Het punt is dat de namen van ingebouwde stijlen in Microsoft Word zijn gelokaliseerd voor verschillende talen. Met behulp van een stijl identifier, kunt u de juiste stijl te vinden, ongeacht de document taal. De opsommingswaarden komen overeen met de Microsoft Word ingebouwde stijlen zoals Normaal , Rubriek 1 , Rubriek 2 enz. Alle door de gebruiker gedefinieerde stijlen zijn toegewezen aan [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) waarde

Het volgende voorbeeld van code laat zien hoe je een alineastijl moet toepassen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Stijlscheiding invoegen om verschillende alineastijlen te plaatsen

Aan het einde van een alinea kan een scheidingsteken worden toegevoegd met behulp van de Ctrl + Alt + Voer sneltoets in MS Word. Deze functie maakt het mogelijk om twee verschillende alineastijlen gebruikt in een logische afgedrukte paragraaf. Als u vanaf het begin van een bepaalde rubriek een tekst wilt laten verschijnen in een Inhoudsopgave, maar niet wilt dat de hele rubriek in de Inhoudsopgave staat, kunt u deze functie gebruiken

Het volgende voorbeeld van code laat zien hoe je een scheidingsteken invoegt om verschillende alineastijlen aan te passen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Paragraaf identificeren Scheidingsteken

Aspose.Words levert een openbare eigendom [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) in een [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) klasse maakt het mogelijk om Style Separator Paragraaf te identificeren zoals aangegeven in het onderstaande voorbeeld:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Randen en Schaduwen toepassen op een alinea

De grenzen worden vertegenwoordigd door de [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Dit is een verzameling van [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) objecten die toegankelijk zijn per index of per grenstype. Randtype wordt vertegenwoordigd door de [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) Lijst. Sommige waarden van de opsomming zijn van toepassing op meerdere of slechts één documentelement. Bijvoorbeeld, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) is van toepassing op een alinea of tabelcel terwijl [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) geeft alleen de diagonale rand in een tabelcel aan.

Zowel de randcollectie als elke afzonderlijke rand hebben vergelijkbare attributen zoals kleur, lijnstijl, lijnbreedte, afstand tot tekst en optionele schaduw. Zij worden vertegenwoordigd door eigenschappen met dezelfde naam. U kunt verschillende grenstypes bereiken door de vastgoedwaarden te combineren. Bovendien zijn beide [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) en [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) objecten kunt u deze waarden terugzetten naar standaard door de [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) methode.

{{% alert color="primary" %}}

Merk op dat wanneer de eigenschappen van de randen worden teruggezet naar hun standaardwaarden, de rand onzichtbaar wordt.

{{% /alert %}}

Aspose.Words heeft [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) klasse bevat schaduwattributen voor documentelementen. U kunt de gewenste schaduwtextuur en de kleuren die worden toegepast op de achtergrond en voorgrond van het element instellen.

De schaduwstructuur is ingesteld met een [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) telling waarde die de toepassing van verschillende patronen op de [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) object. Om bijvoorbeeld een achtergrondkleur voor een documentelement in te stellen, gebruik de [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) waardeer en stel de voorgrondschaduwkleur in. Onderstaand voorbeeld laat zien hoe je grenzen toe te passen en een paragraaf te verhullen.

Het volgende voorbeeld van code laat zien hoe je grenzen kunt toepassen en een paragraaf kunt camoufleren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
