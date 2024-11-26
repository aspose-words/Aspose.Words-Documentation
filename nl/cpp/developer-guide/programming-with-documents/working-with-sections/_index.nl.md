---
title: Werken met secties in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met secties
linktitle: Werken met secties
description: "Concepten van documentsecties en manipulatiepraktijken begrijpen met behulp van C++. Sectie invoegen in een document C++. Verwijder sectie C++. Kopieer secties tussen documenten."
type: docs
weight: 120
url: /nl/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Soms wilt u een document dat niet op alle pagina ' s dezelfde opmaak heeft. U moet bijvoorbeeld de indeling voor paginanummers wijzigen, een andere paginagrootte en afdrukstand hebben of de eerste documentpagina als voorblad hebben zonder nummering. Dat kan met secties.

Secties zijn niveauknooppunten die kop-en voetteksten, oriëntatie, kolommen, marges, paginanummeropmaak en andere beheren.

Met Aspose.Words kunt u secties beheren, een document in secties verdelen en opmaakwijzigingen aanbrengen die alleen van toepassing zijn op een specifieke sectie. Aspose.Words slaat informatie op over sectieopmaak, zoals kop-en voetteksten, pagina-instellingen en kolominstellingen in het sectieeinde.

In dit artikel wordt uitgelegd hoe u met secties en sectie-einden werkt.

## Welke sectie en sectie Break Is

Documentsecties worden weergegeven door de klassen [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) en [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Sectieobjecten zijn directe kinderen van de [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) knoop en kunnen worden benaderd via de [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) eigenschap. U kunt deze knooppunten beheren met behulp van een aantal methoden zoals [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), en anderen.

Section break is een optie die documentpagina ' s verdeelt in secties met aanpasbare lay-outs.

## Typen van een Sectieonderbreking

Met Aspose.Words kunt u documenten splitsen en opmaken met behulp van verschillende sectie-einden van de [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/) - opsomming:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

U kunt de [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) - opsomming ook gebruiken om een onderbrekingstype te kiezen dat alleen van toepassing is op de eerste sectie, zoals NewColumn, NewPage, EvenPage, en OddPage.

## Een sectie beheren

Aangezien een sectie een normale samengestelde knoop is, kan de gehele knoopmanipulatie API worden gebruikt om secties te manipuleren: om secties toe te voegen, te verwijderen en andere bewerkingen op secties. Lees meer over nodes in het artikel [Aspose.Words Document Object Model (DOM)](/words/cpp/aspose-words-document-object-model/).

Aan de andere kant kunt u ook `DocumentBuilder` API gebruiken om met secties te werken. In dit artikel zullen we ons richten op deze specifieke manier van werken met secties.

## Een sectie-einde invoegen of verwijderen

Met Aspose.Words kunt u een sectie-inbrek in tekst invoegen met behulp van de methode [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

Het volgende codevoorbeeld laat zien hoe u een sectieonderdeel in een document invoegt:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Gebruik de methode [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) om een sectie-einde te verwijderen. Als u geen specifieke sectie-einde hoeft te verwijderen en in plaats daarvan de inhoud van die sectie verwijdert, kunt u de methode [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/) gebruiken.

Het volgende codevoorbeeld laat zien hoe secties te verwijderen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Merk op dat een sectie-einde informatie bevat over de sectie die ervoor gaat, niet de sectie die erna gaat. Dus als u een sectie-einde verwijdert, krijgt de tekst vóór het verwijderde einde de eigenschappen van het sectie-einde dat erop volgt. Dit kan ertoe leiden dat het hele document landschap wordt of dat kop-en voetteksten veranderen of volledig verdwijnen.

{{% /alert %}}

## Een sectie verplaatsen

Als u een sectie van de ene positie naar de andere in uw document wilt verplaatsen, moet u de index van die sectie opvragen. Aspose.Words geeft je de mogelijkheid om een sectiepositie te krijgen van een [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). U kunt de eigenschap [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) gebruiken om alle secties in uw document op te halen. Maar als u alleen de eerste sectie wilt ophalen, kunt u de eigenschap [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) gebruiken.

Het volgende codevoorbeeld toont hoe toegang te krijgen tot de eerste sectie en te herhalen door de kinderen van een samengestelde knoop:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Een sectie-indeling opgeven

Soms wilt u dat uw document er beter uitziet door creatieve lay-outs te maken voor verschillende documentsecties. Als u het type van het huidige sectieraster wilt opgeven, kunt u een sectielay-outmodus kiezen met behulp van de [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/) - opsomming:

- Standaard
- Raster
- LineGrid
- SnapToChars

Het volgende codevoorbeeld laat zien hoe u het aantal regels dat elke pagina kan hebben, kunt beperken:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Een sectie bewerken

Wanneer u een nieuwe sectie aan uw document toevoegt, is er geen hoofdtekst of alinea die u kunt bewerken. Met Aspose.Words kunt u garanderen dat een sectie een hoofdtekst bevat met ten minste één alinea met behulp van de methode [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – Het voegt automatisch een hoofdtekst (of HeaderFooter) knooppunt toe aan het document en voegt er vervolgens een alinea aan toe.

Het volgende codevoorbeeld laat zien hoe u een nieuw sectieknooppunt voorbereidt met **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Inhoud toevoegen of vooraf toevoegen

Als u een vorm wilt tekenen of tekst of afbeelding wilt toevoegen aan het begin/einde van een sectie, kunt u de methoden [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) en [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) van de klasse [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) gebruiken.

Het volgende codevoorbeeld laat zien hoe u inhoud van een bestaande sectie toevoegt:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Een sectie klonen

Met Aspose.Words kunt u een sectie dupliceren door een volledige kopie ervan te maken met de methode [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

Het volgende codevoorbeeld laat zien hoe u de eerste sectie in uw document kunt klonen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Secties tussen documenten kopiëren

In sommige gevallen hebt u grote documenten met veel secties en wilt u de inhoud van een sectie van het ene document naar het andere kopiëren.

Met Aspose.Words kunt u secties tussen documenten kopiëren met de methode [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

Het volgende codevoorbeeld laat zien hoe secties tussen documenten kunnen worden gekopieerd:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Werken met sectiekop en voettekst

De basisregels voor het weergeven van een kop-of voettekst voor elke sectie zijn vrij eenvoudig:

1. Als de sectie geen eigen kop - /voetteksten van een bepaald type heeft, wordt deze overgenomen uit de vorige sectie.
2. Het type kop - / voettekst dat op de pagina wordt weergegeven, wordt beheerd door de sectie – Instellingen "verschillende eerste pagina" en "verschillende Oneven en Even pagina 's" - als deze zijn uitgeschakeld, worden de eigen titels van de sectie genegeerd.

Het volgende codevoorbeeld laat zien hoe u 2 secties met verschillende headers kunt maken:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Als u de tekst van kop-en voetteksten wilt verwijderen zonder [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) - objecten in uw document te verwijderen, kunt u de methode [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/) gebruiken. Bovendien kunt u de methode [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) gebruiken om alle vormen uit kop-en voetteksten in uw document te verwijderen.

Het volgende codevoorbeeld laat zien hoe u de inhoud van alle kop-en voetteksten in een sectie kunt wissen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Het volgende codevoorbeeld alle vormen verwijderen uit alle voetteksten van kopteksten in een sectie:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Pagina-eigenschappen aanpassen in een sectie

Voordat u een pagina of document afdrukt, wilt u misschien de grootte en lay-out van een enkele pagina of het hele document aanpassen en wijzigen. Met Pagina-instelling kunt u de instellingen van documentpagina 's wijzigen, zoals marges, oriëntatie en grootte voor het afdrukken van verschillende eerste pagina' s of oneven pagina ' s.

Met Aspose.Words kunt u pagina-en sectie-eigenschappen aanpassen met behulp van de [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) - Klasse.

Het volgende codevoorbeeld laat zien hoe u eigenschappen zoals paginagrootte en oriëntatie voor de huidige sectie instelt:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Het volgende codevoorbeeld laat zien hoe u de pagina-Eigenschappen in alle secties kunt wijzigen:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Zie Ook

- [Logische niveaus van knooppunten in een Document](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Documenten invoegen en toevoegen](/words/cpp/insert-and-append-documents/)
