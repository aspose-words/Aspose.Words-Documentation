---
title: Spesifiseer TrueType Lettertipes Ligging in C++
second_title: Aspose.Words vir C++
articleTitle: Spesifiseer TrueType Lettertipes Ligging
linktitle: Spesifiseer TrueType Lettertipes Ligging
description: "Spesifiseer verskeie TrueType fontbronne: stelselmap, gebruikersbronne, laai lettertipes vanaf'n stroom, 'n lêerstelsel of geheue."
type: docs
weight: 30
url: /af/cpp/specify-truetype-fonts-location/
---

Hierdie onderwerp beskryf die standaard gedrag van Aspose.Words wanneer dit soek na TrueType lettertipes, insluitend bedryfstelsel spesifieke verskille, en demonstreer hoe om gebruiker lettertipe bronne spesifiseer.

Die [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) klas word gebruik om verskeie lettertipe bronne spesifiseer. Daar is verskeie implementasies van die **FontSourceBase** klas:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Implementeringsbesonderhede vir sommige klasse word hieronder verduidelik.

## Laai Lettertipes vanaf Stelsel {#loading-fonts-from-system}

Daar is'n spesiale [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) klas wat altyd gebruik word by verstek. Dit verteenwoordig alle TrueType lettertipes wat op die stelsel geïnstalleer is. Daarom is dit moontlik om'n bron lys met **SystemFontSource** en enige ander vereiste bronne te skep:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

'n enkele geval van die **SystemFontSource** klas is standaard gedefinieer in [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). Op verskillende bedryfstelsels kan lettertipes op verskillende plekke geleë wees. Die gebruik van'n **FontSettings** geval vir elke dokument is egter nie'n optimale oplossing nie. In die meeste gevalle moet die gebruik van [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) genoeg wees.

Per-dokument gevalle is slegs nodig as dit nodig is om verskillende lettertipe bronne vir verskillende dokumente te gebruik, wat'n seldsame geval is. Die gebruik van verskeie **FontSettings** gevalle verminder prestasie omdat hulle nie die kas deel nie.

### Waar Aspose.Words Soek Vir TrueType Lettertipes op Windows

In die meeste gevalle het Windows gebruikers nie beduidende probleme met gemiste lettertipes of verkeerde uitlegte nie. Tipies, Aspose.Words gaan deur'n dokument, en wanneer dit'n lettertipe skakel teëkom, dit suksesvol haal die lettertipe data van die stelsel gids.

Op Windows, Aspose.Words neem eers al die beskikbare lettertipes uit die _%windir%\Fonts gids. Hierdie instelling sal die meeste van die tyd vir jou werk. U spesifiseer slegs u eie fonts-vouers as u dit nodig het. Aspose.Words soek ook na addisionele lettertipes wat in die HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts registersleutel geregistreer is. Daarbenewens, Windows 10 in staat stel om die installering van lettertipes vir die huidige gebruiker. Lettertipes word in die %userprofile%\AppData\Local\Microsoft\Windows\Fonts - lêergids geplaas en ook in die HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts - register gespesifiseer, waar Aspose.Words na hierdie lettertipes sal soek.

As'n dokument ingebedde lettertipes bevat, kan Aspose.Words relevante lettertipe data uit die dokument lees en dit gebruik om die dokument se uitleg te skep. Dokumente kan ook skakels bevat na lettertipes wat nie in die stelselmappe is nie, in welke geval die volgende scenario's werk:

- Gebruikers kan nuwe lettertipe bronne opstel deur die **FontSettings** klas
- Aspose.Words kan probeer om die gemiste lettertipe te vervang met'n soortgelyke een

{{% alert color="primary" %}}

Aspose.Words weergawe op'n bediener sal gewoonlik nie werk met'n ASP.NET aansoek gekonfigureer om te hardloop onder die Medium Vertroue vlak, want dit verbied toegang tot register en beperk toegang tot die lêerstelsel.

{{% /alert %}}

### Lettertipes op Nie - Windows Stelsels

Aspose.Words sal soek na die lettertipes in die stelsel lettertipe dopgehou. 'n lys van hierdie dopgehou kan gesien word deur die [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/) metode. As geen ondersteunde lettertipes gevind word nie, sal Aspose.Words die ingeboude standaard lettertipe Fanwood gebruik.ttf.

Aangesien die lettertipe van Windows en nie-Windows OS anders is, doen Aspose.Words alles moontlik om'n soortgelyke lettertipe te vind en'n uitleg te bou wat soortgelyk is aan die oorspronklike. Dit is egter nie altyd moontlik nie. In hierdie gevalle moet die **FontSettings** klas gebruik word om persoonlike lettertipes of vervangingsreëls by te voeg.

#### Waar Aspose.Words Soek Vir TrueType Lettertipes op Linux

Verskillende Linux verspreidings kan lettertipes in verskillende dopgehou stoor. Aspose.Words soek lettertipes op verskeie plekke. By verstek, Aspose.Words soek vir die lettertipes in al die volgende plekke: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Hierdie standaard gedrag sal werk vir die meeste Linux verspreidings, maar dit is nie gewaarborg om al die tyd te werk nie, in welke geval jy dalk die ligging van ware tipe lettertipes eksplisiet moet spesifiseer. Om dit te doen, moet jy weet waar TrueType lettertipes op jou Linux verspreiding geïnstalleer is.

#### Waar Aspose.Words soek Na TrueType Lettertipes Op Mac OS X

Aspose.Words soek lettertipes in die `/Library/Fonts` - lêergids, wat die standaardplek is vir TrueType lettertipes Op Mac OS X. Alhoewel hierdie instelling die meeste van die tyd vir u sal werk, moet u moontlik u eie lettertipes-vouers spesifiseer in die geval wanneer u dit nodig het.

#### TrueType Lettertipes op Android

Op Android, lettertipes werkstroom is ingesluit in Lettertipe klas.
Daar is vyf tipes lettertipes, elke lettertipe verteenwoordig'n groep soortgelyke lettertipe families:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Byvoorbeeld, volgens Android se [lettertipes.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) konfigurasie lêer," times "behoort aan" serif " familie so NotoSerif-Regular.ttf sal gebruik word wanneer " tye " versoek word:

**Lettertipes.xml**

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

Om na soortgelyke lettertipes te soek, word die strategieë wat vroeër beskryf is, gebruik.

Benewens hulle, het Aspose.Words sy eie lys van vervangings vir die Android platform.

Kom ons sê die dokument bevat die PMingLiu-ExtB-lettertipe, eerstens, Aspose.Words is op soek na die vereiste lettertipe binne die stelselbronne.

Die standaard lys van Android font se dopgehou is:

- stelsel lettertipes
- stelsel lettertipe
- / data / fonts

Die Aspose.Words kyk deur gebruiker-gedefinieerde bronne wat met die metode gestel is:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

In die geval van'n eksplisiete vervanging is gespesifiseer, Aspose.Words vervang die ontbrekende lettertipe met die gebruiker se voorstel:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

As nie een van die reëls gewerk het nie, Aspose.Words gaan die interne vervangingstabel na. As die tabel inligting bevat oor'n goeie pasvorm, word die lettertipe vervang. In ons geval sal Aspose.Words `Typeface.SERIF` kies. Maar as die tabel niks van die versoekte lettertipe weet nie, dan Aspose.Words haal'n lettertipe op gebaseer op spesiale MS Woordreëls of die naaste afstand in Panose-ruimte.

#### TrueType Lettertipes op .NET Core en Xamarin

Vir .NET Core en Xamarin is dieselfde reël van toepassing as vir Aspose.Words vir Java weergawe. By verstek is alle stelsel lettertipes van die platform waarop die aansoek loop beskikbaar.
Die lys van dopgehou waar die soektog uitgevoer sal word, kan gevind word deur die metode te bel:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Laai Lettertipes vanaf Gids {#loading-fonts-from-folder}

As die dokument wat verwerk word skakels bevat na lettertipes wat nie op die stelsel is nie, of jy wil dit nie by die stelselmap voeg nie, of jy het nie toestemmings nie, dan is die beste oplossing om'n gids met jou eie lettertipes by te voeg met die [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/) - metode. Dit sal toelaat dat die stelsel bron vervang word met'n gebruiker bron. Aspose.Words sal nie meer soek vir lettertipes in die register of Windows\Font gids en in plaas daarvan net scan vir lettertipes binne die gespesifiseerde gids(s). Die [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) metode sal die ooreenstemmende waardes terug te keer.

### Spesifiseer Een Of Meer Lettertipe Gidse

Die [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) en [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) metodes is kortpaaie na die **SetFontSources** metode met een of meer [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/) gevalle. Hierdie metodes word gebruik om aan te dui waar Aspose.Words vir lettertipes moet soek. As'n gids nie bestaan nie of nie toeganklik is nie, ignoreer Aspose.Words hierdie gids net. As alle dopgehou, insluitend bronne vir die lettertipe vervanging, geïgnoreer is, sal Aspose.Words Fanwood lettertipe as standaard gebruik.

Die volgende voorbeeld toon hoe om die gids of bron, wat Aspose.Words sal daarna gebruik om te kyk vir TrueType lettertipes tydens die lewering of inbed van lettertipes stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

'n ekstra Booleaanse parameter beheer of lettertipes rekursief geskandeer word deur alle dopgehou, dus skandeer alle kind dopgehou van'n gespesifiseerde gids. Die volgende voorbeeld demonstreer hoe om Aspose.Words te stel om in verskeie dopgehou vir TrueType lettertipes te kyk wanneer lettertipes weergegee of ingebed word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Let op die prioriteite. As daar lettertipes met dieselfde familienaam en styl in verskillende lettertipe bronne is, sal Aspose.Words die lettertipe kies uit die bron met'n hoër prioriteit. Sien die beskrywing van die "Prioriteit" veld hieronder.

As u glad nie stelsellettertipes wil gebruik nie, kan u Aspose.Words dit ignoreer en slegs u eie lettertipes gebruik:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Prioriteit Eiendom

Die [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) eienskap word gebruik wanneer daar lettertipes met dieselfde familienaam en styl in verskillende lettertipe bronne is. In hierdie geval kies Aspose.Words die lettertipe uit die bron met die hoër prioriteitswaarde. Byvoorbeeld, daar is'n ou weergawe van die lettertipe op die stelsel gids en die kliënt het'n nuwe weergawe van dieselfde lettertipe in'n persoonlike gids.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Laai Lettertipes vanaf Stroom {#loading-fonts-from-stream}

Aspose.Words bied die [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource) klas, wat toelaat dat die laai van lettertipes van die stroom. Om die stroom lettertipe bron te gebruik, moet'n gebruiker'n afgeleide klas van **StreamFontSource** skep en'n implementering van die [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/) metode verskaf. Die **OpenFontDataStream** metode kan verskeie kere genoem word. Vir die eerste keer sal dit genoem word wanneer Aspose.Words die verskafde lettertipe bronne skandeer om'n lys van beskikbare lettertipes te kry. Later kan dit genoem word as die lettertipe in die dokument gebruik word om die lettertipe data te ontleed en om die lettertipe data in sommige uitset formate te insluit. **StreamFontSource** kan nuttig wees omdat dit die laai van die lettertipe data slegs toelaat wanneer dit nodig is, en om dit nie in die geheue vir die [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) lewensduur te stoor nie.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Stoor En Laai'n Font Soek Kas

Wanneer'n lettertipe vir die eerste keer gesoek word, herhaal Aspose.Words oor die lettertipe bronne wat deur die gebruiker gespesifiseer is en vorm'n lettertipe soek kas gebaseer op data van hierdie bronne. Die kas sal dus inligting oor die beskikbare lettertipes versamel: lettertipe, styl, volle lettertipe en ander. By daaropvolgende oproepe, Aspose.Words soek vir inligting oor die gewenste lettertipe deur sy naam in die lettertipe soek kas, waarna dit ontleed die gespesifiseerde lêers om die lettertipe te gebruik.

Die prosedure vir die ontleding van alle beskikbare lettertipe lêers om die kas te inisialiseer is redelik tydrowend. Aspose.Words laat jou toe om die kas te stoor en te laai met behulp van die [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) metode om die prestasieprobleem op te los. Dit wil sê, die gebruiker kan'n voorheen gestoor kas van'n lêer laai en die stap van die ontleding van alle beskikbare lettertipe lêers oorslaan.

{{% alert color="primary" %}}

Gebruik dieselfde **SaveSearchCache** metode om die kas op te dateer.

{{% /alert %}}

{{% alert color="primary" %}}

Die kas is ook geskik vir ander scenario's wanneer lettertipes oor die netwerk gelaai word. Of vir scenario's wanneer daar geen manier is om'n `FontSettings` geval met'n gelaaide kas te stoor nie.

{{% /alert %}}

## Kry'n Lys Met Beskikbare Lettertipes {#get-a-list-of-available-fonts}

As u die lys beskikbare lettertipes wil kry, wat byvoorbeeld gebruik kan word om'n PDF - dokument weer te gee, kan u die [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/) - metode gebruik, soos in die volgende kode-voorbeeld getoon. Die [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) klas spesifiseer inligting oor die fisiese lettertipe beskikbaar vir Aspose.Words lettertipe enjin:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
