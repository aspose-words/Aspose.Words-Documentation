---
title: Sloučit buňky tabulky v C++
second_title: Aspose.Words pro C++
articleTitle: Sloučit Buňky Tabulky
linktitle: Sloučit Buňky Tabulky
description: "Jak sloučit buňky tabulky v C++. Zkontrolujte, zda jsou buňky v tabulce sloučeny pomocí C++."
type: docs
weight: 40
url: /cs/cpp/merge-table-cells/
timestamp: 2024-01-27-14-07-04
---

Některé řádky v tabulce někdy vyžadují Nadpis nebo velké bloky textu, které zabírají celou šířku tabulky. Pro správný návrh tabulky může uživatel sloučit několik buněk tabulky do jedné. Aspose.Words podporuje sloučené buňky při práci se všemi vstupními formáty, včetně importu obsahu HTML.

## Jak sloučit buňky tabulky

V Aspose.Words jsou sloučené buňky reprezentovány následujícími vlastnostmi třídy [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/), který popisuje, zda je buňka součástí horizontálního sloučení buněk
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/), který popisuje, zda je buňka součástí vertikálního sloučení buněk

Hodnoty těchto vlastností určují slučovací chování buněk:

- První buňka v sekvenci sloučených buněk bude mít [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Všechny následně sloučené buňky budou mít [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Buňka, která není sloučena, bude mít [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Někdy se při načítání existujících buněk dokumentu do tabulky zobrazí sloučené. Ve skutečnosti to však může být jedna dlouhá buňka – někdy Microsoft Word exportuje sloučené buňky tímto způsobem. To může být matoucí při pokusu o práci s jednotlivými buňkami, ale nezdá se, že by existoval nějaký konkrétní vzorec, kdy k tomu dojde.

{{% /alert %}}

## Zkontrolujte, zda je buňka sloučena

Chcete-li zkontrolovat, zda je buňka součástí sekvence sloučených buněk, jednoduše zkontrolujeme vlastnosti **HorizontalMerge** a **VerticalMerge**.

Následující příklad kódu ukazuje, jak vytisknout Typ sloučení horizontální a vertikální buňky:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Sloučené buňky v tabulce {#merge-cells-in-a-table}

Chcete – li sloučit buňky v tabulce vytvořené pomocí [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), musíte nastavit vhodný typ sloučení pro každou buňku, kde se očekává sloučení-nejprve **CellMerge.First** a poté **CellMerge.Previous**.

Musíte také pamatovat na vymazání nastavení sloučení pro ty buňky, kde není vyžadováno sloučení-to lze provést nastavením první buňky, která není sloučena, na **CellMerge.None**. Pokud tak neučiníte, všechny buňky v tabulce budou sloučeny.

Následující příklad kódu ukazuje, jak vytvořit tabulku se dvěma řádky, kde jsou buňky v prvním řádku sloučeny vodorovně:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

Následující příklad kódu ukazuje, jak vytvořit tabulku se dvěma sloupci, kde jsou buňky v prvním sloupci vertikálně sloučeny:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Sloučit buňky tabulky v jiných případech

V jiných situacích, kdy se **DocumentBuilder** nepoužívá, například v existující tabulce, nemusí být sloučení buněk předchozím způsobem tak snadné. Místo toho můžeme zabalit základní operace spojené s aplikací vlastností sloučení do buněk metodou, která úkol mnohem usnadní. Tato metoda je podobná metodě automatizace sloučení, která se nazývá sloučení řady buněk v tabulce.

Níže uvedený kód sloučí buňky tabulky v zadaném rozsahu, počínaje danou buňkou a končící na koncové buňce. V tomto případě může rozsah zahrnovat více řádků nebo sloupců:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

Následující příklad kódu ukazuje, jak sloučit rozsah buněk mezi dvěma určenými buňkami:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

V závislosti na verzi rámce, kterou používáte, možná budete chtít tuto metodu vylepšit přeměnou na metodu rozšíření. V tomto případě můžete tuto metodu zavolat přímo na buňku a sloučit rozsah buněk, například `cell1.Merge(cell2)`.

## Vertikální a horizontální sloučené buňky v tabulce {#vertical-and-Horizontal-merged-cells-in-the-table}

Jak jsme řekli v předchozích článcích, tabulka v Microsoft Word je sada nezávislých řádků. Každý řádek má sadu buněk, které jsou nezávislé na buňkách jiných řádků. V tabulce Microsoft Word tedy neexistuje žádný takový objekt jako" sloupec "a" 1.sloupec "je něco jako"sada 1. buněk každého řádku v tabulce". To umožňuje uživatelům mít tabulku, ve které se například 1.řádek skládá ze dvou buněk – 2 cm a 1 cm a 2. řádek se skládá ze dvou různých buněk – 1 cm a 2 cm širokých. A Aspose.Words podporuje tento koncept tabulek.

Tabulka v HTML má v podstatě odlišnou strukturu: každý řádek má stejný počet buněk a (je to důležité pro úkol) každá buňka má šířku odpovídajícího sloupce, stejnou pro všechny buňky v jednom sloupci. Pokud tedy **HorizontalMerge** a **VerticalMerge** vrátí nesprávnou hodnotu, použijte následující příklad kódu:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Převést na vodorovně sloučené buňky {#convert-to-horizontally-merged-cells}

Někdy není možné zjistit, které buňky jsou sloučeny, protože některé novější verze Microsoft Word již nepoužívají příznaky sloučení, když jsou buňky sloučeny vodorovně. Ale pro situace, kdy jsou buňky sloučeny do buňky vodorovně podle jejich šířky pomocí příznaků sloučení, Aspose.Words poskytuje metodu `ConvertToHorizontallyMergedCells` pro převod buněk. Tato metoda jednoduše transformuje tabulku a podle potřeby přidává nové buňky.

Následující příklad kódu ukazuje výše uvedenou metodu v provozu:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}
