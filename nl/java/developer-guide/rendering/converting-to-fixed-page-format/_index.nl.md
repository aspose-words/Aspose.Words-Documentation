---
title: Omzetten naar Fixed-page Format in Java
second_title: Aspose.Words voor Java
articleTitle: Omzetten naar Fixed-Pagina Format
linktitle: Omzetten naar Fixed-Pagina Format
description: "Aspose.Words voor Java implementeert zijn eigen pagina lay-out engine waarmee het alle vaste paginaformaten, zoals PDF, kan produceren; XPS, en verschillende beeldformaten."
type: docs
weight: 10
url: /nl/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementeert zijn eigen pagina-indeling motor. Alvorens in zijn specificaties te duiken, is het de moeite waard eerst het document op hoog niveau te bespreken. Bij het denken over een document, gebruikers meestal voorstellen een aantal papieren bladen met woorden, afbeeldingen, tabellen en grafieken. Documenten kunnen van verschillende soorten zijn, zoals tekst, spreadsheets, dia's, CAD tekeningen, stroomschema's, en kunnen daarom in wezen verschillende indelingen hebben. De meeste toepassingen laten toe documenten naar een printer te sturen; dit is wanneer een gebruiker het document daadwerkelijk kan bekijken.

## Een document tonen in verschillende toepassingen

Met verschillende toepassingen voor het bekijken of publiceren van documenten kunnen gebruikers openen (Adobe Acrobat, XPS Viewer), en soms bewerken (Adobe InDesign) documenten van specifieke formaten. Deze toepassingen produceren meestal zogenaamde "vaste pagina"-formaatdocumenten. Een dergelijk documentformaat beschrijft precies waar een document inhoud op elke pagina wordt geplaatst. Intern, de PDF of XPS formaat bevat een beschrijving van elke pagina, evenals tekening instructies, met vermelding van de lay-out van de inhoud op de pagina. Dit is vergelijkbaar met afbeeldingsformaten, waarbij de inhoud wordt beschreven in raster of vectorvorm.

Sommige tekstbewerkingstoepassingen ondersteunen daarentegen het bekijken van een documentpagina's niet. Bijvoorbeeld, Microsoft Notepad ondersteunt zeer weinig functies anders dan gewoon weergeven, bewerken en afdrukken tekst. De belangrijke observatie is hier dat dergelijke toepassingen geen pagina's van het document kunnen tonen noch een gebruiker kunnen vertellen hoeveel van hen zou worden afgedrukt, alleen toestaan om de inhoud van het document te bekijken. Het document kan worden opgeslagen in platte tekst formaat en kan worden geopend door vele andere toepassingen. Met behulp van een applicatie die het mogelijk maakt binaire inhoud van een willekeurig bestand te bekijken, kan men zien wat er in het documentbestand is opgeslagen, het is gewoon gewone tekst, er is niets anders in.

Iets geavanceerdere tekstbewerkingstoepassingen, zoals Microsoft WordPad, sla het document op in Rich Text Format (RTF), dat meer opmaakfuncties ondersteunt, zoals het invoegen van afbeeldingen, karakteropmaak, alineamarges en afstand. Het RTF-formaat bevat echter ook alleen de inhoud van het document en heeft geen informatie over pagina's.

Microsoft Word is de meest geavanceerde tekst-editing toepassing in Windows Vandaag. Het formatteert bestanden in het DOCX-formaat, dat de inhoud van het document flexibel en uitgebreid beschrijft, zodat gebruikers paginagrootte kunnen specificeren, oriëntatie voor een document sectie, en, als een WYSIWYG-toepassing zelfs documentpagina's op het scherm tonen. Toch is er nog steeds geen informatie over hoe de inhoud van het document wordt weergegeven op pagina's die beschikbaar zijn in het documentbestand. Het documentbestand beschrijft alleen de inhoud zelf, en de relatie van documentobjecten met elkaar, samen met enkele geometrische beperkingen. Als gevolg hiervan, alvorens een document te tonen, Microsoft Word Rekent die informatie zelf uit. Dit is waar een pagina-indeling in het spel komt.

## Wat is een pagina-indeling

Een documentpaginaindeling is een gegevensstructuur die beschrijft waar een bepaald object zich op pagina's bevindt voor alle documentobjecten. Bovendien, omdat objecten eigenschappen hebben die hun uiterlijk beïnvloeden, zoals lettergrootte, schaduw- of tekeneffecten, moet je niet alleen weten waar het object is, maar ook welk gebied (en) van de pagina die het inneemt, en of het zal gelden voor meerdere pagina's, zodat andere objecten niet overlappen hetzelfde gebied (en).

Aspose.Words implementeert de functionaliteit van pagina-indeling intern zodat het alle vaste paginaformaten, zoals PDF, kan produceren; XPS, en verschillende beeldformaten. Zonder pagina-indeling zou de informatie die is opgeslagen in het bestand met vaste pagina's niet beschikbaar zijn en zouden al deze formaten niet worden ondersteund.

De relatie tussen een document en een pagina-indeling is vrij eenvoudig. Terwijl een document de inhoud beschrijft, beschrijft de bijbehorende pagina-indeling de geometrie van die inhoud. Merk op dat een pagina-indeling niet kan bestaan zonder een document omdat er geen inhoud zou zijn voor het berekenen van de geometrie, maar een document kan bestaan zonder een pagina-indeling. Bijvoorbeeld, wanneer een DOCX-document wordt omgezet in een RTF-document, is het meestal niet nodig om de geometrie te kennen, omdat geen van beide formaten het opslaat.

## Een pagina-indeling aanmaken

Het maken van een pagina-indeling kan een dure procedure zijn, zowel in termen van snelheid als geheugen. Dit is om verschillende redenen:

- Het document kan een grote hoeveelheid inhoud hebben, die op duizenden pagina's moet worden weergegeven. De geometrie van elk object op elke pagina zou moeten worden beschreven, het verbruiken van geheugenbronnen.
- Het document kan vele regels, waardoor beperkingen op geometrie. Aanzienlijke rekentijd kan worden besteed, ervoor te zorgen dat elke beperking is voldaan
- Sommige document functies, bijvoorbeeld de `NUMPAGES` veld, maak recursieve afhankelijkheden voor toekomstige eigenschappen, die niet beschikbaar zijn op het moment van berekening. Dit leidt tot repetitieve berekeningen en voegt zich bij de rekentijd.

Om bovengenoemde redenen, Aspose.Words zal een pagina-indeling alleen maken als het nodig is. Een typische reden hiervoor zou een verzoek zijn om documentpagina's te maken of om een veldwaarde te verkrijgen die afhankelijk is van informatie die beschikbaar is in de paginaindeling. Een minder voor de hand liggende reden is het exporteren van een document naar HTML. Hoewel HTML geen fixed-page formaat is en de geometrie van de inhoudsobjecten niet wordt beschreven, ondersteunt het nog steeds afbeeldingen. Dergelijke afbeeldingen kunnen in de vorm van vormen die in Microsoft Word met een sms erin. Bijvoorbeeld, een grafiek met as labels kan worden geëxporteerd naar HTML als een afbeelding, maar voordat dit kan worden gedaan Aspose.Words moet dat beeld te renderen, en dus moet weten waar het label te tonen. Zie het grafiekvoorbeeld hieronder:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Niet-geometrisch Eigenschappen

Naast het verwerken van geometrische informatie is een pagina-indeling ook verantwoordelijk voor het berekenen van kleuren en grensstijlen. In Microsoft Word, tekstkleur kan worden opgegeven als automatisch, wat impliceert dat de kleurselectie gebaseerd moet zijn op de schaduwkleur van de cel of paragraaf, of op basis van de kleur van de pagina, waar de tekst verschijnt.

Pagina-indeling berekent waar de tekst zal verschijnen en welke inhoud erachter wordt weergegeven, waardoor kleurberekening mogelijk wordt. Er zijn andere specifieke berekeningen uitgevoerd door de pagina-indeling. Bijvoorbeeld, een horizontale rand in een tabel hangt af van de vraag of een tabelrij de laatste is in een kolom van tekst, en of deze over kolommen is gebroken. Als een rij als laatste in een kolom wordt weergegeven, wordt de onderste rand gebruikt in plaats van horizontaal.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In Aspose.Words een gebruiker kan vragen of hij een nieuwe pagina-indeling wil bouwen of een bestaande kan bijwerken. Beide kunnen worden uitgevoerd door de [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) methode, verstrekt door de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasse. Als er geen paginaindeling bestaat, maar er is wel behoefte aan (bijvoorbeeld wanneer het document wordt geëxporteerd naar een vaste paginaformaat), Aspose.Words zal deze methode automatisch bellen. Als er echter al een paginaindeling bestaat, Aspose.Words zal de bestaande gebruiken om te voorkomen dat de middelen die nodig zijn om het bij te werken worden verbruikt. In dit geval moet de gebruiker de `UpdatePageLayout` methode, om ervoor te zorgen dat de pagina-indeling is bijgewerkt met het document model.

### Dynamische structuur

Het proces van het maken van pagina-indeling bestaat uit de volgende stappen:

- *Conversion* Opsomming van inhoud van het documentmodel en voorbereiding van overeenkomstige lay-outobjecten.
- *Build* Instellen van lay-out objecten om de inhoud van het document op pagina's weer te geven.
- *Reflow* Het bijwerken van objecten regeling om te voldoen aan geometrie beperkingen.
- *Projecteren van lay-out objecten in vaste pagina presentatie en het afronden van kleurinformatie*.
- *Bouwen en herstromen van de vorminhoud* Een stap vereist als het document vormen bevat met geneste tekst inhoud.

Merk op, dat de pagina-indeling is een dynamische structuur, die gedeeltelijk kan worden herbouwd. Dit is vooral nodig wanneer het onmogelijk is om veldwaarden te berekenen zonder de document layout structuur te herbouwen. Het veld kan verwijzen naar de locatie van een object op een pagina, en tegelijkertijd wordt de veldwaarde zelf ook weergegeven op de pagina, die de locatie van het referentieobject beïnvloedt. Een paginaindeling kan niet in één keer worden gebouwd, omdat veldwaarden mogelijk nog niet beschikbaar zijn op het moment van positionering op een pagina.

Beschouw het typische scenario wanneer de `NUMPAGES` veld verschijnt in de voettekst van de eerste pagina in het document. De waarde van dit veld is het totale aantal bladzijden. Om het veld op een pagina te positioneren, moet de waarde ervan bekend zijn. Als alleen de eerste pagina wordt momenteel gebouwd dan is het totale aantal pagina's nog niet bekend. In dit geval moet de pagina-indeling de standaardwaarde gebruiken en later terugkomen op dat veld en de waarde wijzigen volgens de werkelijke berekeningen. Het wijzigen van de veldwaarde kan echter van invloed zijn op andere documentinhoud op een pagina en uiteindelijk leiden tot een nieuwe pagina worden toegevoegd of een bestaande pagina verwijderd, waardoor de berekende waarde verouderd. Dit probleem kan worden opgelost door het mogelijk te maken om de bestaande pagina-indeling bij te werken.

Bij het maken van een layout is het ook mogelijk om [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) eigenschappen die de uitvoer van het document op pagina's beïnvloeden.

## Opslaan naar Fixed Pagina Format

Nadat de pagina-indeling is gebouwd en de geometrie van objecten en hun positie op de pagina zijn berekend, kan het document worden opgeslagen in een vaste pagina formaat ondersteund door Aspose.Words. Bij het opslaan van documenten naar fixed-page formaten, kunnen de rendering opties die voor al deze formaten worden gebruikt worden gebruikt. Zij staan toe dat:

- Het aantal en het aantal pagina's in het uitvoerdocument ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Voortgang van het pagina-voor-pagina opslaan van documenten ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Een set tekens die worden gebruikt om getallen rendering ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Een metafile speler ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Voor meer details, zie de [Afdeling Windows Metabestanden](/words/nl/java/handling-windows-metafiles/) artikel.
- Een kwaliteitspercentage voor het herdrukken van JPEG-afbeeldingen, waarvan de waarde enigszins kan verschillen, afhankelijk van het geselecteerde formaat ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimalisatie van vector graphics in Aspose.Words output ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Grafische opties bij het opslaan naar Tiff, Png, Bmp, Jpeg, Emf formaten ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Het document in grijswaarden opslaan ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Schakelen tussen de weergave van TekeningML vormen en fallback vormen ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Schakelen tussen DML effecten rendering modi ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Het voorbeeld hieronder toont hoe een document op te slaan in JPEG-formaat met behulp van de `Save` methode en weergaveopties:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
