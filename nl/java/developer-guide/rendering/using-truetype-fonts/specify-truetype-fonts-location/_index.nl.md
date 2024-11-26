---
title: Waar opgeven Ligging lettertypen typen in Java
second_title: Aspose.Words voor Java
articleTitle: Waar opgeven Locatie lettertypen
linktitle: Waar opgeven Locatie lettertypen
description: "Verschillende opgeven Waar Type lettertypebronnen: systeemmap, gebruikersbronnen, het laden van lettertypen uit een stroom, een bestandssysteem, of geheugen met behulp van Java."
type: docs
weight: 30
url: /nl/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Dit onderwerp beschrijft het standaardgedrag van Aspose.Words wanneer het op zoek is naar TrueType lettertypen, waaronder specifieke verschillen in besturingssysteem, en laat zien hoe u gebruikerslettertypebronnen kunt specificeren.

De [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) klasse wordt gebruikt om verschillende lettertypebronnen te specificeren. Er zijn verschillende uitvoeringen van de **FontSourceBase** klasse:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

De uitvoeringsdetails voor sommige klassen worden hieronder toegelicht.

## Lettertypen uit systeem laden {#loading-fonts-from-system}

Er is een speciale [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) klasse die altijd standaard wordt gebruikt. Het vertegenwoordigt alle TrueType lettertypen geïnstalleerd op het systeem. Daarom is het mogelijk om een bronlijst aan te maken met **SystemFontSource** en alle andere vereiste bronnen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Een enkele instantie van de **SystemFontSource** klasse is standaard gedefinieerd in [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Op verschillende besturingssystemen kunnen lettertypen zich op verschillende plaatsen bevinden. Echter, het gebruik van een **FontSettings** voorbeeld voor elk document is geen optimale oplossing. In de meeste gevallen wordt gebruik gemaakt van [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) Moet genoeg zijn.

Per-document gevallen zijn alleen nodig als het nodig is om verschillende font bronnen te gebruiken voor verschillende documenten, wat een zeldzaam geval is. Meerdere gebruiken **FontSettings** instanties vermindert de prestaties omdat ze de cache niet delen.

### Waarbij Aspose.Words Looks for TrueType Lettertypen op Windows

In de meeste gevallen, Windows gebruikers ondervinden geen significante problemen met gemiste lettertypen of onjuiste lay-outs. Meestal, Aspose.Words gaat door een document, en wanneer het tegenkomt een lettertype link, het met succes haalt de lettertype gegevens uit de systeemmap.

Aan Windows Aspose.Words neemt eerst alle beschikbare lettertypen uit de _%windir%\Fonts map. Deze instelling werkt meestal voor u. U geeft alleen uw eigen fonts-mappen op als dat nodig is. Aspose.Words ook zoekt naar extra lettertypen geregistreerd in de HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts registersleutel. Bovendien, Windows 10 maakt de installatie van lettertypen voor de huidige gebruiker mogelijk. Lettertypen worden geplaatst in de %userprofile%\AppData\Local\Microsoft\Windows\Fonts map en ook gespecificeerd in de HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts register, waar Aspose.Words zal zoeken naar deze lettertypen.

Als een document ingebedde lettertypen bevat, Aspose.Words kan relevante lettertypegegevens van het document lezen en gebruiken om het document te maken. Documenten kunnen ook links bevatten naar lettertypen die niet in de systeemmappen staan, in welk geval de volgende scenario's zullen werken:

- Gebruikers kunnen via de **FontSettings** klasse
- Aspose.Words kan proberen om het gemiste lettertype te vervangen door een soortgelijke

### Lettertypen op niet-Windows Systemen

Aspose.Words zal zoeken naar de lettertypen in de systeemlettertypemappen. Een lijst van deze mappen kan worden gezien door de [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) methode. Als er geen ondersteunde lettertypen zijn gevonden, Aspose.Words zal het ingebouwde standaard lettertype Fanwood.ttf gebruiken.

Sinds het lettertype van Windows en niet-Windows OS zijn anders, Aspose.Words doet alles wat mogelijk is om een soortgelijk lettertype te vinden en een layout te bouwen die vergelijkbaar is met het origineel. Dit is echter niet altijd mogelijk. In deze gevallen heeft de **FontSettings** klasse moet worden gebruikt om aangepaste lettertypen of substitutieregels toe te voegen.

#### Waarbij Aspose.Words Looks for TrueType Lettertypen op Linux

Anders Linux distributies kunnen lettertypen in verschillende mappen opslaan. Aspose.Words zoekt naar lettertypen op verschillende locaties. Standaard, Aspose.Words zoekt naar de lettertypen op alle volgende locaties: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts` Dit standaardgedrag zal werken voor de meeste Linux distributies, maar het is niet gegarandeerd om te werken de hele tijd, in welk geval je zou kunnen nodig hebben om de locatie van true lettertypen expliciet typen. Om dit te doen, moet u weten waar TrueType lettertypen zijn geïnstalleerd op uw Linux distributie.

#### Waarbij Aspose.Words Looks for TrueType Lettertypen op Mac OS X

Aspose.Words zoekt naar lettertypen in de map /Library/Fonts, de standaardlocatie voor TrueType lettertypen op Mac OS X. Hoewel deze instelling meestal voor u zal werken, moet u mogelijk uw eigen fonts-mappen opgeven in het geval wanneer dat nodig is.

#### TrueType-lettertypen op Android

Aan Android, Fonts workflow is ingekapseld in Typeface klasse.
Er zijn vijf typen lettertypes, elk lettertype vertegenwoordigt een groep van vergelijkbare lettertypenfamilies:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERF
- SERF

Bijvoorbeeld, volgens Android [lettertypen.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) Config file,

**Lettertypen.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Om naar soortgelijke lettertypen te zoeken, worden de eerder beschreven strategieën gebruikt

Naast hen, Aspose.Words heeft een eigen lijst van vervangingen voor de Android platform.

Laten we zeggen dat het document het pmingLiU-ExtB lettertype bevat, ten eerste, Aspose.Words zoekt naar het gewenste lettertype binnen de systeembronnen.

De standaardlijst van Android Mappen van lettertype zijn:

- /system/fonts
- /system/font
- /data/fonts

De Aspose.Words kijkt door door de gebruiker gedefinieerde bronnen die was ingesteld met de methode:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Indien een expliciete vervanging is gespecificeerd, Aspose.Words vervangt het ontbrekende lettertype door de suggestie van de gebruiker:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Als geen van de regels werkte, Aspose.Words Controleer de interne vervangende tafel. Als de tabel informatie bevat over een goede pasvorm dan wordt het lettertype vervangen. In ons geval Aspose.Words zal selecteren `Typeface.SERIF`. Maar als de tabel weet niets over het gewenste lettertype dan Aspose.Words pikt een lettertype op gebaseerd op speciale MS Word regels of de dichtstbijzijnde afstand in Panose ruimte.

#### TrueType-lettertypen op .NET Core en Xamarin

Voor .NET Core en Xamarin dezelfde regel geldt als voor Aspose.Words voor Java versie. Standaard zijn alle systeemlettertypen van het platform waarop de toepassing draait beschikbaar.
De lijst van mappen waar de zoekopdracht zal worden uitgevoerd kan worden gevonden door het bellen van de methode:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Lettertypen van map laden {#loading-fonts-from-folder}

Als het document dat verwerkt wordt links bevat naar lettertypen die niet op het systeem staan, of je wilt ze niet toevoegen aan de systeemmap, of je mist permissies, dan zou de beste oplossing zijn om een map toe te voegen met je eigen lettertypen met behulp van de `SetFontsSources` methode. Hierdoor kan de systeembron worden vervangen door een gebruikersbron. Aspose.Words zal niet langer zoeken naar lettertypen in het register of Windows\Font map en in plaats daarvan alleen scannen op lettertypen binnen de opgegeven map(s). De `GetFontSources` de methode zal de overeenkomstige waarden teruggeven.

### Specificeer één of meerdere lettertypemappen

De [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) en SetFontsFolders methoden zijn snelkoppelingen naar de **SetFontSources** methode met één of meer [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) gevallen. Deze methoden worden gebruikt om aan te geven waar Aspose.Words Zoek naar lettertypen. Als een map niet bestaat of niet toegankelijk is, Aspose.Words negeert deze map gewoon. Als alle mappen, inclusief bronnen voor de lettertypevervanging, werden genegeerd, Aspose.Words zal Fanwood-lettertype als standaard gebruiken.

Het volgende voorbeeld toont hoe u de map of bron, die Aspose.Words zal vervolgens gebruiken om TrueType-lettertypen te zoeken tijdens het renderen of inbedding van lettertypen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Een extra Booleaanse parameter bepaalt of lettertypen recursief worden gescand via alle mappen, vandaar dat alle kindmappen van een opgegeven map worden gescand. Het volgende voorbeeld laat zien hoe u kunt instellen Aspose.Words om in meerdere mappen te kijken voor TrueType lettertypen bij het renderen of insluiten van lettertypen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Let op de prioriteiten. Als er lettertypen zijn met dezelfde familienaam en stijl in verschillende lettertypebronnen, dan Aspose.Words selecteert het lettertype uit de broncode met een hogere prioriteit. Zie de beschrijving van het veld "Prioriteit."

{{% /alert %}}

Als u geen systeemlettertypen wilt gebruiken, Aspose.Words Hiermee kunt u ze negeren en uw eigen lettertypen alleen gebruiken:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Prioritaire eigenschap

De [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) eigenschap wordt gebruikt als er lettertypen zijn met dezelfde familienaam en stijl in verschillende lettertypebronnen. In dit geval Aspose.Words selecteert het lettertype uit de broncode met de hogere prioriteitswaarde. Er is bijvoorbeeld een oude versie van het lettertype op de systeemmap en de klant heeft een nieuwe versie van hetzelfde lettertype toegevoegd in een aangepaste map.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Lettertypen van stroom laden {#loading-fonts-from-stream}

Aspose.Words levert de [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) klasse, waarmee het laden van lettertypen vanuit de stroom mogelijk is. Om de broncode van het stream-lettertype te gebruiken, moet een gebruiker een afgeleide klasse aanmaken van **StreamFontSource** en een uitvoering van de [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) methode. De **OpenFontDataStream** de methode kan meerdere malen worden aangeroepen. Voor de eerste keer, zal het worden geroepen wanneer Aspose.Words scant de opgegeven lettertypebronnen om een lijst van beschikbare lettertypen te krijgen. Later kan het worden aangeroepen als het lettertype wordt gebruikt in het document om de lettertypegegevens te verwerken en om de lettertypegegevens in te sluiten in sommige uitvoerformaten. **StreamFontSource** kan nuttig zijn omdat het toestaan van het laden van de lettertypegegevens alleen wanneer het nodig is, en niet om het op te slaan in het geheugen voor de `FontSettings` Levenslang.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** is een alternatief voor [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) omdat het altijd mogelijk is om een stroom naar het geheugen te laden en door te geven aan **MemoryFontSource**. Het verschil is dat de **MemoryFontSource** wordt opgeslagen in het geheugen de hele tijd, en de **StreamFontSource** wordt op verzoek geladen en onmiddellijk verwijderd. Maar het kan meerdere keren geladen worden, zoals hierboven beschreven. In sommige gevallen **MemoryFontSource** Hij heeft de voorkeur aan anderen. **StreamFontSource**.

## Een Lettertype-zoekcache opslaan en laden

Bij het zoeken naar een lettertype voor het eerst, Aspose.Words itereert over de door de gebruiker opgegeven lettertypebronnen en vormt een font search cache op basis van gegevens uit deze bronnen. Zo verzamelt de cache informatie over de beschikbare lettertypen: lettertypefamilie, stijl, volledige lettertypenaam en anderen. Bij latere oproepen, Aspose.Words zoekt naar informatie over het gewenste lettertype door zijn naam in de zoekcache van het lettertype, waarna het de opgegeven bestanden ontleedt om het lettertype te gebruiken.

De procedure voor het verwerken van alle beschikbare lettertypebestanden om de cache te initialiseren is vrij tijdrovend. Aspose.Words kunt u opslaan en laden van de cache met behulp van de **FontSettings.SaveSearchCache** methode om het prestatieprobleem op te lossen. Dat wil zeggen, de gebruiker kan een eerder opgeslagen cache uit een bestand laden en de stap van het verwerken van alle beschikbare lettertypebestanden overslaan.

{{% alert color="primary" %}}

Gebruik hetzelfde **SaveSearchCache** methode om de cache bij te werken.

{{% /alert %}}

{{% alert color="primary" %}}

De cache is ook geschikt voor andere scenario's wanneer lettertypen worden geladen over het netwerk. Of voor scenario's wanneer er geen manier is om een `FontSettings` instantie met een geladen cache.

{{% /alert %}}


## Krijg een lijst met beschikbare lettertypen {#get-a-list-of-available-fonts}

Als u de lijst van beschikbare lettertypen wilt krijgen, die bijvoorbeeld gebruikt kunnen worden om een PDF-document te maken, kunt u de [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) methode, zoals aangegeven in het volgende voorbeeld van de code. De [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) klasse specificeert informatie over het fysieke lettertype dat beschikbaar is voor Aspose.Words lettertype motor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
