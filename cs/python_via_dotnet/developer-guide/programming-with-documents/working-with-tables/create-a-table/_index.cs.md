---
title: Úvod a vytváření tabulek
second_title: Aspose.Words místo Python via .NET
articleTitle: Úvod a vytváření tabulek
linktitle: Úvod a vytváření tabulek
description: "Vytvoření a správa tabulek v dokumentu pomocí Python."
type: docs
weight: 10
url: /cs/python-net/create-a-table/
---

Aspose.Words umožňuje uživatelům vytvářet tabulky v dokumentu od nuly a poskytuje několik různých metod. Tento článek uvádí podrobnosti o tom, jak přidat formátované tabulky do dokumentu pomocí každé metody, stejně jako srovnání každé metody na konci článku.

## Výchozí styl tabulky

Nově vytvořená tabulka je dána výchozími hodnotami podobnými hodnotám používaným v Microsoft Word:

| Tabulka Vlastnosti | Výchozí v Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Tabulka může být inline, pokud je pevně umístěna, nebo plovoucí, pokud může být umístěna kdekoli na stránce. Ve výchozím nastavení Aspose.Words vždy vytváří inline stoly.

{{% /alert %}}

## Vytvořit tabulku s dokumentemBuilder

In Aspose.Words, uživatelé mohou vytvořit tabulku v dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Základní algoritmus pro vytvoření tabulky je následující:

1. Spustit tabulku s [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2. Přidání buňky do tabulky pomocí [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) Toto automaticky spustí nový řádek
3. Volitelně použijte [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) vlastnost pro upřesnění formátování buněk
4. Vložit obsah buňky pomocí příslušného **DocumentBuilder** metody, jako jsou [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str), a další
5. Opakujte kroky 2-4, dokud není řada dokončena
6. Volat [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) ukončit aktuální řádek
7. Volitelně použijte [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) vlastnost pro upřesnění formátování řádku
8. Opakujte kroky 2-7 až do dokončení tabulky
9. Volat [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) dokončit stavbu stolu

{{% alert color="primary" %}}

Důležité informace:

- [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) lze také volat uvnitř buňky, v takovém případě to začne vytvořením vnořeného stolu uvnitř buňky.
- Po zavolání [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/), vytvoří se nová buňka a jakýkoliv obsah, který přidáte pomocí jiných metod [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) třída bude přidána do současné buňky. Chcete-li vytvořit novou buňku ve stejné řadě, zavolejte **InsertCell** Znovu.
- Pokud **InsertCell** volá okamžitě po [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) a konec řady, tabulka bude pokračovat v nové řadě.
- The [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) způsob ukončení tabulky by měl být volán pouze jednou po volání **EndRow**. Volání **EndTable** přesune kurzor z aktuální buňky do polohy bezprostředně po tabulce.

{{% /alert %}}

Proces vytváření tabulky lze jasně vidět na následujícím obrázku:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="creating-table-process" style="zoom:50%;" />

Následující příklad kódu ukazuje, jak vytvořit jednoduchou tabulku pomocí **DocumentBuilder** s výchozím formátováním:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

Následující příklad kódu ukazuje, jak vytvořit formátovanou tabulku pomocí nástroje DokumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

Následující příklad kódu ukazuje, jak vložit vnořenou tabulku pomocí DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## Vytvořit tabulku prostřednictvím DOM (Document Object Model)

Tabulky můžete vložit přímo do DOM přidáním nového [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Uzel na konkrétní pozici.

Vezměte prosím na vědomí, že ihned po vytvoření uzel stolu bude tabulka sama o sobě zcela prázdná, tj. dosud neobsahuje řádky a buňky. Pro vložení řádků a buněk do tabulky přidejte odpovídající [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) a [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) dětské uzly na DOM.

{{% alert color="primary" %}}

Tato metoda vytváření tabulky používá stejné výchozí hodnoty tabulky jako při použití **DocumentBuilder**.

{{% /alert %}}

Následující příklad kódu ukazuje, jak postavit novou tabulku od nuly přidáním odpovídajících dětských uzlů do stromu dokumentu:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create Tabulka z HTML

Aspose.Words podporuje vložení obsahu do dokumentu ze zdroje HTML pomocí [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) metoda. Vstup může být kompletní HTML stránka nebo jen částečný úryvek.

Použití **InsertHtml** způsob, uživatelé mohou vložit tabulky do dokumentu pomocí tagy tabulky jako `<table>`, `<tr>`, `<td>`.

Následující příklad kódu ukazuje, jak vložit tabulku do dokumentu z řetězce obsahující HTML tagy:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Vložit kopii existující tabulky

Často jsou chvíle, kdy potřebujete vytvořit tabulku založenou na již existující tabulce v dokumentu. Nejjednodušší způsob, jak duplikovat tabulku a zároveň zachovat formátování, je klonovat uzel tabulky pomocí [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/) metoda.

Stejnou techniku lze použít pro přidání kopií existující řady nebo buňky do tabulky.

Následující příklad kódu ukazuje, jak duplikovat tabulku pomocí konstruktérů nódu:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak naklonovat poslední řádek tabulky a přidat ji do tabulky:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Pokud se díváte na vytváření tabulek v dokumentu, který dynamicky roste s každým záznamem z vašeho datového zdroje, pak výše uvedená metoda se nedoporučuje. Místo toho je žádoucí výstup snadněji dosaženo použitím Mail merge s regiony.

## Porovnat způsoby, jak vytvořit tabulku

Aspose.Words poskytuje několik metod pro vytvoření nových tabulek v dokumentu. Každá metoda má své vlastní výhody a nevýhody, takže výběr z nich často závisí na konkrétní situaci.

Pojďme se blíže podívat na tyto způsoby vytváření tabulek a porovnat jejich výhody a nevýhody:

|  Metoda | Výhody |  Nevýhody |
|  :-  |  :-  |  :-  |
| Via DocumentBuilder | Standardní metoda pro vložení tabulek a jiného obsahu dokumentu | Někdy je obtížné vytvořit mnoho druhů tabulek současně se stejnými stavebníky |
| Via DOM |  Sedí lépe s okolním kódem, který vytváří a vkládá uzly přímo do DOM bez použití **DocumentBuilder** | Tabulka je vytvořena "prázdná": před provedením většiny operací musíte zavolat [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) vytvořit chybějící dětské uzly |
| Od HTML | Lze vytvořit novou tabulku ze zdroje HTML pomocí značek jako `<table>`, `<tr>`, `<td>` | Ne všechny možné Microsoft Word formáty tabulky lze aplikovat na HTML |
| Klonování stávající tabulky | Můžete vytvořit kopii existující tabulky a zároveň zachovat formátování všech řádků a buněk | Příslušné dětské uzly musí být odstraněny dříve, než je tabulka připravena k použití |