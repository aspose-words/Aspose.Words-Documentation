---
title: Jak vytvořit stůl z `DataTable` tro C#
second_title: Aspose.Words místo .NET
articleTitle: Postavit stůl z `DataTable`
linktitle: Postavit stůl z `DataTable`
description: "Příklad vyplnění tabulky dokumentů z externí databáze pomocí C#."
type: docs
weight: 120
url: /cs/net/how-to-build-a-table-from-a-datatable/
---

Vaše aplikace často vytáhne data z databáze a uloží je ve formě **DataTable**. Tyto údaje můžete snadno vložit do dokumentu jako novou tabulku a rychle použít formátování do celé tabulky.

{{% alert color="primary" %}}

Všimněte si, že preferovaný způsob vložení dat z **DataTable** do tabulky dokumentů pomocí [Mail Merge s regiony](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). Technika uvedená v tomto článku je navržena pouze tehdy, pokud nejste schopni vytvořit vhodnou šablonu před rukou pro sloučení dat s, jinými slovy, pokud požadujete, aby se vše stalo programově.

{{% /alert %}}

Použití Aspose.Words, lze snadno získat data z databáze a uložit je jako tabulku:

1. Vytvořit nový **DocumentBuilder** objekt na vašem **Document**.
1. Spustit novou tabulku pomocí **DocumentBuilder**.
1. Pokud chceme vložit jména každého z našich sloupců **DataTable** jako řádek záhlaví pak projede každý datový sloupec a zapíše jména sloupců do řádku v tabulce.
1. Iterovat každý **DataRow** v **DataTable**:
   1. Iterace prostřednictvím každého objektu v **DataRow**.
   1. Vložit objekt do dokumentu pomocí **DocumentBuilder**. Použitá metoda závisí na typu vloženého objektu např. **DocumentBuilder.Writeln** pro text a **DocumentBuilder.InsertImage** pro pole byte, které představuje obrázek.
   1. Na konci zpracování **DataRow** Také končí řádek vytvořený **DocumentBuilder** použitím **DocumentBuilder.EndRow**.
1. Jednou ze všech řad **DataTable** byly zpracovány dokončit tabulku voláním **DocumentBuilder.EndTable**.
1. Konečně můžeme nastavit požadovaný styl tabulky pomocí jedné z příslušných vlastností tabulky, jako je **Table.StyleIdentifier** automaticky aplikovat formátování do celé tabulky.

• **ImportTableFromDataTable** metoda přijímá a **DocumentBuilder** objekt, **DataTable** obsahující údaje a vlajku, která stanoví, zda název sloupce **DataTable** jsou zahrnuty v horní části stolu. Tato metoda vytváří tabulku z těchto parametrů pomocí současné polohy a formátování stavitele. Poskytuje metodu pro import dat z `DataTable` a vložte ji do nové tabulky pomocí DocumentBuilder.

Následující údaje v našich **DataTable** se používá v tomto příkladu:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Následující příklad kódu ukazuje, jak provést výše uvedený algoritmus v Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Metoda pak může být snadno volána pomocí vašeho **DocumentBuilder** a data.

Následující příklad kódu ukazuje, jak importovat data z `DataTable` a vložte ji do nové tabulky do dokumentu:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
