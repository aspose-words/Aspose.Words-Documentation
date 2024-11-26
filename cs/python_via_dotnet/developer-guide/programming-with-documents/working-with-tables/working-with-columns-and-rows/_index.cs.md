---
title: Práce se sloupci a řádky
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce se sloupci a řádky
linktitle: Práce se sloupci a řádky
description: "Pracující s částmi tabulek řádků, sloupců a buněk Python. Upřesnit řádek záhlaví Python."
type: docs
weight: 30
url: /cs/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Pro větší kontrolu nad tím, jak stoly fungují, naučte se manipulovat sloupy a řádky.

## Nalezení indexu prvků tabulky

Sloupce, řádky a buňky jsou řízeny přístupem k vybranému uzelu dokumentu svým indexem. Nalezení indexu jakéhokoliv uzlu zahrnuje shromažďování všech dětských uzlů typu prvku z rodičovského uzlu, a pak pomocí [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) způsob, jak najít index požadovaného uzlu ve sbírce.

### Nalezení indexu tabulky v dokumentu

Někdy budete muset změnit konkrétní tabulku v dokumentu. Chcete-li to udělat, můžete odkazovat na tabulku podle jejího indexu.

Následující příklad kódu ukazuje, jak získat index tabulky v dokumentu:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Nalezení indexu řádku v tabulce

Podobně budete muset provést změny konkrétního řádku ve vybrané tabulce. Chcete-li to udělat, můžete také odkazovat na řádek podle jeho indexu.

Následující příklad kódu ukazuje, jak získat index řádku v tabulce:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Nalezení indexu buňky v řadě

Nakonec možná budete muset provést změny v určité buňce a můžete to udělat i pomocí indexu buněk.

Následující příklad kódu ukazuje, jak získat index buňky v řádku:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Práce se sloupy

V Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Uzel se skládá z [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) uzly a pak [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) uzly. Proto v `Document` Model objektu Aspose.Words, stejně jako ve Word dokumenty, neexistuje pojem sloupce.

Podle návrhu tabulky řádků v Microsoft Word a Aspose.Words jsou zcela nezávislé a základní vlastnosti a operace jsou obsaženy pouze v řádcích a buňkách tabulky. To dává tabulek schopnost mít některé zajímavé atributy:

- Každý řádek tabulky může mít úplně jiný počet buněk
- Vertikálně mohou mít buňky v každé řadě různé šířky
- Je možné spojit tabulky s různými formáty řádků a počtem buněk

Veškeré operace prováděné na sloupcích jsou ve skutečnosti "krátké zkratky," které provádějí operaci kolektivně měnícími se řádkovými buňkami tak, aby to vypadalo, že jsou aplikovány na sloupce. To znamená, že můžete provádět operace na sloupcích jednoduše iterací nad stejným indexem buňky řádku tabulky.

Následující příklad kódu zjednodušuje tyto operace prokázáním třídy fasády, která shromažďuje buňky, které tvoří "sloupec" tabulky:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

Následující příklad kódu ukazuje, jak vložit prázdný sloupec do tabulky:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

Následující příklad kódu ukazuje, jak odstranit sloupec z tabulky v dokumentu:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Upřesnit řádky jako řádky záhlaví

První řádek v tabulce můžete zopakovat jako řádek záhlaví pouze na první stránce nebo na každé stránce, pokud je tabulka rozdělena do několika. In Aspose.Words, můžete opakovat řádek záhlaví na každé stránce pomocí [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/) majetek.

Můžete také označit více řádků záhlaví, pokud jsou tyto řádky umístěny jeden za druhým na začátku tabulky. K tomu musíte použít **HeadingFormat** vlastnosti těchto řádků.

{{% alert color="primary" %}}

Všimněte si, že Header Rows nepracují v hnízdě stolů. Pokud máte stůl uvnitř jiného stolu, toto nastavení nebude mít žádný vliv. Je to omezení Microsoft Word to nedovoluje, ne Aspose.Words.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit tabulku obsahující řádky záhlaví, které se opakují na následujících stránkách:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Udržet tabulky a řádky od prolomení napříč stránkami

Existují časy, kdy by obsah tabulky neměl být rozdělen přes stránky. Je-li například název nad tabulkou, měl by být název a tabulka vždy na stejné stránce, aby byl zachován správný vzhled.

Existují dvě samostatné techniky, které jsou užitečné pro dosažení této funkce:

- `Allow row break across pages`, který se použije pro řádky tabulky
- `Keep with next`, který se použije na odstavce v tabulkách

Ve výchozím nastavení jsou výše uvedené vlastnosti zakázány.

### Udržet řadu od prolomení napříč stránkami

To zahrnuje omezení obsahu uvnitř buněk řady od rozdělení přes stránku. In Microsoft Word, to lze nalézt v Tabulce Vlastnosti jako možnost ¶Allow řádek prolomit přes stránky ̈. In Aspose.Words Toto je nalezeno pod [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) objekt a [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) jako majetek [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

Následující příklad kódu ukazuje, jak zakázat rozbíjení řádků napříč stránkami pro každý řádek v tabulce:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Udržet stůl od prolomení napříč stránkami

Abychom zabránili rozdělení tabulky napříč stránkami, musíme upřesnit, že chceme, aby obsah obsažený v tabulce zůstal pohromadě.

Abych to udělal, Aspose.Words používá metodu, která umožňuje uživatelům vybrat tabulku a povolit [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) parametr do true pro každý odstavec uvnitř stolních buněk. Výjimkou je poslední odstavec tabulky, který by měl být stanoven false.

Následující příklad kódu ukazuje, jak nastavit tabulku, aby zůstali pohromadě na stejné stránce:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}
