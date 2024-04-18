---
title: Formátování tabulky v C#
second_title: Aspose.Words místo .NET
articleTitle: Použít formátování tabulky
linktitle: Použít formátování tabulky
description: "Formátování tabulky v detailech pomocí C#. Použití C# formátovat každou část tabulky."
type: docs
weight: 70
url: /cs/net/applying-formatting/
---

Každý prvek tabulky lze použít s různým formátováním. Například formátování tabulky bude aplikováno na celou tabulku, formátování řádků pouze na konkrétní řádky, formátování buněk pouze na určité buňky.

Aspose.Words poskytuje bohaté API získat a použít formátování do tabulky. Můžete použít [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/), a [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) uzly pro nastavení formátování.

V tomto článku budeme mluvit o tom, jak aplikovat formátování na různé uzel tabulky a jaké nastavení formátování tabulky Aspose.Words Podpora.

## Použít formátování různých uzlů

V této části se podíváme na formátování různých stolních uzlů.

### Formátování úrovní tabulky

Chcete-li použít formátování do tabulky, můžete použít vlastnosti dostupné na odpovídající **Table** uzel pomocí [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/), a [TableCollection](https://reference.aspose.com/words/net/aspose.words.tables/tablecollection/) třídy.

{{% alert color="primary" %}}

Všimněte si, že tabulka musí mít alespoň jeden řádek před použitím vlastností tabulky. To znamená, že při stavbě stolu s [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), Toto formátování musí být provedeno po prvním volání do [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), nebo za první řádek se přidá do tabulky, nebo když jsou uzly vloženy přímo do DOM.

{{% /alert %}}

Následující obrázky ukazují zastoupení **Table** funkce formátování v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

Následující příklad kódu ukazuje, jak použít obrysovou hranici na tabulku:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit tabulku se všemi povolenými hranicemi (grid):

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formátování úrovní řádku

**Úroveň řádku** formátování lze ovládat pomocí [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/), a [RowCollection](https://reference.aspose.com/words/net/aspose.words.tables/rowcollection/) třídy.

{{% alert color="primary" %}}

Všimněte si, že **Row** může být pouze dětským uzlem **Table**. Zároveň musí existovat alespoň jeden **Cell** v **Row** aby bylo možné formátování použít.

{{% /alert %}}

Následující obrázky ukazují zastoupení **Row** funkce formátování v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

Následující příklad kódu ukazuje, jak upravit formátování řádku tabulky:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formátování úrovní buněk

Formátování buněk je řízeno [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/), a [CellCollection](https://reference.aspose.com/words/net/aspose.words.tables/cellcollection/) třídy.

{{% alert color="primary" %}}

Všimněte si, že **Cell** může být pouze dětským uzlem **Row**. Zároveň musí existovat alespoň jeden [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) v **Cell** aby bylo možné formátování použít.

Kromě **Paragraph**, můžete také vložit **Table** do **Cell**.

{{% /alert %}}

Následující obrázky ukazují zastoupení **Cell** funkce formátování v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

Následující příklad kódu ukazuje, jak upravit formátování buňky tabulky:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak nastavit množství prostoru (v bodech), které má být přidáno do levé/nahoře/vpravo/v dolní části obsahu buňky:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## Zadejte výšku řádku

Nejjednodušší způsob, jak nastavit výšku řádku je použít **DocumentBuilder**. Použití vhodné **RowFormat** vlastnosti, můžete nastavit výchozí nastavení výšky nebo použít jinou výšku pro každý řádek v tabulce.

In Aspose.Words, výška řádku tabulky je řízena:

- vlastnost "rovnice výšky" [Height](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/height/)
- vlastnost pravidel výšky pro daný řádek [HeightRule](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/heightrule/)

Zároveň lze pro každý řádek nastavit jinou výšku. To vám umožní široce kontrolovat nastavení tabulky.

{{% alert color="primary" %}}

Možnosti pravidla pro určení výšky objektu lze nastavit pomocí [HeightRule](https://reference.aspose.com/words/net/aspose.words/heightrule/) výčtu.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit tabulku, která obsahuje jednu buňku a použít formátování řádku:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## Zadejte tabulku a šířku buňky

Tabulka v Microsoft Word dokument poskytuje několik různých způsobů, jak změnit velikost tabulky a jednotlivých buněk. Tyto vlastnosti umožňují značnou kontrolu nad vzhledem a chováním tabulky, takže Aspose.Words podporuje chování tabulek, jako v Microsoft Word.

Je důležité vědět, že prvky tabulky představují několik různých vlastností, které mohou ovlivnit šířku celkové tabulky, jakož i jednotlivé buňky, se vypočítají takto:

- Preferovaná šířka tabulky
- Preferovaná šířka jednotlivých buněk
- Umožňuje autofit na stole

Tento článek popisuje, jak fungují různé vlastnosti výpočtu šířky tabulky a jak získat plnou kontrolu nad výpočtem šířky tabulky. Tohle je
zvláště užitečné vědět, v takových případech, kdy se uspořádání tabulky nezdá být podle očekávání.

{{% alert color="primary" %}}

Ve většině případů se doporučuje preferovaná buňka než šířka tabulky. Preferovaná šířka buňky je více v souladu se specifikací formátu DOCX a Aspose.Words Model.

Šířka buňky je ve skutečnosti vypočtená hodnota pro formát DOCX. Skutečná šířka buňky může záviset na mnoha věcech. Například změna okrajů stránky nebo preferovaná šířka tabulky může ovlivnit skutečnou šířku buňky.

Upřednostňovanou šířkou buňky je vlastnost buňky, která je uložena v dokumentu. Nezáleží na ničem a nemění se při změně tabulky nebo jiných vlastností buňky.

{{% /alert %}}

{{% alert color="primary" %}}

Všechny vlastnosti a metody popsané v tomto článku se vztahují k tomu, jak tabulky fungují v Microsoft Word. Takže ve většině případů, pokud stavíte svůj stůl programaticky, ale je těžké vytvořit požadovaný stůl, můžete místo toho zkusit vizuálně vytvořit ji v Microsoft Word nejprve a pak jednoduše zkopírujte formátovací hodnoty do aplikace.

{{% /alert %}}

### Jak používat preferovanou šířku

Požadovaná šířka tabulky nebo jednotlivých buněk je definována preferovanou vlastností šířky, což je velikost, kterou se prvek snaží zapadnout. To znamená, že preferovanou šířku lze určit pro celou tabulku nebo pro jednotlivé buňky. V některých situacích nemusí být možné přesně zadat tuto šířku, ale skutečná šířka bude ve většině případů blízko této hodnoty.

Upřednostňovaný typ šířky a hodnota jsou nastaveny pomocí metod [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) třída:

* [Auto](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/auto/) metoda pro upřesnění automatické nebo preferované šířky
* [FromPercent](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompercent/) metoda stanovení procentní šířky
* [FromPoints](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompoints/) způsob určení šířky v bodech

Níže uvedené obrázky zobrazují zobrazení *přednostně nastavení šířky* v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

Příklad, jak jsou tyto možnosti aplikovány na skutečnou tabulku v dokumentu, je vidět na obrázku níže.

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Než můžete použít preferovanou šířku v tabulce, musíte se ujistit, že tabulka obsahuje alespoň jeden řádek. To je proto, že taková tabulka formátování v Microsoft Word dokument nebo v dokumentu vytvořeném Aspose.Words je uložen v řádcích tabulky.

{{% /alert %}}

#### Zadejte preferovanou tabulku nebo šířku buňky

In Aspose.Words, Tabulka a šířky buněk jsou nastaveny pomocí [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) majetek a [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) nemovitost, s možnostmi k dispozici v [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) číslice:

- **Auto**, která je rovnocenná žádné preferované šířce
- **Percent**, který odpovídá prvku vzhledem k dostupnému prostoru v okně nebo velikosti kontejneru a přepočítá hodnotu při změně dostupné šířky
- **Points**, který odpovídá prvku uvedené šířky v bodech

{{% alert color="primary" %}}

Ve výchozím nastavení lze tabulku popsat jako 100% volného místa na stránce. V tomto případě to znamená, že tabulka se pokusí zabrat prostor mezi levou a pravou stranou okraje.

{{% /alert %}}

Použití [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) vlastnost upraví preferovanou šířku vzhledem ke svému kontejneru: stránku, textový sloupec nebo vnější tabulku, pokud se jedná o vnořenou tabulku.

Následující příklad kódu ukazuje, jak nastavit tabulku pro automatické nastavení na 50% šířky stránky:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

Použití [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) vlastnost na dané buňce upraví preferovanou šířku.

Následující příklad kódu ukazuje, jak nastavit různá preferovaná nastavení šířky:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### Najít preferovaný typ šířky a hodnotu

Můžete použít [Type](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/type/) a [Value](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/value/) vlastnosti pro nalezení preferovaných detailů šířky požadované tabulky nebo buňky.

Následující příklad kódu ukazuje, jak získat preferovaný typ šířky buňky tabulky:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Jak nastavit Autofit

• [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) vlastnost umožňuje buňkám v tabulce růst a zmenšovat se podle zvoleného kritéria. Například můžete použít **AutoFit do okna** možnost uložení tabulky na šířku stránky a **AutoFit na obsah** možnost umožnit každé buňce růst nebo se zmenšit podle jejího obsahu.

{{% alert color="primary" %}}

Navíc **AllowAutoFit** vlastnost může být použita ve spojení s preferovanou šířkou buňky pro formátování buňky, která automaticky odpovídá jejímu obsahu, ale má také počáteční šířku. Pokud je to nutné, pak může šířka buňky růst za tuto šířku.

{{% /alert %}}

Ve výchozím nastavení Aspose.Words vloží novou tabulku pomocí **AutoFit do okna**. Tabulka bude dimenzována podle dostupné šířky stránky. Chcete-li změnit velikost stolu, můžete zavolat [AutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/autofit/) metoda. Tato metoda přijímá [AutoFitBehavior](https://reference.aspose.com/words/net/aspose.words.tables/autofitbehavior/) číslice, která určuje, jaký typ autofit se použije na tabulku.

Je důležité vědět, že metoda autofit je ve skutečnosti zkratka, která platí různé vlastnosti pro tabulku současně. Toto jsou vlastnosti, které dávají tabulky pozorované chování. Budeme diskutovat tyto vlastnosti pro každou možnost autofit.

Následující příklad kódu ukazuje, jak nastavit tabulku ke zmenšení nebo růstu každé buňky podle jejího obsahu:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### Tabulka AutoFit do okna

Při automatickém nastavení okna na stůl se v zákulisí provádějí tyto operace:

1. • **Table.AllowAutoFit** vlastnost je povolena automaticky měnit velikost sloupců tak, aby vyhovovala dostupnému obsahu pomocí **Table.PreferredWidth** hodnota 100%
2. **CellFormat.PreferredWidth** se odstraní ze všech buněk tabulky
      {{% alert color="primary" %}}
   Všimněte si, že to je mírně odlišné od Microsoft Word chování, kde je preferovaná šířka každé buňky nastavena na odpovídající hodnoty na základě jejich aktuální velikosti a obsahu. Aspose.Words neaktualizuje preferovanou šířku, takže se místo toho vyčistí.
      {{% /alert %}}
3. Šířka sloupců je přepočítána pro aktuální obsah tabulky
4. Šířka sloupců v tabulce se automaticky mění, když uživatel upraví text

Následující příklad kódu ukazuje, jak se přiřadí tabulka k šířce stránky:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Tabulka AutoFit k obsahu

Při automatickém nastavení tabulky se v zákulisí provádějí následující kroky:

1. • **Table.AllowAutoFit** vlastnost je povolena automaticky měnit velikost každé buňky podle jejího obsahu

2. Upřednostňovaná šířka tabulky je odstraněna z **Table.PreferredWidth**, **CellFormat.PreferredWidth** se odstraní pro každou tabulku
      {{% alert color="primary" %}}

   Všimněte si, že tato volba autofit odstraňuje preferovanou šířku z buněk, stejně jako v Microsoft Word. Pokud si chcete ponechat velikost sloupců a zvýšit nebo snížit sloupce pro uložení obsahu, měli byste nastavit **Table.AllowAutoFit** majetek **True** na vlastní pěst spíše než pomocí autofit zkratky.{{% /alert %}}

3. Šíře sloupců se přepočítávají pro aktuální obsah tabulky. Konečným výsledkem je tabulka, kde jsou šířky sloupců a šířka celé tabulky automaticky změněny tak, aby co nejlépe vyhovovaly obsahu, jak uživatel upraví text

Následující příklad kódu ukazuje, jak automatizovat tabulku na její obsah:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Zakázat AutoFit v tabulce a používat pevné šířky sloupce

Pokud má tabulka autofit vypnutý a místo toho se použijí pevné šířky sloupců, provedou se následující kroky:

1. **Table.AllowAutoFit** vlastnost je vypnuta, takže sloupce nerostou nebo se zmenšují na jejich obsah

2. Upřednostňovaná šířka celé tabulky je odstraněna **Table.PreferredWidth**, **CellFormat.PreferredWidth** se odstraní ze všech buněk tabulky
3. Konečným výsledkem je tabulka, jejíž šířky sloupců jsou určeny [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) vlastnost a jejíž sloupce nejsou automaticky změněny, když uživatel vstoupí do textu nebo když je stránka změněna velikost

{{% alert color="primary" %}}

Všimněte si, že pokud není určena žádná šířka **CellFormat.Width**, použije se výchozí hodnota jednoho palce (72 bodů).

{{% /alert %}}

Následující příklad kódu ukazuje, jak zakázat autofit a povolit pevnou šířku pro zadanou tabulku:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Řád precedence při výpočtu šířky buňky

Aspose.Words umožňuje uživatelům definovat šířku tabulky nebo buňky prostřednictvím více objektů, včetně [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) Jeho [Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) vlastnost je většinou ponechána z předchozích verzí, nicméně je stále užitečná pro zjednodušení nastavení šířky buňky.

Je důležité vědět, že **CellFormat.Width** vlastnost funguje jinak v závislosti na tom, která z ostatních vlastností šířky již existuje v tabulce.

Aspose.Words používá pro výpočet šířky buňky následující pořadí:

|  Usnesení |  Majetek |  Popis zboží |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) je určena |  Pokud **AutoFit** je povoleno:<br/>- tabulka může růst za preferovanou šířku tak, aby vyhovovala obsahu, který obvykle nesnižuje pod preferovanou šířku<br/>- jakékoli změny **CellFormat.Width** hodnota je ignorována a buňka bude místo toho odpovídat jejímu obsahu |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) s hodnotou **Points** nebo **Percent** |  **CellFormat.Width** ignoruje |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) s hodnotou **Auto** |  Hodnota **CellFormat.Width** se kopíruje a stává se preferovanou šířkou buňky (v bodech) |

{{% alert color="primary" %}}

Veškeré změny vlastnosti šířky nejsou v preferované šířce aktualizovány a místo toho musí být použity na preferovanou šířku.

{{% /alert %}}

{{% alert color="primary" %}}

Při vytváření pevného uspořádání tabulky zadejte šířku buňky. Buňku bez šířky nelze uložit do formátu DOC. Formáty dokumentů jiné než DOC, jako je DOCX, umožňují v zásadě ukládat buňky bez šířky v pevném uspořádání tabulky.

{{% /alert %}}

## Povolit rozprostření mezi buňkami

Můžete získat nebo nastavit jakýkoli další prostor mezi stolními buňkami podobný "rozhraní Сell" v Microsoft Word. To lze provést pomocí [AllowCellSpacing](https://reference.aspose.com/words/net/aspose.words.tables/table/allowcellspacing/) majetek.

Příklad, jak jsou tyto možnosti aplikovány na skutečnou tabulku v dokumentu, je vidět na obrázku níže.

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-net" style="width:500px"/>

Následující příklad kódu ukazuje, jak nastavit vzdálenost mezi buňkami:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## Použít hranice a stínění

Hranice a stínování lze aplikovat buď na celou tabulku pomocí [Table.SetBorder](https://reference.aspose.com/words/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/net/aspose.words.tables/table/setborders/) a [Table.SetShading](https://reference.aspose.com/words/net/aspose.words.tables/table/setshading/), nebo pouze pro specifické buňky používající [CellFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/borders/) a [CellFormat.Shading](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/shading/). Kromě toho lze nastavit hranice řádku pomocí [RowFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/borders/), Nicméně stínování nelze použít tímto způsobem.

Následující obrázky ukazují hraniční a stínové nastavení Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

Následující příklad kódu ukazuje, jak formátovat tabulku a buňku s různými hranicemi a stíny:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}