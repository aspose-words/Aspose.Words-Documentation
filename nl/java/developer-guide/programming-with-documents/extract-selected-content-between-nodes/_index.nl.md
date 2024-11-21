---
title: Geselecteerde inhoud uitpakken tussen knooppunten in Java
second_title: Aspose.Words voor Java
articleTitle: Inhoud tussen knooppunten uitpakken in een document
linktitle: Inhoud tussen nodes uitpakken
type: docs
description: "Documentinhoud uitpakken in verschillende toepassingen Java."
weight: 140
url: /nl/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

Bij het werken met documenten is het belangrijk om inhoud binnen een document gemakkelijk uit een specifiek bereik te halen. De inhoud kan echter bestaan uit complexe elementen zoals paragrafen, tabellen, afbeeldingen, enz.

Ongeacht welke inhoud moet worden gewonnen, de methode om dat gehalte te extraheren zal altijd worden bepaald door welke knooppunten worden geselecteerd om inhoud tussen te extraheren. Dit kunnen hele tekstlichamen zijn of eenvoudige tekstruns.

Er zijn veel mogelijke situaties en daarom veel verschillende knooppunttypes te overwegen bij het extraheren van inhoud. U kunt bijvoorbeeld inhoud uitpakken tussen:

- Twee specifieke paragrafen
- Specifieke punten van tekst
- Velden van verschillende soorten, zoals merge velden
- Begin en eindbereik van een bladwijzer of commentaar
- Diverse teksten in afzonderlijke afdelingen

In sommige situaties moet je zelfs verschillende knooppunttypes combineren, zoals inhoud extraheren tussen een alinea en een veld, of tussen een run en een bladwijzer.

Dit artikel geeft de code implementatie voor het extraheren van tekst tussen verschillende knooppunten, evenals voorbeelden van gemeenschappelijke scenario's.

{{% alert color="primary" %}}

Deze voorbeelden zijn slechts een paar demonstraties van de vele mogelijkheden. We zijn van plan om de tekst extractie functionaliteit deel uit te maken van het publiek API in de toekomst, en er zal geen extra code nodig zijn. In de tussentijd, voel je vrij om uw verzoeken met betrekking tot deze functionaliteit op de [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Waarom inhoud uitpakken

Vaak is het doel van het extraheren van de inhoud om het apart te dupliceren of op te slaan in een nieuw document. U kunt bijvoorbeeld inhoud extraheren en:

- Kopieer het in een apart document
- Een bepaald deel van een document omzetten naar PDF of afbeelding
- Dubbele inhoud in het document vele malen
- Werk met uitgepakte inhoud gescheiden van de rest van het document

Dit kan gemakkelijk worden bereikt met behulp van Aspose.Words en de implementatie van de code hieronder.

## Algoritme voor het extraheren van inhoud

De code in deze sectie behandelt alle hierboven beschreven situaties met één algemene en herbruikbare methode. De algemene opzet van deze techniek omvat:

1. Het verzamelen van de knooppunten die het gebied van inhoud dicteren dat uit uw document zal worden gehaald. Het ophalen van deze knooppunten wordt behandeld door de gebruiker in hun code, gebaseerd op wat ze willen worden verwijderd.
1. Deze knooppunten doorgeven aan de **ExtractContent** onderstaande methode. U moet ook een booleaanse parameter die aangeeft of deze knooppunten, die als markers, moet worden opgenomen in de extractie of niet.
1. Het ophalen van een lijst van gekloonde inhoud (gekopieerde knooppunten) die moeten worden verwijderd. U kunt deze lijst van knooppunten op elke toepasselijke manier gebruiken, bijvoorbeeld door een nieuw document aan te maken dat alleen de geselecteerde inhoud bevat.

## Hoe de inhoud uit te pakken

We werken met het document hieronder in dit artikel. Zoals je kunt zien bevat het een verscheidenheid aan inhoud. Let ook op, het document bevat een tweede sectie beginnend in het midden van de eerste pagina. Een bladwijzer en commentaar zijn ook aanwezig in het document, maar zijn niet zichtbaar in de screenshot hieronder.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Om de inhoud uit uw document te halen moet u de `ExtractContent` methode hieronder en geef de juiste parameters door.

De onderliggende basis van deze methode is het vinden van knooppunten op blokniveau (paragrafen en tabellen) en het klonen ervan om identieke kopieën te maken. Als de aangegeven knooppunten blok-niveau zijn dan is de methode in staat om gewoon de inhoud op dat niveau te kopiëren en toe te voegen aan de array.

Echter, als de marker knooppunten zijn inline (een kind van een alinea) dan wordt de situatie complexer, omdat het nodig is om de paragraaf op de inline knooppunt te splitsen, of het nu een run, bladwijzer velden etc. Inhoud in de gekloonde ouderknooppunten die niet aanwezig zijn tussen de markers wordt verwijderd. Dit proces wordt gebruikt om ervoor te zorgen dat de inline-knooppunten de opmaak van de alinea van de moeder blijven behouden.

De methode zal ook controles uitvoeren op de knooppunten doorgegeven als parameters en gooit een uitzondering als beide knooppunten ongeldig is. De parameters die aan deze methode moeten worden doorgegeven zijn:

1. **StartNode** en **EndNode**. De eerste twee parameters zijn de knooppunten die bepalen waar de extractie van de inhoud begint en eindigt op respectievelijk. Deze knooppunten kunnen zowel blokniveau ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) of inlineniveau (bv. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) enz.):
   1. Om een veld te passeren moet u de overeenkomstige **FieldStart** object.
   1. Om bladwijzers te passeren, de **BookmarkStart** en [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) Knooppunten moeten worden doorgegeven.
   1. Om opmerkingen door te geven, de [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) gebruik van knooppunten.
1. **IsInclusive**. Bepaalt of de markeringen al dan niet in de extractie zijn opgenomen. Als deze optie ingesteld is false en dezelfde knoop of opeenvolgende knooppunten worden doorgegeven, dan zal een lege lijst worden teruggegeven:

      1. **FieldStart** knooppunt wordt doorgegeven dan deze optie definieert of het hele veld moet worden opgenomen of uitgesloten.
      1. **BookmarkStart** of **BookmarkEnd** node is doorgegeven, deze optie definieert of de bladwijzer is opgenomen of alleen de inhoud tussen de bladwijzer range.
      1. **CommentRangeStart** of **CommentRangeEnd** node is doorgegeven, deze optie definieert of het commentaar zelf moet worden opgenomen of alleen de inhoud in het commentaarbereik.

De tenuitvoerlegging van het **ExtractContent** methode kunt u vinden [Hier](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Deze methode zal in de scenario's in dit artikel worden genoemd.

We zullen ook een aangepaste methode definiëren om gemakkelijk een document te genereren van uitgepakte knooppunten. Deze methode wordt gebruikt in veel van de onderstaande scenario's en maakt gewoon een nieuw document en importeert de gewonnen inhoud in het.

Het volgende voorbeeld van code laat zien hoe je een lijst van knooppunten neemt en ze in een nieuw document invoegt:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Inhoud tussen alinea's uitpakken

Hieruit blijkt hoe de hierboven beschreven methode moet worden gebruikt om het gehalte tussen specifieke paragrafen te extraheren. In dit geval willen we de inhoud van de brief uit de eerste helft van het document halen. We kunnen zien dat dit tussen de 7e en 11e alinea's ligt.

De onderstaande code vervult deze taak. De desbetreffende alinea's worden met behulp van de [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) methode op het document en het doorgeven van de gespecificeerde indices. Vervolgens geven we deze knooppunten door aan de **ExtractContent** methode en vermelden dat deze in de extractie moeten worden opgenomen. Deze methode zal de gekopieerde inhoud tussen deze knooppunten teruggeven die vervolgens in een nieuw document worden ingevoegd.

Het volgende voorbeeld van code laat zien hoe de inhoud tussen specifieke alinea's met behulp van de `ExtractContent` methode hierboven:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Het uitvoerdocument bevat de twee alinea's die eruit zijn gehaald.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Inhoud uitpakken tussen verschillende soorten nodes

We kunnen inhoud extraheren tussen combinaties van blok-niveau of inline knooppunten. In dit scenario hieronder zullen we de inhoud tussen de eerste alinea en de tabel in het tweede deel inclusief extraheren. We krijgen de markers knooppunten door te bellen [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) en [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) methode op het tweede deel van het document om de juiste **Paragraph** en **Table** knooppunten. Voor een lichte variatie laten we de inhoud dupliceren en onder het origineel plaatsen.

Het volgende voorbeeld van code laat zien hoe de inhoud tussen een alinea en een tabel met behulp van de **ExtractContent** methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

De inhoud tussen de alinea en de tabel is hieronder gedupliceerd is het resultaat.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Inhoud tussen alinea's uitpakken Gebaseerd op stijl

Het kan nodig zijn om de inhoud te extraheren tussen paragrafen van dezelfde of andere stijl, zoals tussen paragrafen gemarkeerd met kopstijlen.

De onderstaande code laat zien hoe dit te bereiken. Het is een eenvoudig voorbeeld dat de inhoud zal extraheren tussen de eerste instantie van de "Heading 1" en "Header 3" stijlen zonder ook de rubrieken te extraheren. Om dit te doen zetten we de laatste parameter op false, waarin staat dat de markerknooppunten niet mogen worden opgenomen.

Bij een correcte implementatie moet dit in een lus worden uitgevoerd om inhoud tussen alle paragrafen van deze stijlen uit het document te halen. De gewonnen inhoud wordt gekopieerd naar een nieuw document.

Het volgende voorbeeld van code laat zien hoe inhoud tussen paragrafen met specifieke stijlen met behulp van de **ExtractContent** methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Hieronder is het resultaat van de vorige bewerking.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Inhoud uitpakken tussen specifieke runs

U kunt inhoud extraheren tussen inline knooppunten zoals een **Run** Ook. **Runs** van verschillende paragrafen kan worden doorgegeven als markers. De onderstaande code laat zien hoe je een specifieke tekst tussen dezelfde **Paragraph** Node.

Het volgende voorbeeld van code laat zien hoe je inhoud tussen specifieke runs van dezelfde paragraaf met behulp van de **ExtractContent** methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

De opgehaalde tekst wordt op de console weergegeven

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Inhoud met een veld uitpakken

Om een veld als marker te gebruiken, de `FieldStart` knooppunt moet worden doorgegeven. De laatste parameter voor de `ExtractContent` methode zal bepalen of het gehele veld moet worden opgenomen of niet. Laten we de inhoud uitpakken tussen het veld "FullName" en een paragraaf in het document. Wij gebruiken de [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasse. Dit zal de **FieldStart** knooppunt van de naam van het merge veld doorgegeven aan het.

In ons geval laten we de laatste parameter die aan de **ExtractContent** methode om false om het veld van de extractie uit te sluiten. We zullen de gewonnen inhoud naar PDF teruggeven.

Het volgende voorbeeld van code laat zien hoe inhoud tussen een specifiek veld en paragraaf in het document te extraheren met behulp van de **ExtractContent** methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

De verzamelde inhoud tussen het veld en de alinea, zonder het veld en de puntmarkeringsknooppunten die aan PDF zijn weergegeven.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Inhoud uit een bladwijzer halen

In een document wordt de inhoud die wordt gedefinieerd binnen een bladwijzer ingekapseld door de `BookmarkStart` en BookmarkEnd knooppunten. De inhoud tussen deze twee knooppunten vormt de bladwijzer. Je kunt een van deze knooppunten doorgeven als een markeerder, zelfs die van verschillende bladwijzers, zolang de beginmarkering verschijnt voor de eindmarkering in het document.

In ons voorbeeld document, hebben we een bladwijzer, genaamd Bookmark1. De inhoud van deze bladwijzer is gemarkeerd in ons document:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

We zullen deze inhoud uitpakken in een nieuw document met de onderstaande code. De **IsInclusive** parameteroptie laat zien hoe u de bladwijzer kunt behouden of weggooien.

Het volgende voorbeeld van code toont hoe u de inhoud waarnaar een bladwijzer verwijst kunt uitpakken met behulp van de **ExtractContent** methode:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

De gewonnen output met de `IsInclusive` parameter ingesteld op true. De kopie zal ook de bladwijzer behouden.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

De gewonnen output met de **IsInclusive** parameter ingesteld op false. De kopie bevat de inhoud maar zonder de bladwijzer.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Inhoud uit een commentaar halen

Een commentaar bestaat uit de reactieRangeStart, reactieRangeEnd en commentaar knooppunten. Al deze knopen zijn inline. De eerste twee nodes inkapselen de inhoud in het document die wordt verwezen door het commentaar, zoals te zien in de screenshot hieronder.

De **Comment** knooppunt zelf is een [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) die alinea's en runs kunnen bevatten. Het vertegenwoordigt de boodschap van het commentaar als een commentaarbel in het herzieningspaneel. Aangezien dit knooppunt inline is en een afstammeling van een lichaam kun je ook de inhoud uit deze boodschap halen.

In ons document hebben we één opmerking. Laat het weergeven door markup te tonen in het tabblad Beoordeling:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Het commentaar omvat de titel, eerste alinea en de tabel in het tweede deel. Laten we deze opmerking uitpakken in een nieuw document. De **IsInclusive** optie dicteert als het commentaar zelf wordt gehouden of weggegooid.

Het volgende voorbeeld van code laat zien hoe dit te doen is hieronder:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

In de eerste plaats de gewonnen output met de `IsInclusive` parameter ingesteld op true. De kopie zal ook het commentaar bevatten.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

In de tweede plaats is de gewonnen output met **isInclusief** ingesteld op false. De kopie bevat de inhoud maar zonder commentaar.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Inhoud met DocumentBezoeker uitpakken

Aspose.Words kan niet alleen worden gebruikt voor het aanmaken Microsoft Word documenten door ze dynamisch te bouwen of templates te samenvoegen met gegevens, maar ook voor het ontleden van documenten om afzonderlijke documentelementen zoals headers, voetteksten, paragrafen, tabellen, afbeeldingen en andere te extraheren. Een andere mogelijke taak is het vinden van alle tekst van specifieke opmaak of stijl.

Gebruik de [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) klasse om dit gebruiksscenario te implementeren. Deze klasse komt overeen met het bekende bezoekersontwerppatroon. Met [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)U kunt aangepaste bewerkingen definiëren en uitvoeren die een opsomming over de documentboom vereisen.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) levert een reeks van **VisitXXX** methoden die worden gebruikt wanneer een bepaald documentelement (knooppunt) wordt aangetroffen. Bijvoorbeeld, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) wordt aangeroepen wanneer het begin van een tekst paragraaf wordt gevonden en [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) wordt aangeroepen wanneer het einde van een tekst paragraaf wordt gevonden. Elk **DocumentVisitor.VisitXXX** methode accepteert het bijbehorende object dat het tegenkomt, zodat u het kunt gebruiken als nodig (zeg het ophalen van de opmaak), bijvoorbeeld beide [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) en [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) a [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) object.

Elk **DocumentVisitor.VisitXXX** methode geeft a **VisitorAction** waarde die de opsomming van knooppunten regelt. U kunt verzoeken de opsomming voort te zetten, het huidige knooppunt over te slaan (maar door te gaan met de opsomming), of de opsomming van knooppunten te stoppen.

Dit zijn de stappen die u moet volgen om programmatisch verschillende delen van een document te bepalen en uit te pakken:

- Maak een klasse afgeleid van [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Overschrijven en implementaties voor sommige of alle van de **DocumentVisitor.VisitXXX** methoden om bepaalde aangepaste operaties uit te voeren.
- Bel me. [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) op het knooppunt waar u de opsomming wilt beginnen. Als u bijvoorbeeld het hele document wilt opsommen, gebruik dan [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) biedt standaard implementaties voor alle van de **DocumentVisitor.VisitXXX** methoden. Dit maakt het makkelijker om nieuwe documentbezoekers te creëren, aangezien alleen de methoden die voor de specifieke bezoeker nodig zijn, overschreven moeten worden. Het is niet nodig om alle bezoekersmethoden te omzeilen.

Het volgende voorbeeld laat zien hoe u het Bezoekerspatroon gebruikt om nieuwe bewerkingen toe te voegen aan de Aspose.Words objectmodel. In dit geval maken we een eenvoudige documentconverter in een tekstformaat:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Tekst uitpakken Alleen

De manieren om tekst uit het document op te halen zijn:

- Gebruik [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) met [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) om als platte tekst op te slaan in een bestand of stream
- Gebruik [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) en de `SaveFormat.Text` parameter. Intern, dit aanroepen opslaan als tekst in een geheugenstroom en geeft de resulterende string
- Gebruik [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) tekst met alles ophalen Microsoft Word controle karakters inclusief veldcodes
- Implementeer een aangepaste [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) om aangepaste extractie uit te voeren

### Gebruik `Node.GetText` en `Node.ToString`

A Word-document kan controle karakters die speciale elementen zoals veld, einde van de cel, einde van sectie, enz. aan te duiden bevatten. De volledige lijst van mogelijke Word control tekens wordt gedefinieerd in de **ControlChar** Klasse. De [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) methode geeft tekst terug met alle controle karakter tekens aanwezig in het knooppunt.

Aanroepen ToString geeft de platte tekstweergave van het document alleen terug zonder controletekens. Voor meer informatie over export als platte tekst zie **Using SaveFormat.Text**.

Het volgende voorbeeld toont het verschil tussen het aanroepen van de **GetText** en [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) methoden op een knooppunt:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Gebruik `SaveFormat.Text`

Dit voorbeeld slaat het document als volgt op:

- Filtreert veldtekens en veldcodes, vorm, voetnoot, endnote en commentaarverwijzingen
- Vervangt het einde van paragraaf [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) tekens met [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) combinaties
- Gebruikt UTF8 codering

Het volgende voorbeeld van code laat zien hoe een document in TXT-formaat kan worden opgeslagen:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Afbeeldingen uit vormen halen

Het kan nodig zijn om documentafbeeldingen uit te pakken om enkele taken uit te voeren. Aspose.Words laat je dit ook doen.

Het volgende voorbeeld van code laat zien hoe je afbeeldingen uit een document haalt:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
