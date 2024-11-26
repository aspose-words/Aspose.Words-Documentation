---
title: Formátování tabulky v C++
second_title: Aspose.Words pro C++
articleTitle: Použít Formátování
linktitle: Použít Formátování
description: "Podrobné formátování tabulky pomocí C++. Pomocí C++ naformátujte každou část tabulky."
type: docs
weight: 70
url: /cs/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Každý prvek tabulky lze použít s různým formátováním. Například formátování tabulky se použije na celou tabulku, formátování řádků pouze na konkrétní řádky, formátování buněk pouze na určité buňky.

Aspose.Words poskytuje bohatý API pro načtení a použití formátování tabulky. K nastavení formátování můžete použít Uzly [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) a [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/).

V tomto článku si povíme, jak použít formátování na různé uzly tabulky a jaká nastavení formátování tabulky Aspose.Words podporuje.

## Použít formátování na různé uzly

V této části se podíváme na použití formátování na různé uzly tabulky.

### Formátování Úrovně Tabulky

Chcete-li použít formátování tabulky, můžete použít vlastnosti dostupné v odpovídajícím uzlu **Table** pomocí tříd [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) a [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Všimněte si, že tabulka musí mít alespoň jeden řádek, než lze použít vlastnosti tabulky. To znamená, že při vytváření tabulky s [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) musí být toto formátování provedeno po prvním volání na [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), nebo po přidání prvního řádku do tabulky, nebo když jsou uzly vloženy přímo do DOM.

{{% /alert %}}

Obrázky níže ukazují reprezentaci funkcí formátování **Table** v Microsoft Word a jejich odpovídajících vlastností v Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Následující příklad kódu ukazuje, jak použít ohraničení obrysu na tabulku:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Následující příklad kódu ukazuje, jak vytvořit tabulku se všemi povolenými okraji (mřížka):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Formátování Úrovně Řádku

**Úroveň řádku**

{{% alert color="primary" %}}

Všimněte si, že **Row** může být pouze podřízeným uzlem **Table**. Současně musí být v **Row** alespoň jeden **Cell**, aby na něj bylo možné použít formátování.

{{% /alert %}}

Obrázky níže ukazují reprezentaci funkcí formátování **Row** v Microsoft Word a jejich odpovídajících vlastností v Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Následující příklad kódu ukazuje, jak upravit formátování řádku tabulky:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Formátování Na Úrovni Buněk

Formátování na úrovni buněk je řízeno třídami [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) a [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Všimněte si, že **Cell** může být pouze podřízeným uzlem **Row**. Současně musí být v **Cell** alespoň jeden [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), aby na něj bylo možné použít formátování.

Kromě **Paragraph** můžete také vložit **Table** do **Cell**.

{{% /alert %}}

Obrázky níže ukazují reprezentaci funkcí formátování **Cell** v Microsoft Word a jejich odpovídajících vlastností v Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Následující příklad kódu ukazuje, jak upravit formátování buňky tabulky:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Následující příklad kódu ukazuje, jak nastavit velikost prostoru (v bodech), který se má přidat do levé / horní / pravé / dolní části obsahu buňky:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Určete Výšky Řádků

Nejjednodušší způsob, jak nastavit výšku řádku, je použít **DocumentBuilder**. Pomocí příslušných vlastností **RowFormat** můžete nastavit výchozí nastavení výšky nebo použít jinou výšku pro každý řádek v tabulce.

V Aspose.Words je výška řádku tabulky řízena:

- vlastnost výška řádku - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- vlastnost pravidla výšky pro daný řádek - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Současně lze pro každý řádek nastavit jinou výšku-to vám umožní široce ovládat nastavení tabulky.

{{% alert color="primary" %}}

Možnosti pravidel pro určení výšky objektu lze nastavit pomocí výčtu [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit tabulku obsahující jednu buňku a použít formátování řádků:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Určení šířky tabulky a buněk

Tabulka v dokumentu Microsoft Word poskytuje několik různých způsobů, jak změnit velikost tabulky a jednotlivých buněk. Tyto vlastnosti umožňují značnou kontrolu nad vzhledem a chováním tabulky, takže Aspose.Words podporuje chování tabulek, jako v Microsoft Word.

Je důležité vědět, že prvky tabulky mají několik různých vlastností, které mohou ovlivnit způsob výpočtu šířky celkové tabulky i jednotlivých buněk:

- Preferovaná šířka na stole
- Preferovaná šířka na jednotlivých buňkách
- Povolení automatického přizpůsobení na stole

Tento článek podrobně popisuje, jak různé vlastnosti výpočtu šířky tabulky fungují a jak získat plnou kontrolu nad výpočtem šířky tabulky. Tohle je
zvláště užitečné vědět v takových případech, kdy se rozložení tabulky nezobrazí podle očekávání.

{{% alert color="primary" %}}

Ve většině případů se doporučuje preferovaná buňka než šířka tabulky. Preferovaná Šířka buňky je více v souladu se specifikací formátu DOCX a také s modelem Aspose.Words.

Šířka buňky je ve skutečnosti vypočtená hodnota pro formát DOCX. Skutečná šířka buňky může záviset na mnoha věcech. Například změna okrajů stránky nebo preferované šířky tabulky může ovlivnit skutečnou šířku buňky.

Preferovaná Šířka buňky je vlastnost buňky, která je uložena v dokumentu. Nezávisí na ničem a nemění se při změně tabulky nebo jiných vlastností buňky.

{{% /alert %}}

{{% alert color="primary" %}}

Všechny vlastnosti a metody popsané v tomto článku souvisí s tím, jak tabulky fungují v Microsoft Word. Takže ve většině případů, pokud vytváříte tabulku programově, ale je pro vás těžké vytvořit požadovanou tabulku, můžete ji místo toho zkusit nejprve vizuálně vytvořit v Microsoft Word a poté jednoduše zkopírovat hodnoty formátování do aplikace.

{{% /alert %}}

### Jak používat preferovanou šířku

Požadovaná šířka tabulky nebo jednotlivých buněk je definována pomocí vlastnosti preferovaná šířka, což je velikost, kterou se prvek snaží přizpůsobit. To znamená, že preferovanou šířku lze zadat pro celou tabulku nebo pro jednotlivé buňky. V některých situacích nemusí být možné tuto šířku přesně přizpůsobit, ale skutečná šířka bude ve většině případů této hodnotě blízká.

Příslušný preferovaný typ šířky a hodnota se nastavují pomocí metod třídy [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) metoda pro zadání auto nebo"no preferred width"
- metoda [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) pro určení procentuální šířky
- metoda [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) pro určení šířky v bodech

Obrázky níže ukazují reprezentaci *preferred width setting features* v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Příklad, jak jsou tyto možnosti použity na skutečnou tabulku v dokumentu, lze vidět na obrázku níže.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Než budete moci použít preferovanou šířku v tabulce, musíte se ujistit, že tabulka obsahuje alespoň jeden řádek. Je to proto, že takové formátování tabulky v dokumentu Microsoft Word nebo v dokumentu vytvořeném v Aspose.Words je uloženo v řádcích tabulky.

{{% /alert %}}

#### Určete preferovanou šířku tabulky nebo buňky

V Aspose.Words jsou šířky tabulky a buněk nastaveny pomocí vlastnosti [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) a vlastnosti [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) s možnostmi dostupnými ve výčtu [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, což odpovídá žádné preferované sadě šířky
- **Percent**, který odpovídá prvku vzhledem k dostupnému prostoru ve velikosti okna nebo kontejneru, a přepočítá hodnotu, když se změní dostupná šířka
- **Points**, což odpovídá prvku zadané šířky v bodech

{{% alert color="primary" %}}

Ve výchozím nastavení lze tabulku popsat tak, že je umístěna na 100% dostupného místa na stránce. V tomto případě to znamená, že se tabulka pokusí zabírat mezeru mezi levým a pravým okrajem stránky.

{{% /alert %}}

Použití vlastnosti [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) upraví její preferovanou šířku vzhledem k jejímu kontejneru: stránka, textový sloupec nebo vnější buňka tabulky, pokud se jedná o vnořenou tabulku.

Následující příklad kódu ukazuje, jak nastavit tabulku na automatické přizpůsobení na 50% šířky stránky:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Použití vlastnosti [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) v dané buňce upraví její preferovanou šířku.

Následující příklad kódu ukazuje, jak nastavit různá preferovaná nastavení šířky:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Najděte preferovaný typ a hodnotu šířky

Pomocí vlastností [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) a [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) můžete najít preferované podrobnosti o šířce požadované tabulky nebo buňky.

Následující příklad kódu ukazuje, jak načíst preferovaný typ šířky buňky tabulky:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Jak nastavit Autofit

Vlastnost [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) umožňuje buňkám v tabulce růst a zmenšovat se podle vybraného kritéria. Můžete například použít možnost **AutoFit to Window**, aby se tabulka přizpůsobila šířce stránky, a možnost **AutoFit to Content**, aby každá buňka mohla růst nebo zmenšovat podle jejího obsahu.

{{% alert color="primary" %}}

Vlastnost **AllowAutoFit** lze navíc použít ve spojení s preferovanou šířkou buňky k formátování buňky, která automaticky odpovídá jejímu obsahu, ale má také počáteční šířku. V případě potřeby pak může Šířka buňky růst kolem této šířky.

{{% /alert %}}

Ve výchozím nastavení Aspose.Words vloží novou tabulku pomocí **AutoFit to Window**. Tabulka bude dimenzována podle dostupné šířky stránky. Chcete-li změnit velikost tabulky, můžete zavolat metodu [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Tato metoda přijímá výčet [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/), který určuje, jaký typ automatického přizpůsobení se použije na tabulku.

Je důležité vědět, že metoda autofit je ve skutečnosti zkratka, která současně aplikuje různé vlastnosti tabulky. Jedná se o vlastnosti, které ve skutečnosti dávají tabulce pozorované chování. Tyto vlastnosti probereme pro každou možnost automatického přizpůsobení.

Následující příklad kódu ukazuje, jak nastavit tabulku pro zmenšení nebo růst každé buňky podle jejího obsahu:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit tabulka do okna

Když se na tabulku použije automatické přizpůsobení okna, v zákulisí se skutečně provádějí následující operace:

1. Vlastnost **Table.AllowAutoFit** je povolena pro automatickou změnu velikosti sloupců tak, aby odpovídaly dostupnému obsahu, pomocí hodnoty **Table.PreferredWidth** 100%
2. **CellFormat.PreferredWidth** je odstraněn ze všech buněk tabulky
   {{% alert color="primary" %}}
   Všimněte si, že se to mírně liší od chování Microsoft Word, kde je preferovaná šířka každé buňky nastavena na příslušné hodnoty na základě jejich aktuální velikosti a obsahu. Aspose.Words neaktualizuje preferovanou šířku, takže se místo toho vyčistí.
   {{% /alert %}}
3. Šířky sloupců se přepočítávají pro aktuální obsah tabulky – konečným výsledkem je tabulka, která zabírá celou dostupnou šířku
4. Šířka sloupců v tabulce se automaticky mění, když uživatel upravuje text

Následující příklad kódu ukazuje, jak automaticky nastavit tabulku na šířku stránky:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit tabulka k obsahu

Když je tabulka automaticky vybavena obsahem, v zákulisí se skutečně provádějí následující kroky:

1. Vlastnost **Table.AllowAutoFit** je povolena pro automatickou změnu velikosti každé buňky podle jejího obsahu

2. Preferovaná šířka tabulky je odstraněna z **Table.PreferredWidth**, **CellFormat.PreferredWidth** je odstraněna pro každou buňku tabulky
   {{% alert color="primary" %}}

   Všimněte si, že tato možnost automatického přizpůsobení odstraní preferovanou šířku z buněk, stejně jako v Microsoft Word. Pokud chcete zachovat velikosti sloupců a zvětšit nebo zmenšit sloupce tak, aby odpovídaly obsahu, měli byste nastavit vlastnost **Table.AllowAutoFit** na **True** samostatně, spíše než pomocí zástupce automatického přizpůsobení.{{% /alert %}}

3. Šířky sloupců se přepočítávají pro aktuální obsah tabulky – konečným výsledkem je tabulka, kde se šířky sloupců a šířka celé tabulky automaticky mění tak, aby co nejlépe odpovídaly obsahu, když uživatel upravuje text

Následující příklad kódu ukazuje, jak automaticky přizpůsobit tabulku jejímu obsahu:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Zakázat AutoFit v tabulce a použít pevné šířky sloupců

Pokud je v tabulce zakázáno automatické přizpůsobení a místo toho se použijí pevné šířky sloupců, provedou se následující kroky:

1. Vlastnost **Table.AllowAutoFit** je zakázána, takže sloupce nerostou ani se nezmenšují na svůj obsah
2. Preferovaná šířka celé tabulky je odstraněna z **Table.PreferredWidth**, **CellFormat.PreferredWidth** je odstraněna ze všech buněk tabulky
3. Konečným výsledkem je tabulka, jejíž šířky sloupců jsou určeny vlastností [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) a jejíž velikost sloupců se automaticky nezmění, když uživatel zadá text nebo když se změní velikost stránky

{{% alert color="primary" %}}

Všimněte si, že pokud není pro **CellFormat.Width** zadána žádná šířka, použije se výchozí hodnota jeden palec (72 bodů).

{{% /alert %}}

Následující příklad kódu ukazuje, jak zakázat automatické přizpůsobení a povolit pevnou šířku pro zadanou tabulku:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Pořadí priority při výpočtu šířky buňky

Aspose.Words umožňuje uživatelům definovat šířku tabulky nebo buňky prostřednictvím více objektů, včetně [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – jeho vlastnost [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) většinou zbyla z předchozích verzí, nicméně je stále užitečná pro zjednodušení nastavení šířky buňky.

Je důležité vědět, že vlastnost **CellFormat.Width** funguje odlišně v závislosti na tom, která z ostatních vlastností šířky již v tabulce existuje.

Aspose.Words používá následující pořadí pro výpočet šířky buněk:

| Objednávka | Vlastnost | Popis |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) je určeno | Pokud je povoleno **AutoFit**:<br />- tabulka může růst přes preferovanou šířku, aby se přizpůsobila obsahu-obvykle se nesnižuje pod preferovanou šířku<br />- jakákoli změna hodnoty **CellFormat.Width** je ignorována a buňka se místo toho vejde do jejího obsahu |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) s hodnotou **Points** nebo **Percent** | **CellFormat.Width** je ignorován |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) s hodnotou **Auto** | Hodnota z **CellFormat.Width** se zkopíruje a stane se preferovanou šířkou buňky (v bodech) |

{{% alert color="primary" %}}

Jakékoli změny vlastnosti width se neaktualizují v preferované šířce a musí se místo toho použít na preferovanou šířku.

{{% /alert %}}

{{% alert color="primary" %}}

Při vytváření pevného rozložení tabulky zadejte šířku buňky. Buňku bez šířky nelze uložit do formátu DOC. Jiné formáty dokumentů než DOC, například DOCX, umožňují v zásadě ukládání buněk bez šířky v pevném rozložení tabulky.

{{% /alert %}}

## Povolit Mezery Mezi Buňkami

Mezi buňkami tabulky můžete získat nebo nastavit libovolný další prostor podobný možnosti "mezery mezi buňkami" v Microsoft Word. To lze provést pomocí vlastnosti [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Příklad, jak jsou tyto možnosti použity na skutečnou tabulku v dokumentu, lze vidět na obrázku níže.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Následující příklad kódu ukazuje, jak nastavit mezery mezi buňkami:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Použít ohraničení a stínování

Ohraničení a stínování lze použít buď na celou tabulku pomocí [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) a [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), nebo pouze na konkrétní buňky pomocí [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) a [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Okraje řádků lze navíc nastavit pomocí [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), ale stínování nelze použít tímto způsobem.

Níže uvedené obrázky ukazují nastavení ohraničení a stínů v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Následující příklad kódu ukazuje, jak formátovat tabulku a buňku s různými okraji a stínováním:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
