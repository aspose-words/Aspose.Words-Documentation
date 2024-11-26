---
title: Spolupráce s sekcemi v Java
second_title: Aspose.Words místo Java
articleTitle: Spolupráce se sekcemi
linktitle: Spolupráce se sekcemi
description: "Porozumění pojmům a praktikám v oblasti dokumentů a manipulace Java. Vložit oddíl do dokumentu Java. Odstranit část Java. Kopírovat oddíly mezi dokumenty."
type: docs
weight: 120
url: /cs/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Někdy chcete dokument, který nemá stejný formát na všech stránkách. Například můžete potřebovat upravit formáty čísel stránek, mít jinou velikost stránky a orientaci nebo mít první stránku dokumentu jako titulní stránku bez číslování. Toho můžete dosáhnout sekcemi.

Sekce jsou rovné uzly, které ovládají hlavičky a zápatí, orientaci, sloupce, okraje, formátování čísel stránek a další.

Aspose.Words umožňuje spravovat sekce, rozdělit dokument do sekcí a provádět změny formátování, které se vztahují pouze na konkrétní oddíl. Aspose.Words ukládá informace o formátování sekcí, jako jsou hlavičky a zápatí, nastavení stránek a nastavení sloupců v sekci přestávky.

Tento článek vysvětluje, jak pracovat s úseky a přestávkami.

## Co je sekce a sekce přestávka

Sekce dokumentů jsou zastoupeny [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) a [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) třídy. Sekce objekty jsou okamžité děti [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Uzel a lze k němu přistupovat přes [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) majetek. Můžete spravovat tyto uzly pomocí některých metod, jako jsou [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), a další.

Přestávka sekce je volba, která rozděluje stránky dokumentů do sekcí s přizpůsobitelným uspořádáním.

## Typy přerušení úseku

Aspose.Words umožňuje rozdělit a formátovat dokumenty pomocí různých částí přestávky [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) číslice:

- Sekce BreakContinous
- SectionBreakNewColumn
- SekceBreakNewPage
- SekceBreakEvenPage
- SekceBreakOddPage

Můžete také použít [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) počet pro výběr typu přestávky, který platí pouze pro první oddíl jako NewColumn, NewPage, EvenPage a OddPage.

## Správa sekce

Vzhledem k tomu, sekce je normální kompozitní uzel, celá manipulace s uzly API mohou být použity pro manipulaci s úseky: pro přidání, odstranění a jiné operace na sekcích. Více o uzlech si můžete přečíst v článku [Aspose.Words Document Object Model (DOM)](/words/cs/java/aspose-words-document-object-model/).

Na druhou stranu, můžete také použít `DocumentBuilder` API pracovat s sekcemi. V tomto článku se zaměříme na tento konkrétní způsob práce s oddíly.

## Vložit nebo odstranit zlom v části

Aspose.Words umožňuje vložit část vloupání do textu pomocí [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) metoda.

Následující příklad kódu ukazuje, jak vložit oddíl vloupání do dokumentu:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Použijte [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) způsob odstranění přerušení sekce. Pokud nepotřebujete odstranit určitou část přestávky a místo toho smazat obsah této sekce, můžete použít [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) metoda.

Následující příklad kódu ukazuje, jak odstranit části přestávky:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Všimněte si, že část přestávky má informace o sekci, která jde před ní, ne část, která jde po ní. Takže pokud odstraníte přestávku v sekci, text před odstraněnou přestávkou získá vlastnosti zlomu v sekci. To může způsobit, že celý dokument se stane krajinou, nebo hlavičky a zápatí změnit nebo zcela zmizí.

{{% /alert %}}

## Přesunout oddíl

Pokud chcete přesunout část z jedné pozice na druhou ve vašem dokumentu, musíte získat index této sekce. Aspose.Words umožňuje získat pozici sekce z [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Můžete použít [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) vlastnost pro získání všech částí ve vašem dokumentu. Ale pokud chcete získat pouze první část, můžete použít [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) majetek.

Následující příklad kódu ukazuje, jak se dostanete do první sekce a iterujete prostřednictvím dětí kompozitního uzlu:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Upřesnit uspořádání oddílu

Někdy chcete, aby váš dokument vypadal lépe tím, že kreativní uspořádání pro různé sekce dokumentů. Pokud chcete zadat typ sítě aktuální sekce, můžete si zvolit režim uspořádání sekce pomocí [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) číslice:

- Výchozí
- Grid
- LineGrid
- SnapToChars

Následující příklad kódu ukazuje, jak omezit počet řádků, které každá stránka může mít:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Upravit část

Když přidáte novou sekci do dokumentu, nebude žádné tělo nebo odstavec, který můžete editovat. Aspose.Words umožňuje zaručit, že část obsahuje tělo s alespoň jedním odstavcem pomocí [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) metoda

Následující příklad kódu ukazuje, jak připravit nový uzel sekce pomocí **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Přidávat nebo prepend obsah

Pokud chcete na začátku/konci sekce nakreslit nějaký tvar nebo přidat text nebo obrázek, můžete použít [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) a [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) metody [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) třída.

Následující příklad kódu ukazuje, jak přidat obsah stávající sekce:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Klonovat oddíl

Aspose.Words umožňuje duplikovat sekci vytvořením celé kopie ní pomocí [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) metoda.

Následující příklad kódu ukazuje, jak naklonovat první část ve vašem dokumentu:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Kopírovat oddíly mezi dokumenty

V některých případech můžete mít velké dokumenty s mnoha oddíly a chcete zkopírovat obsah části z jednoho dokumentu do druhého.

Aspose.Words umožňuje kopírovat sekce mezi dokumenty pomocí [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) metoda.

Následující příklad kódu ukazuje, jak kopírovat oddíly mezi dokumenty:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Práce s hlavičkou a zápatí sekce

Základní pravidla pro zobrazení hlavičky nebo zápatí pro každou část jsou jednoduchá:

1. Pokud část nemá vlastní hlavičky/nohy určitého typu, pak je převzata z předchozí části.
2. Typ hlavičky/noha zobrazená na stránce je řízen "různou první stránkou" a "různou Odd & Even pages" nastavení sekce "NAME OF TRANSLATORS" pokud jsou zakázány, pak jsou ignorovány vlastní titulky sekce.

Následující příklad kódu ukazuje, jak vytvořit 2 sekce s různými hlavičkami:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Pokud chcete odstranit text hlaviček a zápatí bez odstranění [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) objekty ve vašem dokumentu, můžete použít [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) metoda. Kromě toho můžete použít [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) způsob odstranění všech tvarů z hlaviček a zápatí ve vašem dokumentu.

Následující příklad kódu ukazuje, jak odstranit obsah všech hlaviček a zápatí v sekci:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Následující příklad kódu, jak odstranit všechny tvary ze všech patek hlaviček v sekci:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Přizpůsobit vlastnosti stránky v sekci

Před tiskem stránky nebo dokumentu si možná budete chtít přizpůsobit a upravit velikost a rozložení jedné stránky nebo celého dokumentu. S nastavením stránky můžete změnit nastavení stránek dokumentů, jako jsou okraje, orientace a velikost pro tisk různých prvních stránek nebo lichých stránek.

Aspose.Words umožňuje přizpůsobit vlastnosti stránky a sekce pomocí [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) třída.

Následující příklad kódu ukazuje, jak nastavit takové vlastnosti jako velikost stránky a orientaci pro aktuální sekci:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Následující příklad kódu ukazuje, jak změnit vlastnosti stránky ve všech sekcích:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Viz také

- [Logické orgány v dokumentu](/words/cs/java/logical-levels-of-nodes-in-a-document/)
- [Vložit a doplnit dokumenty](/words/cs/java/insert-and-append-documents/)
