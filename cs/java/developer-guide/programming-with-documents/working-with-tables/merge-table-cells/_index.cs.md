---
title: Sloučit stolní buňky v Java
second_title: Aspose.Words místo Java
articleTitle: Sloučit stolní buňky
linktitle: Sloučit stolní buňky
description: "Jak sloučit buňky tabulky v Java. Zkontrolujte, zda jsou buňky v tabulce sloučeny pomocí Java."
type: docs
weight: 40
url: /cs/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Někdy některé řádky v tabulce vyžadují nadpis nebo velké bloky textu, které zabírají celou šířku tabulky. Pro správný návrh tabulky může uživatel sloučit několik buněk tabulky do jedné. Aspose.Words podporuje sloučené buňky při práci se všemi vstupními formáty, včetně importu HTML obsahu.

## Jak sloučit stolní buňky

In Aspose.Words, Sloučené buňky jsou zastoupeny následujícími vlastnostmi: [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) třída:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) která popisuje, zda je buňka součástí horizontálního sloučení buněk
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) která popisuje, zda je buňka součástí vertikálního sloučení buněk

Hodnoty těchto vlastností určují slučovací chování buněk:

- První buňka v řadě sloučených buněk bude mít [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Všechny následně sloučené buňky budou mít [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Buňka, která není sloučena, bude mít [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Někdy se při načítání stávajících článků dokumentů do tabulky objeví spojení. Ale ve skutečnosti to může být jedna dlouhá buňka. Microsoft Word vývoz takto sloučených buněk. To může být matoucí při pokusu o práci s jednotlivými buňkami, ale nezdá se, že by tam byl žádný konkrétní vzorec, pokud se to stane.

{{% /alert %}}

## Kontrola, zda je buňka Meged

Chcete-li zjistit, zda je buňka součástí sekvence sloučených buněk, stačí zkontrolovat **HorizontalMerge** a **VerticalMerge** vlastnosti.

Následující příklad kódu ukazuje, jak tisknout horizontální a vertikální typ sloučení buňky:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Sloučit stolní buňky při použití nástroje

Sloučit buňky v tabulce vytvořené s [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), Musíte nastavit vhodný typ sloučení pro každou buňku, kde se předpokládá sloučení nejdříve? **CellMerge.First** a pak **CellMerge.Previous**.

Musíte také pamatovat na to, abyste vyčistili nastavení sloučení pro ty buňky, kde není nutné sloučit. **CellMerge.None**. Pokud tomu tak není, všechny buňky v tabulce budou sloučeny.

Následující příklad kódu ukazuje, jak vytvořit tabulku se dvěma řádky, kde jsou buňky v prvním řádku sloučeny vodorovně:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Následující příklad kódu ukazuje, jak vytvořit tabulku dvou sloupců, kde jsou buňky v prvním sloupci vertikálně sloučeny:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Sloučit stolní buňky v jiných případech

V jiných situacích, kdy **DocumentBuilder** není používán, jako například ve stávající tabulce, slučovací buňky předchozí cestou nemusí být tak snadné. Místo toho můžeme zabalit základní operace, které se podílejí na aplikaci vlastností sloučení na buňky metodou, která tento úkol mnohem usnadňuje. Tato metoda je podobná metodě automatizace sloučení, která se volá ke sloučení řady buněk v tabulce.

Níže uvedený kód sloučí buňky tabulky ve stanoveném rozsahu, počínaje danou buňkou a končí na konci buňky. V tomto případě může rozsah rozdělit více řádků nebo sloupců:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Následující příklad kódu ukazuje, jak sloučit rozsah buněk mezi dvěma specifikovanými buňkami:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Vertikální a horizontální Merged buňky v HTML tabulce

Jak jsme řekli v předchozích článcích, tabulka v Microsoft Word je soubor nezávislých řádků. Každá řada má sadu buněk, které jsou nezávislé na buňkách jiných řádků. Proto v Microsoft Word Tabulka neexistuje takovýto předmět, jako je sloupec To umožňuje uživatelům mít tabulku, v níž například 1. řádek se skládá ze dvou buněk 2cm a 1cm, a 2. řádek se skládá ze dvou různých buněk 1cm a 2cm široké. A Aspose.Words podporuje tento koncept tabulek.

Tabulka v HTML má v podstatě jinou strukturu: každý řádek má stejný počet buněk a (je to důležité pro úkol) každá buňka má šířku odpovídajícího sloupce, stejný pro všechny buňky v jednom sloupci. Takže pokud **HorizontalMerge** a **VerticalMerge** vrátit nesprávnou hodnotu, použijte následující příklad kódu:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Převést na horizontálně Mražené buňky

Někdy není možné zjistit, které buňky jsou sloučeny, protože některé novější verze Microsoft Word Pokud jsou buňky sloučeny vodorovně, nesmí již používat vlajky sloučení. Ale pro situace, kdy jsou buňky sloučeny do buňky horizontálně podle jejich šířky pomocí slučovacích vlajek, Aspose.Words poskytuje `ConvertToHorizontallyMergedCells` způsob přeměny buněk. Tato metoda jednoduše přeměňuje tabulku a přidává nové buňky podle potřeby.

Následující příklad kódu ukazuje výše uvedenou metodu v provozu:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
