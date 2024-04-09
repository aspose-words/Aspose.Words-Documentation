---
title: Sloučit stolní buňky
second_title: Aspose.Words místo Python via .NET
articleTitle: Sloučit stolní buňky
linktitle: Sloučit stolní buňky
description: "Jak sloučit buňky tabulky v Python. Zkontrolujte, zda jsou buňky v tabulce sloučeny pomocí Python."
type: docs
weight: 40
url: /cs/python-net/working-with-merged-cells/
---

Někdy některé řádky v tabulce vyžadují nadpis nebo velké bloky textu, které zabírají celou šířku tabulky. Pro řádný návrh tabulky může uživatel sloučit několik stolních buněk do jedné. Aspose.Words podporuje sloučené buňky při práci se všemi vstupními formáty, včetně importu HTML obsahu.

## Jak sloučit stolní buňky

In Aspose.Words, sloučené buňky jsou zastoupeny následujícími vlastnostmi: [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) třída:

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) která popisuje, zda je buňka součástí horizontálního sloučení buněk
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) která popisuje, zda je buňka součástí vertikálního sloučení buněk

Hodnoty těchto vlastností určují slučovací chování buněk:

- První buňka v řadě sloučených buněk bude mít [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Všechny následně sloučené buňky budou mít [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Buňka, která není sloučena, bude mít [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Někdy se při načítání stávajících dokumentových buněk do tabulky objeví spojení. Nicméně, to může být ve skutečnosti jedna dlouhá buňka někdy Microsoft Word export takto spojil buňky. To může být matoucí při pokusu o práci s jednotlivými buňkami, ale nezdá se, že by tam byl žádný konkrétní vzorec, pokud se to stane.

{{% /alert %}}

## Zkontrolujte, zda je buňka Merged

Chcete-li zjistit, zda je buňka součástí sekvence sloučených buněk, stačí zkontrolovat **HorizontalMerge** a **VerticalMerge** vlastnosti.

Následující příklad kódu ukazuje, jak tisknout horizontální a vertikální typ sloučení buňky:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Sloučit stolní buňky při použití dokumentu

Sloučit buňky v tabulce vytvořené s [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), Musíte nastavit vhodný typ sloučení pro každou buňku, kde se očekává sloučení, nejprve **CellMerge.First** a pak **CellMerge.Previous**.

Také, musíte nezapomeňte vyčistit nastavení sloučení pro ty buňky, kde není požadováno sloučení to lze provést nastavením první ne-sloučit buňky na **CellMerge.None**. Pokud tomu tak není, všechny buňky v tabulce budou sloučeny.

Následující příklad kódu ukazuje, jak vytvořit tabulku se dvěma řádky, kde jsou buňky v prvním řádku sloučeny vodorovně:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

Následující příklad kódu ukazuje, jak vytvořit tabulku dvou sloupců, kde jsou buňky v prvním sloupci vertikálně sloučeny:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Sloučit stolní buňky v jiných případech

V jiných situacích, kdy **DocumentBuilder** není používán, jako například ve stávající tabulce, slučování buněk předchozí cestou nemusí být tak snadné. Místo toho můžeme zabalit základní operace, které se podílejí na aplikaci slučovacích vlastností na buňky metodou, která tento úkol mnohem usnadňuje. Tato metoda je podobná metodě automatizace Sloučení, která se volá ke sloučení řady buněk v tabulce.

Níže uvedený kód sloučí buňky tabulky ve stanoveném rozsahu, počínaje danou buňkou a končí na konci buňky. V tomto případě může rozsah rozdělit více řádků nebo sloupců:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

Následující příklad kódu ukazuje, jak sloučit rozsah buněk mezi dvěma specifikovanými buňkami:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

V závislosti na verzi rámce, kterou používáte, můžete tuto metodu zpřesnit přeměnou na metodu rozšíření. V tomto případě můžete tuto metodu nazvat přímo na buňce, abyste sloučili řadu buněk, například `cell1.Merge(cell2)`.

## Převést na horizontálně Promísené buňky

Někdy není možné zjistit, které buňky jsou sloučeny, protože některé novější verze Microsoft Word již nepoužívat vlajky sloučení, když jsou buňky sloučeny horizontálně. Ale pro situace, kdy jsou buňky sloučeny do buňky horizontálně podle jejich šířky pomocí flagů spojení, Aspose.Words poskytuje `ConvertToHorizontallyMergedCells` metoda přeměny buněk. Tato metoda jednoduše transformuje tabulku a přidává nové buňky podle potřeby.

Následující příklad kódu ukazuje výše uvedenou metodu v provozu:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
