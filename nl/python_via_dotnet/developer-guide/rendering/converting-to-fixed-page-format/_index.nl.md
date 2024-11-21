---
title: Omzetten naar Fixed-page Format
second_title: Aspose.Words voor Python via .NET
articleTitle: Omzetten naar Fixed-page Format
linktitle: Omzetten naar Fixed-page Format
description: "Documenten opslaan naar PDF, XPS, HTML, XAML, PostScript en PCL-formaten met behulp van Python."
type: docs
weight: 10
url: /nl/python-net/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementeert zijn eigen pagina layout engine. Alvorens in zijn specificaties te komen, is het de moeite waard om eerst het document op hoog niveau te bespreken. Bij het denken over een document, gebruikers meestal voorstellen een aantal papieren bladen met woorden, afbeeldingen, tabellen en grafieken. Documenten kunnen van verschillende soorten zijn, zoals tekst, spreadsheets, dia's, CAD tekeningen, stroomschema's, en kunnen daarom in wezen verschillende indelingen hebben. De meeste toepassingen laten toe om documenten naar een printer te sturen; dit is wanneer een gebruiker het document daadwerkelijk kan bekijken.

## Een document tonen in verschillende toepassingen

Verschillende toepassingen voor het bekijken of publiceren van documenten stellen gebruikers in staat om te openen (Adobe Acrobat, XPS Viewer), en soms bewerken (Adobe InDesign) documenten van specifieke formaten. Deze toepassingen produceren meestal zogenaamde "vaste pagina"-formaatdocumenten. Een dergelijk documentformaat beschrijft precies waar een document inhoud op elke pagina wordt geplaatst. Intern, de PDF of XPS formaat bevat een beschrijving van elke pagina, evenals tekening instructies, met vermelding van de lay-out van de inhoud op de pagina. Dit is vergelijkbaar met afbeeldingsformaten, waarbij wordt beschreven waar de inhoud wordt weergegeven in raster of vectorvorm.

Sommige tekstbewerkingstoepassingen ondersteunen het bekijken van een documentpagina's daarentegen niet. Bijvoorbeeld, Microsoft Notepad ondersteunt zeer weinig andere functies dan het weergeven, bewerken en afdrukken van tekst. De belangrijke opmerking is hier dat dergelijke toepassingen geen pagina's van het document kunnen tonen noch een gebruiker kunnen vertellen hoeveel van hen zou worden afgedrukt, alleen toestaan om de inhoud van het document te bekijken. Het document kan worden opgeslagen in platte tekst formaat en kan worden geopend door vele andere toepassingen. Met behulp van een toepassing die het mogelijk maakt binaire inhoud van een willekeurig bestand te bekijken, kan men zien wat is opgeslagen in het documentbestand

Iets geavanceerdere tekstbewerkingstoepassingen, zoals Microsoft WordPad, sla het document op in Rich Text Format (RTF), dat meer opmaakfuncties ondersteunt, zoals het invoegen van afbeeldingen, karakteropmaak, alineamarges en afstand. Het RTF-formaat bevat echter ook alleen de inhoud van het document en heeft geen informatie over pagina's.

Microsoft Word is de meest geavanceerde tekstbewerkingsapplicatie in Windows Vandaag. Het formatteert bestanden in het DOCX-formaat, die de inhoud van het document flexibel en uitgebreid beschrijft, zodat gebruikers paginagrootte kunnen specificeren, oriëntatie voor een document sectie, en, als een WYSIWYG-toepassing zelfs documentpagina's op het scherm tonen. Toch is er nog steeds geen informatie over hoe de inhoud van het document wordt weergegeven op pagina's die beschikbaar zijn in het documentbestand. Het documentbestand beschrijft alleen de inhoud zelf, en de relatie van documentobjecten met elkaar, samen met enkele geometrische beperkingen. Als gevolg hiervan, alvorens een document te tonen, Microsoft Word Rekent die informatie zelf uit. Dit is waar een pagina-indeling in het spel komt.

## Wat is een pagina-indeling

Een documentpaginaindeling is een gegevensstructuur die beschrijft waar een bepaald object zich op pagina's bevindt voor alle documentobjecten. Bovendien, omdat objecten eigenschappen hebben die hun uiterlijk beïnvloeden, zoals lettergrootte, schaduw- of tekeneffecten, moet je niet alleen weten waar het object is, maar ook welk gebied(s) van de pagina die het inneemt, en of het zal gelden voor meerdere pagina's, zodat andere objecten niet overlappen hetzelfde gebied(s).

Aspose.Words implementeert de functionaliteit van pagina-indeling intern zodat het alle vaste paginaformaten, zoals PDF, kan produceren; XPS, en verschillende beeldformaten. Zonder pagina-indeling zou de informatie die is opgeslagen in het bestand met vaste pagina's niet beschikbaar zijn en zouden al deze formaten niet worden ondersteund.

De relatie tussen een document en een pagina-indeling is heel eenvoudig. Terwijl een document de inhoud beschrijft, beschrijft de bijbehorende paginaindeling de geometrie van die inhoud. Merk op, dat een pagina-indeling niet kan bestaan zonder een document omdat er geen inhoud zou zijn voor het berekenen van de geometrie, maar een document kan bestaan zonder een pagina-indeling. Wanneer bijvoorbeeld een DOCX-document wordt omgezet in een RTF-document, is het meestal niet nodig om de geometrie te kennen, aangezien geen van beide formaten het opslaat.

## Pagina-indeling aanmaken

Het maken van een pagina-indeling kan een kostbare procedure zijn, zowel in termen van snelheid als geheugen. Dit is om verschillende redenen:

- Het document kan een grote hoeveelheid inhoud hebben, die op duizenden pagina's moet worden weergegeven. De geometrie van elk object op elke pagina zou moeten worden beschreven, het verbruiken van geheugenbronnen.
- Het document kan vele regels, waardoor beperkingen op geometrie. Aanzienlijke rekentijd kan worden besteed, zodat elke beperking is voldaan
- Sommige documenten, bijvoorbeeld, `NUMPAGES` veld, recursieve afhankelijkheden creëren voor toekomstige eigendomswaarden, die niet beschikbaar zijn op het moment van berekening. Dit leidt tot repetitieve berekeningen en voegt zich bij de rekentijd.

Om de bovengenoemde redenen, Aspose.Words zal een pagina-indeling alleen maken als het nodig is. Een typische reden hiervoor zou een verzoek zijn om documentpagina's te maken of om een veldwaarde te verkrijgen die afhankelijk is van informatie die beschikbaar is in pagina-indeling. Een minder voor de hand liggende reden is het exporteren van een document naar HTML. Hoewel HTML geen fixed-page formaat is en geen geometrie van de inhoudobjecten beschrijft, ondersteunt het nog steeds afbeeldingen. Dergelijke afbeeldingen kunnen in de vorm van vormen die in Microsoft Word met een sms erin. Bijvoorbeeld, een grafiek met as labels kan worden geëxporteerd naar HTML als een afbeelding, maar voordat dit kan worden gedaan Aspose.Words moet dat beeld weergeven, en moet daarom weten waar het label getoond moet worden. Zie het grafiekvoorbeeld hieronder:

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format_1" style="width:800px"/>

### Niet-geometrisch Eigenschappen

Naast het verwerken van geometrische informatie is een pagina-indeling ook verantwoordelijk voor het berekenen van kleuren en randstijlen. In Microsoft Word, tekstkleur kan worden opgegeven als automatisch, wat impliceert dat de kleurselectie gebaseerd moet zijn op de schaduwkleur van de cel of paragraaf, of op basis van de kleur van de pagina, waar de tekst verschijnt.

Pagina-indeling berekent waar de tekst zal verschijnen en welke inhoud erachter wordt weergegeven, waardoor kleurberekening mogelijk wordt. Er zijn andere specifieke berekeningen uitgevoerd door de pagina-indeling. Bijvoorbeeld, een horizontale rand in een tabel hangt af van de vraag of een tabelrij de laatste is in een kolom van tekst, en of deze over kolommen is gebroken. Als een rij als laatste in een kolom wordt weergegeven, wordt de onderste rand gebruikt in plaats van horizontaal.

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In <span notrans="<span notrans=" Aspose.Words"=""></span>,"> Een gebruiker kan vragen of hij een nieuwe pagina-indeling wil bouwen of een bestaande kan bijwerken. Beide kunnen worden uitgevoerd door de [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) methode, verstrekt door de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Klasse. Als een paginaindeling niet bestaat, maar er is behoefte aan (bijvoorbeeld wanneer het document wordt geëxporteerd naar een vaste paginaformaat), Aspose.Words zal deze methode automatisch aanroepen. Echter, als een pagina-indeling al bestaat, Aspose.Words zal de bestaande gebruiken om te voorkomen dat de middelen die nodig zijn om het bij te werken worden verbruikt. In dit geval moet de gebruiker de [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) methode, om ervoor te zorgen dat de pagina-indeling is bijgewerkt met het document model.

### Dynamische structuur

Het proces van het maken van pagina-indeling bestaat uit de volgende stappen:

- *Conversion* De inhoud van het documentmodel opsommen en overeenkomstige lay-outobjecten voorbereiden.
- *Build*
- *Reflow* Het bijwerken van objecten regeling om te voldoen aan geometrie beperkingen.
- *Projecteren van lay-out objecten in vaste pagina presentatie en het afronden van kleurinformatie*.
- *Bouwen en herstromen van de vorminhoud* Een stap vereist als het document vormen bevat met geneste tekst inhoud.

Merk op, dat de pagina-indeling is een dynamische structuur, die gedeeltelijk kan worden herbouwd. Dit is vooral nodig wanneer het onmogelijk is om veldwaarden te berekenen zonder de documentopmaakstructuur te herbouwen. Het veld kan verwijzen naar de locatie van een object op een pagina, en tegelijkertijd wordt de veldwaarde zelf ook weergegeven op de pagina, die de locatie van het referentieobject beïnvloedt. Een paginaindeling kan niet in één keer worden gebouwd, omdat veldwaarden mogelijk nog niet beschikbaar zijn op het moment van positioneren op een pagina.

Beschouw het typische scenario wanneer de `NUMPAGES` veld verschijnt in de voettekst van de eerste pagina in het document. De waarde van dit veld is het totale aantal bladzijden. Om het veld op een pagina te positioneren, moet de waarde ervan bekend zijn. Als alleen de eerste pagina wordt momenteel gebouwd dan is het totale aantal pagina's nog niet bekend. In dit geval moet de pagina-indeling de standaardwaarde gebruiken en later terugkomen op dat veld en de waarde ervan wijzigen volgens de werkelijke berekeningen. Het wijzigen van de veldwaarde kan echter van invloed zijn op andere documentinhoud op een pagina en uiteindelijk leiden tot een nieuwe pagina te worden toegevoegd of een bestaande pagina verwijderd, waardoor de berekende waarde verouderd. Dit probleem kan worden opgelost door het mogelijk te maken om de bestaande pagina-indeling bij te werken.

Bij het maken van een layout is het ook mogelijk om [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) eigenschappen die de uitvoer van het document op pagina's beïnvloeden.

## Opslaan naar Fixed-Pagina Format

Nadat de paginaindeling is gebouwd en de geometrie van objecten en hun positie op de pagina zijn berekend, kan het document worden opgeslagen in een vaste pagina formaat ondersteund door Aspose.Words. Bij het opslaan van documenten naar fixed-page formats, kunnen de rendering opties die voor al deze formaten worden gebruikt worden gebruikt. Zij staan toe dat:

- Het aantal en het aantal pagina's in het uitvoerdocument ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)).
- Een reeks tekens die worden gebruikt om getallen rendering ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/)).
- Een metafile speler ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)). Voor meer details, zie de [Behandeling Windows Metafiles](/words/nl/python-net/handling-windows-metafiles/) artikel.
- Een kwaliteitspercentage voor het opnieuw indrukken van JPEG-afbeeldingen, waarvan de waarde enigszins kan verschillen, afhankelijk van het geselecteerde formaat ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/)).
- Optimalisatie van vector graphics in Aspose.Words output ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)).
- Grafische opties bij het opslaan naar Tiff, Png, Bmp, Jpeg, Emf formaten ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)).
- Het document in grijswaarden opslaan ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)).
- Schakelen tussen weergave van TekeningML vormen en fallback vormen ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)).
- Schakelen tussen DML effecten rendering modi ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)).

Het voorbeeld hieronder toont hoe een document in JPEG-formaat op te slaan met behulp van de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode en weergaveopties:

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
