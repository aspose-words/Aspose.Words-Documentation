---
title: Práce se styly a motivy
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce se styly a motivy
linktitle: Práce se styly a motivy
description: "Přístup a řízení stylů a témat v dokumentu pomocí Python."
type: docs
weight: 110
url: /cs/python-net/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

• [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) třída se používá pro správu vestavěných a aplikaci uživatelsky definovaných nastavení na styly.

## Přístup k stylům

Můžete získat soubor stylů definovaných v dokumentu pomocí [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) majetek. Tato kolekce obsahuje jak vestavěný, tak uživatelsky definovaný styl v dokumentu. Zvláštní styl by mohl být získán jeho názvem/aliasem, identifikátorem stylu nebo indexem. Následující příklad kódu ukazuje, jak získat přístup ke sběru stylů definovaných v dokumentu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Jak extrahovat obsah na základě stylů

Na jednoduché úrovni, získávání obsahu na základě stylů z dokumentu Word může být užitečné pro identifikaci, seznam a počítání odstavců a běží textu formátovaný s konkrétním stylem. Můžete například potřebovat určit konkrétní druhy obsahu v dokumentu, jako jsou příklady, názvy, reference, klíčová slova, jména postav a případové studie.

K tomu, aby to bylo o několik kroků dále, lze tento dokument využít také k využití struktury dokumentu definované styly, které používá, k opětovnému použití dokumentu pro jiný výstup, jako je HTML. Takhle se vlastně vytváří dokumentace Aspose, Aspose.Words do testu. Nástroj postavený pomocí Aspose.Words bere zdroj Word dokumenty a rozděluje je na témata na určité úrovni okruhu. XML soubor se vyrábí pomocí Aspose.Words který se používá ke stavbě navigačního stromu, který můžete vidět vlevo. A pak Aspose.Words převádí každé téma do HTML.

Řešení pro získávání textu formátovaného určitými styly v dokumentu Word je typicky ekonomické a jednoduché použití Aspose.Words.

### Řešení

Znázornit, jak snadno Aspose.Words zpracovává získávání obsahu na základě stylů, nechť se podívá na příklad. V tomto příkladu se chystáme získat text formátovaný s konkrétním odst. stylu a charakter stylu ze vzorku Word dokumentu. Na vysoké úrovni to bude zahrnovat:
- Otevření dokumentu Word pomocí [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída.
- Získávám sbírky všech odstavců a všechny běží v dokumentu.
- Výběr pouze požadovaných bodů a běží. Konkrétně získáme text formátovaný s paragrafem

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


V tomto vzorkovacím dokumentu je text formátovaný podle odst. 1 písm. a) a odst. 1 písm. a) a písm. a) a b) písm. b) písm. b) písm. b) písm. b) písm. b) písm. c) písm. c) písm. c) písm. c) písm. c) a c) písm. c) písm. c) a d) písm. e) písm. e) písm. e) písm. e).

### Kód

Implementace stylového dotazu je poměrně jednoduchá v Aspose.Words model objektu dokumentu, protože prostě používá nástroje, které jsou již na místě. Pro toto řešení jsou zavedeny dvě třídní metody:
- **odstavce_by_style_name** - Co? Tato metoda získává pole těchto odstavců v dokumentu, které mají specifický název stylu.
- **runs_by_style_name** - Co? Tato metoda získává řadu těch, které běží v dokumentu, který má specifický název stylu. Obě tyto metody jsou velmi podobné, jedinými rozdíly jsou typy uzlů a zastoupení stylových informací v odstavci a spustit uzly. Zde je implementace `paragraphs_by_style_name`: Níže naleznete příklad všechny odstavce formátované podle zadaného stylu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Toto provádění také využívá [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) způsob [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) třída, která vrací soubor všech uzlů s uvedeným typem, který v tomto případě ve všech odstavcích.

Všimněte si, že druhý parametr [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) metoda je nastavena na `True`. Tohle nutí [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) metoda výběru ze všech dětských uzlů se rekurzivně, spíše než vybrat pouze okamžité děti.

{{% /alert %}}

Stojí také za zmínku, že sbírka odstavců nevytváří bezprostřední režijní náklady, protože odstavce jsou do této sbírky vloženy pouze tehdy, když se k nim dostanete. Pak vše, co musíte udělat, je projít sbírku pomocí normy pro každého operátora a přidat odstavce, které mají zadaný styl do pole odstavce_with_style. • `Paragraph` název stylu naleznete v [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) majetek [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) objekt. Provádění **runs_by_style_name** je téměř stejný, i když my jsme samozřejmě používat [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) pro získání spuštěných uzlů. • [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) vlastnictví a [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) objekt se používá pro přístup ke stylovým informacím v [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) uzly. Níže najdete všechny runy formátované zadaným stylem.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Při realizaci obou dotazů stačí předat objekt dokumentu a zadat názvy stylu obsahu, který chcete získat: Níže spusťte dotazy a výsledky zobrazení. Můžete si stáhnout soubor šablony tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Konečný výsledek

Až bude všechno hotovo, spustí se vzorek zobrazí následující výstup:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Jak můžete vidět, je to velmi jednoduchý příklad, zobrazující číslo a text shromážděných odstavců a běží ve vzorku Word dokumentu.

## Kopírovat všechny styly ze šablony

Existují případy, kdy chcete zkopírovat všechny styly z jednoho dokumentu do druhého. Můžete použít [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) způsob kopírování stylů od zadané šablony k dokumentu. Když jsou styly zkopírovány ze šablony do dokumentu, podobně pojmenované styly v dokumentu jsou definovány tak, aby odpovídaly stylu popisů v šabloně. Jedinečné styly ze šablony jsou kopírovány do dokumentu. Jedinečné styly v dokumentu zůstávají neporušené. Below code příklad ukazuje, jak kopírovat styly z jednoho dokumentu do druhého.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Jak manipulovat Vlastnosti motivu

Přidali jsme základní API tro Aspose.Words přístup k tématickým vlastnostem dokumentu. Prozatím tohle API zahrnuje tyto veřejné objekty:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Zde je způsob, jak můžete získat vlastnosti motivu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

A tady je, jak si můžete nastavit vlastnosti motivu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
