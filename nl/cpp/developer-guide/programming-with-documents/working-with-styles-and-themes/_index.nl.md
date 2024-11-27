---
title: Werken met stijlen in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Styles
linktitle: Werken met Styles
description: "Verbeterde Microsoft Word opmaakfuncties, werken met stijlen en thema ' s met behulp van C++."
type: docs
weight: 110
url: /nl/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

De klasse [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) wordt gebruikt om ingebouwde instellingen te beheren en door de gebruiker gedefinieerde instellingen toe te passen op stijlen.

## Hoe inhoud te extraheren op basis van stijlen

Op een eenvoudig niveau kan het ophalen van de inhoud op basis van stijlen uit een Word - document nuttig zijn om alinea ' s en tekstreeksen die zijn opgemaakt met een specifieke stijl te identificeren, op te sommen en te tellen. U moet bijvoorbeeld bepaalde soorten inhoud in het document identificeren, zoals voorbeelden, titels, referenties, trefwoorden, figuurnamen en casestudy ' s.

Om dit een paar stappen verder te brengen, kan dit ook worden gebruikt om de structuur van het document, gedefinieerd door de stijlen die het gebruikt, te gebruiken om het document opnieuw te gebruiken voor een andere output, zoals HTML. Dit is in feite hoe de Aspose-documentatie wordt gebouwd, waarbij Aspose.Words op de proef wordt gesteld. Een tool gebouwd met behulp van Aspose.Words neemt de bron Word documenten en splitst ze in onderwerpen op bepaalde kopniveaus. Een XML bestand wordt geproduceerd met behulp van Aspose.Words die wordt gebruikt om de navigatiestructuur te bouwen die u aan de linkerkant kunt zien. En dan zet Aspose.Words elk onderwerp om in HTML.

De oplossing voor het ophalen van tekst die is opgemaakt met specifieke stijlen in een Word - document is doorgaans Economisch en eenvoudig met behulp van Aspose.Words.

### Oplossing

Laten we een voorbeeld bekijken om te illustreren hoe gemakkelijk Aspose.Words omgaat met het ophalen van inhoud op basis van stijlen. In dit voorbeeld gaan we tekst ophalen die is opgemaakt met een specifieke alineastijl en een tekenstijl uit een voorbeeld Word - document. Op hoog niveau zal dit:
- Een Word document openen met de `Document` Klasse.
- Verzamel alle alinea ' s en alle runs in het document.
- Selecteer alleen de vereiste alinea ' s en runs. In het bijzonder halen we tekst op met de 'Heading 1' alineastijl en de 'Intense Emphasis' tekenstijl uit dit voorbeeld Word document.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


In dit voorbeelddocument is de tekst die is opgemaakt met de alineastijl 'Heading 1' 'tabblad Invoegen', 'Snelle stijlen' en 'thema', en de tekst die is opgemaakt met de tekenstijl 'Intense emphasis' bestaat uit de verschillende gevallen van blauwe, cursieve, vetgedrukte tekst zoals 'galerijen' en 'algehele look'.

### Code

De implementatie van een op stijl gebaseerde query is vrij eenvoudig in het Aspose.Words document object model, omdat het gewoon tools gebruikt die al aanwezig zijn. Voor deze oplossing zijn twee klassenmethoden geïmplementeerd:# **ParagraphsByStyleName** – deze methode haalt een reeks van die alinea ' s in het document op met een specifieke stijlnaam.# **RunsByStyleName** - Deze methode haalt een array op van de runs in het document met een specifieke stijlnaam. Beide methoden zijn zeer vergelijkbaar, de enige verschillen zijn de knooptypen en de weergave van de stijlinformatie binnen de alinea-en run-knooppunten. Hier is een implementatie van ParagraphsByStyleName. Hieronder vindt u alle alinea ' s die zijn opgemaakt met de opgegeven stijl.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Deze implementatie maakt ook gebruik van de `Document.GetChildNodes` methode van de `Document` klasse, die een verzameling van alle knooppunten met het opgegeven type retourneert, die in dit geval in alle alinea ' s.

Merk op dat de tweede parameter van de methode **Document.GetChildNodes** is ingesteld op true. Dit dwingt de **Document.GetChildNodes** methode om recursief te selecteren uit alle kindknooppunten, in plaats van alleen de directe kinderen te selecteren.

{{% /alert %}}

Het is ook de moeite waard erop te wijzen dat de verzameling alinea 's geen directe overhead creëert, omdat alinea' s alleen in deze verzameling worden geladen wanneer u items in deze verzameling opent. Vervolgens hoeft u alleen maar de verzameling te doorlopen, de standaard voor elke operator te gebruiken en alinea ' s met de opgegeven stijl toe te voegen aan de paragraphsWithStyle array. De `Paragraph` stijlnaam is te vinden in de stijl. Naam eigenschap van het `Paragraph.ParagraphFormat` object. De implementatie van RunsByStyleName is bijna hetzelfde, hoewel we natuurlijk `NodeType.Run` gebruiken om run nodes op te halen. De eigenschap `Font.Style` van een `Run` object wordt gebruikt om toegang te krijgen tot stijlinformatie in de **Run** knooppunten. Het voorbeeld below code Zoek alle runs die zijn geformatteerd met de opgegeven stijl.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Wanneer beide query 's zijn geïmplementeerd, hoeft u alleen maar een documentobject door te geven en de stijlnamen op te geven van de inhoud die u wilt ophalen: onder voorbeeld query' s uitvoeren en resultaten weergeven. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Eindresultaat

Wanneer alles klaar is, zal het uitvoeren van het monster de volgende output weergeven:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Zoals u kunt zien, is dit een heel eenvoudig voorbeeld, met het aantal en de tekst van de verzamelde alinea ' s en loopt in het voorbeeld Word document.

## Hoe invoegen en werken met het veld inhoudsopgave

Vaak werkt u met documenten met een Inhoudsopgave (TOC). Met behulp van Aspose.Words kunt u uw eigen inhoudsopgave invoegen of de bestaande inhoudsopgave volledig opnieuw opbouwen in het document met slechts een paar regels code. In dit artikel wordt beschreven hoe u met het veld inhoudsopgave kunt werken en wordt:

- Een gloednieuwe `TOC` invoegen
- Update nieuwe of bestaande TOCs in het document.
- Geef schakelaars op om de opmaak en algemene structuur van TOC te regelen.
- Hoe de stijlen en het uiterlijk van de inhoudsopgave te wijzigen.
- Een volledig `TOC` - veld verwijderen, samen met alle vermeldingen uit het document.

### TC Velden Invoegen

Vaak wordt een specifieke regel tekst aangeduid voor de `TOC` en wordt gemarkeerd met een `TC` veld. De eenvoudige manier om dit te doen in MS Word is om de tekst te markeren en op *ALT+SHIFT+O* te drukken. Dit maakt automatisch een `TC` veld aan met behulp van de geselecteerde tekst. Dezelfde techniek kan worden bereikt door middel van code. De onderstaande code zal tekst vinden die overeenkomt met de invoer en een `TC` veld invoegen in dezelfde positie als de tekst. De code is gebaseerd op dezelfde techniek die in het artikel wordt gebruikt. Onderstaand voorbeeld laat zien hoe u een `TC` veld kunt vinden en invoegen bij de tekst in een document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Een inhoudsopgave wijzigen

#### De opmaak van stijlen wijzigen

De opmaak van items in de `TOC` gebruikt niet de originele stijlen van de gemarkeerde items, in plaats daarvan wordt elk niveau geformatteerd met een gelijkwaardige `TOC` stijl. Bijvoorbeeld, het eerste niveau in de `TOC` is opgemaakt met de **TOC1** stijl, het tweede niveau opgemaakt met de **TOC2** stijl enzovoort. Dit betekent dat om het uiterlijk van de `TOC` te veranderen deze stijlen moeten worden gewijzigd. In Aspose.Words worden deze stijlen weergegeven door de lokale onafhankelijke `StyleIdentifier.TOC1` tot en met `StyleIdentifier.TOC9` en kunnen worden opgehaald uit de `Document.Styles` collectie met behulp van deze identificatoren. Zodra de juiste stijl van het document is opgehaald, kan de opmaak voor deze stijl worden gewijzigd. Eventuele wijzigingen in deze stijlen worden automatisch weergegeven op de TOCs in het document. Het voorbeeld below code wijzigt een opmaakeigenschap die wordt gebruikt in de stijl van het eerste niveau `TOC`.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Het is ook nuttig om op te merken dat elke directe opmaak van een alinea (gedefinieerd op de alinea zelf en niet in de stijl) die is gemarkeerd om de `TOC` op te nemen, zal worden gekopieerd in de vermelding in de TOC. Bijvoorbeeld als de stijl Heading 1 wordt gebruikt om inhoud voor de `TOC` te markeren en deze stijl heeft vetgedrukte opmaak, terwijl de alinea ook cursieve opmaak heeft die er rechtstreeks op is toegepast. Het resulterende `TOC` - item zal niet vet zijn omdat dat deel uitmaakt van de stijlopmaak, maar het zal cursief zijn omdat dit rechtstreeks op de alinea is geformatteerd. U kunt ook de opmaak van de scheidingstekens tussen elk item en het paginanummer bepalen. Standaard is dit een stippellijn die wordt verspreid over de paginanummering met behulp van een tab-teken en een rechter tabstop dicht bij de rechtermarge.

Met behulp van de `Style` - klasse die is opgehaald voor het specifieke `TOC` - niveau dat u wilt wijzigen, kunt u ook wijzigen hoe deze in het document worden weergegeven. Om te veranderen hoe dit wordt weergegeven, moet eerst `Style.ParagraphFormat` worden aangeroepen om de alineaopmaak voor de stijl op te halen. Hieruit kunnen de tabstops worden opgehaald door `ParagraphFormat.TabStops` aan te roepen en de juiste tabstops worden gewijzigd. Met dezelfde techniek kan het tabblad zelf worden verplaatst of helemaal worden verwijderd. Het voorbeeld below code laat zien hoe u de positie van de rechter tabstop in `TOC` gerelateerde alinea ' s kunt wijzigen. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Een inhoudsopgave uit het Document verwijderen

Een inhoudsopgave kan uit het document worden verwijderd door alle knooppunten tussen de `FieldStart` en FieldEnd knoop van het `TOC` veld te verwijderen. De onderstaande code toont dit aan. Het verwijderen van het `TOC` veld is eenvoudiger dan een normaal veld omdat we geen geneste velden bijhouden. In plaats daarvan controleren we dat de `FieldEnd` knoop van het type `FieldType.FieldTOC` is, wat betekent dat we het einde van de huidige TOC hebben ontmoet. Deze techniek kan in dit geval worden gebruikt zonder zich zorgen te maken over geneste velden, omdat we kunnen aannemen dat elk goed gevormd document geen volledig genest `TOC` veld heeft in een ander `TOC` veld. Eerst worden de `FieldStart` knooppunten van elk `TOC` verzameld en opgeslagen. De opgegeven `TOC` wordt vervolgens opgesomd zodat alle knooppunten binnen het veld worden bezocht en opgeslagen. De knooppunten worden vervolgens uit het document verwijderd. Het voorbeeld below code laat zien hoe u een opgegeven `TOC` uit een document verwijdert. U kunt het sjabloonbestand van dit voorbeeld hier downloaden.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Stijlscheidingsteken invoegen om verschillende Alineastijlen toe te voegen

Het stijlscheidingsteken kan aan het einde van een alinea worden toegevoegd met de sneltoets Ctrl + Alt + Enter in MS Word. Deze functie maakt twee verschillende alineastijlen mogelijk die in één logische afgedrukte alinea worden gebruikt. Als u wilt dat sommige tekst van het begin van een bepaalde kop in een inhoudsopgave wordt weergegeven, maar niet de hele kop in de inhoudsopgave wilt, kunt u deze functie gebruiken. Het voorbeeld below code laat zien hoe u een stijlscheidingsteken invoegt om verschillende alineastijlen toe te voegen.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Kopieer alle stijlen uit sjabloon

Er zijn gevallen waarin u alle stijlen van het ene document naar het andere wilt kopiëren. U kunt de methode `Document.CopyStylesFromTemplate` gebruiken om stijlen van de opgegeven sjabloon naar een document te kopiëren. Wanneer stijlen van een sjabloon naar een document worden gekopieerd, worden soortgelijke stijlen in het document opnieuw gedefinieerd om overeen te komen met de stijlbeschrijvingen in de sjabloon. Unieke stijlen uit de sjabloon worden naar het document gekopieerd. Unieke stijlen in het document blijven intact. Het voorbeeld below code laat zien hoe stijlen van het ene document naar het andere kunnen worden gekopieerd.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
