---
title: Waar opgeven Locatie lettertypentype
second_title: Aspose.Words voor Python via .NET
articleTitle: Waar opgeven Locatie lettertypentype
linktitle: Waar opgeven Locatie lettertypentype
description: "Verschillende opgeven Waar Type lettertypebronnen: systeemmap, gebruikersbronnen, het laden van lettertypen uit een stroom, een bestandssysteem of geheugen met behulp van Python."
type: docs
weight: 30
url: /nl/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Dit onderwerp beschrijft het standaardgedrag van Aspose.Words wanneer het op zoek is naar TrueType lettertypen, inclusief specifieke verschillen in besturingssysteem, en laat zien hoe u gebruikerslettertypebronnen kunt specificeren.

De [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) klasse wordt gebruikt om verschillende lettertypebronnen te specificeren. Er zijn verschillende uitvoeringen van de [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) klasse:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

De uitvoeringsdetails voor sommige klassen worden hieronder toegelicht.

## Lettertypen uit systeem laden

Er is een speciale [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) klasse die altijd standaard gebruikt wordt. Het vertegenwoordigt alle TrueType lettertypen geïnstalleerd op het systeem. Daarom is het mogelijk om een bronlijst aan te maken met [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) en alle andere vereiste bronnen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Een enkele instantie van de [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) klasse is standaard gedefinieerd in [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Op verschillende besturingssystemen kunnen lettertypen zich op verschillende plaatsen bevinden. Echter, het gebruik van een [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) voorbeeld voor elk document is geen optimale oplossing. In de meeste gevallen wordt [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) Dat moet genoeg zijn.

Per-document gevallen zijn alleen nodig als het nodig is om verschillende font bronnen te gebruiken voor verschillende documenten, wat een zeldzaam geval is. Meerdere [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) instanties vermindert de prestaties omdat ze geen cache delen.

### Wanneer Aspose.Words Looks for TrueType Lettertypen op Windows

In de meeste gevallen Windows gebruikers ondervinden geen significante problemen met gemiste lettertypen of onjuiste lay-outs. Typisch, Aspose.Words gaat door een document, en wanneer het tegenkomt een lettertype link, haalt succesvol het lettertype gegevens uit de systeemmap.

Aan Windows Aspose.Words neemt eerst alle beschikbare lettertypen van de _%windir%\ Lettertypenmap. Deze instelling werkt meestal voor u. U geeft alleen uw eigen fonts-mappen op als dat nodig is. Aspose.Words voor .NET zoekt ook naar extra lettertypen geregistreerd in de *HKEY_LOCAL_ MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* registersleutel. Bovendien, Windows 10 maakt de installatie van lettertypen voor de huidige gebruiker mogelijk. Lettertypen worden geplaatst in het *%userprofile%\ AppData\Local\Microsoft\Windows\Fonts* map en ook gespecificeerd in de *HKEY_CURRENT_USER SoftwareMicrosoft\Windows NT\Huidige versie\ Lettertypen* register, waar Aspose.Words zal zoeken naar deze lettertypen.

Als een document ingebedde lettertypen bevat, Aspose.Words kan relevante lettertypegegevens uit het document lezen en gebruiken om het document te maken. Documenten kunnen ook links bevatten naar lettertypen die niet in de systeemmappen staan, in welk geval de volgende scenario's zullen werken:

- Gebruikers kunnen het opzetten van nieuwe font bronnen via de [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) klasse
- Aspose.Words kan proberen om het gemiste lettertype te vervangen door een soortgelijke


### Lettertypen op niet-Windows Systemen

Aspose.Words zal zoeken naar de lettertypen in de systeemlettertypemappen. Een lijst van deze mappen kan worden gezien door de [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) methode. Als er geen ondersteunde lettertypen zijn gevonden, Aspose.Words zal het ingebouwde standaardlettertype Fanwood.ttf gebruiken.

Sinds het lettertype van Windows en niet-Windows Het besturingssysteem is anders. Aspose.Words doet alles wat mogelijk is om een soortgelijk lettertype te vinden en een layout te bouwen die vergelijkbaar is met het origineel. Dit is echter niet altijd mogelijk. In deze gevallen heeft de [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) klasse moet worden gebruikt om aangepaste lettertypen of substitutieregels toe te voegen.

#### Wanneer Aspose.Words Looks for TrueType Lettertypen op Linux

Anders Linux distributies kunnen lettertypen in verschillende mappen opslaan. Aspose.Words zoekt naar lettertypen op verschillende locaties. Standaard, Aspose.Words zoekt naar de lettertypen op alle volgende locaties: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`. Dit standaardgedrag zal werken voor de meeste Linux distributies, maar het is niet gegarandeerd om de hele tijd te werken, in welk geval u nodig hebt om de locatie van true lettertypen expliciet typen. Om dit te doen, moet u weten waar TrueType lettertypen zijn geïnstalleerd op uw Linux distributie.

#### Wanneer Aspose.Words Looks for TrueType Lettertypen op Mac OS X

Aspose.Words zoekt naar lettertypen in de map */Library/Fonts*, de standaardlocatie voor TrueType-lettertypen op Mac OS X. Hoewel deze instelling meestal voor u zal werken, moet u mogelijk uw eigen fonts-mappen opgeven wanneer u dat nodig heeft.

## Lettertypen van map laden

Als het document dat wordt verwerkt links bevat naar lettertypen die niet op het systeem staan, of je wilt ze niet toevoegen aan de systeemmap, of je mist rechten, dan zou de beste oplossing zijn om een map toe te voegen met je eigen lettertypen met behulp van de [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) methode. Hierdoor kan de systeembron vervangen worden door een gebruikersbron. Aspose.Words zal niet langer zoeken naar lettertypen in het register of Windows\ Lettertypemap en in plaats daarvan alleen scannen op lettertypen binnen de opgegeven map(s). De [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) de methode zal de overeenkomstige waarden teruggeven.

### Een of meerdere lettertypemappen specificeren

De [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) en [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) methoden zijn snelkoppelingen naar de [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) methode met één of meer [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) gevallen. Deze methoden worden gebruikt om aan te geven Aspose.Words moet zoeken naar lettertypen. Als een map niet bestaat of niet toegankelijk is, Aspose.Words negeert deze map gewoon. Als alle mappen, inclusief bronnen voor de lettertypevervanging, werden genegeerd, Aspose.Words zal Fanwood-lettertype als standaard gebruiken.

Het volgende voorbeeld toont hoe u de map of broncode, die Aspose.Words zal vervolgens gebruiken om te zoeken naar TrueType lettertypen tijdens het renderen of inbedding van lettertypen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Een extra Booleaanse parameter bepaalt of lettertypen recursief worden gescand via alle mappen, waardoor alle kindmappen van een opgegeven map worden gescand. Het volgende voorbeeld toont hoe u kunt instellen Aspose.Words om in meerdere mappen te kijken voor TrueType-lettertypen bij het renderen of insluiten van lettertypen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Let op de prioriteiten. Als er lettertypen zijn met dezelfde familienaam en stijl in verschillende lettertypebronnen, dan Aspose.Words zal het lettertype selecteren uit de bron met een hogere prioriteit. Zie de beschrijving van het "prioritaire" veld hieronder.

Als u geen systeemlettertypen wilt gebruiken, Aspose.Words kunt u ze negeren en uw eigen lettertypen alleen gebruiken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Prioritaire eigenschap

De **prioriteit** eigenschap wordt gebruikt als er lettertypen zijn met dezelfde familienaam en stijl in verschillende lettertypebronnen. In dit geval Aspose.Words selecteert het lettertype uit de broncode met de hogere prioriteitswaarde. Er is bijvoorbeeld een oude versie van het lettertype op de systeemmap en de klant heeft een nieuwe versie van hetzelfde lettertype toegevoegd in een aangepaste map.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Een lijst van beschikbare lettertypen opvragen

Als u de lijst van beschikbare lettertypen wilt krijgen, die bijvoorbeeld gebruikt kunnen worden om een PDF-document te maken, kunt u de [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) methode, zoals aangegeven in het volgende voorbeeld van de code. De [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) klasse geeft informatie over het fysieke lettertype beschikbaar voor Aspose.Words lettertype motor:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
