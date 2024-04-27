---
title: Werken met afdelingen in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met afdelingen
linktitle: Werken met afdelingen
description: "Begrijpen van concepten en manipulatiepraktijken van documentsecties met behulp van Java. Afdeling invoegen in een document Java. Sectie verwijderen Java. Kopieer secties tussen documenten."
type: docs
weight: 120
url: /nl/java/working-with-sections/
---

Soms wilt u een document dat niet dezelfde opmaak op alle pagina's. U moet bijvoorbeeld paginanummerformaten wijzigen, verschillende paginagrootte en oriëntatie hebben, of de eerste documentpagina als coverpagina hebben zonder nummering. Je kunt dat bereiken met secties.

Secties zijn niveauknooppunten die headers en voetteksten, oriëntatie, kolommen, marges, paginanummeropmaak, en anderen controleren.

Aspose.Words Hiermee kunt u secties beheren, een document in secties verdelen en wijzigingen aanbrengen die alleen van toepassing zijn op een specifieke sectie. Aspose.Words slaat informatie op over sectieopmaak zoals headers en voetteksten, pagina-instellingen en kolominstellingen in de sectieafbreking.

Dit artikel legt uit hoe te werken met secties en sectie pauzes.

## Wat Section en Section Break is

De afdelingen Documenten worden vertegenwoordigd door de [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) en [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) lessen. Sectie objecten zijn directe kinderen van de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) knooppunt en kan worden benaderd via de [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) eigendom. U kunt deze knooppunten beheren met behulp van een aantal methoden zoals [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), en anderen.

Section break is een optie die documentpagina's verdeelt in secties met aanpasbare lay-outs.

## Soorten sectiebreuk

Aspose.Words kunt u documenten splitsen en formatteren met behulp van verschillende sectie pauzes van de [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) Lijst:

- SectionBreakContinuous
- SectionBreakNewColumb
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

U kunt ook de [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) Lijst om een break type te kiezen dat alleen geldt voor de eerste sectie zoals NewColumn, NewPage, EvenPage en OddPage.

## Een sectie beheren

Aangezien een sectie is een normale samengestelde knooppunt, de hele node manipulatie API kan worden gebruikt om secties te manipuleren: toevoegen, verwijderen en andere bewerkingen op secties. U kunt meer lezen over knooppunten in het artikel [Aspose.Words Document Object Model (DOM)](/words/nl/java/aspose-words-document-object-model/).

Aan de andere kant kunt u ook de `DocumentBuilder` API om met secties te werken. In dit artikel zullen we ons richten op deze specifieke manier van werken met secties.

## Een sectiepauze invoegen of verwijderen

Aspose.Words kunt u een sectie in te breken in tekst met behulp van de [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) methode.

Het volgende voorbeeld van code laat zien hoe een sectie in een document kan worden ingebroken:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Gebruik de [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) methode om een sectiebreuk te verwijderen. Als u niet hoeft te verwijderen een specifieke sectie te breken en in plaats daarvan de inhoud van die sectie te verwijderen, kunt u de [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) methode.

Het volgende voorbeeld van code laat zien hoe secties te verwijderen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Merk op dat een sectiebreuk informatie bevat over de sectie die ervoor gaat, niet de sectie die erachteraan gaat. Dus als u een sectie pauze verwijdert, krijgt de tekst voor de verwijderde pauze de eigenschappen van de sectie break erna. Hierdoor kan het hele document landschap worden, of headers en voetteksten veranderen of volledig verdwijnen.

{{% /alert %}}

## Een sectie verplaatsen

Als je een sectie wilt verplaatsen van de ene positie naar de andere in je document, moet je de index van die sectie krijgen. Aspose.Words kunt u een sectie positie van een [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). U kunt de [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) eigendom om alle secties in uw document te krijgen. Maar als u alleen de eerste sectie wilt krijgen, kunt u de [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) eigendom.

Het volgende voorbeeld van code laat zien hoe je toegang krijgt tot de eerste sectie en itereert via de kinderen van een samengesteld knooppunt:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Specificeer een sectieindeling

Soms wil je dat je document er beter uitziet door creatieve lay-outs te maken voor verschillende documentsecties. Als u het type van het huidige sectieraster wilt opgeven, kunt u een sectieopmaakmodus kiezen met behulp van de [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) Lijst:

- Standaard
- Raster
- LineGrid
- SnapToChars

Het volgende codevoorbeeld laat zien hoe het aantal regels dat elke pagina kan hebben te beperken:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Een sectie bewerken

Wanneer u een nieuwe sectie aan uw document toevoegt, zal er geen lichaam of paragraaf zijn die u kunt bewerken. Aspose.Words kunt u garanderen dat een sectie bevat een lichaam met ten minste een paragraaf met behulp van de [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) method

Het volgende voorbeeld van de code laat zien hoe een nieuwe sectie knooppunt te bereiden met behulp van **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Inhoud toevoegen of voordragen

Als u een bepaalde vorm wilt tekenen of tekst of afbeelding wilt toevoegen aan het begin/einde van een sectie, kunt u de [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) en [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) methoden van de [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) Klasse.

Het volgende voorbeeld van code laat zien hoe inhoud van een bestaande sectie kan worden toegevoegd:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Kloon een sectie

Aspose.Words kunt u een sectie te dupliceren door een volledige kopie van het met behulp van de [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) methode.

Het volgende voorbeeld van code laat zien hoe u de eerste sectie in uw document kunt klonen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Delen tussen documenten kopiëren

In sommige gevallen kunt u grote documenten met vele secties hebben en u wilt de inhoud van een sectie van het ene document naar het andere kopiëren.

Aspose.Words kunt u delen tussen documenten kopiëren met behulp van de [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) methode.

Het volgende voorbeeld van code laat zien hoe delen tussen documenten te kopiëren:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Werken met sectie kop en voettekst

De basisregels voor het weergeven van een header of voettekst voor elke sectie zijn heel eenvoudig:

1. Als de sectie geen eigen headers/voeters van een bepaald type heeft, dan wordt deze uit de vorige sectie genomen.
2. Het type header/voeter dat op de pagina wordt weergegeven wordt bestuurd door de "Different First Page" en "Different Odd & Even pages" sectieinstellingen en als ze uitgeschakeld zijn, worden de eigen titels van de sectie genegeerd.

Het volgende codevoorbeeld laat zien hoe 2 secties met verschillende headers te maken:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Als u de tekst van headers en voetteksten wilt verwijderen zonder te verwijderen [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) objecten in uw document, kunt u de [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) methode. Daarnaast kunt u de [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) methode om alle vormen uit headers en voetteksten in uw document te verwijderen.

Het volgende code voorbeeld laat zien hoe inhoud van alle headers en voetteksten in een sectie te wissen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Het volgende codevoorbeeld hoe alle vormen uit alle headers voetteksten in een sectie te verwijderen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Paginaeigenschappen aanpassen in een sectie

Voordat u een pagina of document afdrukt, kunt u de grootte en indeling van een enkele pagina of het hele document aanpassen en wijzigen. Met pagina-instellingen kunt u de instellingen van documentpagina's wijzigen, zoals marges, oriëntatie en grootte voor het afdrukken van verschillende eerste pagina's of oneven pagina's.

Aspose.Words kunt u pagina en sectie eigenschappen aanpassen met behulp van de [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) Klasse.

Het volgende voorbeeld van code laat zien hoe u eigenschappen zoals paginagrootte en oriëntatie voor de huidige sectie kunt instellen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Het volgende voorbeeld van code laat zien hoe de pagina eigenschappen in alle secties te wijzigen:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Zie ook

- [Logische Nodesniveaus in een document](/words/nl/java/logical-levels-of-nodes-in-a-document/)
- [Documenten gebruiken en gebruiken](/words/nl/java/insert-and-append-documents/)