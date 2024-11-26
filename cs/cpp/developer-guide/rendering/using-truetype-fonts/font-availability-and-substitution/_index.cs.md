---
title: MFont Dostupnost a nahrazení v C++
second_title: Aspose.Words pro C++
articleTitle: Dostupnost a nahrazení písma
linktitle: Dostupnost a nahrazení písma
description: "Pokud nelze najít přesné substituční písmo, Aspose.Words jej místo toho musí nahradit podobným písmem. Tento článek popisuje proces hledání nejvhodnějšího písma."
type: docs
weight: 12
url: /cs/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Text v dokumentu lze formátovat pomocí různých písem, například Arial, Times New Roman, Verdana a dalších. Když Aspose.Words vykreslí dokument, pokusí se vybrat písma zadaná v dokumentu.

Existují však situace, kdy nelze najít přesné písmo a Aspose.Words jej místo toho musí nahradit podobným písmem. Aspose.Words vybere písmo podle následujícího postupu:

1. Aspose.Words se pokusí najít písmo mezi dostupnými zdroji písma s přesným názvem písma.
1. Aspose.Words se pokusí najít požadované písmo mezi písmy vloženými do původního dokumentu. Některé formáty dokumentů, například DOCX, mohou obsahovat vložená písma.
1. Pokud Aspose.Words není schopen najít požadované písmo s přesnou shodou názvu a vlastnost [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) definovanou pro toto písmo, pak Aspose.Words najde písmo definované pomocí **AltName** z třídy [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), která určuje informace o Písmu.
1. Pokud Aspose.Words není schopen najít definované písmo a **AltName** není také definováno, použijí se pravidla nahrazování písem jeden po druhém, jak je popsáno níže (když je nalezena příslušná náhrada, proces nahrazování písem se zastaví a další krok není proveden):
   1. Aspose.Words se pokusí použít nastavení písma OS, pokud jsou k dispozici, pomocí nástroje `FontConfig`. Tato funkce, která neníWindows, musí být použita s FontConfig kompatibilním OS. Téměř každý unixový OS již má knihovnu `FontConfig`, která je navržena tak, aby poskytovala konfiguraci, přizpůsobení a přístup k aplikacím v celém systému. V opačném případě může uživatel tuto knihovnu snadno nainstalovat.<br>
      Aspose.Words ví, jak dotazovat data a interpretovat výsledky FontConfig pro své vlastní účely. Ve výchozím nastavení je nástroj `FontConfig` zakázán. Můžete jej povolit následujícím způsobem:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Dalším krokem je jednoduchý, ale neuvěřitelně výkonný mechanismus zvaný [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Ve výchozím nastavení je tato funkce aktivní a dostupná pro všechny OS. Aspose.Words používá XML tabulky, které definují základní pravidla substituce pro různé OS. Podle pravidla nahrazení tabulky bude použit seznam názvů náhradních písem.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - písmo, které má být nahrazeno, SubstituteFonts - seznam substitučních variant oddělených čárkou. První dostupné písmo se používá k výměně.<br>
      Hlavním rysem tohoto pravidla je schopnost načíst vlastní substituční tabulky, jak je znázorněno v následujícím příkladu:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Jako základ můžete vzít existující tabulku ze sklenice nebo ji programově uložit následujícím způsobem:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Navzdory flexibilitě tohoto mechanismu existují případy, kdy je lepší jej deaktivovat, jak je uvedeno níže:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Pravidlo nahrazení **FontInfo** se použije, pokud pravidlo nahrazení tabulky nemůže najít písmo. Tento mechanismus je ve výchozím nastavení povolen. Aspose.Words najde nejvhodnější písmo podle informací o Písmu obsažených v konkrétním dokumentu. Tyto informace lze získat z třídy **FontInfo**, Jak je uvedeno níže:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Uživatelé nemohou zasahovat do pracovního postupu této funkce, pokud se nerozhodnou ji deaktivovat v případě neuspokojivých výsledků:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Pokud **FontInfo** není k dispozici pro chybějící písmo, proces se zastaví.
   1. **DefaultFont** substituční pravidlo bude použito v případě, že substituce `FontInfo` také selhala. Toto pravidlo je také ve výchozím nastavení povoleno. Podle tohoto pravidla se Aspose.Words pokusí použít výchozí písmo uvedené ve vlastnosti [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Pokud si uživatel nevybral své vlastní výchozí písmo, použije se jako výchozí písmo" Times New Roman". Toto pravidlo lze deaktivovat, jak je uvedeno níže:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Chcete-li zkontrolovat aktuální výchozí písmo, použijte:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Chcete-li nastavit vlastní možnost výměny, použijte:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Pokud Aspose.Words není schopen provést nahrazení písma, pokusí se získat první dostupné písmo z dostupných zdrojů písma.
1. A konečně, pokud Aspose.Words nemůže najít žádná písma mezi dostupnými zdroji písem, vykreslí dokument pomocí bezplatného písma Fanwood, které je vloženo do sestavy Aspose.Words.

{{% alert color="primary" %}}

Pokud je k dispozici **FontInfo**, *FontInfo substitution rule* vždy vyřeší písmo a přepíše výchozí pravidlo písma. Pokud chcete použít výchozí pravidlo písma, měli byste zakázat *FontInfo substitution rule*. Všimněte si, že *FontConfig substitution rule* ve většině případů vyřeší písmo, a tím přepíše všechna ostatní pravidla.

{{% /alert %}}


