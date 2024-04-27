---
title: Jak vytvořit stůl z `DataTable` v Java
second_title: Aspose.Words místo Java
articleTitle: Postavit stůl z `DataTable`
linktitle: Postavit stůl z `DataTable`
description: "Příklad vyplnění tabulky dokumentů z externí databáze pomocí Java."
type: docs
weight: 130
url: /cs/java/how-to-build-a-table-from-a-datatable/
---

Často vaše aplikace vytáhne data z databáze a uloží je ve formě **DataTable**. Možná budete chtít tato data snadno vložit do dokumentu jako novou tabulku a rychle použít formátování do celé tabulky.

{{% alert color="primary" %}}

Všimněte si, že preferovaný způsob vložení dat z **DataTable** do tabulky dokumentů pomocí [Mail Merge s regiony](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Technika uvedená v tomto článku je navržena pouze tehdy, pokud nejste schopni vytvořit vhodnou šablonu předem pro sloučení dat s, jinými slovy, pokud požadujete, aby se vše stalo programově.

{{% /alert %}}

Použití Aspose.Words, můžete snadno získat data z databáze a uložit je jako tabulku:

1. Vytvořit nový [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) objekt na vašem [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Spustit novou tabulku pomocí [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Pokud chceme vložit jména každého z našich sloupců **DataTable** jako řádek záhlaví pak projede každý datový sloupec a zapíše jména sloupce do řádku v tabulce.
1. Iterovat každý **DataRow** v **DataTable**:
   1. Iterace prostřednictvím každého objektu v **DataRow**.
   1. Vložit objekt do dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Použitá metoda závisí na typu vloženého objektu např. [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) pro text a [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) pro pole byte, které představuje obrázek.
   1. Na konci zpracování datového řádku také končí řádek vytvořený [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) použitím [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Jednou všechny řádky z **DataTable** byly zpracovány dokončit tabulku voláním [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Konečně můžeme nastavit požadovaný styl tabulky pomocí jedné z odpovídajících vlastností tabulky, jako je [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) automaticky aplikovat formátování do celé tabulky.
   Následující údaje v našem **DataTable** se používá v tomto příkladu:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Následující příklad kódu ukazuje, jak provést výše uvedený algoritmus v Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Metoda pak lze snadno volat pomocí vašeho **DocumentBuilder** a data.

Následující příklad kódu ukazuje, jak importovat data z `DataTable` a vložit ji do nové tabulky do dokumentu:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Tabulka uvedená na obrázku níže se vyrábí s použitím výše uvedeného kódu.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
