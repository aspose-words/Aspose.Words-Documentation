---
title: Werken met Inhoudsopgave in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met Inhoudsopgave
linktitle: Werken met Inhoudsopgave
description: "Inhoudsopgave in details. Aanmaken en wijzigen `TOC` veld gebruiken C#. Invoegen `TOC` C#."
type: docs
weight: 170
url: /nl/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Vaak werk je met documenten die een inhoudsopgave bevatten (TOC). Gebruik Aspose.Words U kunt uw eigen inhoudsopgave invoegen of bestaande inhoudsopgave volledig herbouwen in het document met slechts een paar regels code. Dit artikel beschrijft hoe te werken met de inhoudsopgave en toont:

- Hoe een gloednieuwe invoegen `TOC`
- Nieuwe of bestaande TOC's bijwerken in het document.
- Specificeer schakelaars om de opmaak en de algemene structuur van de TOC te controleren.
- Hoe de stijlen en het uiterlijk van de inhoudsopgave te wijzigen.
- Hoe verwijder je een hele `TOC` veld samen met alle vermeldingen formulier het document.

## Inhoudsopgave programmatisch invoegen

U kunt een `TOC` (inhoudsopgave) veld in het document op de huidige positie door het aanroepen van de [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/) methode.

Een inhoudsopgave in een Word-document kan op een aantal manieren worden gebouwd en geformatteerd met behulp van een verscheidenheid aan opties. Het veld schakelt dat u doorgeeft aan de methode bepaalt de manier waarop de tabel is gebouwd en weergegeven in uw document.

De standaard switches die gebruikt worden in een `TOC` ingevoegd in Microsoft Word zijn **"Vertaling:**. Beschrijvingen van deze switches evenals een lijst van ondersteunde switches vindt u later in het artikel. U kunt deze handleiding gebruiken om de juiste switches te verkrijgen of als u al een document met de soortgelijke `TOC` dat u veldcodes (*ALT+F9*) kunt tonen en de switches rechtstreeks vanuit het veld kunt kopiëren.

Het volgende codevoorbeeld laat zien hoe je een Inhoudsopgaveveld in een document invoegt:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

Het volgende voorbeeld van code laat zien hoe je een Inhoudsopgave (TOC) in een document invoegt met behulp van kopstijlen als ingangen.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Zonder de in het voorbeeld gebruikte methoden, wanneer u het uitvoerdocument opent, zou u de `TOC` veld, maar zonder zichtbare inhoud. Dit komt omdat de `TOC` veld is ingevoegd maar is nog niet bevolkt totdat het is bijgewerkt in het document. Nadere informatie hierover wordt in de volgende paragraaf besproken.

{{% /alert %}}

## Inhoudsopgave bijwerken

Aspose.Words kunt u een volledige update `TOC` met slechts een paar regels code. Dit kan worden gedaan om een nieuw ingevoegde `TOC` of een bestaande `TOC` na wijziging van het document. De volgende twee methoden moeten worden gebruikt om de `TOC` velden in het document:

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

Houd er rekening mee dat deze twee update methoden nodig zijn om in die volgorde te worden opgeroepen. Indien omgekeerd wordt de inhoudsopgave ingevuld, maar geen paginanummers worden weergegeven. Elk aantal verschillende TOC's kan worden bijgewerkt. Deze methoden zullen automatisch alle TOC's in het document bijwerken.

Het volgende voorbeeld van code laat zien hoe je volledig kunt herbouwen `TOC` velden in het document door veldupdate aan te roepen:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

De eerste oproep aan **UpdateFields** zal de `TOC` alle tekstvermeldingen worden ingevuld en de `TOC` lijkt bijna compleet. Het enige wat ontbreekt is de pagina nummers die voor nu worden weergegeven met???. De tweede oproep tot **UpdatePageLayout** zal de lay-out van het document in het geheugen. Dit moet worden gedaan om de paginanummers van de items te verzamelen. De juiste paginanummers berekend op basis van deze oproep worden vervolgens ingevoegd in de TOC.

## Gebruik Schakelen naar Inhoudsopgavetabel Gedrag

Zoals bij elk ander veld, de `TOC` veld kan schakelaars accepteren die gedefinieerd zijn in de veldcode die bepalen hoe de inhoudstabel gebouwd wordt. Bepaalde schakelaars worden gebruikt om te bepalen welke ingangen zijn opgenomen en op welk niveau terwijl anderen worden gebruikt om het uiterlijk van de TOC te controleren. Schakelaars kunnen worden gecombineerd zodat complexe inhoudsopgave kan worden geproduceerd.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Standaard zijn deze schakelaars hierboven opgenomen bij het invoegen van een standaard `TOC` in het document. A `TOC` zonder switches bevat inhoud van de ingebouwde kopstijlen (alsof de \O switch is ingesteld). De beschikbare `TOC` schakelaars die ondersteund worden door Aspose.Words worden hieronder vermeld en het gebruik ervan wordt in detail beschreven. Ze kunnen worden onderverdeeld in afzonderlijke secties gebaseerd op hun type. De schakelaars in de eerste sectie bepalen welke inhoud in de `TOC` en de schakelaars in het tweede deel regelen het uiterlijk van de TOC. Als een switch hier niet wordt vermeld dan is het momenteel niet ondersteund. Alle switches worden ondersteund in toekomstige versies. We voegen bij elke release verdere ondersteuning toe.

### Markeringsschakelaars

|  Omschakelen | Omschrijving |
|  :-  |  :-  |
| **Heading Styles** <br/>*(\O Switch) * | <p>Deze switch definieert dat de `TOC` moet worden gebouwd van de ingebouwde koers stijlen. In Microsoft Word Deze worden gedefinieerd in rubriek 1. 9. In Aspose.Words deze stijlen worden vertegenwoordigd door de bijbehorende StyleIdentifier opsomming. Deze opsomming vertegenwoordigt een lokale onafhankelijke identificatie van een stijl, bijvoorbeeld `StyleIdentifier.Heading1` vertegenwoordigt de rubriek 1 stijl. Met behulp hiervan kunnen de opmaak en eigenschappen van de stijl worden opgehaald uit de Style collectie van het document. De bijbehorende Style klasse kan worden opgehaald uit de `Document.Styles` verzameling door gebruik te maken van de geïndexeerde eigenschap van het type StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Alle inhoud die met deze stijlen is geformatteerd, is opgenomen in de inhoudsopgave. Het niveau van de rubriek bepaalt het overeenkomstige hiërarchische niveau van de vermelding in het TOC. Zo zal een paragraaf met de stijl van rubriek 1 worden behandeld als het eerste niveau in de `TOC` terwijl een paragraaf met rubriek 2 wordt behandeld als het volgende niveau in de hiërarchie enzovoort.</p>
 |
| **Outline Levels** <br/>*(\U switch) * | <p>Elke alinea kan een kaderniveau vaststellen in het kader van alineaopties.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Deze instelling bepaalt welk niveau deze paragraaf in documenthiërarchie moet worden behandeld. Dit wordt vaak gebruikt om de indeling van een document gemakkelijk te structureren. Deze hiërarchie kan worden bekeken door over te schakelen naar Outline View in Microsoft Word. Vergelijkbaar met kopstijlen, kunnen er 1 Omtrekniveaus 1 `TOC` in het overeenkomstige niveau van de hiërarchie <br/>Elke inhoud met een omtrekniveau, hetzij in de alineastijl, hetzij rechtstreeks op de alinea zelf, is opgenomen in de TOC. In Aspose.Words het kaderniveau wordt vertegenwoordigd door de `ParagraphFormat.OutlineLevel` eigendom van de paragraaf node. Het schemaniveau van een alinea-stijl wordt op dezelfde wijze weergegeven door de `Style.ParagraphFormat` eigendom.</p>

<p>{{% alert color="primary" %}}</p>

<p>Merk op dat ingebouwde kopstijlen zoals rubriek 1 een omtrekniveau hebben dat verplicht is ingesteld in stijlinstellingen.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/>*(\T switch) * | <p>Deze switch zal het mogelijk maken aangepaste stijlen te gebruiken bij het verzamelen van items worden gebruikt in de TOC. Dit wordt vaak gebruikt in combinatie met de \O switch om aangepaste stijlen samen met ingebouwde kopstijlen in de TOC. <br/>De parameters van de schakelaar moeten binnen spraaksporen worden ingesloten. Veel aangepaste stijlen kunnen worden opgenomen, voor elke stijl de naam moet worden gespecificeerd gevolgd door een komma gevolgd door het niveau dat de stijl moet verschijnen in de `TOC` als. Andere stijlen worden ook gescheiden door een komma. <br/>Bijvoorbeeld</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>zal inhoud gestyled met CustomHeading1 gebruiken als niveau 1 inhoud in de `TOC` en CustomHeading2 als niveau 2.</p>
 |
| **Use TC Fields** <br/>*(\F en \L switches) * | <p>In oudere versies van Microsoft Word, de enige manier om een `TOC` was het gebruik van TC velden. Deze velden worden verborgen in het document geplaatst, zelfs wanneer veldcodes worden getoond. Zij bevatten de tekst die moet worden weergegeven in de vermelding en de `TOC` is gebouwd van hen. Deze functionaliteit wordt nu niet vaak gebruikt, maar kan in sommige gevallen nog nuttig zijn om inzendingen in de `TOC` die niet zichtbaar zijn in het document. <br/>Wanneer ingevoegd deze velden verschijnen verborgen zelfs wanneer veldcodes worden weergegeven. Ze kunnen niet worden gezien zonder verborgen inhoud te tonen. Om deze velden te zien De paragraafopmaak tonen moet worden geselecteerd.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p>Deze velden kunnen worden ingevoegd in een document op elke positie zoals elke andere veld en worden vertegenwoordigd door de `FieldType.FieldTOCEntry` Lijst. <br/>De \F schakelaar in a `TOC` wordt gebruikt om te specificeren dat TC-velden moeten worden gebruikt als vermeldingen. De schakelaar zonder extra identificatie betekent dat elk TC-veld in het document zal worden opgenomen. Elke extra parameter, vaak een enkele letter, zal aangeven dat alleen TC-velden met een matching \f switch in de TOC zullen worden opgenomen. Bijvoorbeeld *<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>bevat alleen TC-velden zoals</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>De `TOC` veld heeft ook een verwante switch, de</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>De `TC` velden zelf kunnen ook {several, `multiple`, a few, `many`, numerous} Wissels ingesteld. Dit zijn:</p>

<p>- Verklaart hierboven. *</p>

<p>Definieert welk niveau in de `TOC` dit TC veld zal verschijnen in. A `TOC` die deze zelfde switch gebruikt, zal alleen dit TC-veld bevatten als het binnen het opgegeven bereik valt. *</p>

<p>- De nummering van deze pagina `TOC` item wordt niet getoond. Monstercode voor het invoegen van TC-velden vindt u in de volgende sectie.</p>
 |

### Verwante switches

|  Omschakelen | Omschrijving |
|  :-  |  :-  |
| **Omit Page Numbers** <br/>*(\N Switch) * | <p>Deze schakelaar wordt gebruikt om paginanummers voor bepaalde niveaus van de TOC te verbergen. Bijvoorbeeld kunt u definiëren</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>en de paginanummers op de inzendingen van de levels 3 en 4 zullen samen met de leader dots (indien aanwezig) worden verborgen. Om slechts één niveau te specificeren dient een bereik nog steeds te worden gebruikt, bijvoorbeeld <br/>Het leveren van geen niveau bereik zal paginanummers voor alle niveaus in de TOC weglaten. Dit is handig om in te stellen bij het exporteren van een document naar HTML of een soortgelijk formaat. Dit komt omdat HTML-gebaseerde formaten geen paginaconcept hebben en dus geen paginanummering nodig hebben.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p>
 |
| **Insert As Hyperlinks** <br/>*(\H Switch) * | <p>Deze switch specificeert dat `TOC` Ingangen worden ingevoegd als hyperlinks. Bij het bekijken van een document in Microsoft Word deze vermeldingen zullen nog steeds verschijnen als normale tekst binnen de `TOC` maar zijn hyperlinked en dus kan worden gebruikt om te navigeren naar de positie van het oorspronkelijke item in het document met behulp van *Ctrl + Left Click* in Microsoft Word. Wanneer deze switch is opgenomen dan zijn deze links ook bewaard gebleven in andere formaten. Bijvoorbeeld in HTML-gebaseerde formaten waaronder EPUB en weergegeven formaten zoals PDF en XPS Deze zullen worden geëxporteerd als werklinks. <br/>Zonder deze schakelaar set de `TOC` in al deze outputs zal worden geëxporteerd als platte tekst en zal dit gedrag niet demonstreren. Als een document wordt geopend in MS Word zal de tekst van de items ook niet op deze manier te klikken, maar de paginanummers kunnen nog steeds worden gebruikt om te navigeren naar het oorspronkelijke item.</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p>
 |
| **Set Separator Character** <br/>*(\P Switch) * | <p>Deze switch maakt het mogelijk om de inhoud van de titel van het item en paginanummering gemakkelijk te wijzigen in de TOC. Het te gebruiken scheidingsteken moet na deze schakelaar worden gespecificeerd en in spraakmarkeringen worden ingesloten. <br/>In tegenstelling tot wat in Office-documentatie is gedocumenteerd, kan slechts één karakter worden gebruikt in plaats van maximaal vijf. Dit geldt zowel voor MS Word als Aspose.Words. <br/>Het gebruik van deze switch is niet aanbevolen omdat het niet veel controle over wat het gebruikt om te scheiden items en paginanummers in de TOC. In plaats daarvan wordt aanbevolen om de juiste `TOC` stijl zoals `StyleIdentifier.TOC1` en van daaruit de leider stijl bewerken met toegang tot specifieke lettertype leden etc. Meer details over hoe dit te doen vindt u later in het artikel.</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p>
 |
| **Preserve Tab Entries** <br/>*(\W switch) * | <p>Met behulp van deze switch zal aangeven dat alle items die een tabteken hebben, bijvoorbeeld een kop die een tabblad aan het einde van de regel heeft, worden behouden als een juiste tabteken bij het vullen van de TOC. Dit betekent dat de functie van het tabteken aanwezig zal zijn in de `TOC` en kan worden gebruikt om het item te formatteren. Bijvoorbeeld bepaalde items kunnen tab-stops en tab-tekens gebruiken om de tekst gelijkmatig te spatief te maken. Zolang de overeenkomstige `TOC` niveau definieert het equivalent tabblad stopt dan de gegenereerde `TOC` ingangen zullen verschijnen met dezelfde afstand. <br/><br/>In dezelfde situatie als deze switch niet werd gedefinieerd dan zouden de tabtekens worden omgezet in witte ruimte equivalent als niet-functionele tabbladen. De output zou dan niet verschijnen zoals verwacht.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p>
 |
| **Preserve New Line Entries** <br/>*(\X Switch) * | <p>Gelijkaardig aan de schakelaar hierboven, deze switch specificeert dat rubrieken over meerdere lijnen (met behulp van nieuwe regeltekens niet gescheiden alinea's) worden bewaard zoals ze zijn in de gegenereerde TOC. Bijvoorbeeld, een kop die zich over meerdere lijnen verspreidt kan het nieuwe lijnteken gebruiken (Ctrl + Enter of `ControlChar.LineBreak`) om inhoud over verschillende lijnen te scheiden. Met deze schakelaar gespecificeerd, het item in de `TOC` zal deze nieuwe regel tekens behouden zoals hieronder getoond. <br/><br/>In deze situatie als de switch niet wordt gedefinieerd dan worden de nieuwe regeltekens omgezet in een enkele witte ruimte.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p>
 |

## TC velden invoegen

U kunt een nieuw TC veld op de huidige positie van de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) door de [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) methode en het specificeren van de veldnaam als

Het volgende voorbeeld toont hoe een `TC` veld in het document met **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

Vaak is een specifieke regel van de tekst voor de `TOC` en is gemarkeerd met een `TC` veld. De gemakkelijke manier om dit te doen in Microsoft Word is om de tekst te markeren en op *ALT+SHIFT+O* te drukken. Dit maakt automatisch een `TC` veld met de geselecteerde tekst. Dezelfde techniek kan worden bereikt door middel van code. De onderstaande code vindt tekst die overeenkomt met de invoer en voegt een `TC` veld in dezelfde positie met de tekst. De code is gebaseerd op dezelfde techniek die in het artikel wordt gebruikt.

Het volgende voorbeeld van code laat zien hoe je een `TC` veld bij tekst in een document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Inhoudsopgave wijzigen

De opmaak van de inzendingen in de `TOC` gebruik niet de originele stijlen van de gemarkeerde items, in plaats daarvan wordt elk niveau geformatteerd met behulp van een equivalent `TOC` stijl. Bijvoorbeeld het eerste niveau in de `TOC` is geformatteerd met de **TOC1** stijl, het tweede niveau geformatteerd met de **TOC2** stijl enzovoort. Dit betekent dat het uiterlijk van de `TOC` deze stijlen moeten gewijzigd worden. In Aspose.Words deze stijlen worden vertegenwoordigd door de lokale onafhankelijke `StyleIdentifier.TOC1` tot `StyleIdentifier.TOC9` en kan worden opgehaald uit de [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) verzameling met behulp van deze identificatiemiddelen.

Zodra de juiste stijl van het document is opgehaald kan de opmaak voor deze stijl worden gewijzigd. Wijzigingen in deze stijlen zullen automatisch worden weergegeven op de TOC's in het document.

Het volgende codevoorbeeld verandert een opmaakeigenschap gebruikt in het eerste niveau `TOC` stijl:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Het is ook nuttig op te merken dat elke directe opmaak van een alinea (gedefinieerd op de alinea zelf en niet in de stijl) gemarkeerd om de `TOC` zal worden gekopieerd in de vermelding in de TOC. Bijvoorbeeld als de rubriek 1 stijl wordt gebruikt om inhoud te markeren voor de `TOC` en deze stijl heeft Bold formattering, terwijl de alinea heeft ook cursief formatteren direct toegepast. Het resultaat `TOC` invoer zal niet vet omdat dat deel uitmaakt van stijl formatteren, maar het zal cursief als dit direct is geformatteerd op de alinea.

U kunt ook de opmaak van de scheidingstekens tussen elk item en paginanummer controleren. Standaard is dit een stippellijn die wordt verspreid over de pagina nummering met behulp van een tabteken en een rechter tabblad stop opgesteld dicht bij de rechter marge.

Gebruik van de [Style](https://reference.aspose.com/words/net/aspose.words/style/) klasse opgehaald voor de specifieke `TOC` niveau dat u wilt wijzigen, kunt u ook wijzigen hoe deze verschijnen in het document. Om eerst te veranderen hoe dit eruit ziet [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) moet worden aangeroepen om de paragraaf opmaak voor de stijl op te halen. Hieruit kunnen de tabs worden opgehaald door te bellen [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) en het desbetreffende tabblad wordt gewijzigd. Met behulp van dezelfde techniek kan het tabblad zelf worden verplaatst of verwijderd allemaal samen.

Het volgende voorbeeld van code laat zien hoe u de positie van het juiste tabblad kunt wijzigen `TOC` gerelateerde alinea's:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Inhoudsopgave uit het document verwijderen

Een inhoudsopgave kan uit het document worden verwijderd door alle tussen de `FieldStart` en het veldeinde van het `TOC` veld. De onderstaande code toont dit aan. Het verwijderen van de `TOC` veld is eenvoudiger dan een normaal veld omdat we niet bijhouden van geneste velden. In plaats daarvan controleren we de [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) knooppunt is type [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) Wat betekent dat we het einde van de huidige TOC hebben meegemaakt. Deze techniek kan in dit geval worden gebruikt zonder zorgen te maken over geneste velden, omdat we kunnen aannemen dat een goed gevormd document niet volledig genest `TOC` veld in een ander `TOC` veld.

Ten eerste de [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) knooppunten van elk `TOC` worden verzameld en opgeslagen. De opgegeven `TOC` wordt dan opgesomd zodat alle knooppunten in het veld worden bezocht en opgeslagen. De knooppunten worden dan uit het document verwijderd.

Het volgende codevoorbeeld laat zien hoe een opgegeven te verwijderen `TOC` uit een document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Inhoudsopgave uitpakken

Als u een inhoudsopgave uit een Word-document wilt halen, kan de volgende codemonster worden gebruikt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
