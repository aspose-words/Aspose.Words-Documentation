---
title: Práce se sekcemi v C++
second_title: Aspose.Words pro C++
articleTitle: Práce se sekcemi
linktitle: Práce se sekcemi
description: "Porozumění koncepcím sekce dokumentů a manipulačním postupům pomocí C++. Vložte sekci do dokumentu C++. Odstraňte část C++. Kopírování sekcí mezi dokumenty."
type: docs
weight: 120
url: /cs/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Někdy chcete dokument, který nemá stejné formátování na všech stránkách. Možná budete muset například upravit formáty čísel stránek, mít jinou velikost a orientaci stránky nebo mít první stránku dokumentu jako titulní stránku bez jakéhokoli číslování. Můžete toho dosáhnout pomocí sekcí.

Sekce jsou uzly úrovně, které řídí záhlaví a zápatí, orientaci, sloupce, okraje, formátování čísla stránky a další.

Aspose.Words umožňuje spravovat oddíly, rozdělit dokument na oddíly a provádět změny formátování, které se vztahují pouze na konkrétní sekci. Aspose.Words ukládá informace o formátování oddílů, jako jsou záhlaví a zápatí, nastavení stránky a nastavení sloupců do konce oddílů.

Tento článek vysvětluje, jak pracovat s oddíly a zlomy sekcí.

## Jaký úsek a konec úseku je

Sekce dokumentů jsou reprezentovány třídami [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) a [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Objekty sekce jsou bezprostředními podřízenými uzlu [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) a lze k nim přistupovat pomocí vlastnosti [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Tyto uzly můžete spravovat pomocí některých metod, například [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), a další.

Konec oddílu je možnost, která rozděluje stránky dokumentu na sekce s přizpůsobitelnými rozvrženími.

## Typy přerušení sekce

Aspose.Words umožňuje rozdělit a formátovat dokumenty pomocí různých konců oddílů výčtu [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Můžete také použít výčet [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) k výběru typu přerušení, který platí pouze pro první část, například NewColumn, NewPage, EvenPage, a OddPage.

## Správa sekce

Protože sekce je normální složený uzel, lze k manipulaci se sekcemi použít celou manipulaci s uzlem API: Přidat, Odebrat a další operace v sekcích. Více o uzlech si můžete přečíst v článku [Aspose.Words Model Objektu Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/).

Na druhou stranu můžete také použít `DocumentBuilder` API pro práci se sekcemi. V tomto článku se zaměříme na tento konkrétní způsob práce se sekcemi.

## Vložení nebo odebrání konce oddílu

Aspose.Words umožňuje vložit konec oddílu do textu pomocí metody [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

Následující příklad kódu ukazuje, jak vložit konec oddílu do dokumentu:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Pomocí metody [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) Odstraňte konec oddílu. Pokud nepotřebujete odstranit konkrétní konec oddílu a místo toho odstranit obsah této sekce, můžete použít metodu [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

Následující příklad kódu ukazuje, jak odstranit konce oddílů:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Všimněte si, že konec oddílu obsahuje informace o oddílu, který jde před ním, nikoli o oddílu, který jde za ním. Pokud tedy odstraníte konec oddílu, text před odstraněným koncem získá vlastnosti konce oddílu, který za ním následuje. To může způsobit, že se celý dokument stane krajinou nebo se záhlaví a zápatí změní nebo úplně zmizí.

{{% /alert %}}

## Přesunout sekci

Pokud chcete v dokumentu přesunout sekci z jedné pozice na druhou, musíte získat index této sekce. Aspose.Words umožňuje získat pozici sekce z [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). K získání všech oddílů v dokumentu můžete použít vlastnost [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Pokud však chcete získat pouze první sekci, můžete použít vlastnost [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

Následující příklad kódu ukazuje, jak přistupovat k první sekci a iterovat prostřednictvím podřízených složeného uzlu:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Určení rozložení sekce

Někdy chcete, aby váš dokument vypadal lépe vytvořením kreativních rozvržení pro různé sekce dokumentů. Pokud chcete určit typ aktuální mřížky sekce, můžete zvolit režim rozvržení sekce pomocí výčtu [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- Default
- Mřížka
- LineGrid
- SnapToChars

Následující příklad kódu ukazuje, jak omezit počet řádků, které může mít každá stránka:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Upravit sekci

Když do dokumentu přidáte nový oddíl, nebude existovat žádné tělo ani odstavec, který byste mohli upravit. Aspose.Words umožňuje zaručit, že sekce obsahuje tělo s alespoň jedním odstavcem pomocí metody [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – automaticky přidá do dokumentu uzel Body (nebo HeaderFooter) a poté do něj přidá odstavec.

Následující příklad kódu ukazuje, jak připravit nový uzel sekce pomocí **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Připojit nebo připravit obsah

Pokud chcete nakreslit nějaký tvar nebo přidat text nebo obrázek na začátek/konec sekce, můžete použít metody [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) a [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) třídy [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

Následující příklad kódu ukazuje, jak připojit obsah existující sekce:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Klonování sekce

Aspose.Words umožňuje duplikovat sekci vytvořením její úplné kopie pomocí metody [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

Následující příklad kódu ukazuje, jak klonovat první část dokumentu:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Kopírování sekcí mezi dokumenty

V některých případech můžete mít velké dokumenty s mnoha oddíly a chcete zkopírovat obsah oddílu z jednoho dokumentu do druhého.

Aspose.Words umožňuje kopírovat oddíly mezi dokumenty pomocí metody [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

Následující příklad kódu ukazuje, jak kopírovat oddíly mezi dokumenty:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Práce s hlavičkou a zápatí sekce

Základní pravidla pro zobrazení záhlaví nebo zápatí pro každou sekci jsou poměrně jednoduchá:

1. Pokud sekce nemá vlastní záhlaví / zápatí určitého typu, je převzata z předchozí sekce.
2. Typ záhlaví / zápatí zobrazený na stránce je řízen nastavením sekce" různé první stránky "a" různé liché a sudé stránky " – pokud jsou deaktivovány, pak jsou ignorovány vlastní názvy sekce.

Následující příklad kódu ukazuje, jak vytvořit 2 sekce s různými záhlaví:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Pokud chcete odstranit text záhlaví a zápatí bez odstranění objektů [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) v dokumentu, můžete použít metodu [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Kromě toho můžete pomocí metody [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) Odebrat všechny tvary ze záhlaví a zápatí v dokumentu.

Následující příklad kódu ukazuje, jak vymazat obsah všech záhlaví a zápatí v sekci:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Následující příklad kódu, jak odstranit všechny obrazce ze všech záhlaví zápatí v oddílu:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Přizpůsobení vlastností stránky v sekci

Před tiskem stránky nebo dokumentu můžete upravit a upravit velikost a rozložení jedné stránky nebo celého dokumentu. Pomocí nastavení stránky můžete změnit nastavení stránek dokumentu, jako jsou okraje, orientace a velikost pro tisk různých prvních stránek nebo lichých stránek.

Aspose.Words umožňuje přizpůsobit vlastnosti stránky a sekce pomocí třídy [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

Následující příklad kódu ukazuje, jak nastavit takové vlastnosti, jako je velikost stránky a orientace pro aktuální sekci:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Následující příklad kódu ukazuje, jak upravit vlastnosti stránky ve všech sekcích:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Vidět

- [Logické úrovně uzlů v dokumentu](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Vkládání a připojování dokumentů](/words/cpp/insert-and-append-documents/)
