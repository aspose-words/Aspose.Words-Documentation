---
title: Documentbouwer Overzicht in Java
second_title: Aspose.Words voor Java
articleTitle: Overzicht documentbouwer
linktitle: Overzicht documentbouwer
type: docs
description: "DocumentBuilder stelt u in staat om dynamische documenten vanaf nul te bouwen of nieuwe elementen toe te voegen aan bestaande documenten. DocumentBuilder biedt methoden voor het invoegen van tekst, checkboxen, tabellen, afbeeldingen en andere inhoud elementen in Java."
weight: 30
url: /nl/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) is een krachtige klasse die zich associeert met [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) en kunt u dynamische documenten vanaf nul bouwen of nieuwe elementen toevoegen aan een bestaande.

**DocumentBuilder** biedt methoden om tekst, checkboxen, ole objecten, paragrafen, lijsten, tabellen, afbeeldingen en andere inhoudselementen in te voegen. Hiermee kunt u lettertypen, alinea of sectieopmaak specificeren en andere bewerkingen uitvoeren.

## Documentbouwer of Aspose.Words DOM

**DocumentBuilder** vult klassen en methoden aan die beschikbaar zijn in de Aspose.Words Document Object Model (DOM) vereenvoudiging van de meest voorkomende documentenbouwtaken. Dat wil zeggen, u kunt de inhoud van documenten zowel via de Aspose.Words DOM, wat een goed begrip van de boomstructuur vereist, en het gebruik van de DocumentBuilder. De `DocumentBuilder` is een "gevel" voor het complex **Document** structuur waarmee u snel en eenvoudig inhoud en opmaak kunt invoegen.

Operaties die mogelijk zijn met **DocumentBuilder** zijn ook mogelijk bij het gebruik van de klassen van de Aspose.Words DOM rechtstreeks. Gebruik Aspose.Words DOM klassen vereisen meestal meer regels code dan het gebruik **DocumentBuilder**.

## Documentnavigatie

Documentnavigatie is gebaseerd op het concept van een virtuele cursor, waarmee u naar een andere locatie in het document met behulp van verschillende **DocumentBuilder.MoveToXXX** methoden zoals [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) en [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Deze virtuele cursor geeft aan waar de tekst zal worden ingevoegd bij het aanroepen van de methoden [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), en anderen. Zie het volgende artikel "Navigatie met Cursor" om meer te weten te komen over de virtuele cursor.

Het volgende codevoorbeeld laat zien hoe u naar een bladwijzer kunt navigeren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Documenten bouwen en wijzigen

Aspose.Words API biedt verschillende klassen die verantwoordelijk zijn voor het formatteren van verschillende elementen van een document. Elk van de klassen omvat opmaakeigenschappen met betrekking tot een specifiek documentelement, zoals tekst, paragraaf, sectie en andere. Zo is er bijvoorbeeld de [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) klasse vertegenwoordigt karakteropmaak eigenschappen, de [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) klasse vertegenwoordigt alinea-opmaak eigenschappen, enzovoort. Objecten van deze klassen worden teruggegeven door de overeenkomstige **DocumentBuilder** eigenschappen die dezelfde namen hebben als de klassen. Daarom kunt u ze openen en de gewenste opmaak instellen tijdens de document build.

U kunt ook tekst, selectievakje, ole object, afbeeldingen, bladwijzers, formuliervelden en andere document elementen op de cursor positie invoegen met behulp van de `Write` methode of een van de **DocumentBuilder.InsertXXX** methoden, zoals [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), en soortgelijke methoden.

Eens kijken hoe je een eenvoudig document aanmaakt met de **DocumentBuilder**.

### Een document aanmaken met DocumentBuilder

Om te beginnen moet je een **DocumentBuilder** en vereenzelvigt het met een **Document** object. Je maakt een nieuwe instantie van **DocumentBuilder** door de constructeur aan te roepen en door te geven aan een **Document** object voor bevestiging aan de bouwer.

Geef om een tekst in te voegen de tekstreeks die u in het document moet invoegen aan de **Write** methode.

Het volgende voorbeeld van code laat zien hoe u een eenvoudig document kunt maken met behulp van een documentbouwer.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Documentopmaak specificeren

De [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) eigenschap definieert tekstopmaak. Dit object bevat verschillende lettertype-attributen (lettertypenaam, lettergrootte, kleur, enzovoort). Enkele belangrijke lettertype-attributen worden ook vertegenwoordigd door **DocumentBuilder** eigenschappen waarmee u ze direct kunt openen. Dit zijn de [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), en [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) Booleaanse eigendommen.

Het volgende voorbeeld van code laat zien hoe je een geformatteerde tekst invoegt met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) specificeert de karakteropmaak die zal worden toegepast op alle tekst die vanaf de huidige positie in het document wordt ingevoegd.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) specificeert de alinea-opmaak voor de huidige en alle in te voegen alinea's.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) specificeert de pagina- en sectieeigenschappen voor het huidige gedeelte en de gehele sectie die zal worden ingevoegd.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) en [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) formatteer eigenschappen die vanaf de huidige positie in het document op tabelcellen en rijen zullen worden toegepast.

In deze situatie betekent "huidig" de positie, paragraaf, sectie, cel of rij waarin de cursor zich bevindt.

{{% /alert %}}

{{% alert color="primary" %}}

Merk op dat de **Font**, **ParagraphFormat**, en **PageSetup** eigenschappen worden bijgewerkt wanneer u navigeert naar een andere locatie in het document om de opmaak eigenschappen van deze locatie weer te geven.

{{% /alert %}}
