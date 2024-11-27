---
title: Práce se styly v C++
second_title: Aspose.Words pro C++
articleTitle: Práce se styly
linktitle: Práce se styly
description: "Vylepšené funkce formátování Microsoft Word, práce se styly a motivy pomocí C++."
type: docs
weight: 110
url: /cs/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

Třída [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) se používá ke správě vestavěných a použití uživatelem definovaných nastavení stylů.

## Jak extrahovat obsah na základě stylů

Na jednoduché úrovni může být načítání obsahu na základě stylů z dokumentu Word užitečné k identifikaci, seznamu a počítání odstavců a běhů textu formátovaného konkrétním stylem. Možná budete muset například určit konkrétní druhy obsahu v dokumentu, jako jsou příklady, názvy, odkazy, klíčová slova, názvy obrázků a případové studie.

Chcete-li to provést o několik kroků dále, lze to také použít k využití struktury dokumentu definované styly, které používá, k opětovnému účelu dokumentu pro jiný výstup, například HTML. Ve skutečnosti je takto vytvořena dokumentace Aspose, která testuje Aspose.Words. Nástroj vytvořený pomocí Aspose.Words vezme zdrojové dokumenty Word a rozdělí je na témata na určitých úrovních nadpisů. Soubor XML je vytvořen pomocí Aspose.Words, který se používá k sestavení navigačního stromu, který vidíte vlevo. A pak Aspose.Words převede každé téma na HTML.

Řešení pro načítání textu formátovaného specifickými styly v dokumentu Word je obvykle ekonomické a přímočaré pomocí Aspose.Words.

### Řešení

Abychom ilustrovali, jak snadno Aspose.Words zpracovává načítání obsahu na základě stylů, podívejme se na příklad. V tomto příkladu načteme text formátovaný konkrétním odstavcovým stylem a znakovým stylem z ukázkového dokumentu Word. Na vysoké úrovni to bude zahrnovat:
- Otevření dokumentu Word pomocí třídy `Document`.
- Získání kolekcí všech odstavců a všech běhů v dokumentu.
- Výběr pouze požadovaných odstavců a běhů. Konkrétně z tohoto ukázkového dokumentuWord načteme text formátovaný odstavcovým stylem "Heading 1 "a znakovým stylem "intenzivní důraz".

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


V tomto ukázkovém dokumentu je text formátovaný odstavcovým stylem "Heading 1 ""vložit kartu", "Rychlé styly" a "téma" a text formátovaný stylem "intenzivní důraz" je několik instancí modrého, kurzíva, tučný text, jako jsou "galerie" a "celkový vzhled".

### Kód

Implementace dotazu založeného na stylu je v modelu Aspose.Words Document object poměrně jednoduchá ,protože jednoduše používá nástroje, které jsou již zavedeny. Pro toto řešení jsou implementovány dvě metody třídy:# **ParagraphsByStyleName** - tato metoda načte pole odstavců v dokumentu, které mají konkrétní název stylu.# **RunsByStyleName** - tato metoda načte pole těch běhů v dokumentu, které mají konkrétní název stylu. Obě tyto metody jsou velmi podobné, jedinými rozdíly jsou typy uzlů a reprezentace informací o stylu v uzlech odstavce a běhu. Zde je implementace ParagraphsByStyleName. Níže naleznete všechny odstavce formátované zadaným stylem.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Tato implementace také používá metodu `Document.GetChildNodes` třídy `Document`, která vrací kolekci všech uzlů se zadaným typem, což je v tomto případě ve všech odstavcích.

Všimněte si, že druhý parametr metody **Document.GetChildNodes** je nastaven na true. To nutí metodu **Document.GetChildNodes** vybrat ze všech podřízených uzlů rekurzivně, spíše než vybrat pouze bezprostřední podřízené.

{{% /alert %}}

Je také třeba zdůraznit, že kolekce odstavců nevytváří okamžitou režii, protože odstavce se do této kolekce načítají pouze tehdy, když v nich přistupujete k položkám. Poté vše, co musíte udělat, je projít kolekcí pomocí standardu pro každý operátor a přidat odstavce, které mají zadaný styl, do pole paragraphsWithStyle. Název stylu `Paragraph` lze nalézt ve stylu. Název vlastnosti objektu `Paragraph.ParagraphFormat`. Implementace RunsByStyleName je téměř stejná, i když zjevně používáme `NodeType.Run` k načtení run nodes. Vlastnost `Font.Style` objektu `Run` se používá pro přístup k informacím o stylu v uzlech **Run**. Příklad below code Najděte všechny běhy formátované zadaným stylem.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Když jsou implementovány oba dotazy, vše, co musíte udělat, je předat objekt dokumentu a zadat názvy stylů obsahu, který chcete načíst: níže uvedený příklad spusťte dotazy a zobrazte výsledky. Soubor šablony tohoto příkladu si můžete stáhnout zde.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Výsledek

Když je vše hotovo, spuštěním vzorku se zobrazí následující výstup:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Jak vidíte, jedná se o velmi jednoduchý příklad, který ukazuje počet a text shromážděných odstavců a běží v ukázkovém dokumentu Word.

## Jak vložit a pracovat s polem obsah

Často budete pracovat s dokumenty obsahujícími obsah (TOC). Pomocí Aspose.Words můžete vložit svůj vlastní obsah nebo zcela znovu vytvořit existující obsah v dokumentu pomocí několika řádků kódu. Tento článek popisuje, jak pracovat s polem obsah a ukazuje:

- Jak vložit zcela nový `TOC`
- Aktualizujte nový nebo existující TOCs v dokumentu.
- Určete přepínače pro ovládání formátování a celkové struktury f TOC.
- Jak upravit styly a vzhled obsahu.
- Jak odstranit celé pole `TOC` spolu se všemi položkami z dokumentu.

### Vložit TC Pole

Často je pro `TOC` určen konkrétní řádek textu a je označen polem `TC`. Snadný způsob, jak to udělat v MS Word, je zvýraznit text a stisknout *ALT+SHIFT+O*. Tím se automaticky vytvoří pole `TC` pomocí vybraného textu. Stejnou techniku lze provést pomocí kódu. Níže uvedený kód najde text odpovídající vstupu a vloží pole `TC` na stejné místo jako text. Kód je založen na stejné technice použité v článku. Níže uvedený příklad ukazuje, jak najít a vložit pole `TC` na text v dokumentu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Změna obsahu

#### Změna formátování stylů

Formátování položek v `TOC` nepoužívá původní styly označených položek, místo toho je každá úroveň formátována pomocí ekvivalentního stylu `TOC`. Například první úroveň v `TOC` je formátována stylem **TOC1**, Druhá úroveň formátována stylem **TOC2** a tak dále. To znamená, že pro změnu vzhledu `TOC` musí být tyto styly upraveny. V Aspose.Words jsou tyto styly reprezentovány nezávislým národním prostředím `StyleIdentifier.TOC1` až `StyleIdentifier.TOC9` a lze je získat z kolekce `Document.Styles` pomocí těchto identifikátorů. Po načtení příslušného stylu dokumentu lze formátování tohoto stylu upravit. Jakékoli změny těchto stylů se automaticky projeví na TOCs v dokumentu. Příklad below code změní vlastnost formátování použitou ve stylu první úrovně `TOC`.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Je také užitečné poznamenat, že jakékoli přímé formátování odstavce (definovaného na samotném odstavci a nikoli ve stylu) označeného jako `TOC` bude zkopírováno do položky v TOC. Například pokud se styl Heading 1 používá k označení obsahu pro `TOC` a tento styl má tučné formátování, zatímco odstavec má také formátování kurzívou přímo aplikované na něj. Výsledná položka `TOC` nebude tučná, protože je součástí formátování stylu, ale bude kurzívou, protože je přímo naformátována v odstavci. Můžete také ovládat formátování oddělovačů použitých mezi každou položkou a číslem stránky. Ve výchozím nastavení se jedná o tečkovanou čáru, která je rozložena na číslování stránek pomocí znaku karty a pravého zarážky karty seřazené blízko pravého okraje.

Pomocí třídy `Style` načtené pro konkrétní úroveň `TOC`, kterou chcete upravit, můžete také upravit, jak se tyto zobrazují v dokumentu. Chcete-li změnit způsob, jakým se toto zobrazí, nejprve je třeba zavolat `Style.ParagraphFormat`, aby se načetlo formátování odstavce pro styl. Z toho lze zarážky karet načíst voláním `ParagraphFormat.TabStops` a upravit příslušnou zarážku karet. Pomocí stejné techniky lze samotnou kartu přesunout nebo úplně odstranit. Příklad below code ukazuje, jak upravit polohu pravého zarážky v `TOC` souvisejících odstavcích. Soubor šablony tohoto příkladu si můžete stáhnout zde.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Odebrání obsahu z dokumentu

Obsah lze z dokumentu odstranit odstraněním všech uzlů nalezených mezi uzlem `FieldStart` a FieldEnd pole `TOC`. Níže uvedený kód to dokazuje. Odstranění pole `TOC` je jednodušší než normální pole, protože nesledujeme vnořená pole. Místo toho zkontrolujeme, že uzel `FieldEnd` je typu `FieldType.FieldTOC`, což znamená, že jsme narazili na konec aktuálního TOC. Tuto techniku lze v tomto případě použít bez obav o vnořená pole, protože můžeme předpokládat, že jakýkoli správně vytvořený dokument nebude mít plně vnořené pole `TOC` uvnitř jiného pole `TOC`. Nejprve se shromáždí a uloží uzly `FieldStart` každého `TOC`. Zadaný `TOC` je poté vyjmenován, takže jsou navštíveny a uloženy všechny uzly v poli. Uzly jsou poté z dokumentu odstraněny. Příklad below code ukazuje, jak odebrat zadaný `TOC` z dokumentu. Soubor šablony tohoto příkladu si můžete stáhnout zde.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Vložte oddělovač stylů a vložte různé styly odstavců

Oddělovač stylů lze přidat na konec odstavce pomocí klávesové zkratky Ctrl + Alt + Enter do MS Word. Tato funkce umožňuje dva různé styly odstavců používané v jednom logickém tištěném odstavci. Pokud chcete, aby se nějaký text od začátku konkrétního nadpisu zobrazoval v obsahu, ale nechcete, aby se v obsahu zobrazoval celý Nadpis, můžete tuto funkci použít. Příklad below code ukazuje, jak vložit oddělovač stylů pro vložení různých stylů odstavců.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Zkopírujte všechny styly ze šablony

Existují případy, kdy chcete zkopírovat všechny styly z jednoho dokumentu do druhého. Metodu `Document.CopyStylesFromTemplate` můžete použít ke kopírování stylů ze zadané šablony do dokumentu. Při kopírování stylů ze šablony do dokumentu se předefinují styly s podobným názvem v dokumentu tak, aby odpovídaly popisům stylů v šabloně. Jedinečné styly ze šablony jsou zkopírovány do dokumentu. Jedinečné styly v dokumentu zůstávají nedotčeny. Příklad below code ukazuje, jak kopírovat styly z jednoho dokumentu do druhého.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
