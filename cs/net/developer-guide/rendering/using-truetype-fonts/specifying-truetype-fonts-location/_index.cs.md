---
title: Upřesněte pravdu Typ písma Umístění v C#
second_title: Aspose.Words místo .NET
articleTitle: Upřesněte pravdu Umístění písma typu
linktitle: Upřesněte pravdu Umístění písma typu
description: "Uveďte různé Pravda. Zdroje písma typu: systémová složka, uživatelské zdroje, načítání písem ze streamu, souborový systém nebo paměť pomocí C#."
type: docs
weight: 30
url: /cs/net/specifying-truetype-fonts-location/
---

Toto téma popisuje výchozí chování Aspose.Words když hledá písma TrueType, včetně specifických rozdílů operačního systému, a ukazuje, jak určit uživatelské zdroje písma.

• [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) třída se používá k určení různých zdrojů písma. Existuje několik implementací **FontSourceBase** třída:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Podrobnosti o provádění některých tříd jsou vysvětleny níže.

## Načíst písma ze systému {#loading-fonts-from-system}

Tam je speciální [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) třída, která se vždy používá ve výchozím nastavení. Představuje všechna nainstalovaná písma TrueType. Proto je možné vytvořit seznam zdrojů s **SystemFontSource** a jakékoli jiné požadované zdroje:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Jediný případ **SystemFontSource** třída je defaultně definována v [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Na různých operačních systémech mohou být písma umístěna na různých místech. Nicméně **FontSettings** příklad pro každý dokument není optimálním řešením. Ve většině případů použití [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) To by mělo stačit.

Případy jednotlivých dokumentů jsou potřebné pouze tehdy, je-li nutné použít různé zdroje písma pro různé dokumenty, což je vzácný případ. Použití několika **FontSettings** případy snižují výkon, protože nesdílejí cache.

### Kde Aspose.Words Hledá písma TrueType na Windows

Ve většině případů Windows uživatelé nečelí významným problémům se zmeškaným písmem nebo nesprávným uspořádáním. Typicky, Aspose.Words prochází dokumentem a když narazí na odkaz fontu, úspěšně získá data ze složky systému.

Na <span notrans="<span notrans=" Windows"=""></span>,? Aspose.Words nejprve vezme všechna dostupná písma z _% windir%\ Složka písem. Toto nastavení vám bude většinou vyhovovat. Složky s vlastními písmy zadáváte pouze v případě potřeby. Aspose.Words místo .NET také hledá další písma registrovaná v HKEY_ LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ Klíč k registru písem. Kromě toho Windows 10 umožňuje instalaci písem pro aktuálního uživatele. Písmo je umístěno do% userprofilu%\ AppData\Místní\Microsoft\Windows\ Složka písem a také zadaná v HKEY_ BULHAR_USER\ Software\Microsoft\Windows NT\CurrentVersion\ Registr písem, kde Aspose.Words budou hledat tato písma.

Pokud dokument obsahuje vložená písma, Aspose.Words může z dokumentu číst příslušné údaje o písmu a používat je k vytvoření rozvržení dokumentu. Dokumenty mohou rovněž obsahovat odkazy na písma, která nejsou ve složce systému, v takovém případě se objeví následující scénáře:

- Uživatelé mohou nastavit nové zdroje písma prostřednictvím **FontSettings** třída
- Aspose.Words může zkusit nahradit zapomenuté písmo podobným písmem

{{% alert color="primary" %}}

Aspose.Words renderování na serveru obvykle nebude pracovat s ASP.NET aplikace nakonfigurovaná pro spuštění pod úrovní Medium Trust, protože zakazuje přístup do registru a omezuje přístup do souborového systému.

{{% /alert %}}

### Písma na Non-Windows Systémy

Aspose.Words budou hledat písma ve složce systémového písma. Seznam těchto složek může být zobrazen [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/) metoda. Pokud nejsou nalezena žádná podporovaná písma, Aspose.Words použije vestavěné výchozí písmo Fanwood.ttf.

Vzhledem k tomu, písmo metriky Windows a ne-Windows OS jsou jiné, Aspose.Words udělá vše možné pro nalezení podobného písma a vytvoření rozvržení podobné originálu. To však není vždy možné. V těchto případech **FontSettings** třída by měla být použita pro přidání vlastních písem nebo pravidel nahrazení.

#### Kde Aspose.Words Hledá písma TrueType na Linux

Různé Linux distribuce mohou ukládat písma v různých složkách. Aspose.Words hledá písma na několika místech. Ve výchozím nastavení Aspose.Words hledá písma ve všech následujících lokalitách: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Toto výchozí chování bude fungovat pro většinu Linux distribuce, ale není zaručeno, že pracovat po celou dobu, v tomto případě byste mohli potřebovat určit umístění true písma typu explicitně. Chcete-li to udělat, musíte vědět, kde TrueType písma jsou nainstalována na vašem Linux distribuce.

#### Kde Aspose.Words Hledá TrueType písma na Mac OS X

Aspose.Words hledá písma ve složce /Library/Fonts, což je standardní umístění pro písma TrueType na Mac OS X. Zatímco toto nastavení bude pracovat pro vás většinu času, možná budete muset zadat své vlastní složky písem v případě, že budete potřebovat.

## Načíst písma ze složky {#loading-fonts-from-folder}

Pokud zpracovávaný dokument obsahuje odkazy na písma, která nejsou v systému, nebo je nechcete přidat do systémové složky, nebo vám chybí oprávnění, pak nejlepším řešením by bylo přidat složku s vlastními písmy pomocí [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/) metoda. To umožní nahradit zdroj systému uživatelským zdrojem. Aspose.Words již nebudou hledat písma v registru nebo Windows\ Složka písma a místo toho pouze skenovat písma v dané složce(s). • [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) metoda vrátí odpovídající hodnoty.

### Zadejte jednu nebo více složek písma

• [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) a [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) metody jsou zkratky k **SetFontSources** metoda s jedním nebo několika [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/) případy. Tyto metody se používají k označení místa Aspose.Words Měli bychom hledat písma. Pokud složka neexistuje nebo není přístupná, Aspose.Words ignoruje tuhle složku. Pokud budou všechny složky, včetně zdrojů pro nahrazení písma, ignorovány, Aspose.Words použije jako výchozí písmo Fanwood.

Následující příklad ukazuje, jak nastavit složku nebo zdroj, který Aspose.Words bude následně používat k vyhledávání písma TrueType při vykreslování nebo vkládání písem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Extra Boolean parametr kontroluje, zda jsou písma skenována rekurzivně prostřednictvím všech složek, a proto skenuje všechny dětské složky zadané složky. Následující příklad ukazuje, jak nastavit Aspose.Words prohlížení více složek pro písma TrueType při vykreslování nebo vkládání písem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Všimněte si priorit. Pokud existují písma se stejným názvem rodiny a stylem v různých zdrojích písma, pak Aspose.Words vybere písmo ze zdroje s vyšší prioritou. Viz popis pole "Priority" níže.

Pokud vůbec nechcete používat systémová písma, Aspose.Words umožňuje ignorovat a používat pouze vlastní písma:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Prioritní majetek

• [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) Vlastnost se používá, pokud existují písma se stejným příjmením a stylem v různých zdrojích písma. V tomto případě Aspose.Words vybere písmo ze zdroje s vyšší prioritou. Například na systémové složce je stará verze písma a zákazník do vlastní složky přidal novou verzi stejného písma.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Načíst písma ze Streamu {#loading-fonts-from-stream}

Aspose.Words poskytuje [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/) třída, která umožňuje načítání písem z potoka. Chcete-li použít zdroj streamového písma, uživatel musí vytvořit odvozenou třídu z **StreamFontSource** a poskytovat provádění [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/) metoda. • **OpenFontDataStream** metoda může být volána několikrát. Poprvé, to bude volat, když Aspose.Words skenuje poskytnuté zdroje písma pro získání seznamu dostupných písem. Později může být voláno, pokud je písmo použito v dokumentu k analýze dat písma a k vložení dat písma do některých výstupních formátů. **StreamFontSource** může být užitečné, protože umožňuje načítání dat písma pouze v případě, že je požadováno, a ne uložit je do paměti pro [Nastavení písem](https://fontsettings/) Život.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** je alternativou k [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) protože je vždy možné načíst proud do paměti a předat jej **MemoryFontSource**. Rozdíl je v tom, že **MemoryFontSource** je neustále uložen v paměti a **StreamFontSource** je naloženo na požádání a ihned zlikvidováno. Ale může být nabita několikrát, jak je popsáno výše. V některých případech **MemoryFontSource** je lepší, a v jiných, **StreamFontSource**.

## Uložit a načíst vyhledávací Cache

Při hledání písma poprvé, Aspose.Words iteruje přes zdroje písma určené uživatelem a vytváří cache vyhledávání písma na základě dat z těchto zdrojů. Takto bude cache shromažďovat informace o dostupných písmech: rodina písem, styl, celé jméno písma a další. Po dalších hovorech, Aspose.Words hledá informace o požadovaném fontu svým jménem v cache vyhledávání písma, po kterém rozebírá zadané soubory pro použití písma.

Postup pro analýzu všech dostupných souborů písma k inicializaci cache je poměrně časově náročné. Aspose.Words umožňuje uložit a načíst cache pomocí [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) způsob řešení problému výkonu. To znamená, že uživatel může načíst dříve uloženou cache ze souboru a přeskočit krok analýze všech dostupných souborů písma.

{{% alert color="primary" %}}

Použít stejný **SaveSearchCache** způsob aktualizace cache.

{{% /alert %}}

Následující příklad kódu ukazuje, jak připravit zdroje písma a vygenerovat cache vyhledávání písma předem:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Následující příklad kódu ukazuje, jak nastavit zdroje písma a načíst cache vyhledávání před zpracováním dokumentů:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Vyhledávání písma cache je skvělé pro Aspose.Words integrace do AWS Lambda kvůli řadě omezení. Například na velikosti hlavního kontejneru a v důsledku toho na počtu písem.

Cache je vhodná i pro jiné scénáře při načtení písem po síti. Nebo pro scénáře, kdy není možné uložit `FontSettings` případ s nabitou cache.

{{% /alert %}}

## Získejte seznam dostupných písem {#get-a-list-of-available-fonts}

Pokud chcete získat seznam dostupných písem, která mohou být použita například k vytvoření PDF dokumentu, můžete použít [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/) metoda, jak je uvedena v následujícím příkladu kódu. • [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) třída určuje informace o fyzickém písmu, který je k dispozici Aspose.Words Font engine:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
