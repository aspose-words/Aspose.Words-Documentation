---
title: Overzicht documentbouwer in C++
second_title: Aspose.Words voor C++
articleTitle: Overzicht Van Document Builder
linktitle: Overzicht Van Document Builder
type: docs
description: "Met DocumentBuilder kunt u dynamische documenten helemaal opnieuw maken of nieuwe elementen toevoegen aan bestaande documenten met behulp van C++. DocumentBuilder biedt methoden voor het invoegen van tekst, checkboxes, tabellen, afbeeldingen en andere inhoudselementen in C++."
weight: 30
url: /nl/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) is een krachtige klasse die wordt geassocieerd met [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) en waarmee u dynamische documenten vanaf nul kunt bouwen of nieuwe elementen kunt toevoegen aan een bestaande.

**DocumentBuilder**

## Documentbouwer of Aspose.Words DOM

**DocumentBuilder**

Bewerkingen die mogelijk zijn met **DocumentBuilder** zijn ook mogelijk wanneer de klassen van de Aspose.Words DOM rechtstreeks worden gebruikt. Het gebruik van Aspose.Words DOM klassen vereist echter meestal meer regels code dan het gebruik van **DocumentBuilder**.

## Document Navigatie

Documentnavigatie is gebaseerd op het concept van een virtuele cursor, waarmee u naar een andere locatie in het document kunt gaan met behulp van verschillende **DocumentBuilder.MoveToXXX** - methoden zoals [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) en [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Deze virtuele cursor geeft aan waar de tekst zal worden ingevoegd bij het aanroepen van de methoden [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), en anderen.

Het volgende codevoorbeeld laat zien hoe u naar een bladwijzer navigeert:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Document bouwen en wijzigen

Aspose.Words API biedt verschillende klassen die verantwoordelijk zijn voor het opmaken van verschillende elementen van een document. Elk van de klassen bevat opmaakeigenschappen die verband houden met een specifiek documentelement, zoals tekst, alinea, sectie en andere. De klasse [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) staat bijvoorbeeld voor eigenschappen van tekenopmaak, de klasse [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) voor eigenschappen van alineaopmaak, enzovoort. Objecten van deze klassen worden geretourneerd door de overeenkomstige **DocumentBuilder** eigenschappen, die dezelfde namen hebben als de klassen. Daarom kunt u ze openen en de gewenste opmaak instellen tijdens de documentopbouw.

U kunt ook tekst, checkbox, OLE-object, afbeeldingen, bladwijzers, formuliervelden en andere documentelementen op de cursorpositie invoegen met behulp van de methode `Write` of een van de methoden **DocumentBuilder.InsertXXX**, zoals [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) en soortgelijke methoden.

Laten we eens kijken hoe je een eenvoudig document maakt met de **DocumentBuilder**.

### Een Document maken met DocumentBuilder

Om te beginnen moet u een **DocumentBuilder** maken en deze koppelen aan een **Document** object. U maakt een nieuwe instantie van **DocumentBuilder** door de constructor aan te roepen en deze door te geven aan een **Document** object voor bijlage aan de builder.

Als u een tekst wilt invoegen, geeft u de tekstreeks die u in het document moet invoegen door aan de methode **Write**.

Het volgende codevoorbeeld laat zien hoe u een eenvoudig document maakt met behulp van een documentbouwer.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Documentopmaak Opgeven

De eigenschap [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) definieert tekstopmaak. Dit object bevat verschillende lettertypeattributen (lettertypenaam, lettergrootte, kleur, enzovoort). Sommige belangrijke lettertypeattributen worden ook weergegeven door **DocumentBuilder** - eigenschappen, zodat u ze rechtstreeks kunt openen. Dit zijn de [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) en [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/) Booleaanse eigenschappen.

Het volgende codevoorbeeld laat zien hoe u een opgemaakte tekst invoegt met **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) geeft de tekenopmaak op die wordt toegepast op alle tekst die vanaf de huidige positie in het document wordt ingevoegd.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) geeft de alineaopmaak op voor de huidige en alle alinea ' s die moeten worden ingevoegd.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) geeft de pagina-en sectie-Eigenschappen op voor de huidige sectie en de gehele sectie die zal worden ingevoegd.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) en [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) geven opmaakeigenschappen op die worden toegepast op tabelcellen en rijen vanaf de huidige positie in het document.

In deze situatie betekent "huidige" de positie, alinea, sectie, cel of rij waarin de cursor zich bevindt.

{{% /alert %}}

{{% alert color="primary" %}}

Merk op dat de eigenschappen **Font**, **ParagraphFormat** en **PageSetup** worden bijgewerkt wanneer u naar een andere locatie in het document navigeert om de opmaakeigenschappen van deze locatie weer te geven.

{{% /alert %}}
