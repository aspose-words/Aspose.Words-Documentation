---
title: Werken met afdelingen in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met afdelingen
linktitle: Werken met afdelingen
description: "Begrijpen document sectie concepten en manipulatie praktijken gebruiken C#. Sectie in een document invoegen C#. Sectie verwijderen C#. Kopieer secties tussen documenten."
type: docs
weight: 120
url: /nl/net/working-with-sections/
---

Soms wil je een document dat niet dezelfde opmaak heeft op alle pagina's. Bijvoorbeeld, je kan nodig hebben om paginanummer formaten te wijzigen, hebben verschillende pagina grootte en oriëntatie, of hebben de eerste document pagina als een cover pagina zonder nummering. Je kunt dat bereiken met secties.

Secties zijn niveauknooppunten die headers en voetteksten, oriëntatie, kolommen, marges, paginanummeropmaak, en anderen controleren.

Aspose.Words Hiermee kunt u secties beheren, een document in secties verdelen en wijzigingen aanbrengen die alleen van toepassing zijn op een specifieke sectie. Aspose.Words slaat informatie op over sectieopmaak zoals headers en voetteksten, pagina-instellingen en kolominstellingen in de sectieafbreking.

Dit artikel legt uit hoe te werken met secties en sectie pauzes.

## Wat Section en Section Break is

De afdelingen Documenten worden vertegenwoordigd door de [Section](https://reference.aspose.com/words/net/aspose.words/section/) en [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection) lessen. Sectie objecten zijn directe kinderen van de [Document](https://reference.aspose.com/words/net/aspose.words/document/) knooppunt en kan worden benaderd via de [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections) eigendom. U kunt deze knooppunten beheren met behulp van een aantal methoden zoals [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/), en anderen.

Sectie break is een optie die documentpagina's verdeelt in secties met aanpasbare lay-outs.

## Soorten sectiebreuk

Aspose.Words kunt u documenten splitsen en formatteren met behulp van verschillende sectie pauzes van de [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/) Lijst:

* SectionBreakContinuous
* SectieBreekNieuwColumbus
* SectionBreakNewPage
* SectionBreakEvenPage
* SectieBreakOddPage

U kunt ook de [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) Lijst om een breektype te kiezen dat alleen geldt voor de eerste sectie zoals NewColumn, NewPage, EvenPage en OddPage.

## Een sectie beheren

Aangezien een sectie is een normale samengestelde knooppunt, de hele node manipulatie API kan worden gebruikt om secties te manipuleren: toe te voegen, verwijderen en andere bewerkingen op secties. U kunt meer lezen over nodes in het artikel [Aspose.Words Document Object Model (DOM)](/words/nl/net/aspose-words-document-object-model/).

Aan de andere kant kunt u ook gebruik maken van de `DocumentBuilder` API werken met secties. In dit artikel zullen we ons richten op deze specifieke manier van werken met secties.

## Een sectiepauze invoegen of verwijderen

Aspose.Words kunt u een sectie in te breken in tekst met behulp van de [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) methode.

Het volgende voorbeeld van code laat zien hoe een sectie in een document kan worden ingebroken:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Gebruik de [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) methode om een sectiebreuk te verwijderen. Als u niet hoeft te verwijderen een specifieke sectie te breken en in plaats daarvan de inhoud van die sectie te verwijderen, kunt u de [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/) methode.

Het volgende voorbeeld van code laat zien hoe secties pauzes verwijderen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Merk op dat een sectiebreuk informatie bevat over de sectie die ervoor gaat, niet de sectie die erachteraan gaat. Dus als u een sectie break verwijdert, zal de tekst voor de verwijderde break de eigenschappen van de sectie break volgen. Dit kan ervoor zorgen dat het hele document landschap wordt, of headers en voetteksten veranderen of volledig verdwijnen.

{{% /alert %}}

## Deel verplaatsen

Als je een sectie wilt verplaatsen van de ene positie naar de andere in je document, moet je de index van die sectie krijgen. Aspose.Words kunt u een sectie positie van een [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) door het gebruik van de [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item) eigendom. U kunt de [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) eigendom om alle secties in uw document te krijgen. Maar als u alleen de eerste sectie wilt krijgen, kunt u de [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) eigendom.

Het volgende voorbeeld van code laat zien hoe u de eerste sectie kunt openen en itereren via de kinderen van een samengesteld knooppunt:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Specificeer een sectieindeling

Soms wil je dat je document er beter uitziet door creatieve lay-outs te maken voor verschillende documentsecties. Als u het type van het huidige sectieraster wilt opgeven, kunt u een sectieopmaakmodus kiezen met behulp van de [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/) Lijst:

* Standaard
* Raster
* LineGrid
* SnapToChars

Het volgende codevoorbeeld laat zien hoe het aantal regels dat elke pagina kan hebben te beperken:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Een sectie bewerken

Wanneer u een nieuwe sectie aan uw document toevoegt, zal er geen lichaam of paragraaf zijn die u kunt bewerken. Aspose.Words kunt u garanderen dat een sectie bevat een lichaam met ten minste een paragraaf met behulp van de [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) method

Het volgende voorbeeld van code laat zien hoe een nieuwe sectie knooppunt te bereiden met behulp van **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Inhoud toevoegen of prepend

Als u een vorm wilt tekenen of tekst of afbeelding wilt toevoegen aan het begin/einde van een sectie, kunt u de [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) en [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) methoden van de [Section](https://reference.aspose.com/words/net/aspose.words/section/) Klasse.

Het volgende voorbeeld van code laat zien hoe inhoud van een bestaande sectie kan worden toegevoegd:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Kloon een sectie

Aspose.Words kunt u een sectie dupliceren door een volledige kopie van het met behulp van de [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/) methode.

Het volgende voorbeeld van code laat zien hoe je de eerste sectie in je document kunt klonen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Delen tussen documenten kopiëren

In sommige gevallen kunt u grote documenten met vele secties hebben en u wilt de inhoud van een sectie van het ene document naar het andere kopiëren.

Aspose.Words kunt u delen tussen documenten kopiëren met behulp van de [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) methode.

Het volgende voorbeeld van de code laat zien hoe u secties tussen documenten kunt kopiëren:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Werken met sectie kop en voettekst

De basisregels voor het weergeven van een header of voettekst voor elke sectie zijn vrij eenvoudig:

1. Als de sectie geen eigen headers/voeters van een bepaald type heeft, dan wordt deze genomen uit de vorige sectie.
2. Het type header/voeter dat op de pagina wordt weergegeven wordt bestuurd door de "Different First Page" en "Different Odd & Even pages" sectieinstellingen als ze uitgeschakeld zijn, dan worden de eigen titels van de sectie genegeerd.

Het volgende code voorbeeld laat zien hoe 2 secties met verschillende headers te maken:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Als u de tekst van headers en voetteksten wilt verwijderen zonder te verwijderen [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) objecten in uw document, kunt u de [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) methode. Daarnaast kunt u de [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) methode om alle vormen uit headers en voetteksten in uw document te verwijderen.

Het volgende voorbeeld van code laat zien hoe inhoud van alle headers en voetteksten in een sectie te wissen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

Het volgende codevoorbeeld hoe alle vormen uit alle headers voetteksten in een sectie te verwijderen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Paginaeigenschappen aanpassen in een sectie

Voordat u een pagina of document afdrukt, kunt u de grootte en lay-out van een enkele pagina of het hele document aanpassen. Met pagina-instellingen kunt u de instellingen van documentpagina's wijzigen, zoals marges, oriëntatie en grootte voor het afdrukken van verschillende eerste pagina's of oneven pagina's.

Aspose.Words kunt u pagina en sectie eigenschappen aanpassen met behulp van de [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) Klasse.

Het volgende voorbeeld van code laat zien hoe u eigenschappen zoals paginagrootte en oriëntatie voor de huidige sectie kunt instellen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

Het volgende code voorbeeld laat zien hoe de pagina eigenschappen in alle secties te wijzigen:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Zie ook

* [Logische Nodesniveaus in een document](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Documenten invoegen en toevoegen](/words/nl/net/insert-and-append-documents/)

