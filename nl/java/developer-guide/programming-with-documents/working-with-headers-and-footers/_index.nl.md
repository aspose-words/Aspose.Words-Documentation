---
title: Werken met Headers en Footers in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Headers en Footers
linktitle: Werken met Headers en Footers
description: "Hoe headers en voetteksten te manipuleren Java."
type: docs
weight: 150
url: /nl/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words stelt gebruikers in staat om te werken met headers en voetteksten in een document. Een header is tekst die bovenaan een pagina wordt geplaatst, en een voettekst is tekst onderaan een pagina. Typisch worden deze gebieden gebruikt om informatie in te voegen die moet worden herhaald op alle of sommige pagina's van het document, zoals paginanummers, aanmaakdatum, bedrijfsinformatie, enzovoort.

## Headers of voetteksten aanmaken met DocumentBuilder

Als u een document header of footer programmatisch wilt toevoegen, is de makkelijkste manier om de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klas om het te doen.

Het volgende codevoorbeeld laat zien hoe je een header en voettekst toevoegt aan documentpagina's:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Kop- of voetopties specificeren

Wanneer u een header of voettekst aan een document toevoegt, kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words biedt gebruikers de [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) en [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) klassen, alsmede [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) telling die u meer controle over de header en footer aanpassingsproces geven.

### Kop- of voettype opgeven

U kunt drie verschillende headertypes en drie verschillende voettypes opgeven voor één document:

1. Header en/of voettekst voor de eerste pagina
2. Header en/of voettekst voor even pagina's
3. Header en/of voettekst voor oneven pagina's

Het volgende codevoorbeeld laat zien hoe u een header toevoegt aan oneven documentpagina's:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Geef aan of verschillende berichtkoppen of voetteksten voor de eerste pagina getoond moeten worden

Zoals hierboven vermeld, kunt u ook een andere header of voettekst instellen voor de eerste pagina. Om dit te doen, moet u de [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) vlag naar `true` en dan de **HeaderFirst** of **FooterFirst** waarde.

Het volgende voorbeeld van code laat zien hoe u de header alleen voor de eerste pagina kunt instellen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Geef aan of verschillende berichtkoppen of voetteksten voor oneven of zelfs pagina's moeten worden weergegeven

 Vervolgens wilt u verschillende headers of voetteksten instellen voor oneven en zelfs pagina's in een document. Om dit te doen, moet u de [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) vlag naar `true` en dan spacefy de waarden **HeaderPrimary** en **HeaderEven**, of **FooterPrimary** en **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Een absoluut gepositioneerd invoegen Afbeelding in de kop

Om een afbeelding in een header of voettekst te plaatsen, gebruik de **HeaderPrimary** headertype of **FooterPrimary** voettype en de [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) methode.

Het volgende voorbeeld van code laat zien hoe je een afbeelding aan een header toevoegt:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Lettertype- en alinea-eigenschappen instellen voor header- of voettekst

Met Aspose.Words u kunt het lettertype en alinea eigenschappen, gebruik de **HeaderPrimary** headertype of **FooterPrimary** footer type, evenals methoden en eigenschappen voor het werken met de lettertypen en alinea's die u gebruikt voor de documentinhoud.

Het volgende voorbeeld van code laat zien hoe je de tekst in de header op Arial, vet, grootte 14, en centrum uitlijning:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Paginanummers invoegen in de kop- of voettekst

Indien nodig kunt u paginanummers toevoegen aan de header of voettekst. Om dit te doen, gebruik de **HeaderPrimary** headertype of **FooterPrimary** voettype en de [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) methode om het vereiste veld toe te voegen.

Het volgende voorbeeld van code laat zien hoe paginanummers aan de voettekst rechts toe te voegen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Gebruik Headers of Voetteksten die in de vorige sectie zijn gedefinieerd

Als u de koptekst of voettekst van de vorige sectie moet kopiëren, kunt u dat ook doen.

Het volgende voorbeeld van code laat zien hoe u de koptekst of voettekst van de vorige sectie kopieert:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Zorg voor Header of Footer verschijning bij het gebruik van verschillende pagina Oriëntaties en paginagrootte

Aspose.Words kunt u het uiterlijk van een header of voettekst bij het gebruik van verschillende oriëntaties en paginagroottes.

Het volgende voorbeeld laat zien hoe dit te doen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Alleen berichtkoppen of alleen voetteksten verwijderen

Elke sectie in een document kan maximaal drie headers en maximaal drie footers (voor eerst, zelfs, en oneven pagina's). Als je alle headers of alle voetteksten in een document wilt verwijderen, moet je door alle secties lopen en elke bijbehorende header node of voeter node verwijderen.

Het volgende code voorbeeld laat zien hoe je alle voetteksten uit alle secties verwijdert, maar laat de kopteksten intact. U kunt alleen headers op een soortgelijke manier verwijderen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
