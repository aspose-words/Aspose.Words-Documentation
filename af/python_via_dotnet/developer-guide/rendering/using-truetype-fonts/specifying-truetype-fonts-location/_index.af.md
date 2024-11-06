---
title: Spesifiseer TrueType Lettertipes Ligging
second_title: Aspose.Words vir Python via .NET
articleTitle: Spesifiseer TrueType Lettertipes Ligging
linktitle: Spesifiseer TrueType Lettertipes Ligging
description: "Spesifiseer verskeie TrueType fontbronne: stelselmap, gebruikersbronne, laai lettertipes vanaf'n stroom, 'n lêerstelsel of geheue met behulp van Python."
type: docs
weight: 30
url: /af/python-net/specifying-truetype-fonts-location/
---

Hierdie onderwerp beskryf die standaard gedrag van Aspose.Words wanneer dit soek na TrueType lettertipes, insluitend bedryfstelsel spesifieke verskille, en demonstreer hoe om gebruiker lettertipe bronne spesifiseer.

Die [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) klas word gebruik om verskeie lettertipe bronne spesifiseer. Daar is verskeie implementasies van die [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) klas:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Implementeringsbesonderhede vir sommige klasse word hieronder verduidelik.

## Laai Lettertipes vanaf Stelsel

Daar is'n spesiale [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) klas wat altyd gebruik word by verstek. Dit verteenwoordig alle TrueType lettertipes wat op die stelsel geïnstalleer is. Daarom is dit moontlik om'n bron lys met [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) en enige ander vereiste bronne te skep:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

'n enkele geval van die [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) klas is standaard gedefinieer in [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Op verskillende bedryfstelsels kan lettertipes op verskillende plekke geleë wees. Die gebruik van'n [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) geval vir elke dokument is egter nie'n optimale oplossing nie. In die meeste gevalle moet die gebruik van [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) genoeg wees.

Per-dokument gevalle is slegs nodig as dit nodig is om verskillende lettertipe bronne vir verskillende dokumente te gebruik, wat'n seldsame geval is. Die gebruik van verskeie [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) gevalle verminder prestasie omdat hulle nie kas deel nie.

### Waar Aspose.Words soek Vir TrueType Lettertipes op Windows

In die meeste gevalle het Windows gebruikers nie beduidende probleme met gemiste lettertipes of verkeerde uitlegte nie. Tipies, Aspose.Words gaan deur'n dokument, en wanneer dit'n lettertipe skakel teëkom, suksesvol haal die lettertipe data van die stelsel gids.

Op Windows, Aspose.Words neem eers al die beskikbare lettertipes uit die _%windir%\Fonts gids. Hierdie instelling sal die meeste van die tyd vir jou werk. U spesifiseer slegs u eie fonts-vouers as u dit nodig het. Aspose.Words vir .NET soek ook na addisionele lettertipes wat in die *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* registry-sleutel geregistreer is. Daarbenewens, Windows 10 in staat stel om die installering van lettertipes vir die huidige gebruiker. Lettertipes word in die *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* gids geplaas en ook in die *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts* register gespesifiseer, waar Aspose.Words na hierdie lettertipes sal soek.

As'n dokument ingebedde lettertipes bevat, kan Aspose.Words relevante lettertipe data uit die dokument lees en dit gebruik om die dokument se uitleg te skep. Dokumente kan ook skakels bevat na lettertipes wat nie in die stelselmappe is nie, in welke geval die volgende scenario's werk:

- Gebruikers kan nuwe lettertipe bronne opstel deur die [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) klas
- Aspose.Words kan probeer om die gemiste lettertipe te vervang met'n soortgelyke een


### Lettertipes op Nie - Windows Stelsels

Aspose.Words sal soek na die lettertipes in die stelsel lettertipe dopgehou. 'n lys van hierdie dopgehou kan gesien word deur die [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) metode. As geen ondersteunde lettertipes gevind word nie, sal Aspose.Words die ingeboude standaard lettertipe Fanwood gebruik.ttf.

Aangesien die lettertipe van Windows en nie-Windows OS anders is, doen Aspose.Words alles moontlik om'n soortgelyke lettertipe te vind en'n uitleg te bou wat soortgelyk is aan die oorspronklike. Dit is egter nie altyd moontlik nie. In hierdie gevalle moet die [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) klas gebruik word om persoonlike lettertipes of vervangingsreëls by te voeg.

#### Waar Aspose.Words soek Vir TrueType Lettertipes op Linux

Verskillende Linux verspreidings kan lettertipes in verskillende dopgehou stoor. Aspose.Words soek lettertipes op verskeie plekke. By verstek, Aspose.Words soek vir die lettertipes in al die volgende plekke: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Hierdie standaard gedrag sal werk vir die meeste Linux verspreidings, maar dit is nie gewaarborg om al die tyd te werk nie, in welke geval jy dalk die ligging van ware tipe lettertipes eksplisiet moet spesifiseer. Om dit te doen, moet jy weet waar TrueType lettertipes op jou Linux verspreiding geïnstalleer is.

#### Waar Aspose.Words soek Vir TrueType Lettertipes op Mac OS X

Aspose.Words soek lettertipes in die `/Library/Fonts` gids, wat die standaard plek is vir TrueType lettertipes op Mac OS X. Alhoewel hierdie instelling die meeste van die tyd vir u sal werk, moet u moontlik u eie lettertipes-vouers spesifiseer in die geval wanneer u moet.

## Laai Lettertipes vanaf Gids

As die dokument wat verwerk word skakels bevat na lettertipes wat nie op die stelsel is nie, of jy wil dit nie by die stelselmap voeg nie, of jy het nie toestemmings nie, dan is die beste oplossing om'n gids met jou eie lettertipes by te voeg met die [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) - metode. Dit sal toelaat om die stelsel bron te vervang met'n gebruiker bron. Aspose.Words sal nie meer soek vir lettertipes in die register of Windows\Font gids en in plaas daarvan net scan vir lettertipes binne die gespesifiseerde gids(s). Die [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) metode sal die ooreenstemmende waardes terug te keer.

### Spesifiseer Een Of Meer Lettertipe Dopgehou

Die [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) en [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) metodes is kortpaaie na die [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) metode met een of meer [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) gevalle. Hierdie metodes word gebruik om aan te dui waar Aspose.Words vir lettertipes moet soek. As'n gids nie bestaan nie of nie toeganklik is nie, ignoreer Aspose.Words hierdie gids net. As alle dopgehou, insluitend bronne vir die lettertipe vervanging, geïgnoreer is, sal Aspose.Words Fanwood lettertipe as standaard gebruik.

Die volgende voorbeeld toon hoe om die gids of bron, wat Aspose.Words sal daarna gebruik om te kyk vir TrueType lettertipes tydens die lewering of inbed van lettertipes stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

'n ekstra Booleaanse parameter beheer of lettertipes rekursief geskandeer word deur alle dopgehou, dus skandeer alle kind dopgehou van'n gespesifiseerde gids. Die volgende voorbeeld demonstreer hoe om Aspose.Words te stel om in verskeie dopgehou vir TrueType lettertipes te kyk wanneer lettertipes weergegee of ingebed word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Let op die prioriteite. As daar lettertipes met dieselfde familienaam en styl in verskillende lettertipe bronne is, sal Aspose.Words die lettertipe kies uit die bron met'n hoër prioriteit. Sien die beskrywing van die "prioriteit" veld hieronder.

As u glad nie stelsellettertipes wil gebruik nie, kan u Aspose.Words dit ignoreer en slegs u eie lettertipes gebruik:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Prioriteit Eiendom

Die **priority** eienskap word gebruik wanneer daar lettertipes met dieselfde familienaam en styl in verskillende lettertipe bronne is. In hierdie geval kies Aspose.Words die lettertipe uit die bron met die hoër prioriteitswaarde. Byvoorbeeld, daar is'n ou weergawe van die lettertipe op die stelsel gids en kliënt bygevoeg'n nuwe weergawe van dieselfde lettertipe in'n persoonlike gids.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Kry'n Lys Beskikbare Lettertipes

As u die lys beskikbare lettertipes wil kry, wat byvoorbeeld gebruik kan word om'n PDF - dokument weer te gee, kan u die [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) - metode gebruik, soos in die volgende kode-voorbeeld getoon. Die [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) klas spesifiseer inligting oor die fisiese lettertipe beskikbaar vir Aspose.Words lettertipe enjin:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
