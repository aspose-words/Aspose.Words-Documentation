---
title: Waar opgeven Ligging lettertypen typen in C#
second_title: Aspose.Words voor .NET
articleTitle: Waar opgeven Locatie lettertypentype
linktitle: Waar opgeven Locatie lettertypentype
description: "Verschillende opgeven Waar Type lettertypebronnen: systeemmap, gebruikersbronnen, het laden van lettertypen uit een stroom, een bestandssysteem of geheugen met behulp van C#."
type: docs
weight: 30
url: /nl/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Dit onderwerp beschrijft het standaardgedrag van Aspose.Words wanneer het op zoek is naar TrueType lettertypen, inclusief specifieke verschillen in besturingssysteem, en laat zien hoe u gebruikerslettertypebronnen kunt specificeren.

De [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) klasse wordt gebruikt om verschillende lettertypebronnen te specificeren. Er zijn verschillende uitvoeringen van de **FontSourceBase** klasse:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

De uitvoeringsdetails voor sommige klassen worden hieronder toegelicht.

## Lettertypen uit systeem laden {#loading-fonts-from-system}

Er is een speciale [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) klasse die altijd standaard gebruikt wordt. Het vertegenwoordigt alle TrueType lettertypen geïnstalleerd op het systeem. Daarom is het mogelijk om een bronlijst aan te maken met **SystemFontSource** en alle andere vereiste bronnen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Een enkele instantie van de **SystemFontSource** klasse is standaard gedefinieerd in [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Op verschillende besturingssystemen kunnen lettertypen zich op verschillende plaatsen bevinden. Echter, het gebruik van een **FontSettings** voorbeeld voor elk document is geen optimale oplossing. In de meeste gevallen wordt [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) Dat moet genoeg zijn.

Per-document gevallen zijn alleen nodig als het nodig is om verschillende font bronnen te gebruiken voor verschillende documenten, wat een zeldzaam geval is. Meerdere **FontSettings** instanties vermindert de prestaties omdat ze geen cache delen.

### Wanneer Aspose.Words Looks for TrueType Lettertypen op Windows

In de meeste gevallen Windows gebruikers ondervinden geen significante problemen met gemiste lettertypen of onjuiste lay-outs. Typisch, Aspose.Words gaat door een document, en wanneer het tegenkomt een lettertype link, haalt succesvol het lettertype gegevens uit de systeemmap.

Aan <span notrans="<span notrans=" Windows"=""></span>,"> Aspose.Words neemt eerst alle beschikbare lettertypen van de _%windir%\ Lettertypenmap. Deze instelling werkt meestal voor u. U geeft alleen uw eigen fonts-mappen op als dat nodig is. Aspose.Words voor .NET zoekt ook naar extra lettertypen geregistreerd in de HKEY_ LOKALE_MACHINE\SOFTWARE\Microsoft\Windows NT\Huidige versie\ Lettertypen registersleutel. Bovendien, Windows 10 maakt de installatie van lettertypen voor de huidige gebruiker mogelijk. Lettertypen worden geplaatst in het %userprofile%\ AppData\Local\Microsoft\Windows\ Lettertypen map en ook gespecificeerd in de HKEY_ HUIDIGE_USER\Software\Microsoft\Windows NT\Huidige versie\ Lettertypenregister, waar Aspose.Words zal zoeken naar deze lettertypen.

Als een document ingebedde lettertypen bevat, Aspose.Words kan relevante lettertypegegevens uit het document lezen en gebruiken om het document te maken. Documenten kunnen ook links bevatten naar lettertypen die niet in de systeemmappen staan, in welk geval de volgende scenario's zullen werken:

- Gebruikers kunnen het opzetten van nieuwe font bronnen via de **FontSettings** klasse
- Aspose.Words kan proberen om het gemiste lettertype te vervangen door een soortgelijke

{{% alert color="primary" %}}

Aspose.Words rendering op een server werkt meestal niet met een ASP.NET applicatie geconfigureerd om te draaien onder het Medium Trust niveau, omdat het toegang tot het register en de toegang tot het bestandssysteem beperkt.

{{% /alert %}}

### Lettertypen op niet-Windows Systemen

Aspose.Words zal zoeken naar de lettertypen in de systeemlettertypemappen. Een lijst van deze mappen kan worden gezien door de [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) methode. Als er geen ondersteunde lettertypen zijn gevonden, Aspose.Words zal het ingebouwde standaardlettertype Fanwood.ttf gebruiken.

Sinds het lettertype van Windows en niet-Windows Het besturingssysteem is anders. Aspose.Words doet alles wat mogelijk is om een soortgelijk lettertype te vinden en een layout te bouwen die vergelijkbaar is met het origineel. Dit is echter niet altijd mogelijk. In deze gevallen heeft de **FontSettings** klasse moet worden gebruikt om aangepaste lettertypen of substitutieregels toe te voegen.

#### Wanneer Aspose.Words Looks for TrueType Lettertypen op Linux

Anders Linux distributies kunnen lettertypen in verschillende mappen opslaan. Aspose.Words zoekt naar lettertypen op verschillende locaties. Standaard, Aspose.Words zoekt naar de lettertypen op alle volgende locaties: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Dit standaardgedrag zal werken voor de meeste Linux distributies, maar het is niet gegarandeerd om de hele tijd te werken, in welk geval u nodig hebt om de locatie van true lettertypen expliciet typen. Om dit te doen, moet u weten waar TrueType lettertypen zijn geïnstalleerd op uw Linux distributie.

#### Wanneer Aspose.Words Looks for TrueType Lettertypen op Mac OS X

Aspose.Words zoekt naar lettertypen in de map /Library/Fonts, de standaardlocatie voor TrueType lettertypen op Mac OS X. Hoewel deze instelling meestal voor u zal werken, moet u mogelijk uw eigen fonts-mappen opgeven wanneer u dat nodig heeft.

## Lettertypen van map laden {#loading-fonts-from-folder}

Als het document dat wordt verwerkt links bevat naar lettertypen die niet op het systeem staan, of je wilt ze niet toevoegen aan de systeemmap, of je mist rechten, dan zou de beste oplossing zijn om een map toe te voegen met je eigen lettertypen met behulp van de [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) methode. Hierdoor kan de systeembron vervangen worden door een gebruikersbron. Aspose.Words zal niet langer zoeken naar lettertypen in het register of Windows\ Lettertypemap en in plaats daarvan alleen scannen op lettertypen binnen de opgegeven map(s). De [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) de methode zal de overeenkomstige waarden teruggeven.

### Specificeer één of meerdere lettertypemappen

De [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) en [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) methoden zijn snelkoppelingen naar de **SetFontSources** methode met één of meer [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) gevallen. Deze methoden worden gebruikt om aan te geven Aspose.Words moet zoeken naar lettertypen. Als een map niet bestaat of niet toegankelijk is, Aspose.Words negeert deze map gewoon. Als alle mappen, inclusief bronnen voor de lettertypevervanging, werden genegeerd, Aspose.Words zal Fanwood-lettertype als standaard gebruiken.

Het volgende voorbeeld toont hoe u de map of broncode, die Aspose.Words zal vervolgens gebruiken om te zoeken naar TrueType lettertypen tijdens het renderen of inbedding van lettertypen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Een extra Booleaanse parameter bepaalt of lettertypen recursief worden gescand via alle mappen, waardoor alle kindmappen van een opgegeven map worden gescand. Het volgende voorbeeld toont hoe u kunt instellen Aspose.Words om in meerdere mappen te kijken voor TrueType-lettertypen bij het renderen of insluiten van lettertypen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Let op de prioriteiten. Als er lettertypen zijn met dezelfde familienaam en stijl in verschillende lettertypebronnen, dan Aspose.Words zal het lettertype selecteren uit de bron met een hogere prioriteit. Zie de beschrijving van het veld "Prioriteit."

Als u geen systeemlettertypen wilt gebruiken, Aspose.Words kunt u ze negeren en uw eigen lettertypen alleen gebruiken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Prioritaire eigenschap

De [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) eigenschap wordt gebruikt als er lettertypen zijn met dezelfde familienaam en stijl in verschillende lettertypebronnen. In dit geval Aspose.Words selecteert het lettertype uit de broncode met de hogere prioriteitswaarde. Er is bijvoorbeeld een oude versie van het lettertype op de systeemmap en de klant heeft een nieuwe versie van hetzelfde lettertype toegevoegd in een aangepaste map.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Lettertypen van stroom laden {#loading-fonts-from-stream}

Aspose.Words levert de [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) klasse, waarmee het laden van lettertypen uit de stroom mogelijk is. Om de broncode van het stream-lettertype te gebruiken, moet een gebruiker een afgeleide klasse aanmaken van **StreamFontSource** en een uitvoering van de [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) methode. De **OpenFontDataStream** de methode kan meerdere malen worden aangeroepen. Voor de eerste keer, zal het worden genoemd wanneer Aspose.Words scant de opgegeven lettertypebronnen om een lijst met beschikbare lettertypen te krijgen. Later kan het worden aangeroepen als het lettertype wordt gebruikt in het document om de lettertypegegevens te verwerken en om de lettertypegegevens in te sluiten in sommige uitvoerformaten. **StreamFontSource** kan nuttig zijn omdat het toestaat het laden van de lettertypegegevens alleen wanneer het nodig is, en niet om het op te slaan in het geheugen voor de [Lettertypeinstellingen](https://fontsettings/) Levenslang.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** is een alternatief voor [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) omdat het altijd mogelijk is om een stroom naar het geheugen te laden en door te geven aan **MemoryFontSource**. Het verschil is dat de **MemoryFontSource** wordt opgeslagen in het geheugen de hele tijd, en de **StreamFontSource** wordt op verzoek geladen en onmiddellijk verwijderd. Maar het kan meerdere keren geladen worden, zoals hierboven beschreven. In sommige gevallen **MemoryFontSource** Hij heeft de voorkeur aan anderen. **StreamFontSource**.

## Een lettertype-zoekcache opslaan en laden

Bij het zoeken naar een lettertype voor de eerste keer, Aspose.Words itereert over de door de gebruiker opgegeven lettertypebronnen en vormt een font-zoekcache op basis van gegevens uit deze bronnen. Zo verzamelt de cache informatie over de beschikbare lettertypen: lettertypefamilie, stijl, volledige lettertypenaam en anderen. Bij latere gesprekken, Aspose.Words zoekt naar informatie over het gewenste lettertype door zijn naam in de zoekcache van het lettertype, waarna het de opgegeven bestanden ontleedt om het lettertype te gebruiken.

De procedure voor het ontleden van alle beschikbare lettertypebestanden om de cache te initialiseren is vrij tijdrovend. Aspose.Words kunt u opslaan en laden van de cache met behulp van de [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) methode om het prestatieprobleem op te lossen. Dat wil zeggen, de gebruiker kan een eerder opgeslagen cache uit een bestand laden en de stap van het verwerken van alle beschikbare font bestanden overslaan.

{{% alert color="primary" %}}

Gebruik hetzelfde **SaveSearchCache** methode om de cache bij te werken.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u lettertypebronnen kunt voorbereiden en vooraf fontzoekcache kunt genereren:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Het volgende voorbeeld van code laat zien hoe u lettertypebronnen instelt en zoekcache laadt voordat u documenten verwerkt:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Lettertype zoeken cache is geweldig voor Aspose.Words integratie in AWS Lambda door een aantal beperkingen. Bijvoorbeeld, op de belangrijkste container grootte en, als gevolg, op het aantal lettertypen.

De cache is ook geschikt voor andere scenario's wanneer lettertypen worden geladen over het netwerk. Of voor scenario's wanneer er geen manier is om een `FontSettings` instantie met een geladen cache.

{{% /alert %}}

## Krijg een lijst van beschikbare lettertypen {#get-a-list-of-available-fonts}

Als u de lijst van beschikbare lettertypen wilt krijgen, die bijvoorbeeld gebruikt kunnen worden om een PDF-document te maken, kunt u de [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) methode, zoals aangegeven in het volgende voorbeeld van de code. De [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) klasse geeft informatie over het fysieke lettertype beschikbaar voor Aspose.Words lettertype motor:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
