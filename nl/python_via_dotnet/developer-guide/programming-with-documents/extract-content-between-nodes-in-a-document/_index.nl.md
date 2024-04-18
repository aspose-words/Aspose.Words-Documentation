---
title: Inhoud tussen documentnodes uitpakken
second_title: Aspose.Words voor Python
articleTitle: Inhoud tussen knooppunten uitpakken in een document
linktitle: Inhoud tussen nodes uitpakken
description: "Hoe om specifieke inhoud uit een bereik binnen het document gemakkelijk met behulp van Python."
type: docs
weight: 140
url: /nl/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Bij het werken met documenten is het belangrijk om inhoud binnen een document gemakkelijk uit een specifiek bereik te halen. De inhoud kan echter bestaan uit complexe elementen zoals paragrafen, tabellen, afbeeldingen, enz.

Ongeacht welke inhoud moet worden gewonnen, de methode om dat gehalte te extraheren zal altijd worden bepaald door welke knooppunten worden geselecteerd om het gehalte tussen te extraheren. Dit kunnen hele tekstlichamen zijn of eenvoudige tekstruns.

Er zijn veel mogelijke situaties en daarom veel verschillende knooppunttypes te overwegen bij het extraheren van inhoud. U zou bijvoorbeeld inhoud tussen:

- Twee specifieke paragrafen
- Specifieke teksten
- Velden van verschillende soorten, zoals merge velden
- Begin en eindbereik van een bladwijzer of commentaar
- Diverse teksten in afzonderlijke afdelingen

In sommige situaties kan het zelfs nodig zijn om verschillende knooppunttypes te combineren, zoals het extraheren van inhoud tussen een alinea en een veld, of tussen een run en een bladwijzer.

Dit artikel biedt de code implementatie voor het extraheren van tekst tussen verschillende knooppunten, evenals voorbeelden van gemeenschappelijke scenario's.

{{% alert color="primary" %}}

Deze voorbeelden zijn slechts enkele demonstraties van de vele mogelijkheden. We zijn van plan om de tekst extractie functionaliteit deel uit te maken van het publiek API in de toekomst, en er zal geen extra code nodig zijn. In de tussentijd, voel je vrij om uw verzoeken over deze functionaliteit op de [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Waarom inhoud uitpakken

Vaak is het doel van het extraheren van de inhoud om het apart te dupliceren of op te slaan in een nieuw document. U kunt bijvoorbeeld inhoud extraheren en:

- Kopieer het in een apart document
- Een bepaald deel van een document omzetten naar PDF of afbeelding
- De inhoud in het document vele malen dupliceren
- Werk met uitgepakte inhoud gescheiden van de rest van het document

Dit kan gemakkelijk worden bereikt met behulp van Aspose.Words en de implementatie van de code hieronder.

## Algoritme voor het extraheren van inhoud

De code in deze sectie behandelt alle hierboven beschreven situaties met één algemene en herbruikbare methode. De algemene opzet van deze techniek omvat:

1. Het verzamelen van de knooppunten die het gebied van inhoud dicteren dat uit uw document zal worden gehaald. Het ophalen van deze knooppunten wordt behandeld door de gebruiker in hun code, gebaseerd op wat ze willen worden verwijderd.
1. Deze knooppunten doorgeven aan de **ExtractContent** de hieronder beschreven methode. U moet ook een booleaanse parameter doorgeven die aangeeft of deze knooppunten, die als markers fungeren, al dan niet in de extractie moeten worden opgenomen.
1. Het ophalen van een lijst van gekloonde inhoud (gekopieerde knooppunten) die moet worden uitgepakt. U kunt deze lijst van knooppunten op elke toepasselijke manier gebruiken, bijvoorbeeld door een nieuw document aan te maken dat alleen de geselecteerde inhoud bevat.

## Hoe de inhoud uit te pakken

Om de inhoud uit uw document te halen moet u de **inhoud uitpakken** methode hieronder en geef de juiste parameters. De onderliggende basis van deze methode omvat het vinden van blokniveauknooppunten (paragrafen en tabellen) en het klonen ervan om identieke kopieën te maken. Als de aangegeven knooppunten blokniveau zijn dan is de methode in staat om gewoon de inhoud op dat niveau te kopiëren en toe te voegen aan de array.

Maar als de marker knooppunten zijn inline (een kind van een paragraaf) dan wordt de situatie complexer, omdat het nodig is om de paragraaf op de inline knooppunt te splitsen, of het nu een run, bladwijzer velden etc. Inhoud in de gekloonde oudernodes die niet aanwezig zijn tussen de markers wordt verwijderd. Dit proces wordt gebruikt om ervoor te zorgen dat de inline-knooppunten de opmaak van de alinea van de moeder blijven behouden. De methode zal ook controles uitvoeren op de knooppunten doorgegeven als parameters en gooit een uitzondering als beide knooppunten ongeldig is. De parameters die aan deze methode moeten worden doorgegeven zijn:

1. **startNode** en **eindNode**. De eerste twee parameters zijn de knooppunten die bepalen waar de extractie van de inhoud begint en eindigt op respectievelijk. Deze knooppunten kunnen zowel blokniveau ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) of inlineniveau (bv. [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) enz.):
   1. Om een veld te passeren moet je de bijbehorende [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) object.
   1. Om bladwijzers te passeren, de [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) en [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Knooppunten moeten worden doorgegeven.
   1. Om opmerkingen door te geven, de [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) knooppunten moeten worden gebruikt.
1. **isInclusief**. Bepaalt of de markeringen al dan niet in de extractie zijn opgenomen. Als deze optie ingesteld is false en dezelfde knoop of opeenvolgende knooppunten worden doorgegeven, dan wordt een lege lijst teruggegeven:
   1. [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) knooppunt wordt doorgegeven dan deze optie definieert of het hele veld moet worden opgenomen of uitgesloten.
   1. [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) of [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) node is doorgegeven, deze optie definieert of de bladwijzer is opgenomen of alleen de inhoud tussen de bladwijzer range.
   1. [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) of [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) node is doorgegeven, deze optie definieert of het commentaar zelf moet worden opgenomen of alleen de inhoud in het commentaarbereik.

De uitvoering van de **inhoud uitpakken** methode kunt u vinden [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Deze methode zal in de scenario's in dit artikel worden genoemd.

We zullen ook een aangepaste methode definiëren om gemakkelijk een document te genereren van uitgepakte knooppunten. Deze methode wordt gebruikt in veel van de scenario's hieronder en maakt gewoon een nieuw document en importeert de gewonnen inhoud in het.

Het volgende voorbeeld van code laat zien hoe je een lijst van knooppunten neemt en ze in een nieuw document invoegt:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Inhoud tussen alinea's uitpakken

Dit toont aan hoe de hierboven beschreven methode moet worden gebruikt om het gehalte tussen specifieke alinea's te extraheren. In dit geval willen we de inhoud van de brief uit de eerste helft van het document halen. Wij zien dat dit tussen de 7e en de 11e paragraaf ligt.

De onderstaande code voert deze taak uit. De desbetreffende alinea's worden met behulp van de [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) methode op het document en het doorgeven van de gespecificeerde indices. Vervolgens geven we deze knooppunten door aan de **inhoud uitpakken** methode en vermelden dat deze in de extractie moeten worden opgenomen. Deze methode zal de gekopieerde inhoud tussen deze knooppunten teruggeven die vervolgens in een nieuw document worden ingevoegd.

Het volgende voorbeeld van de code laat zien hoe de inhoud tussen specifieke paragrafen met behulp van de **inhoud uitpakken** methode hierboven:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Inhoud uitpakken tussen verschillende soorten nodes

We kunnen inhoud extraheren tussen combinaties van blokniveau of inline knooppunten. In dit scenario hieronder zullen we de inhoud tussen de eerste alinea en de tabel in het tweede deel inclusief extraheren. We krijgen de markers knooppunten door te bellen [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) en [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) methode op het tweede deel van het document om de juiste [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) knooppunten. Voor een lichte variatie laten we in plaats daarvan dupliceren de inhoud en plaats het onder het origineel.

Het volgende voorbeeld van code laat zien hoe de inhoud tussen een alinea en een tabel met behulp van de **inhoud uitpakken** methode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Inhoud tussen alinea's uitpakken Gebaseerd op stijl

Het kan nodig zijn om de inhoud te extraheren tussen paragrafen van dezelfde of andere stijl, zoals tussen paragrafen gemarkeerd met kopstijlen.

De onderstaande code laat zien hoe dit te bereiken. Het is een eenvoudig voorbeeld dat de inhoud zal extraheren tussen de eerste instantie van de "Heading 1" en "Header 3" stijlen zonder ook de rubrieken te extraheren. Om dit te doen zetten we de laatste parameter op false, waarin staat dat de markerknooppunten niet mogen worden opgenomen.

Bij een correcte implementatie moet dit in een lus worden uitgevoerd om inhoud tussen alle paragrafen van deze stijlen uit het document te halen. De gewonnen inhoud wordt gekopieerd naar een nieuw document.

Het volgende voorbeeld van code laat zien hoe inhoud te extraheren tussen paragrafen met specifieke stijlen met behulp van de **inhoud uitpakken** methode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Inhoud uitpakken tussen specifieke knoppen

U kunt inhoud extraheren tussen inline knooppunten zoals een [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) Ook. Runs van verschillende paragrafen kan worden doorgegeven als markers. De onderstaande code laat zien hoe je een specifieke tekst tussen dezelfde [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Node.

Het volgende voorbeeld van code laat zien hoe je inhoud tussen specifieke runs van dezelfde paragraaf met behulp van de **inhoud uitpakken** methode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Inhoud met een veld uitpakken

Om een veld als marker te gebruiken, de [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) knooppunt moet worden doorgegeven. De laatste parameter van de **inhoud uitpakken** methode zal bepalen of het gehele veld moet worden opgenomen of niet. Laten we de inhoud uitpakken tussen het "FullName" en een paragraaf in het document. Wij gebruiken de [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) methode van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Klasse. Dit zal de [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) knooppunt van de naam van het merge-veld doorgegeven aan het.

In ons geval laten we de laatste parameter die aan de **inhoud uitpakken** methode om `False` het veld van de extractie uitsluiten. We zullen de gewonnen inhoud naar PDF teruggeven.

Het volgende voorbeeld van code laat zien hoe inhoud tussen een specifiek veld en paragraaf in het document te extraheren met behulp van de **inhoud uitpakken** methode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Inhoud uit een bladwijzer halen

In een document wordt de inhoud die wordt gedefinieerd binnen een bladwijzer ingekapseld door de [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) en [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) knooppunten. Inhoud gevonden tussen deze twee knooppunten vormen de bladwijzer. U kunt een van deze knooppunten doorgeven als een markeerder, zelfs die van verschillende bladwijzers, zolang de startmarkering verschijnt voor de eindmarkering in het document. We zullen deze inhoud uitpakken in een nieuw document met de onderstaande code. De **isInclusief** parameter optie laat zien hoe de bladwijzer te behouden of weggooien.

Het volgende voorbeeld van code laat zien hoe u de inhoud waarnaar een bladwijzer verwijst kunt uitpakken met behulp van de **inhoud uitpakken** methode:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Inhoud uit een opmerking halen

Er is een opmerking gemaakt over de [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) en [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) knooppunten. Al deze knopen zijn inline. De eerste twee nodes inkapselen de inhoud in het document dat wordt verwezen door het commentaar, zoals te zien in de screenshot hieronder. De [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) knooppunt zelf is een [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) die alinea's en runs kunnen bevatten. Het vertegenwoordigt de boodschap van het commentaar als een commentaar zeepbel in het beoordelingspaneel. Aangezien dit knooppunt inline is en een afstammeling van een lichaam kun je ook de inhoud uit deze boodschap halen.

Het commentaar bevat de titel, eerste alinea en de tabel in het tweede deel. Laten we deze opmerking uitpakken in een nieuw document. De **isInclusief** optie dicteert als het commentaar zelf wordt gehouden of weggegooid.

Het volgende code voorbeeld laat zien hoe dit te doen:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Hoe alleen tekst uitpakken

De manieren om tekst uit het document op te halen zijn:

- Gebruik [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) om als platte tekst op te slaan in een bestand of stream
- Gebruik [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) en de [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) parameter. Intern slaat dit als tekst op in een geheugenstroom en geeft het resulterende tekenreeks terug
- Gebruik [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) tekst met alles ophalen Microsoft Word controle karakters inclusief veldcodes

### Node.get_text en Node.to_string gebruiken

A Word-document kan controle karakters die speciale elementen zoals veld, einde van cel, einde van sectie, enz. aan te duiden bevatten. De volledige lijst van mogelijke Word control tekens wordt gedefinieerd in de [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) Klasse. De [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) methode geeft tekst terug met alle controle karakter tekens aanwezig in het knooppunt.

Bellen [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) geeft de platte tekst van het document alleen terug zonder controletekens. Voor meer informatie over exporteren als platte tekst zie Gebruik [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

Het volgende voorbeeld toont het verschil tussen het aanroepen van de [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) en [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) methoden op een knooppunt:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Gebruik `SaveFormat.Text`

Dit voorbeeld slaat het document als volgt op:

- Filtreert veldtekens en veldcodes, vorm, voetnoot, endnote en commentaarverwijzingen
- Vervangt einde van paragraaf **ControlChar.Cr** tekens met **ControlChar.CrLf** combinaties
- Gebruikt UTF8 codering

Het volgende voorbeeld van code laat zien hoe u een document in TXT-formaat kunt opslaan:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Afbeeldingen uit vormen halen

Het kan nodig zijn om documentafbeeldingen uit te pakken om enkele taken uit te voeren. Aspose.Words laat je dit ook doen.

Het volgende voorbeeld van code laat zien hoe je afbeeldingen uit een document haalt:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
