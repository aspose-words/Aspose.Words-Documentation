---
title: Změna stylu tabulky v dokumentech Word
second_title: Aspose.Words pro C++
articleTitle: Použít Styl Tabulky
linktitle: Použít Styl Tabulky
description: "Pokročilé formátování tabulky C++. Vytvořte styl tabulky pomocí C++. Použijte styl tabulky C++."
type: docs
weight: 80
url: /cs/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Styl tabulky definuje sadu formátování, kterou lze snadno použít na tabulku. Formátování, jako jsou ohraničení, stínování, zarovnání a písmo, lze nastavit ve stylu tabulky a použít na mnoho tabulek pro konzistentní vzhled.

Aspose.Words podporuje použití stylu tabulky na tabulku a také čtení vlastností libovolného stylu tabulky. Styly tabulek jsou zachovány během načítání a ukládání následujícími způsoby:

- Styly tabulek ve formátech DOCX a WordML jsou zachovány při načítání a ukládání do těchto formátů
- Styly tabulek jsou zachovány při načítání a ukládání ve formátu DOC (ale ne do jiného formátu)
- Při exportu do jiných formátů, Vykreslování nebo tisku jsou styly tabulky rozšířeny o přímé formátování v tabulce, takže je zachováno veškeré formátování

## Vytvoření stylu tabulky

Uživatel může vytvořit nový styl a přidat jej do kolekce stylů. Metoda [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) se používá k vytvoření nového stylu tabulky.

Následující příklad kódu ukazuje, jak vytvořit nový styl tabulky definovaný uživatelem:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Zkopírujte existující styl tabulky

V případě potřeby můžete zkopírovat styl tabulky, který již v určitém dokumentu existuje, do své kolekce stylů pomocí metody `AddCopy`.

Je důležité vědět, že při tomto kopírování se také kopírují propojené styly.

Následující příklad kódu ukazuje, jak importovat styl z jednoho dokumentu do jiného dokumentu:

EXAMPLE

## Použití existujícího stylu tabulky

Aspose.Words poskytuje [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) zděděnou z třídy [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** umožňuje uživateli použít různé možnosti stylu, jako je stínování, odsazení, odsazení, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) a [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) atd.

Kromě toho Aspose.Words poskytuje třídu [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) a několik vlastností třídy `Table` pro určení stylu tabulky, se kterým budeme pracovat: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), a [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words také poskytuje třídu [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/), která představuje speciální formátování aplikované na určitou oblast tabulky s přiřazeným stylem tabulky, a [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/), která představuje kolekci objektů **ConditionalStyle**. Tato kolekce obsahuje trvalou sadu položek představujících jednu položku pro každou hodnotu typu výčtu [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). Výčet **ConditionalStyleType** definuje všechny možné oblasti tabulky, na které lze podmíněné formátování definovat ve stylu tabulky.

V tomto případě lze podmíněné formátování definovat pro všechny možné oblasti tabulky definované pod typem výčtu ConditionalStyleType.

Následující příklad kódu ukazuje, jak definovat podmíněné formátování pro řádek záhlaví tabulky:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Můžete si také vybrat, na které části tabulky použijete styly, například první sloupec, poslední sloupec, pruhované řádky. Jsou uvedeny ve výčtu [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) a používají se prostřednictvím vlastnosti [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). Výčet **TableStyleOptions** umožňuje bitovou kombinaci těchto funkcí.

Následující příklad kódu ukazuje, jak vytvořit novou tabulku s použitým stylem tabulky:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Obrázky níže ukazují reprezentaci **Table Styles** v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Vezměte formátování ze stylu tabulky a použijte jej jako přímé formátování

Aspose.Words také poskytuje metodu [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) pro formátování nalezené ve stylu tabulky a rozšiřuje jej na řádky a buňky tabulky jako přímé formátování. Zkuste kombinovat formátování se stylem tabulky a stylem buňky.

{{% alert color="primary" %}}

Tato metoda nepřepíše žádné jiné formátování, které již bylo použito v tabulce prostřednictvím formátu řádku nebo buňky.

{{% /alert %}}

Následující příklad kódu ukazuje, jak rozbalit formátování ze stylů na řádky a buňky tabulky jako přímé formátování:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
