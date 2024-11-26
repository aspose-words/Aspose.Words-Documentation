---
title: Hoe inhoud tussen Documentknooppunten te extraheren
second_title: Aspose.Words voor C++
articleTitle: Inhoud tussen knooppunten in een Document uitpakken
linktitle: Inhoud Tussen Knooppunten Extraheren
type: docs
description: "Documentinhoud in verschillend uitpakken met behulp van C++."
weight: 140
url: /nl/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Bij het werken met documenten is het belangrijk om gemakkelijk inhoud te kunnen extraheren uit een specifiek bereik binnen een document. De inhoud kan echter bestaan uit complexe elementen zoals alinea ' s, tabellen, afbeeldingen, enz.

Ongeacht welke inhoud moet worden geëxtraheerd, de methode om die inhoud te extraheren wordt altijd bepaald door welke knooppunten worden geselecteerd om inhoud tussen te extraheren. Dit kunnen hele tekstlichamen of eenvoudige tekstlopen zijn.

Er zijn veel mogelijke situaties en daarom veel verschillende knooptypen om te overwegen bij het extraheren van inhoud. U wilt bijvoorbeeld inhoud extraheren tussen:

- Twee specifieke paragrafen
- Specifieke reeksen tekst
- Velden van verschillende typen, zoals samenvoegvelden
- Begin-en eindbereiken van een bladwijzer of opmerking
- Verschillende teksten in afzonderlijke delen

In sommige situaties moet u mogelijk zelfs verschillende knooptypen combineren, zoals het extraheren van inhoud tussen een alinea en een veld of tussen een run en een bladwijzer.

Dit artikel bevat de code-implementatie voor het extraheren van tekst tussen verschillende knooppunten, evenals voorbeelden van veel voorkomende scenario ' s.

{{% alert color="primary" %}}

Deze voorbeelden zijn slechts enkele voorbeelden van de vele mogelijkheden. We zijn van plan dat de functionaliteit voor tekstextractie in de toekomst deel uitmaakt van het publiek API en dat er geen extra code nodig is. In de tussentijd, voel je vrij om uw verzoeken met betrekking tot deze functionaliteit op de [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Waarom Extraheren Inhoud

Vaak is het doel van het extraheren van de inhoud om deze afzonderlijk te dupliceren of op te slaan in een nieuw document. U kunt bijvoorbeeld inhoud uitpakken en:

- Kopieer het naar een apart document
- Een specifiek deel van een document converteren naar PDF of afbeelding
- Dupliceer de inhoud in het document vele malen
- Werken met uitgepakte inhoud gescheiden van de rest van het document

Dit kan eenvoudig worden bereikt met behulp van Aspose.Words en de onderstaande code-implementatie.

## Inhoudsalgoritme Extraheren

De code in deze sectie behandelt alle mogelijke situaties die hierboven zijn beschreven met één gegeneraliseerde en herbruikbare methode. De algemene opzet van deze techniek omvat::

1. Het verzamelen van de knooppunten die het gebied van de inhoud die zal worden geëxtraheerd uit uw document dicteren. Het ophalen van deze knooppunten wordt door de gebruiker in zijn code afgehandeld, op basis van wat hij wil extraheren.
1. Het doorgeven van deze knooppunten aan de **ExtractContent** methode hieronder. Je moet ook een Booleaanse parameter doorgeven die aangeeft of deze knooppunten, die als markers fungeren, in de extractie moeten worden opgenomen of niet.
1. Een lijst ophalen van gekloonde inhoud (gekopieerde knooppunten) die moet worden geëxtraheerd. U kunt deze lijst met knooppunten op elke toepasselijke manier gebruiken, bijvoorbeeld door een nieuw document te maken dat alleen de geselecteerde inhoud bevat.

## Hoe inhoud te extraheren

Om de inhoud uit uw document te halen, moet u de onderstaande methode `ExtractContent` aanroepen en de juiste parameters doorgeven. De onderliggende basis van deze methode bestaat uit het vinden van knooppunten op blokniveau (alinea ' s en tabellen) en het klonen ervan om identieke kopieën te maken. Als de doorgegeven markerknooppunten blokniveau zijn, kan de methode de inhoud op dat niveau eenvoudig kopiëren en aan de array toevoegen.

Als de markerknooppunten echter inline zijn (een kind van een alinea), wordt de situatie complexer, omdat het noodzakelijk is om de alinea bij de inline-knoop te splitsen, of het nu een run is, bladwijzervelden enz. De inhoud van de gekloonde ouderknopen die niet tussen de markers aanwezig is, wordt verwijderd. Dit proces wordt gebruikt om ervoor te zorgen dat de inline knooppunten nog steeds de opmaak van de bovenliggende alinea behouden. De methode zal ook controles uitvoeren op de knooppunten die als parameters worden doorgegeven en een uitzondering maken als een van beide knooppunten ongeldig is. De parameters die aan deze methode moeten worden doorgegeven, zijn::

1. **StartNode** en **EndNode**. De eerste twee parameters zijn de knooppunten die bepalen waar de extractie van de inhoud respectievelijk moet beginnen en eindigen. Deze knooppunten kunnen zowel blokniveau (paragraaf, tabel ) als inline-niveau zijn (bijvoorbeeld Run, FieldStart, BookmarkStart enz.).):
   1. Om een veld door te geven, moet u het overeenkomstige **FieldStart** object doorgeven.
   1. Om bladwijzers door te geven, moeten de knooppunten **BookmarkStart** en BookmarkEnd worden doorgegeven.
   1. Om opmerkingen door te geven, moeten de knooppunten CommentRangeStart en CommentRangeEnd worden gebruikt.
1. **IsInclusive**. Bepaalt of de markers zijn opgenomen in de extractie of niet. Als deze optie is ingesteld op false en dezelfde knoop of opeenvolgende knooppunten worden doorgegeven, wordt een lege lijst geretourneerd:

      1. Als een **FieldStart** - knooppunt wordt doorgegeven, bepaalt deze optie of het hele veld moet worden opgenomen of uitgesloten.
      1. Als een knooppunt **BookmarkStart** of **BookmarkEnd** wordt doorgegeven, bepaalt deze optie of de bladwijzer is opgenomen of alleen de inhoud tussen het bladwijzerbereik.
      1. Als een **CommentRangeStart** - of **CommentRangeEnd** - knooppunt wordt doorgegeven, bepaalt deze optie of de opmerking zelf moet worden opgenomen of alleen de inhoud in het opmerkingenbereik.

De implementatie van de **ExtractContent** methode kunt u vinden [hier](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Deze methode zal worden vermeld in de scenario ' s in dit artikel.

We zullen ook een aangepaste methode definiëren om eenvoudig een document te genereren uit uitgepakte knooppunten. Deze methode wordt in veel van de onderstaande scenario ' s gebruikt en maakt eenvoudig een nieuw document en importeert de geëxtraheerde inhoud erin.

Het volgende codevoorbeeld laat zien hoe u een lijst met knooppunten kunt nemen en deze in een nieuw document invoegt.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Extraheer Inhoud Tussen Alinea ' S

Dit toont aan hoe u de bovenstaande methode kunt gebruiken om inhoud tussen specifieke alinea ' s te extraheren. In dit geval willen we de inhoud van de brief uit de eerste helft van het document halen. We kunnen zien dat dit tussen de 7e en 11e alinea ligt.

De onderstaande code vervult deze taak. De juiste alinea ' s worden geëxtraheerd met behulp van de [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) methode op het document en het passeren van de opgegeven indices. We geven deze knooppunten dan door aan de **ExtractContent** methode en stellen dat deze in de extractie moeten worden opgenomen. Deze methode retourneert de gekopieerde inhoud tussen deze knooppunten die vervolgens in een nieuw document worden ingevoegd.

Het volgende codevoorbeeld laat zien hoe u de inhoud tussen specifieke alinea ' s kunt extraheren met behulp van de bovenstaande methode `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Extraheer inhoud tussen verschillende soorten knooppunten

We kunnen inhoud extraheren tussen combinaties van blokniveau of inline knooppunten. In dit scenario hieronder zullen we de inhoud tussen de eerste alinea en de tabel in de tweede sectie inclusief extraheren. We krijgen de markers knooppunten door het aanroepen van `Body.FirstParagraph` en [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) methode op het tweede deel van het document om de juiste paragraaf en tabel knooppunten op te halen. Voor een kleine variatie laten we in plaats daarvan de inhoud dupliceren en deze Onder het origineel invoegen.

Het volgende codevoorbeeld laat zien hoe u de inhoud tussen een alinea en een tabel kunt extraheren met behulp van de methode `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Extraheer inhoud tussen alinea ' s op basis van stijl

Mogelijk moet u de inhoud extraheren tussen alinea 's van dezelfde of verschillende stijlen, zoals tussen alinea' s die zijn gemarkeerd met kopstijlen. Onderstaande code laat zien hoe dit te bereiken is. Het is een eenvoudig voorbeeld dat de inhoud tussen de eerste instantie van de stijlen "Heading 1" en "Header 3" extraheert zonder ook de koppen te extraheren. Om dit te doen stellen we de laatste parameter in op false, wat aangeeft dat de markerknooppunten niet moeten worden opgenomen.

In een juiste implementatie moet dit in een lus worden uitgevoerd om inhoud tussen alle alinea ' s van deze stijlen uit het document te extraheren. De uitgepakte inhoud wordt gekopieerd naar een nieuw document.

Het volgende codevoorbeeld laat zien hoe u inhoud tussen alinea ' s met specifieke stijlen kunt extraheren met behulp van de methode `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Extraheren Inhoud Tussen Specifieke Runs

U kunt ook inhoud extraheren tussen inline knooppunten zoals een [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). **Runs** uit verschillende paragrafen kunnen als markeringen worden doorgegeven. De onderstaande code laat zien hoe specifieke tekst tussen dezelfde **Paragraph**-knoop kan worden geëxtraheerd.

Het volgende codevoorbeeld laat zien hoe u inhoud kunt extraheren tussen specifieke runs van dezelfde alinea met behulp van de methode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Inhoud extraheren met een veld

Om een veld als marker te gebruiken, moet de `FieldStart` knoop worden doorgegeven. De laatste parameter van de `ExtractContent` methode zal bepalen of het hele veld moet worden opgenomen of niet. Laten we de inhoud extraheren tussen het "FullName" samenvoegveld en een alinea in het document. We gebruiken de [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) methode van [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) klasse. Dit zal het **FieldStart** knooppunt teruggeven van de naam van het merge veld dat eraan is doorgegeven.

Laten we in ons geval de laatste parameter die aan de methode **ExtractContent** is doorgegeven, instellen op false om het veld uit te sluiten van de extractie. We zullen de geëxtraheerde inhoud renderen naar PDF.

Het volgende codevoorbeeld toont hoe u inhoud tussen een specifiek veld en alinea in het document kunt extraheren met behulp van de methode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Inhoud uit een bladwijzer halen

In een document wordt de inhoud die is gedefinieerd in een bladwijzer ingekapseld door de knooppunten `BookmarkStart` en BookmarkEnd. De inhoud die tussen deze twee knooppunten wordt gevonden, vormt de bladwijzer. U kunt elk van deze knooppunten als een markering doorgeven, zelfs die van verschillende bladwijzers, zolang de startmarkering vóór de eindmarkering in het document verschijnt. We zullen deze inhoud extraheren in een nieuw document met behulp van de onderstaande code. De optie parameter **IsInclusive** laat zien hoe u de bladwijzer kunt behouden of weggooien.

Het volgende codevoorbeeld toont hoe u de inhoud waarnaar een bladwijzer wordt verwezen, kunt extraheren met behulp van de methode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Inhoud uit een opmerking halen

Een opmerking bestaat uit de knooppunten CommentRangeStart, CommentRangeEnd en commentaar. Al deze nodes zijn inline. De eerste twee knooppunten bevatten de inhoud in het document waarnaar in de opmerking wordt verwezen, zoals te zien is in de onderstaande screenshot.

De **Comment** - knoop zelf is een InlineStory die alinea ' s en runs kan bevatten. Het vertegenwoordigt het bericht van de opmerking als een commentaarbel in het voorbeeldvenster. Omdat deze node inline is en een afstammeling van een lichaam, kun je ook de inhoud uit dit bericht halen.

De opmerking bevat de kop, de eerste alinea en de tabel in de tweede sectie. Laten we deze opmerking uitpakken in een nieuw document. De optie **IsInclusive** bepaalt of de opmerking zelf wordt bewaard of weggegooid.

Het volgende codevoorbeeld laat zien hoe dit te doen:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Inhoud extraheren met DocumentVisitor

Gebruik de klasse [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) om dit gebruiksscenario te implementeren. Deze klasse komt overeen met het bekende Bezoekersontwerppatroon. Met **DocumentVisitor,** kunt u aangepaste bewerkingen definiëren en uitvoeren die moeten worden opgesomd via de documentstructuur.

**DocumentVisitor**

Elke **DocumentVisitor.VisitXXX** methode geeft een [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) waarde terug die de opsomming van knooppunten regelt. U kunt vragen om de opsomming voort te zetten, het huidige knooppunt over te slaan (maar de opsomming voort te zetten) of de opsomming van knooppunten te stoppen.

Dit zijn de stappen die u moet volgen om verschillende delen van een document programmatisch te bepalen en te extraheren:

- Maak een klasse afgeleid van **DocumentVisitor**
- Overschrijven en bieden implementaties voor sommige of alle van de **DocumentVisitor.VisitXXX** methoden om sommige aangepaste bewerkingen uit te voeren
- Roep `Node.Accept` aan op het knooppunt waar u de opsomming wilt starten. Als u bijvoorbeeld het hele document wilt opsommen, gebruikt u `Document.Accept`

**DocumentVisitor**

Dit voorbeeld laat zien hoe u het Bezoekerspatroon gebruikt om nieuwe bewerkingen toe te voegen aan het Aspose.Words objectmodel. In dit geval maken we een eenvoudige documentconverter naar een tekstformaat:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Hoe Alleen tekst te extraheren

De manieren om tekst uit het document op te halen zijn::

- Gebruik [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) met [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) om als platte tekst op te slaan in een bestand of stream
- Gebruik [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) en geef de parameter **SaveFormat.Text** door. Intern roept dit save as text op in een geheugenstroom en geeft de resulterende string terug
- Gebruik [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) om tekst op te halen met alle Microsoft Word besturingstekens inclusief veldcodes
- Implementeer een aangepaste [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) om aangepaste extractie uit te voeren

### `Node.GetText` en `Node.ToString`gebruiken

Een Word - document kan besturingstekens bevatten die speciale elementen aanduiden, zoals veld, einde van de cel, einde van sectie, enz. De volledige lijst van mogelijke Word controle tekens is gedefinieerd in de [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) Klasse. De methode **Node.GetText** retourneert tekst met alle besturingstekens die aanwezig zijn in het knooppunt.

Als u **ToString** aanroept, wordt alleen de platte tekstweergave van het document geretourneerd zonder besturingstekens.

Het volgende codevoorbeeld toont het verschil tussen het oproepen van de **GetText** en **ToString** methoden op een knooppunt:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### `SaveFormat.Text`gebruiken

Dit voorbeeld slaat het document als volgt op::

- Filtert veldtekens en veldcodes, vorm, voetnoot, eindnoot en commentaar
- Vervangt einde van alinea **ControlChar.Cr** tekens door **ControlChar.CrLf** combinaties
- Gebruikt UTF8 codering

Het volgende codevoorbeeld laat zien hoe u een document in TXT - indeling opslaat:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Afbeeldingen uit Shapes extraheren

Mogelijk moet u documentafbeeldingen extraheren om bepaalde taken uit te voeren. Aspose.Words kunt u dit ook doen.

Het volgende codevoorbeeld laat zien hoe u afbeeldingen uit een document kunt extraheren:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
