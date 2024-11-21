---
title: Documentbouwer Overzicht in C#
second_title: Aspose.Words voor .NET
articleTitle: Overzicht documentbouwer
linktitle: Overzicht documentbouwer
type: docs
description: "DocumentBuilder kunt u dynamische documenten bouwen vanaf nul of nieuwe elementen toevoegen aan bestaande met behulp van C#. DocumentBuilder biedt methoden om tekst, checkboxen, tabellen, afbeeldingen en andere inhoud elementen in te voegen .NET."
weight: 30
url: /nl/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) is een machtige klasse die zich associeert met [Document](https://reference.aspose.com/words/net/aspose.words/document/) en kunt u dynamische documenten vanaf nul bouwen of nieuwe elementen toevoegen aan een bestaande.

**DocumentBuilder** voorziet in methoden om tekst, aanvinkkasten, ole objecten, paragrafen, lijsten, tabellen, afbeeldingen en andere inhoudselementen in te voegen. Hiermee kunt u lettertypen, alinea of sectieopmaak specificeren en andere bewerkingen uitvoeren.

## Documentbouwer of Aspose.Words DOM

**DocumentBuilder** vormt een aanvulling op de in de Aspose.Words Document Object Model (DOM) vereenvoudiging van de meest voorkomende documentenopbouwtaken. Dat wil zeggen, u kunt de inhoud van documenten zowel via de Aspose.Words DOM, wat een goed begrip van de boomstructuur vereist, en het gebruik van de DocumentBuilder. De `DocumentBuilder` is een "gevel" voor het complex **Document** structuur waarmee u snel en eenvoudig inhoud en opmaak kunt invoegen.

Operaties die mogelijk zijn met **DocumentBuilder** zijn ook mogelijk bij het gebruik van de klassen van de Aspose.Words DOM Direct. Gebruik Aspose.Words DOM klassen direct vereist meestal meer regels van code dan gebruik **DocumentBuilder**.

## Documentnavigatie

Documentnavigatie is gebaseerd op het concept van een virtuele cursor, waarmee u naar een andere locatie in het document met behulp van verschillende **DocumentBuilder.MoveToXXX** methoden zoals [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) en [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Deze virtuele cursor geeft aan waar de tekst zal worden ingevoegd bij het aanroepen van de methoden [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/), en anderen. Zie het volgende artikel "Navigatie met Cursor" om meer te weten te komen over de virtuele cursor.

Het volgende voorbeeld van code laat zien hoe naar een bladwijzer te navigeren:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Documenten bouwen en wijzigen

Aspose.Words API verstrekt verschillende klassen die verantwoordelijk zijn voor het formatteren van verschillende elementen van een document. Elk van de klassen omvat opmaakeigenschappen die verband houden met een specifiek documentelement, zoals tekst, paragraaf, sectie en andere. Zo is het [Font](https://reference.aspose.com/words/net/aspose.words/font/) klasse vertegenwoordigt karakteropmaak eigenschappen, de [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) klasse vertegenwoordigt alinea-opmaak eigenschappen, enzovoort. Objecten van deze klassen worden teruggegeven door de overeenkomstige **DocumentBuilder** eigenschappen die dezelfde namen hebben als de klassen. Daarom kunt u ze openen en de gewenste opmaak instellen tijdens de documentbouw.

U kunt ook tekst, selectievakje, ole object, afbeeldingen, bladwijzers, formuliervelden en andere document elementen op de cursor positie invoegen met behulp van de `Write` methode of een van de **DocumentBuilder.InsertXXX** methoden, zoals [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/), en soortgelijke methoden.

Eens kijken hoe je een eenvoudig document aanmaakt met de **DocumentBuilder**.

### Een document aanmaken met DocumentBuilder

Om te beginnen moet je een **DocumentBuilder** en vereenzelvig het met een **Document** object. U maakt een nieuwe instantie van **DocumentBuilder** door de constructeur aan te roepen en door te geven aan een **Document** object voor bevestiging aan de bouwer.

Geef om een tekst in te voegen de tekstreeks die u in het document moet invoegen aan de **Write** methode.

Het volgende voorbeeld van code laat zien hoe je een eenvoudig document maakt met behulp van een documentbouwer.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Documentopmaak specificeren

De [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) eigenschap definieert tekstopmaak. Dit object bevat verschillende lettertypeattributen (lettertypenaam, lettergrootte, kleur, enzovoort). Enkele belangrijke lettertype-attributen worden ook vertegenwoordigd door **DocumentBuilder** eigenschappen waarmee u ze direct kunt openen. Dit zijn de [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/), en [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) Booleaanse eigendommen.

Het volgende voorbeeld van code laat zien hoe je een geformatteerde tekst invoegt met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) specificeert de opmaak van tekens die zal worden toegepast op alle tekst die vanaf de huidige positie in het document wordt ingevoegd.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) specificeert de alinea-opmaak voor de huidige en alle in te voegen alinea's.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) specificeert de pagina- en sectieeigenschappen voor het huidige gedeelte en de gehele sectie die zal worden ingevoegd.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) en [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) opmaakeigenschappen specificeren die vanaf de huidige positie in het document op tabelcellen en rijen zullen worden toegepast.

In deze situatie betekent "huidig" de positie, paragraaf, sectie, cel of rij waarin de cursor zich bevindt.

{{% /alert %}}

{{% alert color="primary" %}}

Merk op dat de **Font**, **ParagraphFormat**, en **PageSetup** eigenschappen worden bijgewerkt wanneer u navigeert naar een andere locatie in het document om de opmaak eigenschappen van deze locatie weer te geven.

{{% /alert %}}
