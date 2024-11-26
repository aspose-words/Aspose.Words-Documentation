---
title: Práce se sloupci a řádky v C++
second_title: Aspose.Words pro C++
articleTitle: Práce se sloupci a řádky
linktitle: Práce se sloupci a řádky
description: "Práce s částmi tabulky-řádky, sloupce a buňky pomocí C++. Zadejte Řádek Záhlaví C++."
type: docs
weight: 30
url: /cs/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Chcete-li získat větší kontrolu nad tím, jak tabulky fungují, přečtěte si, jak manipulovat se sloupci a řádky.

## Najděte Index prvku tabulky

Sloupce, řádky a buňky jsou spravovány přístupem k vybranému uzlu dokumentu podle jeho indexu. Nalezení indexu libovolného uzlu zahrnuje shromáždění všech podřízených uzlů typu prvku z nadřazeného uzlu a poté pomocí metody [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) vyhledejte index požadovaného uzlu v kolekci.

### Vyhledání indexu tabulky v dokumentu

Někdy možná budete muset provést změny v konkrétní tabulce v dokumentu. Chcete-li to provést, můžete odkazovat na tabulku podle jejího indexu.

Následující příklad kódu ukazuje, jak načíst index tabulky v dokumentu:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Najděte Index řádku v tabulce {#find-the-index-of-a-row-in-a-table}

Podobně možná budete muset provést změny v konkrétním řádku ve vybrané tabulce. Chcete-li to provést, můžete také odkazovat na řádek podle jeho indexu.

Následující příklad kódu ukazuje, jak načíst index řádku v tabulce:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Najděte Index buňky v řádku {#find-the-index-of-a-cell-in-a-row}

Nakonec možná budete muset provést změny v konkrétní buňce a můžete to provést také indexem buněk.

Následující příklad kódu ukazuje, jak načíst index buňky v řádku:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Práce se sloupci

V modelu objektu Aspose.Words dokumentu (DOM) se uzel [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) skládá z uzlů [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) a poté uzlů [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). V objektovém modelu `Document` Aspose.Words, stejně jako v dokumentech Word, tedy neexistuje koncept sloupce.

Podle návrhu jsou řádky tabulky v Microsoft Word a Aspose.Words zcela nezávislé a základní vlastnosti a operace jsou obsaženy pouze v řádcích a buňkách tabulky. To dává tabulkám možnost mít některé zajímavé atributy:

- Každý řádek tabulky může mít zcela jiný počet buněk
- Vertikálně mohou mít buňky každého řádku různé šířky
- Je možné spojit tabulky s různými formáty řádků a počtem buněk

Jakékoli operace prováděné na sloupcích jsou ve skutečnosti "zkratky", které provádějí operaci kolektivní změnou buněk řádků takovým způsobem, že to vypadá, že se aplikují na sloupce. To znamená, že můžete provádět operace se sloupci jednoduše iterací přes stejný index buněk řádku tabulky.

Následující příklad kódu zjednodušuje takové operace prokázáním třídy fasád, která shromažďuje buňky, které tvoří "sloupec" tabulky:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

Následující příklad kódu ukazuje, jak vložit prázdný sloupec do tabulky:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

Následující příklad kódu ukazuje, jak odebrat sloupec z tabulky v dokumentu:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Určete řádky jako řádky záhlaví

Můžete se rozhodnout opakovat první řádek v tabulce jako řádek záhlaví pouze na první stránce nebo na každé stránce, pokud je tabulka rozdělena na několik. V Aspose.Words můžete opakovat řádek záhlaví na každé stránce pomocí vlastnosti [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/).

Můžete také označit více řádků záhlaví, pokud jsou tyto řádky umístěny jeden po druhém na začátku tabulky. Chcete-li to provést, musíte na tyto řádky použít vlastnosti **HeadingFormat**.

{{% alert color="primary" %}}

Všimněte si, že řádky záhlaví nefungují ve vnořených tabulkách. To znamená, že pokud máte tabulku uvnitř jiné tabulky, toto nastavení nebude mít žádný účinek. Je to omezení Microsoft Word, které to neumožňuje, ne Aspose.Words.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit tabulku, která obsahuje řádky záhlaví, které se opakují na následujících stránkách:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Zabraňte lámání tabulek a řádků napříč stránkami

Jsou chvíle, kdy by obsah tabulky neměl být rozdělen mezi stránky. Pokud je například název nad tabulkou, měl by být název a tabulka vždy drženy pohromadě na stejné stránce, aby byl zachován správný vzhled.

K dosažení této funkce jsou užitečné dvě samostatné techniky:

- `Allow row break across pages`, který se použije na řádky tabulky
- `Keep with next`, který se použije na odstavce v buňkách tabulky

Ve výchozím nastavení jsou výše uvedené vlastnosti zakázány.

### Zabraňte lámání řádku mezi stránkami {#keep-a-row-from-breaking-across-pages}

To zahrnuje omezení rozdělení obsahu uvnitř buněk řádku na stránku. V Microsoft Word to lze nalézt pod vlastnostmi tabulky jako možnost "Povolit zalomení řádku mezi stránkami". V Aspose.Words se to nachází pod [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) objektem [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) jako vlastnost [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

Následující příklad kódu ukazuje, jak zakázat lámání řádků napříč stránkami pro každý řádek v tabulce:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Zabraňte rozbití tabulky mezi stránkami {#keep-a-table-from-breaking-across-pages}

Abychom zabránili rozdělení tabulky mezi stránky, musíme určit, že chceme, aby obsah obsažený v tabulce zůstal pohromadě.

Chcete-li to provést, Aspose.Words používá metodu, která umožňuje uživatelům vybrat tabulku a povolit parametr [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) na hodnotu true pro každý odstavec v buňkách tabulky. Výjimkou je poslední odstavec v tabulce, který by měl být nastaven na hodnotu false.

Následující příklad kódu ukazuje, jak nastavit tabulku tak, aby zůstala pohromadě na stejné stránce:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
