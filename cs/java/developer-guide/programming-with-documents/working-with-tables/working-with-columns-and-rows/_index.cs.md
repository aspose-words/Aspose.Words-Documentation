---
title: Práce se sloupci a řádky Java
second_title: Aspose.Words místo Java
articleTitle: Práce se sloupci a řádky
linktitle: Práce se sloupci a řádky
description: "Pracující s částmi tabulek řádků, sloupců a buněk Java. Upřesnit řádek záhlaví Java."
type: docs
weight: 30
url: /cs/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Pro větší kontrolu nad tím, jak stoly fungují, se naučte manipulovat sloupy a řádky.

## Najít index prvků tabulky

Sloupce, řádky a buňky jsou řízeny přístupem k vybranému uzelu dokumentu svým indexem. Nalezení indexu jakéhokoliv uzlu zahrnuje shromažďování všech dětských uzlů typu prvku z rodičovského uzlu, a pak pomocí [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) metoda pro nalezení indexu požadovaného uzelu v kolekci.

### Najít index tabulky v dokumentu

Někdy je třeba změnit konkrétní tabulku v dokumentu. Chcete-li to udělat, můžete odkazovat na tabulku podle jejího indexu.

Následující příklad kódu ukazuje, jak získat index tabulky v dokumentu:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Nalezení indexu řádku v tabulce

Podobně budete muset provést změny konkrétního řádku ve vybrané tabulce. Chcete-li to udělat, můžete také odkazovat na řádek podle jeho indexu.

Následující příklad kódu ukazuje, jak získat index řádku v tabulce:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Nalezení indexu buňky v řadě

Nakonec možná budete muset provést změny v konkrétní buňce, a můžete to udělat také pomocí indexu buněk.

Následující příklad kódu ukazuje, jak získat index buňky v řádku:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Práce se sloupy

V Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Uzel se skládá z [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) uzly a pak [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) uzly. Proto v `Document` Model objektu Aspose.Words, jako v dokumentu Word, neexistuje pojem sloupce.

Podle návrhu tabulky řádků v Microsoft Word a Aspose.Words jsou zcela nezávislé a základní vlastnosti a operace jsou obsaženy pouze v řádcích a buňkách tabulky. To dává tabulek schopnost mít některé zajímavé atributy:

- Každý řádek tabulky může mít úplně jiný počet buněk
- Vertikálně mohou mít buňky v každé řadě různou šířku
- Je možné spojit tabulky s různými formáty řádku a počtem buněk

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Veškeré operace prováděné na sloupcích jsou ve skutečnosti "krátké zkratky," které provádějí operaci kolektivně měnícími se řádkovými buňkami tak, aby to vypadalo, že jsou aplikovány na sloupce. To znamená, že můžete provádět operace na sloupcích jednoduše iterací nad stejným indexem buňky řádku tabulky.

Následující příklad kódu tyto operace zjednodušuje prokázáním třídy fasády, která shromažďuje buňky, které tvoří "sloupec" tabulky:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Následující příklad kódu ukazuje, jak vložit prázdný sloupec do tabulky:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Následující příklad kódu ukazuje, jak odstranit sloupec z tabulky v dokumentu:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Upřesnit řádky jako řádky záhlaví

První řádek tabulky můžete zopakovat jako řádek záhlaví pouze na první stránce nebo na každé stránce, pokud je tabulka rozdělena do několika. In Aspose.Words, můžete opakovat řádek záhlaví na každé stránce pomocí [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) majetek.

Můžete také označit více řádků záhlaví, pokud jsou tyto řádky umístěny jeden za druhým na začátku tabulky. K tomu musíte použít **HeadingFormat** vlastnosti těchto řádků.

{{% alert color="primary" %}}

Všimněte si, že Header Rows nepracují v hnízdě stolů. Tedy pokud máte stůl uvnitř jiného stolu, toto nastavení nebude mít žádný účinek. Je to omezení Microsoft Word který to neumožňuje, ne Aspose.Words.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vytvořit tabulku, která obsahuje řádky záhlaví, které se opakují na následujících stránkách:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Udržet tabulky a řádky od prolomení napříč stránkami {#keep-tables-and-rows-from-breaking-across-pages}

Jsou chvíle, kdy by obsah tabulky neměl být rozdělen přes stránky. Například pokud je titul nad tabulkou, měl by být název a tabulka vždy na stejné stránce, aby se zachoval správný vzhled.

Existují dvě samostatné techniky, které jsou užitečné pro dosažení této funkce:

- `Allow row break across pages`, která se použije pro řádky tabulky
- `Keep with next`, který se použije na odstavce v tabulkách

Ve výchozím nastavení jsou výše uvedené vlastnosti zakázány.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Udržet řadu od prolomení napříč stránkami {#keep-a-row-from-breaking-across-pages}

To zahrnuje omezení obsahu uvnitř buněk řady od rozdělení přes stránku. In Microsoft Word, to lze nalézt v Tabulce Vlastnosti jako možnost ¶Allow row to break across page'. In Aspose.Words Toto je nalezeno pod [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objekt a [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) jako majetek [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Následující příklad kódu ukazuje, jak zakázat rozbíjení řádků napříč stránkami pro každý řádek v tabulce:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Udržet stůl od prolomení napříč stránkami {#keep-a-table-from-breaking-across-pages}

Abychom zastavili rozdělení tabulky napříč stránkami, musíme upřesnit, že chceme, aby obsah obsažený v tabulce zůstal pohromadě.

Abych to udělal, Aspose.Words používá metodu, která umožňuje uživatelům vybrat tabulku a povolit [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parametr do true pro každý odstavec uvnitř buněk tabulky. Výjimkou je poslední odstavec tabulky, který by měl být stanoven false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Následující příklad kódu ukazuje, jak nastavit tabulku, aby zůstali pohromadě na stejné stránce:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
