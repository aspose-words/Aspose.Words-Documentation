---
title: Upřesněte pravdu Typ písma Umístění v Java
second_title: Aspose.Words místo Java
articleTitle: Upřesněte pravdu Umístění písma typu
linktitle: Upřesněte pravdu Umístění písma typu
description: "Uveďte různé Pravda. Zdroje písma typu: systémová složka, uživatelské zdroje, načítání písem ze streamu, souborový systém nebo paměť pomocí Java."
type: docs
weight: 30
url: /cs/java/specify-truetype-fonts-location/
---

Toto téma popisuje výchozí chování Aspose.Words když hledá písma TrueType, včetně specifických rozdílů operačního systému, a ukazuje, jak určit uživatelské zdroje písma.

The [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) třída se používá k určení různých zdrojů písma. Existuje několik implementací **FontSourceBase** třída:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Podrobnosti o provádění některých tříd jsou vysvětleny níže.

## Načíst písma ze systému {#loading-fonts-from-system}

Tam je speciální [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) třída, která se vždy používá ve výchozím nastavení. Představuje všechna písma TrueType nainstalovaná v systému. Proto je možné vytvořit seznam zdrojů s **SystemFontSource** a jakékoli jiné požadované zdroje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Jediný případ **SystemFontSource** třída je defaultně definována v [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Na různých operačních systémech mohou být písma umístěna na různých místech. Nicméně **FontSettings** příklad pro každý dokument není optimálním řešením. Ve většině případů použití [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) To by mělo stačit.

Případy jednotlivých dokumentů jsou nutné pouze v případě, že je nutné použít různé zdroje písma pro různé dokumenty, což je vzácný případ. Použití několika **FontSettings** instance snižují výkon, protože nesdílejí cache.

### Kde Aspose.Words Hledá písma TrueType na Windows

Ve většině případů Windows uživatelé nečelí významným problémům se zmeškaným písmem nebo nesprávným uspořádáním. Typicky, Aspose.Words prochází dokumentem a když narazí na odkaz na písmo, úspěšně stáhne data ze složky systému.

Na <span notrans="<span notrans=" Windows"=""></span>, Aspose.Words nejprve vezme všechna dostupná písma z _%windir%\Fonts Složka. Toto nastavení pro vás bude většinou fungovat. Složky písem zadáváte pouze v případě, že je to nutné. Aspose.Words také hledá další písma registrovaná v HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts registrovací klíč. Kromě toho Windows 10 umožňuje instalaci fontů pro aktuálního uživatele. Písma jsou umístěna do %userprofile%\AppData\Local\Microsoft\Windows\Fonts Složka a také uvedena v HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts registr, kde Aspose.Words budou hledat tato písma.

Pokud dokument obsahuje vložená písma, Aspose.Words může z dokumentu číst relevantní údaje o písmu a používat je k vytvoření rozvržení dokumentu. Dokumenty mohou rovněž obsahovat odkazy na písma, která nejsou ve složce systému, v takovém případě se objeví následující scénáře:

- Uživatelé mohou nastavit nové zdroje písma prostřednictvím **FontSettings** třída
- Aspose.Words může zkusit nahradit zapomenuté písmo podobným písmem

### Písma na Non-Windows Systémy

Aspose.Words bude hledat písma ve složce systémového písma. Seznam těchto složek lze vidět [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) metoda. Pokud nejsou nalezena žádná podporovaná písma, Aspose.Words použije vestavěné výchozí písmo Fanwood.ttf.

Vzhledem k tomu, písmo metriky Windows a ne-Windows OS jsou jiné, Aspose.Words vše, co je možné najít podobné písmo a vytvořit rozvržení podobné originálu. To však není vždy možné. V těchto případech **FontSettings** třída by měla být použita pro přidání vlastních písem nebo pravidel nahrazení.

#### Kde Aspose.Words Hledá písma TrueType na Linux

Různé Linux distribuce mohou ukládat písma v různých složkách. Aspose.Words hledá písma na několika místech. Ve výchozím nastavení Aspose.Words hledá písma ve všech následujících místech: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Toto výchozí chování bude fungovat pro většinu Linux distribuce, ale není zaručeno, že pracovat po celou dobu, v tom případě byste mohli potřebovat určit umístění true písma typu explicitně. Chcete-li to udělat, musíte vědět, kde TrueType písma jsou nainstalována na vašem Linux distribuce.

#### Kde Aspose.Words Hledá TrueType písma na Mac OS X

Aspose.Words hledá písma ve složce /Library/Fonts, což je standardní umístění pro písma TrueType na Mac OS X. Zatímco toto nastavení bude pracovat pro vás většinu času, budete možná muset zadat své vlastní složky písem v případě, že budete potřebovat.

#### TrueType písma na Android

Na Android, Pracovní tok písem je zapouzdřen ve třídě Typeface.
Existuje pět typů písma, každý písmo představuje skupinu podobných rodin písma:

- DEFAULT
- DEFAULT_ BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Například podle Android? [písma. xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) Konfigurační soubor, časy, patří do rodiny serifů, takže NotoSerif-Regular.ttf bude použit, pokud je požadováno Times:

**Písma.xml**

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

Pro vyhledávání podobných písem se používají strategie popsané dříve

Kromě nich, Aspose.Words má svůj vlastní seznam náhrad za Android Platforma.

Řekněme, že dokument obsahuje písmo PMingLiU-ExtB, především, Aspose.Words hledá požadované písmo v rámci zdrojů systému.

Výchozí seznam Android Složky písma jsou:

- /systém/fonty
- /systém/font
- /data/fonty

The Aspose.Words se dívá přes uživatelem definované zdroje, které byly nastaveny metodou:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

V případě výslovného nahrazení, Aspose.Words nahrazuje chybějící písmo návrhem uživatele:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Pokud žádná z pravidel nezabrala, Aspose.Words zkontrolujte vnitřní náhradní tabulku. Pokud tabulka obsahuje informace o dobrém uložení, pak se font nahradí. V našem případě Aspose.Words vybere `Typeface.SERIF`. Ale pokud tabulka neví nic o požadovaném písmu pak Aspose.Words vyzvedne písmo založené na zvláštních pravidlech MS Word nebo nejbližší vzdálenost v prostoru Panose.

#### TrueType písma na .NET Core a Xamarin

Pro .NET Core a Xamarin platí stejné pravidlo jako pro Aspose.Words místo Java verze. Ve výchozím nastavení jsou k dispozici všechna systémová písma platformy, na které běží aplikace.
Seznam složek, kde bude vyhledávání provedeno, lze nalézt voláním metody:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Načíst písma ze složky {#loading-fonts-from-folder}

Pokud zpracovávaný dokument obsahuje odkazy na písma, která nejsou v systému, nebo je nechcete přidat do systémové složky, nebo vám chybí oprávnění, pak nejlepším řešením by bylo přidat složku s vlastními písmy pomocí `SetFontsSources` metoda. To umožní nahradit zdroj systému uživatelským zdrojem. Aspose.Words již nebude hledat písma v registru nebo Windows\Font Složka a místo toho pouze skenovat písma v zadané složce(s). The `GetFontSources` metoda vrátí odpovídající hodnoty.

### Upřesnit jednu nebo více složek písma

The [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) a SetFontsFolder metody jsou zkratky k **SetFontSources** metoda s jedním nebo několika [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) případy. Tyto metody se používají k označení místa Aspose.Words Měli bychom hledat písma. Pokud složka neexistuje nebo není přístupná, Aspose.Words ignoruje tuhle složku. Pokud by byly všechny složky, včetně zdrojů pro výměnu písma, ignorovány, Aspose.Words použije Fanwood písmo jako výchozí.

Následující příklad ukazuje, jak nastavit složku nebo zdroj, který Aspose.Words bude následně používat pro vyhledávání fontů TrueType při vykreslování nebo vkládání písem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Extra Boolean parametr kontroluje, zda jsou písma skenována rekurzivně prostřednictvím všech složek, a proto skenuje všechny složky dětí v zadané složce. Následující příklad ukazuje, jak nastavit Aspose.Words prohlížení více složek pro písma TrueType při vykreslování nebo vkládání písem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Všimněte si priorit. Pokud existují písma se stejným názvem rodiny a stylem v různých zdrojích písma, pak Aspose.Words vybere písmo ze zdroje s vyšší prioritou. Viz popis pole "Priority" níže.

{{% /alert %}}

Pokud vůbec nechcete používat systémová písma, Aspose.Words umožňuje ignorovat a používat pouze vlastní písma:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Prioritní majetek

The [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) Vlastnost se používá, pokud existují písma se stejným příjmením a stylem v různých zdrojích písma. V tomto případě Aspose.Words vybere písmo ze zdroje s vyšší prioritou. Například na systémové složce je stará verze písma a zákazník do vlastní složky přidal novou verzi stejného písma.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Načíst písma ze Streamu {#loading-fonts-from-stream}

Aspose.Words poskytuje [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) třída, která umožňuje načítání písem z potoka. Chcete-li použít zdroj streamového písma, uživatel musí vytvořit odvozenou třídu z **StreamFontSource** a poskytovat provádění [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) metoda. The **OpenFontDataStream** metoda může být volána několikrát. Poprvé, to bude volat, když Aspose.Words skenuje poskytnuté zdroje písma pro získání seznamu dostupných písem. Později může být voláno, pokud je písmo použito v dokumentu k analýze dat písma a k vložení dat písma do některých výstupních formátů. **StreamFontSource** může být užitečné, protože umožňuje načítání dat písma pouze v případě, že je požadováno, a neukládat je do paměti pro `FontSettings` Život.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** je alternativou k [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) protože je vždy možné načíst proud do paměti a předat jej **MemoryFontSource**. Rozdíl je v tom, že **MemoryFontSource** je neustále uložen v paměti a **StreamFontSource** je naloženo na požádání a ihned zlikvidováno. Ale může být nabita několikrát, jak je popsáno výše. V některých případech **MemoryFontSource** je lepší, a v jiných, **StreamFontSource**.

## Uložit a načíst vyhledávací Cache

Při hledání písma poprvé, Aspose.Words iteruje přes zdroje písma určené uživatelem a vytváří cache vyhledávání písma na základě dat z těchto zdrojů. Takto bude cache shromažďovat informace o dostupných písmech: rodina písem, styl, celé jméno písma a další. V následujících hovorech, Aspose.Words hledá informace o požadovaném fontu svým jménem v cache vyhledávání písma, po kterém rozebírá zadané soubory pro použití písma.

Postup pro analýzu všech dostupných souborů písma k inicializaci cache je poměrně časově náročné. Aspose.Words umožňuje uložit a načíst cache pomocí **FontSettings.SaveSearchCache** způsob řešení problému výkonu. To znamená, že uživatel může načíst dříve uložené cache ze souboru a přeskočit krok analýze všech dostupných souborů písma.

{{% alert color="primary" %}}

Použijte stejnou dávku. **SaveSearchCache** způsob aktualizace cache.

{{% /alert %}}

{{% alert color="primary" %}}

Cache je také vhodná pro jiné scénáře při načtení písem po síti. Nebo pro scénáře, kdy není možné uložit `FontSettings` například s nabitou cache.

{{% /alert %}}


## Získat seznam dostupných písem {#get-a-list-of-available-fonts}

Pokud chcete získat seznam dostupných písem, která mohou být použita například k vytvoření PDF dokumentu, můžete použít [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) metoda, jak je uvedena v následujícím příkladu kódu. The [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) třída určuje informace o fyzickém písmu, které jsou k dispozici Aspose.Words font engine:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
