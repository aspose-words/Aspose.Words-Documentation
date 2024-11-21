---
title: Upřesněte pravdu Umístění písma typu
second_title: Aspose.Words místo Python via .NET
articleTitle: Upřesněte pravdu Umístění písma typu
linktitle: Upřesněte pravdu Umístění písma typu
description: "Uveďte různé Pravda. Zdroje písma typu: systémová složka, uživatelské zdroje, načítání písem ze streamu, souborový systém nebo paměť pomocí Python."
type: docs
weight: 30
url: /cs/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Toto téma popisuje výchozí chování Aspose.Words když hledá písma TrueType, včetně specifických rozdílů operačního systému, a ukazuje, jak určit uživatelské zdroje písma.

• [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) třída se používá k určení různých zdrojů písma. Existuje několik implementací [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) třída:

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Podrobnosti o provádění některých tříd jsou vysvětleny níže.

## Načítám písma ze systému

Tam je speciální [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) třída, která se vždy používá ve výchozím nastavení. Představuje všechna nainstalovaná písma TrueType. Proto je možné vytvořit seznam zdrojů s [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) a jakékoli jiné požadované zdroje:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Jediný případ [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) třída je defaultně definována v [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Na různých operačních systémech mohou být písma umístěna na různých místech. Nicméně [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) příklad pro každý dokument není optimálním řešením. Ve většině případů použití [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) To by mělo stačit.

Případy jednotlivých dokumentů jsou potřebné pouze tehdy, je-li nutné použít různé zdroje písma pro různé dokumenty, což je vzácný případ. Použití několika [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) případy snižují výkon, protože nesdílejí cache.

### Kde Aspose.Words Hledá písma TrueType na Windows

Ve většině případů Windows uživatelé nečelí významným problémům se zmeškaným písmem nebo nesprávným uspořádáním. Typicky, Aspose.Words prochází dokumentem a když narazí na odkaz fontu, úspěšně získá data ze složky systému.

Na <span notrans="<span notrans=" Windows"=""></span>,? Aspose.Words nejprve vezme všechna dostupná písma z _% windir%\ Složka písem. Toto nastavení vám bude většinou vyhovovat. Složky s vlastními písmy zadáváte pouze v případě potřeby. Aspose.Words místo .NET také hledá další písma registrovaná v * HKEY_LOCAL_ MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts* registr key. Kromě toho Windows 10 umožňuje instalaci písem pro aktuálního uživatele. Písma jsou umístěna do *% userprofil%\ AppData\Místní\Microsoft\Windows\Fonts* složka a také uvedena v *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\ Písmo* registr, kde Aspose.Words budou hledat tato písma.

Pokud dokument obsahuje vložená písma, Aspose.Words může z dokumentu číst příslušné údaje o písmu a používat je k vytvoření rozvržení dokumentu. Dokumenty mohou rovněž obsahovat odkazy na písma, která nejsou ve složce systému, v takovém případě se objeví následující scénáře:

- Uživatelé mohou nastavit nové zdroje písma prostřednictvím [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) třída
- Aspose.Words může zkusit nahradit zapomenuté písmo podobným písmem


### Písma na Non-Windows Systémy

Aspose.Words budou hledat písma ve složce systémového písma. Seznam těchto složek může být zobrazen [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/) metoda. Pokud nejsou nalezena žádná podporovaná písma, Aspose.Words použije vestavěné výchozí písmo Fanwood.ttf.

Vzhledem k tomu, písmo metriky Windows a ne-Windows OS jsou jiné, Aspose.Words udělá vše možné pro nalezení podobného písma a vytvoření rozvržení podobné originálu. To však není vždy možné. V těchto případech [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) třída by měla být použita pro přidání vlastních písem nebo pravidel nahrazení.

#### Kde Aspose.Words Hledá písma TrueType na Linux

Různé Linux distribuce mohou ukládat písma v různých složkách. Aspose.Words hledá písma na několika místech. Ve výchozím nastavení Aspose.Words hledá písma na všech následujících místech: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Toto výchozí chování bude fungovat pro většinu Linux distribuce, ale není zaručeno, že pracovat po celou dobu, v tomto případě byste mohli potřebovat určit umístění true písma typu explicitně. Chcete-li to udělat, musíte vědět, kde TrueType písma jsou nainstalována na vašem Linux distribuce.

#### Kde Aspose.Words Hledá TrueType písma na Mac OS X

Aspose.Words hledá písma ve složce */Library/Fonts*, což je standardní umístění pro písma TrueType na Mac OS X. Zatímco toto nastavení bude pracovat pro vás většinu času, možná budete muset zadat své vlastní složky písem v případě, že budete potřebovat.

## Načítám písma ze složky

Pokud zpracovávaný dokument obsahuje odkazy na písma, která nejsou v systému, nebo je nechcete přidat do systémové složky, nebo vám chybí oprávnění, pak nejlepším řešením by bylo přidat složku s vlastními písmy pomocí [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) metoda. To umožní nahradit zdroj systému uživatelským zdrojem. Aspose.Words již nebudou hledat písma v registru nebo Windows\ Složka písma a místo toho pouze skenovat písma v dané složce(s). • [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) metoda vrátí odpovídající hodnoty.

### Upřesnění jedné nebo více složek písma

• [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) a [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) metody jsou zkratky k [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) metoda s jedním nebo několika [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/) případy. Tyto metody se používají k označení místa Aspose.Words Měli bychom hledat písma. Pokud složka neexistuje nebo není přístupná, Aspose.Words ignoruje tuhle složku. Pokud budou všechny složky, včetně zdrojů pro nahrazení písma, ignorovány, Aspose.Words použije jako výchozí písmo Fanwood.

Následující příklad ukazuje, jak nastavit složku nebo zdroj, který Aspose.Words bude následně používat k vyhledávání písma TrueType při vykreslování nebo vkládání písem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Extra Boolean parametr kontroluje, zda jsou písma skenována rekurzivně prostřednictvím všech složek, a proto skenuje všechny dětské složky zadané složky. Následující příklad ukazuje, jak nastavit Aspose.Words prohlížení více složek pro písma TrueType při vykreslování nebo vkládání písem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Všimněte si priorit. Pokud existují písma se stejným názvem rodiny a stylem v různých zdrojích písma, pak Aspose.Words vybere písmo ze zdroje s vyšší prioritou. Viz popis pole "priority" níže.

Pokud vůbec nechcete používat systémová písma, Aspose.Words umožňuje ignorovat a používat pouze vlastní písma:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Prioritní majetek

• **priorita** Vlastnost se používá, pokud existují písma se stejným příjmením a stylem v různých zdrojích písma. V tomto případě Aspose.Words vybere písmo ze zdroje s vyšší prioritou. Například na systémové složce je stará verze písma a zákazník do vlastní složky přidal novou verzi stejného písma.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Získání seznamu dostupných písem

Pokud chcete získat seznam dostupných písem, která mohou být použita například k vytvoření PDF dokumentu, můžete použít [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/) metoda, jak je uvedena v následujícím příkladu kódu. • [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) třída určuje informace o fyzickém písmu, který je k dispozici Aspose.Words Font engine:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
