---
title: Manipulovat a nahradit TrueType písma v C#
second_title: Aspose.Words místo .NET
articleTitle: Manipulovat a nahradit TrueType písma
linktitle: Manipulovat a nahradit TrueType písma
description: "Aspose.Words místo .NET může vložit správná písma TrueType do výsledného dokumentu, aby bylo zajištěno, že zobrazí přesně pomocí C#. Pokud není k dispozici písmo nebo konkrétní znak, Aspose.Words hledá vhodnou výměnu písma nebo používá mechanismus zpětného získání písma."
type: docs
weight: 10
url: /cs/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words vyžaduje Pravdu Typ písma pro různé úkoly, včetně zobrazování dokumentů do formátů pevných stránek, například PDF nebo XPS. Kdy? Aspose.Words vloží dokument, musí provést vkládání a vkládání podmnožin do výsledného dokumentu TrueType, což je běžná praxe během generování dokumentů, včetně populárního PDF nebo XPS formáty. Tím se zajistí, že se dokument zobrazí každému divákovi stejně. Navíc XPS specifikace vyžaduje, aby písma byla vždy vložena do dokumentu.

K zajištění Aspose.Words přesně měří znaky a úspěšně vloží příslušná písma, musí být splněny tyto podmínky:

1. Aspose.Words by měl být schopen najít a přistupovat k souborům TrueType písma v systému.
1. Musí být dostatek TrueType písma k dispozici Aspose.Words, pokud možno se stejnými názvy rodin písma jako v dokumentu.

Všimněte si, že písmo v dokumentu představuje entitu, jako je jméno rodiny, styl, velikost, barva, která se liší od `TrueType` entita písma (fyzické písmo). Aspose.Words určuje písmo v dokumentu na fyzické písmo v určité fázi zpracování. To umožňuje některé úkoly, nejčastěji při výpočtu velikosti textu při konstrukci rozvržení a vkládání/subsetting do formátů pevných stránek. Rovněž je povolena řada dalších méně populárních úloh, jako je řešení a nahrazení písem při načítání HTML nebo vkládání/subsetting do některých formátů toku.

## Problémy s manipulací písma a výkonností

Všechny dostupné mechanismy manipulace s písmem jsou obsaženy v [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) třída. Tato třída je zodpovědná za stahování písem v rámci definovaných zdrojů písma, stejně jako za proces substituce písma, jak je popsáno níže.

Písma jsou rozebrána v několika krocích:

1. Získání informací pro písmo, řešení ze všech dostupných písem.
1. Analýza vyřešených písem pro získání k dispozici glyphs a metriky (horizontální a vertikální).
1. Rozebírám vyřešená písma pro vkládání a subsetování.

Kdy? Aspose.Words narazí na písmo v dokumentu poprvé, pokusí se získat základní informace o písmu, jako je celé jméno písma, jméno rodiny, verze, styl, z fontových souborů umístěných v každém zdroji písma. Po všech těch fontech, co se našly, Aspose.Words tyto podrobnosti používá k nalezení požadovaných dat písma nebo vhodné náhrady požadovaného písma.

Vzhledem k tomu, že výše popsaný postup je časově náročný, může mít negativní vliv na výkon aplikace při prvním spuštění. Nicméně, každý případ **FontSettings** má vlastní cache, která by mohla zkrátit dobu zpracování následných dokumentů. Například, můžete sdílet příklad **FontSettings** třída mezi různými dokumenty, což vám umožní urychlit nakládku dokumentů. Následující příklad to dokazuje:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

V případě, kdy **FontSettings** není výslovně definován, Aspose.Words používá výchozí **FontSettings** příklad. Tento případ je také automaticky sdílen mezi dokumenty a lze jej extrahovat takto:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Pokud jste si jisti, že všechny zpracování dokumentů vyžadují stejné nastavení písma, pak se doporučuje nastavit a využít výchozí **FontSettings** příklad. Předpokládejme, že potřebujete použít stejné zdroje písma pro všechny vaše dokumenty. V tomto případě můžete standardně změnit takto:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

Obyčej **FontSettings** mají vyšší prioritu než výchozí instance.

{{% /alert %}}

## Dostupnost písma a náhrada

Text v dokumentu lze formátovat různými písmy, jako jsou Arial, Times New Roman, Verdana a další. Kdy? Aspose.Words zobrazí dokument, pokusí se vybrat písma uvedená v dokumentu.

Existují však situace, kdy nelze nalézt přesné písmo a Aspose.Words musí místo toho nahradit podobné písmo. Aspose.Words vybere písmo podle následujícího postupu:
1. Aspose.Words se snaží najít písmo mezi dostupnými zdroji písma s přesným názvem písma.
1. Aspose.Words se snaží najít požadované písmo mezi fonty vložené v původním dokumentu. Některé formáty dokumentů jako DOCX mohou obsahovat vložená písma.
1. Pokud Aspose.Words není schopen lokalizovat požadované písmo s přesným názvem shody, a [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) vlastnost definovaná pro toto písmo, pak Aspose.Words najde písmo definované pomocí **AltName** z [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) třída, která určuje informace o písmu.
1. Pokud Aspose.Words není schopen najít definované písmo a **AltName** není také definována, pak se uplatňují pravidla pro nahrazení písma jedno po druhém, jak je popsáno níže (pokud je nalezena příslušná náhrada, Font Substitution Process se zastaví a další krok není proveden):
   1. Aspose.Words se snaží zpracovat název písma, aby se nahradil, zejména se snaží odstranit přípony s "-" a "," separátory.<br/>
      Pokud se toto pravidlo záměny uskuteční, nebylo zjištěno "Font " <Původník">. Místo toho používám písmo "<substitutionFont>." Důvod: substituce názvu písma."<br/>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. Pak Aspose.Words se snaží aplikovat nastavení OS písma, pokud jsou k dispozici, pomocí **FontConfig** Užitek. Tohle...Windows funkce musí být použita s operačním systémem kompatibilním s FontConfig. Téměř každý OS založený na Unixu už má `FontConfig` knihovna, která je navržena tak, aby poskytovala systémovou konfiguraci písma, přizpůsobení a přístup k aplikacím. Jinak může být tato knihovna snadno nainstalována uživatelem.
      Aspose.Words ví, jak se dotazovat na data a interpretovat výsledky FontConfig pro své vlastní účely. Ve výchozím nastavení `FontConfig` Servis je vypnutý. Můžete ji povolit takto:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. Dalším krokem je jednoduchý, ale silný mechanismus nazvaný **Table** pravidlo záměny. Ve výchozím nastavení je tato funkce aktivní a dostupná pro daný operační systém. Aspose.Words nahradí písmo tímto pravidlem, pokud není nahrazeno `FontConfig` pravidlo záměny.<br/>
      Aspose.Words používá XML tabulky, které definují základní pravidla nahrazení různých OS. Podle pravidla nahrazení tabulky bude použit seznam náhradních názvů písem.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Hlavním rysem tohoto pravidla je schopnost načíst vlastní substituční tabulky, jak je uvedeno v následujícím příkladu:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      I přes flexibilitu tohoto mechanismu existují některé případy, kdy je lepší jej zakázat, jak je uvedeno níže:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. **FontInfo** pravidlo nahrazení se použije, pokud pravidlo nahrazení tabulky nemůže najít písmo. Tento mechanismus je standardně povolen. Aspose.Words najde nejvhodnější písmo podle informací o písmu obsažených v konkrétním dokumentu. Tyto informace lze získat od **FontInfo** třída uvedená níže:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Uživatelé nemohou zasahovat do pracovního postupu této funkce, pokud se nerozhodnou ji zakázat v případě neuspokojivých výsledků:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Pokud **FontInfo** není k dispozici pro chybějící písmo, pak proces zastaví.<br/>
   1. **DefaultFont** pravidlo nahrazení bude použito v případě, že `FontInfo` Substituce také selhala. Toto pravidlo je také standardně povoleno. Podle tohoto pravidla, Aspose.Words se pokusí použít výchozí písmo uvedené v [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/) majetek. Pokud si uživatel nevybral vlastní výchozí písmo, pak bude jako výchozí písmo použito "Times New Roman." Toto pravidlo lze zakázat, jak je uvedeno níže:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      Pro kontrolu aktuálního výchozího písma použijte:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      Chcete-li nastavit vlastní náhradní možnost, použijte:<br/>
      **.NET**<br/>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Pokud Aspose.Words není schopen provést substituci písma, snaží se získat první dostupné písmo z dostupných zdrojů písma.
1. Konečně, pokud Aspose.Words nelze najít žádná písma mezi dostupnými zdroji písma, vykresluje dokument pomocí volného Fanwood písma, který je vložen do Aspose.Words Montáž.<br/>

Pokud **FontInfo** je k dispozici, *FontInfo substitution rule* vždy vyřeší písmo a přepíše výchozí pravidlo písma. Pokud chcete použít výchozí pravidlo písma, měli byste vypnout pravidlo nahrazení *FontInfo*. Všimněte si, že pravidlo nahrazení *FontConfig* ve většině případů vyřeší písmo, a tím přepíše všechna ostatní pravidla.

## Jak rozpoznat Že Písmo bylo nahrazeno

Někdy může být nejasné, proč se změnil formát dokumentu nebo proč některé písmo nevypadá podle očekávání. V takových případech zprávy o výměně písem prováděné [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) rozhraní přichází zachránit. Mají [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) typ varování a formát textu standardního popisu, "Font"<originalfont>' nebyl nalezen. Použití "<substitutionfont>Místo toho font. Odůvodnění: <reason>" z těchto důvodů:</reason></substitutionfont></originalfont>

- "alternativní název z dokumentu" pro nahrazení [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)
- "fontconfig substitution"?
- "stabilní substituce" pro nahrazení pravidlem tabulky
- "font info substitution"?
- "přednastavená substituce písma" pro nahrazení výchozím pravidlem písma
- "první dostupné písmo" pro nahrazení prvním dostupným písmem

## Nastavení FallBack písma z XML

Existují dva různé mechanismy používané v Aspose.Words Font substitution and Font backback. Substituce písma se používá v případě, že písmo uvedené v dokumentu nelze nalézt mezi zdroji písma, jak bylo popsáno ve výše uvedených oddílech. Mechanizmus zálohování písma se používá při řešení písma, ale neobsahuje konkrétní znak. V tomto případě Aspose.Words se snaží použít jedno z fontů pro znak.

Existuje [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) metoda, která automaticky vytváří nastavení záloh skenováním dostupných písem. Vzhledem k tomu, že tato metoda může vytvořit neoptimální nastavení záloh, můžete ovládat chování fontu pomocí vlastností [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/) třída. Tato třída určuje nastavení mechanizmu stahování písem. Můžete získat příklad **FontFallbackSettings** třída:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Podobně jako pravidlo nahrazení *Table*, tento mechanismus používá XML tabulky pro konfiguraci. Tyto XML tabulky lze načíst a uložit pomocí následujících metod:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

• Aspose.Words vydání obsahuje dvě tabulky: *MsOfficeFallbackSetting.xml* a *NotoFallbackSetting.xml*.

• *MsOfficeFallbackSetting* tabulka definuje náhradní strategii pro řadu znaků, která je podobná strategii používané Microsoft Word. Strategie tedy vyžaduje instalaci Microsoft Kancelářská písma. *MsOfficeFallbackSetting* lze aktivovat pomocí této metody:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

• *NotoFallbackSetting* stůl je vytvořen speciálně pro použití s Google Noto písma (viz více o Google Noto Nastavení písma v následující sekci) a může být povoleno takto:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

Následující příklad kódu ukazuje, jak načíst nastavení zálohování písma z XML souboru:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

Ve výše uvedeném příkladu kódu se používá následující XML soubor:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Nastavení Font FallBack pro Google Noto Písma

Aspose.Words poskytuje předdefinované nastavení zálohování písma pro Google Noto písma. Toto jsou písma zdarma licencovaná pod SIL Open Font License, která si můžete stáhnout Google Noto Písma. • **FontFallbackSettings** třída [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/) metoda. Načítá předdefinovaná nastavení záloh, která používají Google Noto písma zobrazená v následujícím příkladu kódu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

V předem definovaném nastavení se používají pouze písma typu Sans Noto s pravidelnou hmotností.

{{% /alert %}}

## Kde Aspose.Words Hledá písma

Aspose.Words se snaží automaticky najít písma TrueType v souborovém systému. Obvykle se můžete spolehnout na výchozí chování Aspose.Words najít `TrueType` písma, ale někdy je třeba zadat vlastní složky obsahující písma TrueType. • [Upřesněte pravdu Umístění písma typu](/words/cs/net/specifying-truetype-fonts-location/) téma popisuje jak a kde Aspose.Words hledá fonty, stejně jako jak zadat své vlastní umístění písma.

## Rozdíly ve zpracování formátů písem v Aspose.Words a Microsoft Word

Existují některé rozdíly ve zpracování formátů písma v Aspose.Words a Microsoft Word jak je uvedeno v následující tabulce:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Písmo TrueType a písma OpenType s obrysy TrueType | Podporoval. | Podporoval. |
| OpenType písma s obrysy PostScriptu | Podporovaný pro většinu scénářů. Vkládání do formátů pevných stránek, jako je PDF a XPS nejsou podporovány. Text je nahrazen obrázky bitmap. | Podporované pro většinu scénářů, včetně začlenění do formátů pevných stránek. |
| Variace písma OpenType | Podporují se pouze pojmenované případy. Nepřetržité varianty nejsou podporovány. | Podporovaný pouze pro výchozí instance. Pojmenované případy a trvalé variace nejsou podporovány. |
| Písmo typu 1 | Podporované na Windows verze před rokem 2013 a verze MacOS. Podpora je stažena Windows verze od roku 2013. | Nepodporováno. |

## Viz také

- [Google Noto Písma](https://fonts.google.com/noto) ke stažení zdarma písma
