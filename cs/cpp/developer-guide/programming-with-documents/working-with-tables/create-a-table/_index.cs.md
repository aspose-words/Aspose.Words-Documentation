---
title: Jak vytvořit tabulku v C++
second_title: Aspose.Words pro C++
articleTitle: Vytvoření tabulky
linktitle: Vytvoření tabulky
description: "Různé způsoby vytváření tabulek pomocí C++. Vytvořte tabulku v C++ pro váš dokument. Přidejte tabulku do C++."
type: docs
weight: 20
url: /cs/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words umožňuje uživatelům vytvářet tabulky v dokumentu od nuly a poskytuje několik různých metod. Tento článek představuje podrobnosti o tom, jak přidat formátované tabulky do dokumentu pomocí každé metody, a také srovnání každé metody na konci článku.

## Výchozí Styly Tabulky

Nově vytvořená tabulka má výchozí hodnoty podobné těm, které se používají v Microsoft Word:

| Vlastnost Tabulky | Výchozí hodnota v Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 bod |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Tabulka může být vložená, pokud je pevně umístěna, nebo plovoucí, pokud ji lze umístit kdekoli na stránce. Ve výchozím nastavení Aspose.Words vždy vytváří vložené tabulky.

{{% /alert %}}

## Vytvořte tabulku pomocí DocumentBuilder

V Aspose.Words mohou uživatelé vytvořit tabulku v dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Základní algoritmus pro vytvoření tabulky je následující:

1. Začněte tabulku [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Přidání buňky do tabulky pomocí [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) - tím se automaticky spustí nový řádek
3. Volitelně použijte vlastnost [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) k určení formátování buněk
4. Vložte obsah buňky pomocí příslušných metod **DocumentBuilder**, jako je [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) a dalších
5. Opakujte kroky 2-4, dokud není řádek dokončen
6. Volání [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) pro ukončení aktuálního řádku
7. Volitelně použijte vlastnost [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) k určení formátování řádků
8. Opakujte kroky 2-7, dokud není tabulka dokončena
9. Zavolejte [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) a dokončete sestavení tabulky

{{% alert color="primary" %}}

Důležité detaily:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) lze také volat uvnitř buňky, v takovém případě zahájí vytváření vnořené tabulky v buňce.
- Po volání [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) se vytvoří nová buňka a veškerý obsah, který přidáte pomocí jiných metod třídy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), bude přidán do aktuální buňky. Chcete-li vytvořit novou buňku na stejném řádku, zavolejte znovu **InsertCell**.
- Pokud je **InsertCell** volán bezprostředně za [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) a koncem řádku, tabulka bude pokračovat na novém řádku.
- Metoda [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) pro ukončení tabulky by měla být volána pouze jednou po volání **EndRow**. Volání **EndTable** přesune kurzor z aktuální buňky na pozici bezprostředně za tabulkou.

{{% /alert %}}

Proces vytváření tabulky je jasně vidět na následujícím obrázku:

![creating-table-process](creating-table-process.jpg)

Následující příklad kódu ukazuje, jak vytvořit jednoduchou tabulku pomocí **DocumentBuilder** s výchozím formátováním:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

Následující příklad kódu ukazuje, jak vytvořit formátovanou tabulku pomocí DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

Následující příklad kódu ukazuje, jak vložit vnořenou tabulku pomocí DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Vytvoření tabulky pomocí DOM (model objektu dokumentu)

Tabulky můžete vložit přímo do DOM přidáním nového uzlu [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) na konkrétní pozici.

Vezměte prosím na vědomí, že ihned po vytvoření uzlu tabulky bude samotná tabulka zcela prázdná, to znamená, že ještě neobsahuje řádky a buňky. Chcete-li vložit řádky a buňky do tabulky, přidejte příslušné podřízené uzly [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) a [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) do DOM.

{{% alert color="primary" %}}

Tato metoda vytváření tabulky používá stejné výchozí hodnoty tabulky jako při použití **DocumentBuilder**.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit novou tabulku od nuly přidáním příslušných podřízených uzlů do stromu dokumentů:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Vytvořte tabulku z HTML

Aspose.Words podporuje vkládání obsahu do dokumentu ze zdroje HTML metodou [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). Vstupem může být úplná stránka HTML nebo jen částečný úryvek.

Pomocí metody **InsertHtml** mohou uživatelé vkládat tabulky do dokumentu pomocí značek tabulek, jako je `<table>`, `<tr>`, `<td>`.

Následující příklad kódu ukazuje, jak vložit tabulku do dokumentu z řetězce obsahujícího značky HTML:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Vložení kopie existující tabulky

Často se stává, že potřebujete vytvořit tabulku na základě již existující tabulky v dokumentu. Nejjednodušší způsob, jak duplikovat tabulku při zachování veškerého formátování, je klonovat uzel tabulky pomocí metody [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

Stejnou techniku lze použít k přidání kopií existujícího řádku nebo buňky do tabulky.

Následující příklad kódu ukazuje, jak duplikovat tabulku pomocí konstruktorů uzlů:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

Následující příklad kódu ukazuje, jak klonovat poslední řádek tabulky a připojit jej k tabulce:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Pokud se díváte na vytváření tabulek v dokumentu, které dynamicky rostou s každým záznamem ze zdroje dat, výše uvedená metoda se nedoporučuje. Místo toho je požadovaného výstupu snadněji dosaženo použitím Mail merge s regiony. Více o této technice se můžete dozvědět v [Mail Merge s regiony](/words/cpp/types-of-mail-merge-operations/) oddíl.

## Porovnejte způsoby vytvoření tabulky

Aspose.Words poskytuje několik metod pro vytvoření nových tabulek v dokumentu. Každá metoda má své vlastní výhody a nevýhody, takže výběr, který se má použít, často závisí na konkrétní situaci.

Podívejme se blíže na tyto způsoby vytváření tabulek a porovnejme jejich klady a zápory:

| Způsoba | Výhoda | Nevýhoda |
| :- | :- | :- |
| `DocumentBuilder` | Standardní metoda pro vkládání tabulek a dalšího obsahu dokumentu | Někdy je obtížné vytvořit mnoho druhů tabulek současně se stejnou instancí stavitele |
| Via DOM | Lépe zapadá do okolního kódu, který vytváří a vkládá uzly přímo do DOM bez použití **DocumentBuilder** | Tabulka je vytvořena "prázdná": před provedením většiny operací musíte zavolat [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/), abyste vytvořili chybějící podřízené uzly |
| Od HTML | Může vytvořit novou tabulku ze zdroje HTML pomocí značek jako `<table>`, `<tr>`, `<td>` | Ne všechny možné formáty tabulek Microsoft Word lze použít na HTML |
| Klonování existující tabulky | Můžete vytvořit kopii existující tabulky při zachování veškerého formátování řádků a buněk | Příslušné podřízené uzly musí být odstraněny, než bude tabulka připravena k použití |
