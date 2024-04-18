---
title: Werken met Headers en Footers in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Headers en Footers
linktitle: Werken met Headers en Footers
description: "Hoe headers en voetteksten te manipuleren C#. Headers en voetteksten aanmaken C#. Kopteksten of voetteksten verwijderen C#."
type: docs
weight: 150
url: /nl/net/working-with-headers-and-footers/
---

Aspose.Words stelt gebruikers in staat om te werken met headers en voetteksten in een document. Een header is tekst die bovenaan een pagina wordt geplaatst, en een voettekst is tekst onderaan een pagina. Meestal worden deze gebieden gebruikt om informatie in te voegen die moet worden herhaald op alle of sommige pagina's van het document, zoals paginanummers, aanmaakdatum, bedrijfsinformatie, enzovoort.

## Headers of voetteksten aanmaken met DocumentBuilder

Als u een document header of footer programmatisch wilt toevoegen, is de gemakkelijkste manier om de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Klas om het te doen.

Het volgende codevoorbeeld laat zien hoe je een header en voettekst toevoegt aan documentpagina's:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Kop- of voetopties specificeren

Wanneer u een header of voettekst aan een document toevoegt, kunt u een aantal geavanceerde eigenschappen instellen. Aspose.Words biedt gebruikers de [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) en [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/) lessen, maar ook [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) telling die u meer controle over de header en footer aanpassingsproces geven.

### Kop- of voettype opgeven

U kunt drie verschillende headertypes en drie verschillende voettypes opgeven voor één document:
1. Header en/of voettekst voor de eerste pagina
2. Header en/of voettekst voor even pagina's
3. Header en/of voettekst voor oneven pagina's

Het volgende voorbeeld van code laat zien hoe je een header toevoegt aan oneven documentpagina's:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Geef aan of verschillende berichtkoppen of voetteksten voor de eerste pagina worden weergegeven

Zoals hierboven vermeld, kunt u ook een andere header of voettekst instellen voor de eerste pagina. Om dit te doen, moet u de [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) vlag naar `true` en dan de **HeaderFirst** of **FooterFirst** waarde.

Het volgende voorbeeld van code laat zien hoe u de header alleen voor de eerste pagina kunt instellen:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Geef aan of verschillende berichtkoppen of voetteksten voor oneven of zelfs pagina's moeten worden weergegeven

 Vervolgens wilt u verschillende headers of voetteksten instellen voor oneven en zelfs pagina's in een document. Om dit te doen, moet u de [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) vlag naar `true` en dan spacefy de waarden **HeaderPrimary** en **HeaderEven**, of **FooterPrimary** en **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Een absoluut gepositioneerd invoegen Afbeelding in de kop

Om een afbeelding in een header of voettekst te plaatsen, gebruik de **HeaderPrimary** headertype of **FooterPrimary** voettype en de [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) methode.

Het volgende codevoorbeeld laat zien hoe je een afbeelding aan een header toevoegt:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Lettertype- en alineaeigenschappen instellen voor header- of voettekst

Met Aspose.Words kunt u het lettertype en alinea eigenschappen, gebruik de **HeaderPrimary** headertype of **FooterPrimary** footer type, evenals methoden en eigenschappen voor het werken met de lettertypen en alinea's die u gebruikt voor de documentinhoud.

Het volgende voorbeeld van code laat zien hoe je de tekst in de header op Arial, vet, grootte 14, en centrum uitlijning:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Paginanummers invoegen in de kop- of voettekst

Indien nodig kunt u paginanummers toevoegen aan de header of voettekst. Om dit te doen, gebruik de **HeaderPrimary** headertype of **FooterPrimary** voettype en de [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) methode om het vereiste veld toe te voegen.

Het volgende voorbeeld van code laat zien hoe paginanummers aan de voettekst rechts toe te voegen:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Gebruik Headers of Voetteksten die in de vorige sectie zijn gedefinieerd

Als u de koptekst of voettekst van de vorige sectie moet kopiëren, kunt u dat ook doen.

Het volgende voorbeeld van code laat zien hoe u de koptekst of voettekst van de vorige sectie kunt kopiëren:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Zorg voor Header of Footer verschijning bij het gebruik van verschillende pagina Oriëntaties en paginagrootte

Aspose.Words kunt u het uiterlijk van een header of voettekst bij het gebruik van verschillende oriëntaties en paginagroottes.

Het volgende voorbeeld laat zien hoe dit moet:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Alleen kopteksten of alleen voetteksten verwijderen

Elke sectie in een document kan maximaal drie headers en maximaal drie footers (voor eerst, zelfs, en oneven pagina's). Als u alle headers of alle voetteksten in een document wilt verwijderen, moet u alle secties doorlopen en elke bijbehorende headernode of voetnode verwijderen.

Het volgende voorbeeld van code laat zien hoe je alle voetteksten uit alle secties verwijdert, maar de kopteksten intact laat. U kunt alleen headers op een soortgelijke manier verwijderen:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}