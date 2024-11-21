---
title: Práce se Styles a Témata v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce se styly a motivy
linktitle: Práce se styly a motivy
description: "Pokročilé Microsoft Word funkce formátování, práce se styly a tématy pomocí C#."
type: docs
weight: 110
url: /cs/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

• [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) třída se používá pro správu vestavěných a aplikaci uživatelsky definovaných nastavení na styly.

## Přístup k stylům

Můžete získat soubor stylů definovaných v dokumentu pomocí [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) majetek. Tato kolekce obsahuje jak vestavěný, tak uživatelsky definovaný styl v dokumentu. Zvláštní styl by mohl být získán jeho názvem/aliasem, identifikátorem stylu nebo indexem. Následující příklad kódu ukazuje, jak získat přístup ke sběru stylů definovaných v dokumentu.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Jak extrahovat obsah na základě stylů

Na jednoduché úrovni, získávání obsahu na základě stylů z dokumentu Word může být užitečné pro identifikaci, seznam a počítání odstavců a běží textu formátovaný s konkrétním stylem. Můžete například potřebovat určit konkrétní druhy obsahu v dokumentu, jako jsou příklady, názvy, reference, klíčová slova, jména postav a případové studie.

K tomu, aby to bylo o několik kroků dále, lze tento dokument využít také k využití struktury dokumentu definované styly, které používá, k opětovnému použití dokumentu pro jiný výstup, jako je HTML. Takhle se vlastně vytváří dokumentace Aspose, Aspose.Words do testu. Nástroj postavený pomocí Aspose.Words bere zdroj Word dokumenty a rozděluje je na témata na určité úrovni okruhu. XML soubor se vyrábí pomocí Aspose.Words který se používá ke stavbě navigačního stromu, který můžete vidět vlevo. A pak Aspose.Words převádí každé téma do HTML.

Řešení pro získávání textu formátovaného určitými styly v dokumentu Word je typicky ekonomické a jednoduché použití Aspose.Words.

### Řešení

Znázornit, jak snadno Aspose.Words zpracovává získávání obsahu na základě stylů, nechť se podívá na příklad. V tomto příkladu se chystáme získat text formátovaný s konkrétním odst. stylu a charakter stylu ze vzorku Word dokumentu. Na vysoké úrovni to bude zahrnovat:# Otevření dokumentu Word pomocí [Document](https://reference.aspose.com/words/net/aspose.words/document/) třída.# Získání sbírek všech odstavců a všech běží v dokumentu.# Výběr pouze požadovaných odstavců a běží. Konkrétně získáme text formátovaný s paragrafem

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


V tomto vzorkovacím dokumentu je text formátovaný podle odst. 1 písm. a) a odst. 1 písm. a) a písm. a) a b) písm. b) písm. b) písm. b) písm. b) písm. b) písm. c) písm. c) písm. c) písm. c) písm. c) a c) písm. c) písm. c) a d) písm. e) písm. e) písm. e) písm. e).

### Kód

Implementace stylového dotazu je poměrně jednoduchá v Aspose.Words model objektu dokumentu, protože prostě používá nástroje, které jsou již na místě. Pro toto řešení jsou implementovány dvě třídní metody:# **ParagraphsByStyleName** - Co? Tato metoda získává pole těchto odstavců v dokumentu, které mají specifický název stylu. # **RunsByStyleName** - Co? Tato metoda získává řadu těch, které běží v dokumentu, který má specifický název stylu. Obě tyto metody jsou velmi podobné, jedinými rozdíly jsou typy uzlů a zastoupení stylových informací v odstavci a spustit uzly. Zde je provádění odstavců ByStyleName: Níže najdete všechny odstavce formátované zadaným stylem.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Toto provádění také využívá `Document.GetChildNodes` způsob `Document` třída, která vrací soubor všech uzlů s uvedeným typem, který v tomto případě ve všech odstavcích.

Všimněte si, že druhý parametr **Document.GetChildNodes** metoda je nastavena na true. Tohle nutí **Document.GetChildNodes** metoda výběru ze všech dětských uzlů se rekurzivně, spíše než vybrat pouze okamžité děti.

{{% /alert %}}

Stojí také za zmínku, že sbírka odstavců nevytváří bezprostřední režijní náklady, protože odstavce jsou do této sbírky vloženy pouze tehdy, když se k nim dostanete. Pak vše, co musíte udělat, je projít sbírku pomocí normy pro každého operátora a přidat odstavce, které mají uvedený styl k odstavcům Se stylovým polem. • `Paragraph` název stylu naleznete v [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) majetek [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) objekt. Implementace RunsByStyleName je téměř stejná, i když samozřejmě používáme [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) pro získání spuštěných uzlů. • [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) vlastnictví a [Run](https://reference.aspose.com/words/net/aspose.words/run/) objekt se používá pro přístup ke stylovým informacím v **Run** uzly. Níže najdete všechny runy formátované zadaným stylem.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Při realizaci obou dotazů stačí předat objekt dokumentu a zadat názvy stylu obsahu, který chcete získat: Níže spusťte dotazy a výsledky zobrazení. Můžete si stáhnout soubor šablony tohoto příkladu z [Tady](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Konečný výsledek

Až bude všechno hotovo, spustí se vzorek zobrazí následující výstup:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Jak můžete vidět, je to velmi jednoduchý příklad, zobrazující číslo a text shromážděných odstavců a běží ve vzorku Word dokumentu.

## Kopírovat všechny styly ze šablony

Existují případy, kdy chcete zkopírovat všechny styly z jednoho dokumentu do druhého. Můžete použít `Document.CopyStylesFromTemplate` způsob kopírování stylů od zadané šablony k dokumentu. Když jsou styly zkopírovány ze šablony do dokumentu, podobně pojmenované styly v dokumentu jsou definovány tak, aby odpovídaly stylu popisů v šabloně. Jedinečné styly ze šablony jsou kopírovány do dokumentu. Jedinečné styly v dokumentu zůstávají neporušené. Below code příklad ukazuje, jak kopírovat styly z jednoho dokumentu do druhého.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Jak manipulovat Vlastnosti motivu

Přidali jsme základní API tro Aspose.Words přístup k tématickým vlastnostem dokumentu. Prozatím tohle API zahrnuje tyto veřejné objekty:

- Motiv
- ThemeFonts
- ThemeColors

Zde je způsob, jak můžete získat vlastnosti motivu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

A tady je, jak si můžete nastavit vlastnosti motivu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
