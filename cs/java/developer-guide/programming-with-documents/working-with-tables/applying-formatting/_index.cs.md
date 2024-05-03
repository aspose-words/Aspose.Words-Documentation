---
title: Formátování tabulky v Java
second_title: Aspose.Words místo Java
articleTitle: Použít formátování tabulky
linktitle: Použít formátování tabulky
description: "Formátování tabulky v detailech. Použití Java formátovat každou část tabulky."
type: docs
weight: 70
url: /cs/java/applying-formatting/
---

Každý prvek tabulky lze použít s různým formátováním. Například formátování tabulky bude aplikováno na celou tabulku, formátování řádku pouze na konkrétní řádky, formátování buněk pouze na určité buňky.

Aspose.Words poskytuje bohaté API získat a použít formátování do tabulky. Můžete použít [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), a [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) uzly pro nastavení formátování.

V tomto článku, budeme mluvit o tom, jak aplikovat formátování na různé tabulky uzlů a jaké tabulky formátování nastavení Aspose.Words Podpora.

## Použít formátování různých uzlů

V této sekci se podíváme na formátování různých stolních uzlů.

### Formátování úrovní tabulky

Chcete-li použít formátování do tabulky, můžete použít vlastnosti dostupné na odpovídající **Table** uzel pomocí [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), a [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) třídy.

{{% alert color="primary" %}}

Všimněte si, že tabulka musí mít alespoň jeden řádek před použitím vlastností tabulky. To znamená, že při stavbě stolu s [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), Toto formátování musí být provedeno po prvním volání do [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), nebo za první řádek se přidá do tabulky, nebo když uzly jsou vloženy přímo do DOM.

{{% /alert %}}

Následující obrázky zobrazují znázornění **Table** funkce formátování v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

Následující příklad kódu ukazuje, jak použít obrysovou hranici na tabulku:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Následující příklad kódu ukazuje, jak postavit tabulku se všemi povolenými hranicemi (grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Formátování úrovní řádku

Formátování řádku** lze ovládat pomocí formátu [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), a [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) třídy.

{{% alert color="primary" %}}

Všimněte si, že a **Row** může být pouze dětský uzel **Table**. Zároveň musí existovat alespoň jeden **Cell** v **Row** takže formátování lze použít na něj.

{{% /alert %}}

Následující obrázky zobrazují znázornění **Row** funkce formátování v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

Následující příklad kódu ukazuje, jak upravit formátování řádku tabulky:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Formátování úrovní buněk

Formátování buněk je řízeno [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), a [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) třídy.

{{% alert color="primary" %}}

Všimněte si, že a **Cell** může být pouze dětský uzel **Row**. Zároveň musí existovat alespoň jeden [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) v **Cell** takže formátování lze použít na něj.

Kromě **Paragraph**, můžete také vložit **Table** do **Cell**.

{{% /alert %}}

Následující obrázky zobrazují znázornění **Cell** funkce formátování v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

Následující příklad kódu ukazuje, jak upravit formátování buňky tabulky:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Následující příklad kódu ukazuje, jak nastavit množství místa (v bodech), aby bylo přidáno do levé/v horní/pravé/vnější části obsahu buňky:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Upřesnění výšek řádku

Nejjednodušší způsob, jak nastavit výšku řádku je použít **DocumentBuilder**. Použití vhodné **RowFormat** vlastnosti, můžete nastavit výchozí nastavení výšky nebo použít jinou výšku pro každý řádek v tabulce.

In Aspose.Words, výška řádku tabulky je řízena:

- vlastnost "rovnice výška" [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- vlastnost pravidla výšky pro daný řádek? [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Zároveň je možné pro každý řádek nastavit jinou výšku, což vám umožní široce kontrolovat nastavení tabulky.

{{% alert color="primary" %}}

Možnosti pravidla pro určení výšky objektu lze nastavit pomocí [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) Pole.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit tabulku, která obsahuje jednu buňku a použít formátování řádku:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Zadejte tabulku a šířku buňky

Stůl v Microsoft Word dokument poskytuje několik různých způsobů, jak změnit velikost tabulky a jednotlivých buněk. Tyto vlastnosti umožňují značnou kontrolu nad vzhledem a chováním tabulky, takže Aspose.Words podporuje chování tabulek, jako v Microsoft Word.

Je důležité vědět, že prvky tabulky představují několik různých vlastností, které mohou ovlivnit šířku celkové tabulky, stejně jako jednotlivé buňky, se vypočítají:

- Preferovaná šířka tabulky
- Preferovaná šířka jednotlivých buněk
- Umožňuje autofit na stole

Tento článek uvádí, jak fungují různé vlastnosti výpočtu šířky tabulky a jak získat plnou kontrolu nad výpočtem šířky tabulky. Tohle je
zvláště užitečné vědět, v takových případech, kdy uspořádání tabulky se nezdá, jak se očekávalo.

{{% alert color="primary" %}}

Ve většině případů se doporučuje preferovaná buňka než šířka tabulky. Preferovaná šířka buňky je více v souladu se specifikací formátu DOCX a Aspose.Words model.

Šířka buňky je ve skutečnosti vypočtená hodnota pro formát DOCX. Skutečná šířka buňky může záviset na mnoha věcech. Například změna okrajů stránky nebo preferovaná šířka tabulky může ovlivnit skutečnou šířku buňky.

Preferovaná šířka buňky je vlastnost buňky, která je uložena v dokumentu. Nezáleží na ničem a nemění se při změně tabulky nebo jiných vlastností buňky.

{{% /alert %}}

{{% alert color="primary" %}}

Všechny vlastnosti a metody popsané v tomto článku se vztahují k tomu, jak tabulky fungují v Microsoft Word. Takže ve většině případů, pokud stavíte svůj stůl programaticky, ale je těžké vytvořit požadovaný stůl, můžete místo toho zkusit vizuálně vytvořit ji v Microsoft Word nejprve a pak jednoduše zkopírujte formátovací hodnoty do aplikace.

{{% /alert %}}

### Jak používat preferovanou šířku

Požadovaná šířka tabulky nebo jednotlivých buněk je definována preferovanou vlastností šířky, což je velikost, kterou se prvek snaží zapadnout. To znamená, že preferovanou šířku lze určit pro celou tabulku nebo pro jednotlivé buňky. V některých situacích nemusí být možné přesně zadat tuto šířku, ale skutečná šířka bude ve většině případů blízko této hodnoty.

Upřednostňovaný typ šířky a hodnota jsou nastaveny pomocí metod [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) třída:

- [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) pole pro upřesnění automatické nebo preferované šířky
- [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) metoda stanovení procentní šířky
- [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) způsob určení šířky v bodech

Níže uvedené obrázky zobrazují zobrazení *preferovaných funkcí nastavení šířky* Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Příklad, jak jsou tyto možnosti aplikovány na skutečnou tabulku v dokumentu, je vidět na obrázku níže.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Než můžete použít preferovanou šířku v tabulce, musíte se ujistit, že tabulka obsahuje alespoň jeden řádek. To je proto, že taková tabulka formátování v Microsoft Word dokument nebo v dokumentu vytvořeném Aspose.Words je uložen v řádcích tabulky.

{{% /alert %}}

#### Zadejte preferovanou tabulku nebo šířku buňky

In Aspose.Words, Tabulka a šířky buněk jsou nastaveny pomocí [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) majetek a [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) nemovitost, s možnostmi k dispozici v [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) číslice:

- **Auto**, který je ekvivalentní žádné preferované šířce
- **Percent**, který odpovídá prvku vzhledem k dostupnému prostoru v okně nebo velikosti kontejneru a přepočítá hodnotu při změně dostupné šířky
- **Points**, který odpovídá prvku stanovené šířky v bodech

{{% alert color="primary" %}}

Ve výchozím nastavení lze tabulku popsat jako 100% volného místa na stránce. V tomto případě to znamená, že tabulka se bude snažit zabrat prostor mezi levou a pravou stranou okraje.

{{% /alert %}}

Použití [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) vlastnost upraví preferovanou šířku vzhledem ke svému kontejneru: stránku, textový sloupec nebo vnější tabulku, pokud se jedná o vnořenou tabulku.

Následující příklad kódu ukazuje, jak nastavit tabulku pro automatické nastavení na 50% šířky stránky:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Použití [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) vlastnost na dané buňce upraví preferovanou šířku.

Následující příklad kódu ukazuje, jak nastavit různá preferovaná nastavení šířky:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Najít preferovaný typ šířky a hodnotu

Můžete použít [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) a [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) vlastnosti najít preferované informace o šířce požadované tabulky nebo buňky.

Následující příklad kódu ukazuje, jak získat preferovaný typ šířky buňky tabulky:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Jak nastavit Autofit

The [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) vlastnost umožňuje buňkám v tabulce růst a zmenšovat se podle zvoleného kritéria. Například můžete použít **AutoFit do okna** možnost uložení tabulky na šířku stránky a **AutoFit na obsah** možnost nechat každou buňku růst nebo se zmenšit podle jejího obsahu.

{{% alert color="primary" %}}

Navíc **AllowAutoFit** vlastnost může být použita ve spojení s preferovanou šířkou buňky pro formátování buňky, která automaticky odpovídá jejímu obsahu, ale má také počáteční šířku. Pokud je to nutné, pak může šířka buňky růst za tuto šířku.

{{% /alert %}}

Ve výchozím nastavení Aspose.Words vloží novou tabulku pomocí **AutoFit do okna**. Tabulka bude dimenzována podle dostupné šířky stránky. Chcete-li změnit velikost stolu, můžete zavolat [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) metoda. Tato metoda přijímá [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) číslice, která určuje, jaký typ autofitu se použije na tabulku.

Je důležité vědět, že autofit metoda je ve skutečnosti zkratka, která platí různé vlastnosti pro tabulku současně. Toto jsou vlastnosti, které dávají tabulce pozorované chování. Probereme tyto vlastnosti pro každou možnost autofitu.

Následující příklad kódu ukazuje, jak nastavit tabulku ke zmenšení nebo růstu každé buňky podle jejího obsahu:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Budeme používat následující tabulku k aplikaci různých nastavení auto fit jako ukázku.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### Tabulka AutoFit do okna

Při automatickém nastavení okna na stůl se v zákulisí provádějí tyto operace:

1. The **Table.AllowAutoFit** vlastnost je povolena automaticky měnit velikost sloupců tak, aby vyhovovala dostupnému obsahu pomocí **Table.PreferredWidth** hodnota 100%
2. **CellFormat.PreferredWidth** je odstraněn ze všech buněk tabulky
      {{% alert color="primary" %}}
   Všimněte si, že toto je mírně odlišné od Microsoft Word chování, kde je preferovaná šířka každé buňky nastavena na odpovídající hodnoty na základě jejich aktuální velikosti a obsahu. Aspose.Words neaktualizuje preferovanou šířku, takže se místo toho vyčistí.
      {{% /alert %}}
3. Šíře sloupců jsou přepočítány pro aktuální obsah tabulky
4. Šířka sloupců v tabulce se automaticky mění, když uživatel upraví text

Následující příklad kódu ukazuje, jak přiřadit tabulku na šířku stránky:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Příklad toho, jak jsou tyto možnosti aplikovány na výše uvedenou tabulku, je vidět na obrázku níže.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### Tabulka AutoFit k obsahu

Při automatickém nastavení tabulky se v zákulisí provádějí následující kroky:

1. The **Table.AllowAutoFit** vlastnost je povolena automaticky měnit velikost každé buňky podle jejího obsahu

2. Upřednostňovaná šířka tabulky se odstraní z **Table.PreferredWidth**, **CellFormat.PreferredWidth** se odstraní pro každou tabulku
      {{% alert color="primary" %}}

   Všimněte si, že tato volba autofit odstraňuje preferovanou šířku z buněk, stejně jako v Microsoft Word. Pokud si chcete ponechat velikost sloupců a zvýšit nebo snížit sloupce pro uložení obsahu, měli byste nastavit **Table.AllowAutoFit** majetek **True** na vlastní pěst spíše než používat autofit zkratku.{{% /alert %}}

3. Šířka sloupců jsou přepočítány pro aktuální obsah tabulky

Následující příklad kódu ukazuje, jak se k jejímu obsahu přiřadí tabulka:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Příklad toho, jak jsou tyto možnosti aplikovány na výše uvedenou tabulku, je vidět na obrázku níže.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Zakázat AutoFit v tabulce a používat pevné šířky sloupce

Pokud má tabulka autofit vypnutý a místo toho se použijí pevné šířky sloupců, provedou se následující kroky:

1. **Table.AllowAutoFit** vlastnost je vypnuta, takže sloupce nerostou nebo se zmenšují na jejich obsah
2. Upřednostňovaná šířka celé tabulky je odstraněna z **Table.PreferredWidth**, **CellFormat.PreferredWidth** je odstraněn ze všech buněk tabulky
3. Konečným výsledkem je tabulka, jejíž šířky sloupců jsou určeny [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) vlastnost a jejíž sloupce nejsou automaticky měněny při vstupu uživatele do textu nebo při změně velikosti stránky

{{% alert color="primary" %}}

Všimněte si, že pokud není stanovena žádná šířka pro **CellFormat.Width**, použije se výchozí hodnota jednoho palce (72 bodů).

{{% /alert %}}

Následující příklad kódu ukazuje, jak zakázat autofit a povolit pevnou šířku pro zadanou tabulku:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Příklad toho, jak jsou tyto možnosti aplikovány na výše uvedenou tabulku, je vidět na obrázku níže.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Řád precedence při výpočtu šířky buňky

Aspose.Words umožňuje uživatelům definovat šířku tabulky nebo buňky prostřednictvím více objektů, včetně [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) Jeho [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) vlastnost je většinou ponechána z předchozích verzí, nicméně je stále užitečná pro zjednodušení nastavení šířky buňky.

Je důležité vědět, že **CellFormat.Width** vlastnost funguje jinak v závislosti na tom, které z ostatních vlastností šířky již existují v tabulce.

Aspose.Words používá pro výpočet šířky buňky následující pořadí:

|  Pořadí |  Majetek |  Popis zboží |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) je určena |  Pokud **AutoFit** je povoleno:<br/>- tabulka může růst za preferovanou šířku tak, aby vyhovovala obsahu, který obvykle nesnižuje pod preferovanou šířku<br/>- jakékoli změny **CellFormat.Width** hodnota je ignorována a buňka bude místo toho odpovídat jejímu obsahu |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) s hodnotou **Points** nebo **Percent** |  **CellFormat.Width** ignoruje |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) s hodnotou **Auto** |  Hodnota **CellFormat.Width** se kopíruje a stává se preferovanou šířkou buňky (v bodech) |

{{% alert color="primary" %}}

Veškeré změny vlastnosti šířky nejsou v preferované šířce aktualizovány a místo toho musí být použity na preferovanou šířku.

{{% /alert %}}

{{% alert color="primary" %}}

Při vytváření pevného uspořádání tabulky zadejte šířku buňky. Buňku bez šířky nelze uložit do formátu DOC. Formáty dokumentů jiné než DOC, jako je DOCX, umožňují v zásadě ukládat buňky bez šířky v pevném uspořádání tabulky.

{{% /alert %}}

## Povolit rozprostření mezi buňkami

Můžete získat nebo nastavit jakýkoli další prostor mezi stolními buňkami, podobně jako možnost "Сell distance" v Microsoft Word. To lze provést pomocí [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) majetek.

Příklad, jak jsou tyto možnosti aplikovány na skutečnou tabulku v dokumentu, je vidět na obrázku níže.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Následující příklad kódu ukazuje, jak nastavit vzdálenost mezi buňkami:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Použít hranice a stínění

Hranice a stínování lze aplikovat buď na celou tabulku pomocí [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) a [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), nebo pouze pro konkrétní buňky používající [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) a [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Kromě toho lze nastavit okraj řádku pomocí [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), Takto však stínování nelze uplatnit.

Obrázky níže ukazují hraniční a stínové nastavení Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


Následující příklad kódu ukazuje, jak formátovat tabulku a buňku s různými hranicemi a stíny:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}