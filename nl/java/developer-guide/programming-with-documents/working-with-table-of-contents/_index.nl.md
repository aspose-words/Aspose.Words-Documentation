---
title: Werken met Inhoudsopgave in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Inhoudsopgave
linktitle: Werken met Inhoudsopgave
description: "Inhoudsopgave veld in details. Aanmaken en wijzigen `TOC` veld gebruiken Java."
type: docs
weight: 170
url: /nl/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Vaak werk je met documenten die een inhoudsopgave bevatten (TOC). Gebruik Aspose.Words U kunt uw eigen inhoudsopgave invoegen of de bestaande inhoudsopgave volledig herbouwen met slechts enkele regels code.

Dit artikel beschrijft hoe te werken met de inhoudsopgave en toont:

- Hoe een gloednieuwe TOC in te voegen.
- Nieuwe of bestaande TOC's bijwerken in het document.
- Specificeer schakelaars om de opmaak en algemene structuur van de TOC te controleren.
- Hoe de stijlen en het uiterlijk van de inhoudsopgave te wijzigen.
- Hoe verwijder je een hele `TOC` veld samen met alle items uit het document.

## Inhoudsopgave programmatisch invoegen

U kunt een `TOC` (inhoudsopgave) veld in het document op de huidige positie door het aanroepen van de [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) methode.

Een inhoudsopgave in een Word-document kan op verschillende manieren worden gebouwd en geformatteerd met behulp van verschillende opties. Het veld schakelt dat u doorgeeft naar de methode bepaalt de manier waarop de tabel is gebouwd en weergegeven in uw document.

De standaard switches die gebruikt worden in een `TOC` ingevoegd in Microsoft Word zijn **"Oh, \o**. Beschrijvingen van deze switches evenals een lijst van ondersteunde switches kunt u later vinden in het artikel. U kunt deze handleiding gebruiken om de juiste schakelaars te verkrijgen of als u al een document met de soortgelijke `TOC` dat je veldcodes (*ALT+F9*) kunt tonen en de switches rechtstreeks vanuit het veld kunt kopiëren.

Het volgende voorbeeld van code laat zien hoe je een Inhoudsopgaveveld in een document invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Het volgende voorbeeld van code laat zien hoe je een inhoudstabel (TOC) in een document invoegt met behulp van kopstijlen als items:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

De code toont de nieuwe inhoudsopgave wordt ingevoegd in een leeg document. De [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) De klasse wordt vervolgens gebruikt om een aantal sample-inhoudsformaten in te voegen met de juiste stijlen van de rubriek die worden gebruikt om de inhoud te markeren die in de TOC moet worden opgenomen. De volgende lijnen vervolgens de `TOC` door het bijwerken van de velden en de pagina-indeling van het document.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Zonder de in het voorbeeld gebruikte methoden, wanneer u het uitvoerdocument opent, zou u de `TOC` veld, maar zonder zichtbare inhoud. Dit is omdat de `TOC` veld is ingevoegd maar is nog niet bevolkt totdat het is bijgewerkt in het document. Meer informatie hierover wordt in het volgende hoofdstuk besproken.

{{% /alert %}}

## Inhoudsopgave bijwerken

Aspose.Words kunt u een volledige update `TOC` met slechts een paar regels code. Dit kan worden gedaan om een nieuw ingevoegde `TOC` of een bestaande `TOC` na wijziging van het document.

De volgende twee methoden moeten worden gebruikt om de `TOC` velden in het document:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Houd er rekening mee dat deze twee updatemethoden in die volgorde moeten worden aangeroepen. Indien omgekeerd wordt de inhoudsopgave ingevuld, maar geen paginanummers worden weergegeven. Elk aantal verschillende TOC's kan worden bijgewerkt. Deze methoden zullen automatisch alle TOC's in het document bijwerken.

Het volgende voorbeeld van code laat zien hoe je volledig herbouwt `TOC` velden in het document door veldupdates aan te roepen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

De eerste oproep naar [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) zal de `TOC` alle tekstvermeldingen worden ingevuld en de `TOC` lijkt bijna compleet. Het enige wat ontbreekt is de pagina nummers die voor nu worden weergegeven met???.

De tweede oproep tot [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) zal de lay-out van het document in het geheugen. Dit moet worden gedaan om de paginanummers van de items te verzamelen. De juiste paginanummers berekend uit deze oproep worden dan ingevoegd in de TOC.

## Gebruik Schakelen naar Inhoudsopgavetabel

Zoals bij elk ander veld, de `TOC` veld kan switches accepteren die gedefinieerd zijn binnen de veldcode die bepaalt hoe de inhoudstabel gebouwd wordt. Bepaalde schakelaars worden gebruikt om te bepalen welke ingangen zijn opgenomen en op welk niveau terwijl anderen worden gebruikt om het uiterlijk van de TOC te controleren. Schakelaars kunnen worden gecombineerd om een complexe inhoudsopgave te kunnen produceren.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Standaard zijn deze schakelaars hierboven opgenomen bij het invoegen van een standaard `TOC` in het document. A `TOC` zonder switches bevat inhoud van de ingebouwde kopstijlen (alsof de \O switch is ingesteld).

De beschikbare `TOC` schakelaars die ondersteund worden door Aspose.Words worden hieronder vermeld en het gebruik ervan wordt in detail beschreven. Ze kunnen worden onderverdeeld in afzonderlijke secties op basis van hun type. De schakelaars in de eerste sectie bepalen welke inhoud in de `TOC` en de schakelaars in het tweede deel regelen het uiterlijk van de TOC.

Als een schakelaar hier niet wordt vermeld dan is deze momenteel niet ondersteund. Alle switches worden ondersteund in toekomstige versies. We voegen aan elke release verdere ondersteuning toe.

### Markeringsschakelaars

|  Wisselen | Omschrijving |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O Switch) * <br/> | <p>Deze switch definieert dat de `TOC` moeten worden ingebouwd van de ingebouwde koers stijlen. In Microsoft Word, Deze worden gedefinieerd in rubriek 1 9. In Aspose.Words deze stijlen worden vertegenwoordigd door de corresponderende StyleIdentifier opsomming. Deze opsomming vertegenwoordigt een lokale-onafhankelijke identificatie van een stijl, bijvoorbeeld, `StyleIdentifier.Heading1` vertegenwoordigt de rubriek 1 stijl. Met behulp hiervan kunnen de opmaak en eigenschappen van de stijl worden opgehaald uit de Style collectie van het document. De bijbehorende Style klasse kan worden opgehaald uit de `Document.Styles` verzameling door gebruik te maken van de geïndexeerde eigenschap van het type StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Alle inhoud die met deze stijlen is geformatteerd, is opgenomen in de inhoudsopgave. Het niveau van de rubriek bepaalt het overeenkomstige hiërarchische niveau van de vermelding in de TOC. Zo zal een paragraaf met de stijl van rubriek 1 worden behandeld als het eerste niveau in de `TOC` terwijl een paragraaf met rubriek 2 wordt behandeld als het volgende niveau in de hiërarchie enzovoort.</p>
 |
| **Outline Levels** <br/> *(\U switch) * <br/> | <p>Elke alinea kan in het kader van alineaopties een kaderniveau vaststellen.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Deze instelling bepaalt welk niveau deze paragraaf in de documenthiërarchie moet worden behandeld. Dit is een veelgebruikte praktijk die wordt gebruikt om gemakkelijk de lay-out van een document te structureren. Deze hiërarchie kan worden bekeken door over te schakelen naar Outline View in Microsoft Word. Vergelijkbaar met kopstijlen, kunnen er 1 Omtrekniveaus 1 `TOC` in het overeenkomstige niveau van de hiërarchie <br/>Elke inhoud met een omtrekniveau, hetzij in de alineastijl, hetzij rechtstreeks op de alinea zelf, is opgenomen in de TOC. In Aspose.Words het kaderniveau wordt vertegenwoordigd door de `ParagraphFormat.OutlineLevel` eigendom van de alinea node. Het schemaniveau van een alineastijl wordt op dezelfde wijze weergegeven door de `Style.ParagraphFormat` eigendom.</p>

<p>{{% alert color="primary" %}}</p>

<p>Merk op dat ingebouwde kopstijlen zoals rubriek 1 een omtrekniveau hebben dat verplicht is ingesteld in stijlinstellingen.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\T switch) * <br/> | <p>Deze switch zal het mogelijk maken aangepaste stijlen te gebruiken bij het verzamelen van items worden gebruikt in de TOC. Dit wordt vaak gebruikt in combinatie met de \O switch om aangepaste stijlen samen met ingebouwde kopstijlen in de TOC. <br/>De parameters van de schakelaar moeten binnen spraakmarkeringen worden ingesloten. Veel aangepaste stijlen kunnen worden opgenomen, voor elke stijl, de naam moet worden gespecificeerd gevolgd door een komma gevolgd door het niveau dat de stijl moet verschijnen in de `TOC` als. Andere stijlen worden ook gescheiden door een komma. <br/>Bijvoorbeeld</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>zal inhoud gestyled met CustomHeading1 gebruiken als niveau 1 inhoud in de `TOC` en CustomHeading2 als niveau 2.</p>
 |
| TC-velden gebruiken <br/> *(\F and \L switches) * <br/> | <p>In oudere versies van Microsoft Word, de enige manier om een `TOC` was het gebruik van TC velden. Deze velden worden verborgen in het document ingevoegd, zelfs wanneer veldcodes worden getoond. Zij bevatten de tekst die moet worden weergegeven in het item en de `TOC` is gebouwd van hen. Deze functionaliteit wordt nu niet vaak gebruikt, maar kan in sommige gevallen nog nuttig zijn om inzendingen in de `TOC` die niet zichtbaar zijn in het document. <br/>Wanneer ingevoegd deze velden verschijnen verborgen, zelfs wanneer veldcodes worden weergegeven. Ze kunnen niet worden gezien zonder verborgen inhoud te tonen. Om deze velden te zien De paragraafopmaak tonen moet worden geselecteerd.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Deze velden kunnen worden ingevoegd in een document op elke positie zoals elk ander veld en worden vertegenwoordigd door de `FieldType.FieldTOCEntry` Samenvatting.<br/>De \F schakelaar in a `TOC` wordt gebruikt om te specificeren dat TC-velden moeten worden gebruikt als vermeldingen. De schakelaar op zijn eigen zonder extra identificatie betekent dat elk TC-veld in het document zal worden opgenomen. Elke extra parameter, vaak een enkele letter, zal aangeven dat alleen TC velden die een bijpassende \f switch zullen worden opgenomen in de TOC. Bijvoorbeeld *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>omvat alleen TC-velden zoals</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>De `TOC` veld heeft ook een verwante switch, de</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>De `TC` velden zelf kunnen ook {several, `multiple`, a few, `many`, numerous} Wissels ingesteld. Dit zijn:</p>

<p>- \F *</p>

<p>Definieert welk niveau in de `TOC` dit TC veld zal verschijnen in. A `TOC` die deze zelfde switch gebruikt, zal alleen dit TC-veld bevatten als het binnen het opgegeven bereik valt.</p>

<p>- De nummering van deze pagina `TOC` item wordt niet getoond. Monstercode voor het invoegen van TC-velden vindt u in de volgende sectie.</p>
 |

### Verwante switches

|  Wisselen | Omschrijving |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N Switch) * | <p>Deze schakelaar wordt gebruikt om paginanummers voor bepaalde niveaus van de TOC te verbergen. Bijvoorbeeld, kunt u definiëren</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>en de paginanummers op de inzendingen van de niveaus 3 en 4 zullen worden verborgen samen met de leider punten (als er een zijn). Om slechts één niveau te specificeren moet een bereik nog steeds worden gebruikt, bijvoorbeeld, zal de paginanummers alleen voor het eerste niveau worden uitgesloten. <br/>Het leveren van geen niveau bereik zal paginanummers voor alle niveaus in de TOC weglaten. Dit is handig om in te stellen bij het exporteren van een document naar HTML of een vergelijkbaar formaat. Dit komt omdat HTML-gebaseerde formaten geen paginaconcept hebben en dus geen paginanummering nodig hebben.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Invoegen als hyperlinks <br/> *(\H Switch) * | <p>Deze switch specificeert dat `TOC` ingangen worden ingevoegd als hyperlinks. Bij het bekijken van een document in Microsoft Word deze vermeldingen zullen nog steeds verschijnen als normale tekst binnen de `TOC` maar zijn hyperlinks en dus kunnen worden gebruikt om te navigeren naar de positie van het oorspronkelijke item in het document met behulp van *Ctrl + Left Click* in Microsoft Word. Wanneer deze switch is opgenomen dan zijn deze links ook bewaard gebleven in andere formaten. Bijvoorbeeld, in HTML-gebaseerde formaten waaronder EPUB en weergegeven formaten zoals PDF en XPS, Deze zullen worden geëxporteerd als werklinks. <br/>Zonder deze schakelaar, de `TOC` in al deze outputs zal worden geëxporteerd als platte tekst en zal dit gedrag niet demonstreren. Als een document wordt geopend in MS Word zal de tekst van de items ook niet op deze manier te klikken zijn, maar de paginanummers kunnen nog steeds worden gebruikt om naar het oorspronkelijke item te navigeren.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P Switch) * <br/> | <p>Deze switch maakt het mogelijk om de inhoud die de titel van het item en de paginanummering scheidt gemakkelijk te wijzigen in de TOC. Het te gebruiken scheidingsteken moet na deze schakelaar worden gespecificeerd en in spraakmarkeringen worden ingesloten. <br/>In tegenstelling tot wat in Office documentatie is gedocumenteerd, kan slechts één karakter worden gebruikt in plaats van maximaal vijf. Dit geldt zowel voor MS Word als Aspose.Words. <br/>Het gebruik van deze schakelaar wordt niet aanbevolen omdat het niet veel controle over wat het gebruikt om te scheiden items en paginanummers in de TOC. In plaats daarvan wordt aanbevolen om de juiste `TOC` stijl zoals `StyleIdentifier.TOC1` en van daaruit de leider stijl bewerken met toegang tot specifieke lettertype leden etc. Meer details over hoe dit te doen vindt u later in het artikel.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W Switch) * | <p>Met behulp van deze switch zal aangeven dat alle items die een tabteken hebben, bijvoorbeeld, een kop die een tabblad aan het einde van de regel heeft, worden behouden als een juiste tabteken bij het vullen van de TOC. Dit betekent dat de functie van het tabteken aanwezig zal zijn in de `TOC` en kan worden gebruikt om het item te formatteren. Bijvoorbeeld, bepaalde items kunnen tab-stops en tab-tekens gebruiken om de tekst gelijkmatig te spatief te maken. Zolang de overeenkomstige `TOC` niveau definieert het equivalent tabblad stopt dan de gegenereerde `TOC` ingangen zullen verschijnen met een vergelijkbare afstand. <br/><br/>In dezelfde situatie als deze switch niet gedefinieerd was, dan zouden de tabtekens omgezet worden in witruimte equivalent als niet-functionele tabbladen. De output zou dan niet verschijnen zoals verwacht.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\X Switch) * <br/> | <p>Gelijkaardig aan de schakelaar hierboven, deze switch specificeert dat rubrieken die over meerdere lijnen (met behulp van nieuwe regel tekens, niet afzonderlijke alinea's) worden bewaard als ze zijn in de gegenereerde TOC. Bijvoorbeeld, een kop die zich over meerdere lijnen verspreidt kan het nieuwe regelteken gebruiken (Ctrl + Enter of `ControlChar.LineBreak`) om inhoud over verschillende lijnen te scheiden. Met deze schakelaar gespecificeerd, het item in de `TOC` zal deze nieuwe regel tekens behouden zoals hieronder getoond. <br/><br/>In deze situatie, als de schakelaar niet is gedefinieerd dan worden de nieuwe lijn tekens omgezet in een enkele witte ruimte.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## TC velden invoegen

U kunt een nieuw TC veld op de huidige positie van de `DocumentBuilder` door de `DocumentBuilder.InsertField` methode en het specificeren van de veldnaam als

Het volgende voorbeeld toont hoe een `TC` veld in het document met [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Vaak wordt een specifieke tekstregel voor de `TOC` en is gemarkeerd met een `TC` veld. De gemakkelijke manier om dit te doen in MS Word is om de tekst te markeren en te drukken op *ALT+SHIFT+O*. Dit maakt automatisch een `TC` veld met de geselecteerde tekst. Dezelfde techniek kan worden bereikt door middel van code. De onderstaande code vindt tekst die overeenkomt met de invoer en voegt een `TC` veld in dezelfde positie als de tekst. De code is gebaseerd op dezelfde techniek die in het artikel wordt gebruikt. De volgende code voorbeeld laat zien hoe u een `TC` veld bij de tekst in een document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Inhoudsopgave wijzigen

### De formattering van stijlen wijzigen

De opmaak van de vermeldingen in de `TOC` gebruikt niet de originele stijlen van de gemarkeerde vermeldingen, in plaats daarvan, elk niveau wordt geformatteerd met behulp van een equivalent `TOC` stijl. Bijvoorbeeld, het eerste niveau in de `TOC` is geformatteerd met de **TOC1** stijl, het tweede niveau geformatteerd met de **TOC2** Stijl enzovoort. Dit betekent dat het uiterlijk van de `TOC` deze stijlen moeten worden aangepast. In Aspose.Words deze stijlen worden vertegenwoordigd door de lokale-onafhankelijke `StyleIdentifier.TOC1` tot `StyleIdentifier.TOC9` en kan worden opgehaald uit de `Document.Styles` verzameling met behulp van deze identificatiemiddelen.

Zodra de juiste stijl van het document is opgehaald kan de opmaak voor deze stijl worden gewijzigd. Wijzigingen in deze stijlen worden automatisch weergegeven in de TOC's in het document.

Het volgende codevoorbeeld verandert een opmaakeigenschap die gebruikt wordt op het eerste niveau `TOC` stijl.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Het is ook nuttig erop te wijzen dat elke directe opmaak van een alinea (gedefinieerd op de alinea zelf en niet in de stijl) die in de `TOC` zal worden gekopieerd in de vermelding in de TOC. Bijvoorbeeld, als de rubriek 1 stijl wordt gebruikt om inhoud voor de `TOC` en deze stijl heeft Bold formatteren, terwijl de alinea heeft ook cursief formatteren direct toegepast. Het resultaat `TOC` invoer zal niet vet omdat dat deel uitmaakt van stijl formatteren, maar het zal cursief als dit direct wordt geformatteerd op de alinea.

U kunt ook de opmaak van de scheidingstekens tussen elk item en het paginanummer controleren. Standaard is dit een stippellijn die wordt verspreid over de pagina nummering met behulp van een tabteken en een rechter tabblad stop opgesteld dicht bij de rechter marge.

Gebruik van de `Style` klasse opgehaald voor de specifieke klasse `TOC` niveau dat u wilt wijzigen, kunt u ook wijzigen hoe deze verschijnen in het document.

Om eerst te veranderen hoe dit eruit ziet `Style.ParagraphFormat` moet worden aangeroepen om de paragraaf opmaak voor de stijl op te halen. Hieruit kunnen de tabs worden opgehaald door te bellen `ParagraphFormat.TabStops` en het desbetreffende tabblad wordt gewijzigd. Met behulp van dezelfde techniek kan het tabblad zelf worden verplaatst of verwijderd.

Het volgende voorbeeld van code laat zien hoe u de positie van het juiste tabblad kunt wijzigen `TOC` gerelateerde paragrafen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Een inhoudsopgave uit het document verwijderen

Een inhoudsopgave kan uit het document worden verwijderd door alle tussen de `FieldStart` en het veldeinde van de `TOC` veld.

De onderstaande code toont dit aan. Het verwijderen van de `TOC` veld is eenvoudiger dan een normaal veld omdat we niet bijhouden van geneste velden. In plaats daarvan controleren we de `FieldEnd` knooppunt is type `FieldType.FieldTOC` Wat betekent dat we het einde van de huidige TOC hebben meegemaakt. Deze techniek kan in dit geval worden gebruikt zonder zich zorgen te maken over geneste velden, omdat we kunnen aannemen dat een goed gevormd document niet volledig genest `TOC` veld binnen een ander `TOC` veld.

Ten eerste de `FieldStart` knooppunten van elk `TOC` worden verzameld en opgeslagen. De opgegeven `TOC` wordt dan opgesomd zodat alle knooppunten in het veld worden bezocht en opgeslagen. De knooppunten worden dan uit het document verwijderd. Het volgende voorbeeld van code laat zien hoe een opgegeven te verwijderen `TOC` van een document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Inhoudsopgave uitpakken

Als u een inhoudsopgave uit een Word-document wilt halen, kan de volgende codemonster worden gebruikt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
