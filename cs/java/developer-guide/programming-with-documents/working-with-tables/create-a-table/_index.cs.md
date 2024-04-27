---
title: Jak vytvořit tabulku v Java
second_title: Aspose.Words místo Java
articleTitle: Vytvořit tabulku
linktitle: Vytvořit tabulku
description: "Různé způsoby vytváření tabulek ve vašem dokumentu pomocí Java."
type: docs
weight: 20
url: /cs/java/create-a-table/
---

Aspose.Words umožňuje uživatelům vytvářet tabulky v dokumentu od nuly a poskytuje pro to několik různých metod. Tento článek uvádí podrobnosti o tom, jak přidat formátované tabulky do dokumentu pomocí každé metody, stejně jako srovnání každé metody na konci článku.

## Výchozí styl tabulky

Nově vytvořená tabulka je dána výchozími hodnotami podobnými hodnotám používaným v Microsoft Word:

| Tabulka Vlastnosti | Výchozí v Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Barva okraje |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Tabulka může být inline, pokud je pevně umístěna, nebo plovoucí, pokud může být umístěna kdekoli na stránce. Ve výchozím nastavení Aspose.Words vždy vytváří inline stoly.

{{% /alert %}}

## Vytvořit tabulku s dokumentemStavitel

In Aspose.Words, uživatelé mohou vytvořit tabulku v dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Základní algoritmus pro vytvoření tabulky je následující:

1. Spustit tabulku s [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Přidání buňky do tabulky pomocí [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) Toto automaticky spustí nový řádek
3. Volitelně použijte [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) vlastnost pro upřesnění formátování buněk
4. Vložit obsah buňky pomocí vhodného **DocumentBuilder** metody, jako jsou [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), a další
5. Opakujte kroky 2-4 až do dokončení řady
6. Volat [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) k ukončení aktuálního řádku
7. Volitelně použijte [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) vlastnost pro upřesnění formátování řádku
8. Opakujte kroky 2-7 až do dokončení tabulky
9. Volat [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) dokončit stavbu stolu

{{% alert color="primary" %}}

Důležité informace:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) lze také volat uvnitř buňky, v tom případě to začíná vytvořením vnořeného stolu uvnitř buňky.
- Po zavolání [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), vytvoří se nová buňka a jakýkoliv obsah, který přidáte pomocí jiných metod [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) třída bude přidána do současné buňky. Chcete-li vytvořit novou buňku ve stejném řádku, zavolejte **InsertCell** Znovu.
- Pokud **InsertCell** volá okamžitě po [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) a konec řady, tabulka bude pokračovat v nové řadě.
- The [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) způsob ukončení tabulky by měl být volán pouze jednou po volání **EndRow**. Volání **EndTable** přesune kurzor z aktuální buňky do polohy bezprostředně za tabulkou.

{{% /alert %}}

Proces vytváření tabulky lze jasně vidět na následujícím obrázku:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

Následující příklad kódu ukazuje, jak vytvořit jednoduchou tabulku pomocí **DocumentBuilder** s výchozím formátováním:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Následující příklad kódu ukazuje, jak vytvořit formátovanou tabulku pomocí nástroje DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Následující příklad kódu ukazuje, jak vložit vnořenou tabulku pomocí nástroje DokumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Vytvořit tabulku prostřednictvím DOM (Document Object Model)

Tabulky můžete vložit přímo do DOM přidáním nového [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Uzel na konkrétní pozici.

Vezměte prosím na vědomí, že ihned po vytvoření uzel stolu bude stůl zcela prázdný, tedy že dosud neobsahuje řádky a buňky. Pro vložení řádků a buněk do tabulky přidejte odpovídající [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) a [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) dětské uzliny na DOM.

{{% alert color="primary" %}}

Tato metoda vytváření tabulky používá stejné výchozí hodnoty tabulky jako při použití **DocumentBuilder**.

{{% /alert %}}

Následující příklad kódu ukazuje, jak postavit novou tabulku od nuly přidáním odpovídajících dětských uzlů do stromu dokumentu:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Vytvořit tabulku z HTML

Aspose.Words podporuje vložení obsahu do dokumentu ze zdroje HTML pomocí [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) metoda. Vstupem může být celá HTML stránka nebo jen částečný úryvek.

S použitím tohoto **InsertHtml** způsob, uživatelé mohou vložit tabulky do dokumentu přes tagy tabulky, jako je `<table>`, `<tr>`, `<td>`.

Následující příklad kódu ukazuje, jak vložit tabulku do dokumentu z řetězce obsahující HTML tagy:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Vložit kopii existující tabulky

Často jsou chvíle, kdy potřebujete vytvořit tabulku založenou na již existující tabulce v dokumentu. Nejjednodušší způsob, jak duplikovat tabulku a zároveň zachovat formátování, je klonovat uzel tabulky pomocí [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) metoda.

Stejnou techniku lze použít pro přidání kopií existující řady nebo buňky do tabulky.

Následující příklad kódu ukazuje, jak duplikovat tabulku pomocí konstruktérů uzlů:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Následující příklad kódu ukazuje, jak naklonovat poslední řádek tabulky a přidat ji do tabulky:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Pokud se díváte na vytváření tabulek v dokumentu, který dynamicky roste s každým záznamem ze zdroje dat, pak výše uvedená metoda se nedoporučuje. Místo toho je požadovaný výstup snadněji dosaženo použitím Mail merge s regiony. O této technice se můžete dozvědět více v [Mail Merge s regiony](/words/java/types-of-mail-merge-operations/) sekce.

## Porovnat způsoby, jak vytvořit tabulku

Aspose.Words poskytuje několik metod pro vytvoření nových tabulek v dokumentu. Každá metoda má své vlastní výhody a nevýhody, takže výběr z nich často závisí na konkrétní situaci.

Pojďme se blíže podívat na tyto způsoby vytváření tabulek a porovnat jejich pro a proti:

|  Metoda | Výhody |  Nevýhody |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | Standardní metoda pro vložení tabulek a jiného obsahu dokumentu | Někdy obtížné vytvořit mnoho odrůd tabulek současně se stejnými stavební instance |
| Via DOM |  Sedí lépe s okolním kódem, který vytváří a vkládá uzly přímo do DOM bez použití **DocumentBuilder** | Tabulka je vytvořena "prázdná": před provedením většiny operací musíte zavolat [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) vytvořit chybějící dětské uzly |
| Od HTML | Lze vytvořit novou tabulku ze zdroje HTML pomocí značek jako `<table>`, `<tr>`, `<td>` | Ne všechny možné Microsoft Word formáty tabulky lze aplikovat na HTML |
| Klonování stávající tabulky | Můžete vytvořit kopii existující tabulky při zachování všech řádek a formátování buněk | Příslušné dětské uzly musí být odstraněny před tím, než je tabulka připravena k použití |
