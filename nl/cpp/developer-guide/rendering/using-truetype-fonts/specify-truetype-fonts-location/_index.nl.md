---
title: TrueType Lettertypelocatie opgeven in C++
second_title: Aspose.Words voor C++
articleTitle: TrueType Lettertypelocatie Opgeven
linktitle: TrueType Lettertypelocatie Opgeven
description: "Geef verschillende TrueType lettertypebronnen op: systeemmap, gebruikersbronnen, het laden van lettertypen uit een stream, een bestandssysteem of geheugen."
type: docs
weight: 30
url: /nl/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Dit onderwerp beschrijft het standaardgedrag van Aspose.Words wanneer het zoekt naar TrueType - lettertypen, inclusief verschillen die specifiek zijn voor het besturingssysteem, en laat zien hoe gebruikerslettertypebronnen kunnen worden opgegeven.

De klasse [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) wordt gebruikt om verschillende lettertypebronnen op te geven. Er zijn verschillende implementaties van de **FontSourceBase** klasse:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

De uitvoeringsdetails voor sommige klassen worden hieronder uitgelegd.

## Lettertypen laden van Systeem {#loading-fonts-from-system}

Er is een speciale [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) - klasse die standaard altijd wordt gebruikt. Het vertegenwoordigt alle TrueType lettertypen die op het systeem zijn geïnstalleerd. Daarom is het mogelijk om een bronlijst te maken met **SystemFontSource** en alle andere vereiste bronnen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Een enkel exemplaar van de **SystemFontSource** klasse is standaard gedefinieerd in [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). Op verschillende besturingssystemen kunnen lettertypen zich op verschillende plaatsen bevinden. Het gebruik van een **FontSettings** - instantie voor elk document is echter geen optimale oplossing. In de meeste gevallen zou het gebruik van [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) voldoende moeten zijn.

Instanties Per document zijn alleen nodig als het vereist is om verschillende lettertypebronnen voor verschillende documenten te gebruiken, wat een zeldzaam geval is. Het gebruik van meerdere **FontSettings** - instanties vermindert de prestaties omdat ze de cache niet delen.

### Waar Aspose.Words zoekt naar TrueType lettertypen op Windows

In de meeste gevallen hebben Windows - gebruikers geen significante problemen met gemiste lettertypen of onjuiste lay-outs. Meestal gaat Aspose.Words door een document en wanneer het de koppeling van een lettertype tegenkomt, haalt het met succes de lettertypegegevens uit de systeemmap.

Op Windows neemt Aspose.Words eerst alle beschikbare lettertypen uit de _%windir%\Fonts map. Deze instelling zal het grootste deel van de tijd voor u werken. U geeft alleen uw eigen lettertypemappen op als dat nodig is. Aspose.Words zoekt ook naar extra lettertypen die zijn geregistreerd in de HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts registersleutel. Bovendien maakt Windows 10 de installatie van lettertypen voor de huidige gebruiker mogelijk. Lettertypen worden in de map %userprofile%\AppData\Local\Microsoft\Windows\Fonts geplaatst en ook gespecificeerd in het register HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, Waar Aspose.Words naar deze lettertypen zal zoeken.

Als een document ingesloten lettertypen bevat, kan Aspose.Words relevante lettertypegegevens uit het document lezen en deze gebruiken om de lay-out van het document te maken. Documenten kunnen ook koppelingen bevatten naar lettertypen die niet in de systeemmappen staan, in welk geval de volgende scenario ' s aan het werk gaan:

- Gebruikers kunnen nieuwe lettertypebronnen instellen via de **FontSettings** - Klasse
- Aspose.Words kan proberen het gemiste lettertype te vervangen door een soortgelijk lettertype

{{% alert color="primary" %}}

Aspose.Words rendering op een server zal doorgaans niet werken met een ASP.NET applicatie die is geconfigureerd om te draaien onder het Medium Trust niveau, omdat het de toegang tot het register verbiedt en de toegang tot het bestandssysteem beperkt.

{{% /alert %}}

### Lettertypen op Niet - Windows systemen

Aspose.Words zoekt naar de lettertypen in de systeemlettertypemappen. Een lijst van deze mappen kan worden bekeken met de methode [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Als er geen ondersteunde lettertypen worden gevonden, gebruikt Aspose.Words Het ingebouwde standaardlettertype Fanwood.ttf.

Aangezien de lettertypemetrics van Windows en niet-Windows OS verschillend zijn, doet Aspose.Words alles wat mogelijk is om een vergelijkbaar lettertype te vinden en een lay-out te bouwen die vergelijkbaar is met het origineel. Dit is echter niet altijd mogelijk. In deze gevallen moet de klasse **FontSettings** worden gebruikt om aangepaste lettertypen of vervangingsregels toe te voegen.

#### Waar Aspose.Words zoekt naar TrueType lettertypen op Linux

Verschillende Linux distributies kunnen lettertypen in verschillende mappen opslaan. Aspose.Words zoekt naar lettertypen op verschillende locaties. Standaard zoekt Aspose.Words naar de lettertypen op alle volgende locaties: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Dit standaardgedrag werkt voor de meeste Linux distributies, maar het is niet gegarandeerd dat het altijd werkt, in welk geval u mogelijk de locatie van true type fonts expliciet moet opgeven. Om dit te doen, moet u weten waar TrueType lettertypen zijn geïnstalleerd op uw Linux distributie.

#### Waar Aspose.Words zoekt naar TrueType lettertypen op Mac OS X

Aspose.Words zoekt naar lettertypen in de map `/Library/Fonts`, de standaardlocatie voor TrueType lettertypen op Mac OS X. Hoewel deze instelling meestal voor u werkt, moet u mogelijk uw eigen lettertypemappen opgeven in het geval dat dat nodig is.

#### TrueType lettertypen op Android

Op Android wordt de werkstroom lettertypen ingekapseld in de Lettertypeklasse.
Er zijn vijf soorten lettertypes, elk lettertype vertegenwoordigt een groep van vergelijkbare lettertypefamilies.:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Bijvoorbeeld, volgens Android ' s [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config bestand, "times" behoort tot "serif" familie dus NotoSerif-regelmatig.ttf zal worden gebruikt wanneer "tijden" wordt aangevraagd:

**Fonts.xml**

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

Om naar vergelijkbare lettertypen te zoeken, worden de eerder beschreven strategieën gebruikt.

Daarnaast heeft Aspose.Words een eigen lijst met vervangers voor het Android platform.

Laten we zeggen dat het document het lettertype PMingLiU-ExtB bevat, allereerst zoekt Aspose.Words naar het vereiste lettertype binnen de systeembronnen.

De standaardlijst van de mappen van het lettertype Android is::

- /systeemlettertype
- /systeemlettertype
- / data / fonts

De Aspose.Words kijkt door door de gebruiker gedefinieerde bronnen die zijn ingesteld met de methode:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

In het geval dat een expliciete vervanging is opgegeven, vervangt Aspose.Words het ontbrekende lettertype door de suggestie van de gebruiker:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Als geen van de regels werkt, Aspose.Words controleer dan de interne vervangingstabel. Als de tabel informatie bevat over een goede fit, dan wordt het lettertype vervangen. In ons geval zal Aspose.Words `Typeface.SERIF` selecteren. Maar als de tabel niets weet over het gevraagde lettertype, dan pakt Aspose.Words een lettertype op basis van speciale MS Word regels of de dichtstbijzijnde afstand in Panose-ruimte.

#### TrueType lettertypen op .NET Core en Xamarin

Voor .NET Core en Xamarin geldt dezelfde regel als voor Aspose.Words voor Java versie. Standaard zijn alle systeemlettertypen van het platform waarop de toepassing wordt uitgevoerd beschikbaar.
De lijst met mappen waar de zoekopdracht zal worden uitgevoerd, kan worden gevonden door de methode aan te roepen:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Lettertypen laden uit Map {#loading-fonts-from-folder}

Als het document dat wordt verwerkt koppelingen bevat naar lettertypen die niet op het systeem staan, of als u deze niet wilt toevoegen aan de systeemmap, of als u geen machtigingen hebt, is de beste oplossing om een map met uw eigen lettertypen toe te voegen met behulp van de methode [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Hierdoor kan de systeembron worden vervangen door een gebruikersbron. Aspose.Words zal niet langer zoeken naar lettertypen in het Register of Windows\Font map en in plaats daarvan alleen zoeken naar lettertypen binnen de opgegeven map(en). De methode [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) geeft de overeenkomstige waarden terug.

### Geef één of meerdere Lettertypemappen op

De [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) en [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) methoden zijn snelkoppelingen naar de **SetFontSources** Methode met één of meerdere [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/) instanties. Deze methoden worden gebruikt om aan te geven waar Aspose.Words naar lettertypen moet zoeken. Als een map niet bestaat of niet toegankelijk is, negeert Aspose.Words Deze map gewoon. Als alle mappen, inclusief bronnen voor de lettertypesubstitutie, werden genegeerd, zal Aspose.Words standaard Fanwood-lettertype gebruiken.

Het volgende voorbeeld laat zien hoe u de map of bron instelt, die Aspose.Words vervolgens zal gebruiken om te zoeken naar TrueType lettertypen tijdens het renderen of insluiten van lettertypen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Een extra Booleaanse parameter bepaalt of lettertypen recursief door alle mappen worden gescand, waardoor alle onderliggende mappen van een gespecificeerde map worden gescand. Het volgende voorbeeld laat zien hoe u Aspose.Words instelt om in meerdere mappen te zoeken naar TrueType lettertypen bij het renderen of insluiten van lettertypen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Noteer de prioriteiten. Als er lettertypen met dezelfde familienaam en stijl in verschillende lettertypebronnen zijn, selecteert Aspose.Words het lettertype uit de bron met een hogere prioriteit. Zie de beschrijving van het veld "Prioriteit" hieronder.

Als u helemaal geen systeemlettertypen wilt gebruiken, kunt u met Aspose.Words deze negeren en alleen uw eigen lettertypen gebruiken:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Priority Property

De eigenschap [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) wordt gebruikt wanneer er lettertypen zijn met dezelfde familienaam en stijl in verschillende lettertypebronnen. In dit geval selecteert Aspose.Words het lettertype uit de bron met de hogere prioriteitswaarde. Er is bijvoorbeeld een oude versie van het lettertype in de systeemmap en de klant heeft een nieuwe versie van hetzelfde lettertype toegevoegd in een aangepaste map.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Lettertypen laden van Stream {#loading-fonts-from-stream}

Aspose.Words biedt de [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource) klasse, waarmee lettertypen uit de stream kunnen worden geladen. Om de bron van het streamlettertype te gebruiken, moet een gebruiker een afgeleide klasse maken van **StreamFontSource** en een implementatie van de [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/) - methode bieden. De **OpenFontDataStream** Methode kan meerdere keren worden aangeroepen. Voor de eerste keer wordt het aangeroepen wanneer Aspose.Words de opgegeven lettertypebronnen scant om een lijst met beschikbare lettertypen te krijgen. Later kan het worden opgeroepen als het lettertype in het document wordt gebruikt om de lettertypegegevens te ontleden en de lettertypegegevens in sommige uitvoerformaten in te sluiten. **StreamFontSource** kan nuttig zijn omdat het het laden van de lettertypegegevens alleen mogelijk maakt wanneer dit nodig is, en niet om deze gedurende de levensduur van [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) in het geheugen op te slaan.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Een Lettertypezoekcache opslaan en laden

Wanneer u voor het eerst naar een lettertype zoekt, itereert Aspose.Words over de lettertypebronnen die door de gebruiker zijn opgegeven en vormt een lettertypezoekcache op basis van gegevens uit deze bronnen. De cache verzamelt dus informatie over de beschikbare lettertypen: lettertypefamilie, stijl, volledige lettertypenaam en andere. Bij volgende oproepen zoekt Aspose.Words naar informatie over het gewenste lettertype met zijn naam in de lettertypezoekcache, waarna het de opgegeven bestanden analyseert om het lettertype te gebruiken.

De procedure voor het ontleden van alle beschikbare lettertypebestanden om de cache te initialiseren is behoorlijk tijdrovend. Met Aspose.Words kunt u de cache opslaan en laden met de methode [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) om het prestatieprobleem op te lossen. Dat wil zeggen, de gebruiker kan een eerder opgeslagen cache uit een bestand laden en de stap van het ontleden van alle beschikbare lettertypebestanden overslaan.

{{% alert color="primary" %}}

Gebruik dezelfde methode **SaveSearchCache** om de cache bij te werken.

{{% /alert %}}

{{% alert color="primary" %}}

De cache is ook geschikt voor andere scenario ' s wanneer lettertypen via het netwerk worden geladen. Of voor scenario ' s wanneer er geen manier is om een `FontSettings` - instantie met een geladen cache op te slaan.

{{% /alert %}}

## Een lijst met beschikbare lettertypen ophalen {#get-a-list-of-available-fonts}

Als u de lijst met beschikbare lettertypen wilt ophalen, die bijvoorbeeld kunnen worden gebruikt om een PDF - document weer te geven, kunt u de methode [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/) gebruiken, zoals in het volgende codevoorbeeld wordt weergegeven. De klasse [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) geeft informatie op over het fysieke lettertype dat beschikbaar is voor Aspose.Words font engine:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
