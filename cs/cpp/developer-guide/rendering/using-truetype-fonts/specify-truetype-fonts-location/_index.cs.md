---
title: Zadejte TrueType umístění písem v C++
second_title: Aspose.Words pro C++
articleTitle: Zadejte TrueType Umístění Písem
linktitle: Zadejte TrueType Umístění Písem
description: "Určete různé zdroje písem TrueType: systémová složka, uživatelské zdroje, načítání písem ze streamu, souborového systému nebo paměti."
type: docs
weight: 30
url: /cs/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Toto téma popisuje výchozí chování Aspose.Words při hledání písem TrueType, včetně rozdílů specifických pro operační systém, a ukazuje, jak určit zdroje uživatelských písem.

Třída [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) se používá k určení různých zdrojů písma. Existuje několik implementací třídy **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Podrobnosti implementace pro některé třídy jsou vysvětleny níže.

## Načíst písma ze systému {#loading-fonts-from-system}

Ve výchozím nastavení se vždy používá speciální třída [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/). Představuje všechna písma TrueType nainstalovaná v systému. Proto je možné vytvořit seznam zdrojů s **SystemFontSource** a dalšími požadovanými zdroji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Jedna instance třídy **SystemFontSource** je ve výchozím nastavení definována v [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). V různých operačních systémech mohou být písma umístěna na různých místech. Použití instance **FontSettings** pro každý dokument však není optimálním řešením. Ve většině případů by mělo stačit použití [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/).

Instance jednotlivých dokumentů jsou potřebné pouze v případě, že je nutné použít různé zdroje písem pro různé dokumenty, což je vzácný případ. Použití několika instancí **FontSettings** snižuje výkon, protože nesdílejí mezipaměť.

### Kde Aspose.Words hledá TrueType písma na Windows

Ve většině případů uživatelé Windows nečelí významným problémům se zmeškanými písmy nebo nesprávným rozložením. Aspose.Words obvykle prochází dokumentem a když narazí na odkaz písma, úspěšně načte data písma ze systémové složky.

Na Windows, Aspose.Words nejprve vezme všechna dostupná písma ze složky _%windir%\Fonts. Toto nastavení vám bude většinu času fungovat. Své vlastní složky písem zadáte pouze v případě potřeby. Aspose.Words také hledá další písma registrovaná v klíči registru HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Windows 10 navíc umožňuje instalaci písem pro aktuálního uživatele. Písma jsou umístěna do složky %userprofile%\AppData\Local\Microsoft\Windows\Fonts a také zadána v registru HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, Kde Aspose.Words bude hledat tato písma.

Pokud dokument obsahuje vložená písma, Aspose.Words může číst relevantní data písma z dokumentu a použít je k vytvoření rozvržení dokumentu. Dokumenty mohou také obsahovat odkazy na písma, která nejsou v systémových složkách, v takovém případě začnou fungovat následující scénáře:

- Uživatelé mohou nastavit nové zdroje písma prostřednictvím třídy **FontSettings**
- Aspose.Words se může pokusit nahradit Zmeškané písmo podobným

{{% alert color="primary" %}}

Aspose.Words Vykreslování na serveru obvykle nebude fungovat s aplikací ASP.NET nakonfigurovanou pro spuštění pod střední úrovní důvěryhodnosti, protože zakazuje přístup k registru a omezuje přístup k systému souborů.

{{% /alert %}}

### Písma na systémech jiných nežWindows

Aspose.Words vyhledá písma ve složkách systémových písem. Seznam těchto složek lze zobrazit metodou [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Pokud nejsou nalezena žádná podporovaná písma, Aspose.Words použije vestavěné výchozí písmo Fanwood.ttf.

Protože metriky písma Windows a non-Windows OS jsou různé, Aspose.Words dělá vše pro to, aby našel podobné písmo a vytvořil rozložení podobné originálu. To však není vždy možné. V těchto případech by měla být třída **FontSettings** použita k přidání vlastních písem nebo pravidel nahrazení.

#### Kde Aspose.Words hledá TrueType písma na Linux

Různé distribuce Linux mohou ukládat písma do různých složek. Aspose.Words hledá písma na několika místech. Ve výchozím nastavení Aspose.Words hledá písma ve všech následujících umístěních: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Toto výchozí chování bude fungovat pro většinu distribucí Linux, ale není zaručeno, že bude fungovat po celou dobu, v takovém případě možná budete muset explicitně určit umístění písem true type. Chcete-li to provést, musíte vědět, kde jsou ve vaší distribuci Linux nainstalována písma TrueType.

#### Kde Aspose.Words hledá TrueType písma na Mac OS X

Aspose.Words hledá písma ve složce `/Library/Fonts`, což je standardní umístění pro TrueType písma na Mac OS X. I když vám toto nastavení bude většinu času fungovat, možná budete muset v případě potřeby zadat vlastní složky písem.

#### TrueType písma na Android

Na Android je pracovní postup písem zapouzdřen ve třídě písma.
Existuje pět typů písem, každé písmo představuje skupinu podobných rodin písem:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Například podle Android [fonts.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) konfigurační soubor, "times" patří do rodiny" serif", takže NotoSerif - Regular.ttf bude použit, když je požadováno " časy:

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

K hledání podobných písem se používají dříve popsané strategie.

Kromě nich má Aspose.Words svůj vlastní seznam náhrad za platformu Android.

Řekněme, že dokument obsahuje písmo PMingLiU-ExtB, nejprve Aspose.Words hledá požadované písmo v systémových zdrojích.

Výchozí seznam složek písma Android je:

- / systém / písma
- / systém / písmo
- /data / fonty

Aspose.Words prohledává uživatelem definované zdroje, které byly nastaveny metodou:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

V případě, že byla zadána explicitní náhrada, Aspose.Words nahradí chybějící písmo návrhem uživatele:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Pokud žádné z pravidel nefungovalo, Aspose.Words Zkontrolujte interní tabulku výměny. Pokud tabulka obsahuje informace o dobrém přizpůsobení, písmo se nahradí. V našem případě Aspose.Words vybere `Typeface.SERIF`. Ale pokud tabulka neví nic o požadovaném písmu, pak Aspose.Words zvedne písmo na základě speciálních pravidel MS Word nebo nejbližší vzdálenosti v Panose space.

#### TrueType písma na .NET Core a Xamarin

Pro .NET Core a Xamarin platí stejné pravidlo jako pro Aspose.Words pro Java verzi. Ve výchozím nastavení jsou k dispozici všechna systémová písma platformy, na které aplikace běží.
Seznam složek, kde bude vyhledávání provedeno, lze nalézt voláním metody:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Načíst písma ze složky {#loading-fonts-from-folder}

Pokud zpracovávaný dokument obsahuje odkazy na písma, která nejsou v systému, nebo je nechcete přidat do systémové složky nebo vám chybí oprávnění, nejlepším řešením by bylo přidat složku s vlastními písmy pomocí metody [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). To umožní nahrazení zdroje systému zdrojem uživatele. Aspose.Words již nebude hledat písma v registru nebo ve složce Windows\Font a místo toho bude vyhledávat pouze písma v zadané složce(složkách). Metoda [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) vrátí odpovídající hodnoty.

### Určete jednu nebo více složek písem

Metody [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) a [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) jsou zkratkami k metodě **SetFontSources** s jednou nebo několika instancemi [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Tyto metody se používají k označení, kde by Aspose.Words měla hledat písma. Pokud složka neexistuje nebo není přístupná, Aspose.Words tuto složku pouze ignoruje. Pokud byly všechny složky, včetně zdrojů pro nahrazení písma, ignorovány, Aspose.Words použije jako výchozí písmo Fanwood.

Následující příklad ukazuje, jak nastavit složku nebo zdroj, který Aspose.Words následně použije k hledání písem TrueType během vykreslování nebo vkládání písem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Další booleovský parametr řídí, zda jsou písma skenována rekurzivně ve všech složkách, a proto skenuje všechny podřízené složky zadané složky. Následující příklad ukazuje, jak nastavit Aspose.Words, aby při vykreslování nebo vkládání písem hledala ve více složkách písma TrueType:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Soubor šablony tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Všimněte si priorit. Pokud existují písma se stejným příjmením a stylem v různých zdrojích písem, pak Aspose.Words vybere písmo ze zdroje s vyšší prioritou. Viz popis pole "Priorita" níže.

Pokud nechcete používat systémová písma vůbec, Aspose.Words Vám umožňuje ignorovat je a používat pouze vlastní písma:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Prioritní Vlastnost

Vlastnost [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) se používá, pokud existují písma se stejným příjmením a stylem v různých zdrojích písem. V tomto případě Aspose.Words vybere písmo ze zdroje s vyšší hodnotou priority. Například v systémové složce je stará verze písma a zákazník přidal novou verzi stejného písma do vlastní složky.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Načíst písma ze Streamu {#loading-fonts-from-stream}

Aspose.Words poskytuje třídu [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), která umožňuje načítání písem ze streamu. Chcete-li použít zdroj písma streamu, musí uživatel vytvořit odvozenou třídu z **StreamFontSource** a poskytnout implementaci metody [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). Metodu **OpenFontDataStream** lze nazvat několikrát. Poprvé se vyvolá, když Aspose.Words prohledá poskytnuté zdroje písem a získá seznam dostupných písem. Později může být volán, pokud je písmo použito v dokumentu k analýze dat písma a k vložení dat písma do některých výstupních formátů. **StreamFontSource** může být užitečné, protože umožňuje načítání dat písma pouze tehdy, když je to nutné, a ne ukládat je do paměti po dobu životnosti [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Uložení a načtení mezipaměti pro vyhledávání písem

Při prvním hledání písma Aspose.Words iteruje zdroje písma určené uživatelem a vytvoří mezipaměť vyhledávání písem na základě dat z těchto zdrojů. Mezipaměť tak bude shromažďovat informace o dostupných písmech: rodina písem, styl, úplný název písma a další. Při následujících hovorech Aspose.Words vyhledá informace o požadovaném písmu podle jeho názvu v mezipaměti pro vyhledávání písem, poté analyzuje zadané soubory pro použití písma.

Postup analýzy všech dostupných souborů písem pro inicializaci mezipaměti je poměrně časově náročný. Aspose.Words umožňuje uložit a načíst mezipaměť pomocí metody [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) k vyřešení problému s výkonem. To znamená, že uživatel může načíst dříve uloženou mezipaměť ze souboru a přeskočit krok analýzy všech dostupných souborů písem.

{{% alert color="primary" %}}

K aktualizaci mezipaměti použijte stejnou metodu **SaveSearchCache**.

{{% /alert %}}

{{% alert color="primary" %}}

Mezipaměť je také vhodná pro jiné scénáře, když jsou písma načtena přes síť. Nebo pro scénáře, kdy neexistuje způsob, jak uložit instanci `FontSettings` s načtenou mezipamětí.

{{% /alert %}}

## Získejte seznam dostupných písem {#get-a-list-of-available-fonts}

Pokud chcete získat seznam dostupných písem, která lze například použít k vykreslení dokumentu PDF, můžete použít metodu [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), jak je znázorněno v následujícím příkladu kódu. Třída [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) určuje informace o fyzickém písmu dostupném pro Aspose.Words font engine:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
