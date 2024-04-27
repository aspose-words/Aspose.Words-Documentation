---
title: Práce se styly a motivy
second_title: Aspose.Words místo Java
articleTitle: Práce se styly a motivy
linktitle: Práce se styly a motivy
description: "Rozšířené Microsoft Word funkce formátování, práce se styly a tématy pomocí Java."
type: docs
weight: 110
url: /cs/java/working-with-styles-and-themes/
---

The [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) třída se používá pro správu vestavěných a použití uživatelsky definovaných nastavení na styly.

## Jak extrahovat obsah na základě stylů

Na jednoduché úrovni, získávání obsahu na základě stylů z dokumentu Word může být užitečné pro identifikaci, seznam a počítání odstavců a běží textu formátovaný s konkrétním stylem. Můžete například potřebovat určit konkrétní druhy obsahu v dokumentu, jako jsou příklady, tituly, reference, klíčová slova, jména postav a případové studie.

K tomu, aby to bylo ještě o několik kroků dále, lze toto použít také k využití struktury dokumentu definované styly, které používá, k opětovnému použití dokumentu pro jiný výstup, jako je HTML. Takhle se vlastně vytváří dokumentace Aspose, Aspose.Words do testu. Nástroj postavený pomocí Aspose.Words bere zdroj Word dokumenty a rozděluje je na témata na určité úrovni okruhu. XML soubor se vyrábí pomocí Aspose.Words který se používá ke stavbě navigačního stromu, který můžete vidět vlevo. A pak Aspose.Words převádí každé téma do HTML. Řešení pro získávání textu formátovaného určitými styly v dokumentu Word je typicky ekonomické a jednoduché použití Aspose.Words.

Znázornit, jak snadno Aspose.Words zvládá získávání obsahu na základě stylů, nechť se podívá na příklad. V tomto příkladu se chystáme získat text formátovaný podle konkrétního odstavce stylu a znakového stylu ze vzorku Word dokumentu.

Na vysoké úrovni to bude zahrnovat:

1. Otevření dokumentu Word pomocí [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) třída.
1. Získávám sbírky všech odstavců a všechny běží v dokumentu.
1. Výběr pouze požadovaných odstavců a běží.

Konkrétně získáme text formátovaný s paragrafem "Heading" a stylem "Intenzivní důraz" z tohoto dokumentu

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

V tomto vzorkovacím dokumentu je text formátovaný s odst. 1 písm. a) a text ve formátu "Intenzivní důraz" v textu "Insert Tab," "Quick Styles" (Quick Styles) a "Theme" (Theme) a text ve formátu s "Intenzivním důrazem" stylem znaku je několik případů modrého, italikizovaného, tučného textu, jako jsou galerie a celkový vzhled.

Implementace stylového dotazu je poměrně jednoduché v Aspose.Words dokument objekt model, protože prostě používá nástroje, které jsou již na místě. Pro toto řešení jsou zavedeny dvě třídní metody:

1. **ParagraphsByStyleName**? Tato metoda získává pole těchto odstavců v dokumentu, které mají specifický název stylu.
1. **RunsByStyleName**? Tato metoda získává řadu těch, které běží v dokumentu, který má specifický název stylu.

Obě tyto metody jsou velmi podobné, jedinými rozdíly jsou typy uzlů a reprezentace stylových informací v odstavci a spustit uzly. Zde je implementace OdstavceByStyleJméno zobrazené v příkladu kódu uvedeném níže najít všechny odstavce formátované s uvedeným stylem.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Toto provádění také využívá [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) způsob `Document` třída, která vrací sbírku všech okamžitých dětských uzlů.

Stojí také za zmínku, že sbírka odstavců nevytváří bezprostřední režijní náklady, protože odstavce jsou do této sbírky vloženy pouze tehdy, když se k nim dostanete. Pak vše, co musíte udělat, je projít sbírku pomocí normy pro každého operátora a přidat odstavce, které mají uvedený styl k odstavcům Se stylovým polem. The `Paragraph` název stylu naleznete v [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) majetek [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) objekt.

Implementace RunsByStyleName je téměř stejná, i když samozřejmě používáme `NodeType.Run` pro získání spuštěných uzlů. The [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) vlastnictví a [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) objekt se používá pro přístup ke stylovým informacím v **Run** uzly

Následující příklad kódu najde všechny běží formátované se zadaným stylem.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Při realizaci obou dotazů stačí předat objekt dokumentu a zadat názvy stylu obsahu, který chcete získat:

{{% /alert %}}

Následující příklad kódu spustí dotazy a výsledky zobrazení.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Když je vše hotovo, spouštění vzorku zobrazí následující výstup:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Jak vidíte, je to velmi jednoduchý příklad, zobrazující číslo a text vybraných odstavců a běží ve výběrovém dokumentu Word.

## Vložit stylový oddělovač pro různé odstíny

Oddělovač stylu lze přidat na konec odstavce pomocí klávesové zkratky Ctrl + Alt + Enter do MS Word. Tato funkce umožňuje dva různé odstíny používané v jednom logickém tištěném odstavci. Pokud chcete nějaký text od začátku určitého čísla, který se objeví v Obsahové tabulce, ale nechcete celý nadpis v Obsahové tabulce, můžete tuto funkci použít

Následující příklad kódu ukazuje, jak vložit oddělovač stylu, aby dal různé odstíny stylů

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Kopírovat všechny styly ze šablony

Existují případy, kdy chcete zkopírovat všechny styly z jednoho dokumentu do druhého. Můžete použít `Document.CopyStylesFromTemplate` způsob kopírování stylů z zadané šablony do dokumentu. Pokud jsou styly zkopírovány ze šablony do dokumentu, stejně jako-jmenované styly v dokumentu jsou definovány, aby odpovídaly stylu popisů v šabloně. Jedinečné styly ze šablony jsou kopírovány do dokumentu. Jedinečné styly v dokumentu zůstávají neporušené

Následující příklad kódu ukazuje, jak kopírovat styly z jednoho dokumentu do druhého.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Jak manipulovat Vlastnosti motivu

Přidali jsme základní API v Aspose.Words přístup k tématickým vlastnostem dokumentu. Prozatím, tohle API zahrnuje tyto veřejné předměty:

- Motiv
- ThemeFonts
- ThemeColors

Zde je způsob, jak můžete získat vlastnosti motivu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

A tady je, jak si můžete nastavit vlastnosti motivu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
