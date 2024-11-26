---
title: Spolupráce s sekcemi v C#
second_title: Aspose.Words místo .NET
articleTitle: Spolupráce se sekcemi
linktitle: Spolupráce se sekcemi
description: "Pochopení pojmů a manipulačních postupů sekce dokumentů C#. Vložit oddíl do dokumentu C#. Odstranit část C#. Kopírovat oddíly mezi dokumenty."
type: docs
weight: 120
url: /cs/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Někdy chcete dokument, který nemá stejný formátování na všech stránkách. Například budete muset upravit formáty čísel stránek, mít jinou velikost stránky a orientaci nebo mít první stránku dokumentu jako titulní stránku bez číslování. Toho můžete dosáhnout pomocí sekcí.

Sekce jsou rovné uzly, které ovládají hlavičky a zápatí, orientaci, sloupce, okraje, formátování čísel stránek a další.

Aspose.Words umožňuje spravovat sekce, rozdělit dokument do sekcí a formátovat změny, které se vztahují pouze na konkrétní oddíl. Aspose.Words ukládá informace o formátování sekcí, jako jsou hlavičky a zápatí, nastavení stránek a nastavení sloupců v sekci přestávky.

Tento článek vysvětluje, jak pracovat s úseky a přestávkami.

## Co je sekce a sekce přestávka

Sekce dokumentů jsou zastoupeny [Section](https://reference.aspose.com/words/net/aspose.words/section/) a [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection) třídy. Sekce objekty jsou okamžité děti [Document](https://reference.aspose.com/words/net/aspose.words/document/) Uzel a lze k němu přistupovat přes [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections) majetek. Můžete spravovat tyto uzly pomocí některých metod, jako je [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/), a další.

Přestávka sekce je volba, která rozděluje stránky dokumentů do sekcí s přizpůsobitelným uspořádáním.

## Typy přerušení úseku

Aspose.Words umožňuje rozdělit a formátovat dokumenty pomocí různých částí přestávky [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/) číslice:

* SectionBreakContinous
* SectionBreakNewColumn
* SekceBreakNewPage
* SekceBreakEvenPage
* SekceBreakOddPage

Můžete také použít [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) počet pro výběr typu přestávky, který platí pouze pro první část jako NewColumn, NewPage, EvenPage a OddPage.

## Správa sekce

Vzhledem k tomu, sekce je normální kompozitní uzel, celá manipulace s uzly API lze použít pro manipulaci s úseky: pro přidání, odstranění a jiné operace na sekcích. Více o uzlech si můžete přečíst v článku [Aspose.Words Document Object Model (DOM)](/words/cs/net/aspose-words-document-object-model/).

Na druhou stranu, můžete také použít `DocumentBuilder` API pracovat s sekcemi. V tomto článku se zaměříme na tento konkrétní způsob práce s oddíly.

## Vložit nebo odstranit zlomovou část

Aspose.Words umožňuje vložit sekci vloupání do textu pomocí [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) metoda.

Následující příklad kódu ukazuje, jak vložit oddíl vloupání do dokumentu:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Použijte [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) způsob odstranění přestávky v sekci. Pokud nepotřebujete odstranit určitou část přestávky a místo toho smazat obsah této sekce, můžete použít [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/) metoda.

Následující příklad kódu ukazuje, jak odstranit části přestávky:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Všimněte si, že část přestávky má informace o sekci, která jde před ní, ne část, která jde po ní. Takže pokud odstraníte přestávku v sekci, text před odstraněnou přestávkou získá vlastnosti zlomu v sekci. To může způsobit, že celý dokument se stane krajinou, nebo hlavičky a zápatí změnit nebo zcela zmizí.

{{% /alert %}}

## Přesunout část

Pokud chcete přesunout část z jedné pozice do druhé ve vašem dokumentu, musíte získat index této sekce. Aspose.Words umožňuje získat pozici sekce z [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) použitím [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item) majetek. Můžete použít [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) vlastnost pro získání všech částí ve vašem dokumentu. Ale pokud chcete získat pouze první část, můžete použít [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) majetek.

Následující příklad kódu ukazuje, jak se dostat do první sekce a iterovat prostřednictvím dětí kompozitního uzlu:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Upřesnit uspořádání oddílu

Někdy chcete, aby váš dokument vypadal lépe tím, že tvůrčí uspořádání pro různé sekce dokumentů. Chcete-li zadat typ sítě aktuální sekce, můžete zvolit režim rozložení sekce pomocí [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/) číslice:

* Výchozí
* Grid
* LineGrid
* SnapToChars

Následující příklad kódu ukazuje, jak omezit počet řádků, které každá stránka může mít:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Upravit část

Při přidání nové sekce do dokumentu nebude žádné tělo ani odstavec, který můžete upravit. Aspose.Words umožňuje zaručit, že část obsahuje tělo s alespoň jedním odstavcem pomocí [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) metoda

Následující příklad kódu ukazuje, jak připravit nový uzel sekce pomocí **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Přidávat nebo prepend obsah

Pokud chcete na začátku/konci sekce nakreslit nějaký tvar nebo přidat text nebo obrázek, můžete použít [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) a [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) metody [Section](https://reference.aspose.com/words/net/aspose.words/section/) třída.

Následující příklad kódu ukazuje, jak přidat obsah stávající sekce:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Klonovat sekce

Aspose.Words umožňuje duplikovat sekci vytvořením celé kopie ní pomocí [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/) metoda.

Následující příklad kódu ukazuje, jak naklonovat první oddíl ve vašem dokumentu:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Kopírovat oddíly mezi dokumenty

V některých případech můžete mít velké dokumenty s mnoha oddíly a chcete zkopírovat obsah části z jednoho dokumentu do druhého.

Aspose.Words umožňuje kopírovat sekce mezi dokumenty pomocí [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) metoda.

Následující příklad kódu ukazuje, jak kopírovat oddíly mezi dokumenty:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Práce s hlavičkou sekce a zápatí

Základní pravidla pro zobrazení hlavičky nebo zápatí pro každou část jsou jednoduchá:

1. Pokud část nemá vlastní hlavičky/nohy určitého typu, pak je převzata z předchozí části.
2. Typ hlavičky/noha zobrazená na stránce je řízen "Odlišnou první stránku" a "Odlišné stránky a dokonce i jiné stránky" nastavení sekce "A" pokud jsou zakázány, pak jsou ignorovány vlastní tituly sekce.

Následující příklad kódu ukazuje, jak vytvořit 2 sekce s různými hlavičkami:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Pokud chcete odstranit text hlaviček a zápatí bez odstranění [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) objekty ve vašem dokumentu, můžete použít [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) metoda. Kromě toho můžete použít [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) způsob odstranění všech tvarů z hlaviček a zápatí ve vašem dokumentu.

Následující příklad kódu ukazuje, jak odstranit obsah všech hlaviček a zápatí v sekci:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

Následující příklad kódu, jak odstranit všechny tvary ze všech zápatí hlaviček v sekci:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Přizpůsobit vlastnosti stránky v sekci

Před tiskem stránky nebo dokumentu si možná budete chtít přizpůsobit a upravit velikost a uspořádání jedné stránky nebo celého dokumentu. S nastavením stránky můžete změnit nastavení stránek dokumentů, jako jsou okraje, orientace a velikost pro tisk různých prvních stránek nebo lichých stránek.

Aspose.Words umožňuje přizpůsobit vlastnosti stránky a sekce pomocí [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) třída.

Následující příklad kódu ukazuje, jak nastavit takové vlastnosti jako velikost stránky a orientaci pro aktuální sekci:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

Následující příklad kódu ukazuje, jak upravit vlastnosti stránky ve všech sekcích:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Viz také

* [Logické úrovně uzlů v dokumentu](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Vložit a doplnit dokumenty](/words/cs/net/insert-and-append-documents/)

