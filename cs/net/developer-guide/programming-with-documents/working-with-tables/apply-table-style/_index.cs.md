---
title: Změnit styl tabulky v textových dokumentech
second_title: Aspose.Words místo .NET
articleTitle: Použít stolní styl
linktitle: Použít stolní styl
description: "Pokročilé formátování tabulky C#. Vytvořit styl tabulky pomocí C#. Použít styl tabulky C#."
type: docs
weight: 80
url: /cs/net/working-with-tablestyle/
timestamp: 2024-02-02-12-07-36
---

Styl tabulky definuje soubor formátování, který lze snadno aplikovat na tabulku. Formátování jako jsou hranice, stínování, zarovnání a písmo lze nastavit ve stylu tabulky a aplikovat na mnoho tabulek pro konzistentní vzhled.

Aspose.Words podporuje použití stylu tabulky na tabulku a také čtení vlastností jakéhokoli stylu tabulky. Styly stolů jsou během nakládky a ukládání zachovány následujícími způsoby:

- Stolní styly ve formátech DOCX a WordML jsou zachovány při načítání a ukládání do těchto formátů
- Styly tabulky jsou zachovány při načítání a ukládání ve formátu DOC (ale ne do jiného formátu)
- Při exportu do jiných formátů, vykreslování nebo tisku jsou styly tabulky rozšířeny na přímý formátování v tabulce, takže všechny formátování je zachováno

## Vytvořit stolní styl

Uživatel může vytvořit nový styl a přidat jej do kolekce stylů. • [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/) metoda se používá k vytvoření nového stylu tabulky.

Následující příklad kódu ukazuje, jak vytvořit nový uživatelsky definovaný styl tabulky:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Kopírovat stávající stolní styl

V případě potřeby můžete zkopírovat styl tabulky, který již existuje v určitém dokumentu do vaší sbírky stylu pomocí `AddCopy` metoda.

Je důležité vědět, že s tímto kopírováním jsou také kopírovány propojené styly.

Následující příklad kódu ukazuje, jak importovat styl z jednoho dokumentu do jiného dokumentu:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Použít stávající stolní styl

Aspose.Words poskytuje [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) zděděné po [Style](https://reference.aspose.com/words/net/aspose.words/style/) třída. **TableStyle** usnadňuje uživateli aplikovat různé možnosti stylu, jako je stínování, vycpávání, odsazení, [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) a [Font](https://reference.aspose.com/words/net/aspose.words/style/font/), atd.

Kromě toho Aspose.Words poskytuje [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) třída a několik vlastností `Table` třída k určení, s jakým stylem tabulky budeme pracovat: [Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/), a [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words také poskytuje [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) třída, která představuje speciální formátování aplikované na některé oblasti tabulky s přiřazeným způsobem tabulky, a [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/) který představuje kolekci **ConditionalStyle** objekty. Tento soubor obsahuje stálou sadu položek představujících jednu položku pro každou hodnotu [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/) typ výčtu. • **ConditionalStyleType** výčtu definuje všechny možné plochy tabulky, do kterých lze definovat podmíněný formátování ve stylu tabulky.

V tomto případě lze definovat podmínečné formátování pro všechny možné plochy tabulky definované pod Typem výčtu pod podmínkouStyleType.

Následující příklad kódu ukazuje, jak definovat podmíněný formát pro řádek záhlaví tabulky:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

Můžete si také vybrat, které části tabulky použít styly, jako je první sloupec, poslední sloupec, pruhované řádky. Jsou uvedeny v [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) počet a jsou aplikovány prostřednictvím [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) majetek. • **TableStyleOptions** počet umožňuje trochu kombinovat tyto funkce.

Následující příklad kódu ukazuje, jak vytvořit novou tabulku se stylem tabulky:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Následující obrázky ukazují zastoupení **Table Styles** tro Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## Vzít formátování z stolního stylu a aplikovat jej jako přímý formát

Aspose.Words také poskytuje [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) způsob, jak vzít formátování nalezené na stylu tabulky a rozšiřuje ji na řádky a buňky tabulky jako přímý formátování. Zkuste kombinovat formátování se stylem tabulky a buňky.

{{% alert color="primary" %}}

Tato metoda nepřepíše žádné jiné formátování, které již bylo použito v tabulce přes řádek nebo formát buňky.

{{% /alert %}}

Následující příklad kódu ukazuje, jak rozšířit formátování ze stylů na řádky tabulky a buňky jako přímý formátování:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
