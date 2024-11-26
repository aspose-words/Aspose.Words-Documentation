---
title: Změnit styl tabulky Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Použít stolní styl
linktitle: Použít stolní styl
description: "Pokročilé formátování tabulky C#. Vytvořit styl tabulky pomocí Python. Použít styl tabulky Python."
type: docs
weight: 80
url: /cs/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Styl tabulky definuje soubor formátování, který lze snadno aplikovat na tabulku. Formátování jako jsou hranice, stínování, zarovnání a písmo lze nastavit ve stylu tabulky a aplikovat na mnoho tabulek pro konzistentní vzhled.

Aspose.Words podporuje použití stylu tabulky na tabulku a také čtení vlastností jakéhokoli stylu tabulky. Styly stolů jsou během nakládky a ukládání zachovány následujícími způsoby:

- Stolní styly ve formátech DOCX a WordML jsou zachovány při načítání a ukládání do těchto formátů
- Styly tabulky jsou zachovány při načítání a ukládání ve formátu DOC (ale ne do jiného formátu)
- Při exportu do jiných formátů, vykreslování nebo tisku jsou styly tabulky rozšířeny na přímý formátování v tabulce, takže všechny formátování je zachováno

## Vytvořit stolní styl

Uživatel může vytvořit nový styl a přidat jej do kolekce stylů. • [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) metoda se používá k vytvoření nového stylu tabulky.

Následující příklad kódu ukazuje, jak vytvořit nový uživatelsky definovaný styl tabulky:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Kopírovat stávající stolní styl

V případě potřeby můžete zkopírovat styl tabulky, který již existuje v určitém dokumentu do vaší sbírky stylu pomocí `AddCopy` metoda.

Je důležité vědět, že s tímto kopírováním jsou také kopírovány propojené styly.

Následující příklad kódu ukazuje, jak importovat styl z jednoho dokumentu do jiného dokumentu:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Použít stávající stolní styl

Aspose.Words poskytuje [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) zděděné po [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) třída. **TableStyle** usnadňuje uživateli aplikovat různé možnosti stylu, jako je stínování, vycpávání, odsazení, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) a [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), atd.

Kromě toho Aspose.Words poskytuje [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) třída a několik vlastností `Table` třída k určení, s jakým stylem tabulky budeme pracovat: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/), a [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words také poskytuje [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) třída, která představuje speciální formátování aplikované na některé oblasti tabulky s přiřazeným způsobem tabulky, a [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) který představuje kolekci **ConditionalStyle** objekty. Tento soubor obsahuje stálou sadu položek představujících jednu položku pro každou hodnotu [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) typ výčtu. • **ConditionalStyleType** výčtu definuje všechny možné plochy tabulky, do kterých lze definovat podmíněný formátování ve stylu tabulky.

V tomto případě lze definovat podmínečné formátování pro všechny možné plochy tabulky definované pod Typem výčtu pod podmínkouStyleType.

Následující příklad kódu ukazuje, jak definovat podmíněný formát pro řádek záhlaví tabulky:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Můžete si také vybrat, které části tabulky použít styly, jako je první sloupec, poslední sloupec, pruhované řádky. Jsou uvedeny v [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) počet a jsou aplikovány prostřednictvím [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) majetek. • **TableStyleOptions** počet umožňuje trochu kombinovat tyto funkce.

Následující příklad kódu ukazuje, jak vytvořit novou tabulku se stylem tabulky:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

Následující obrázky ukazují zastoupení **Table Styles** tro Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Práce se stolními styly

Styl tabulky definuje soubor formátování, který lze snadno aplikovat na tabulku. Formátování jako jsou hranice, stínování, zarovnání a písmo lze nastavit ve stylu tabulky a aplikovat na mnoho tabulek pro konzistentní vzhled.

Aspose.Words podporuje použití stylu tabulky na tabulku a také čtení vlastností jakéhokoli stylu tabulky. Styly stolů jsou během nakládky a ukládání zachovány následujícími způsoby:

- Styly tabulky ve formátech DOCX a WordML jsou zachovány při načítání a ukládání do těchto formátů.
- Styly tabulky jsou zachovány při načítání a ukládání ve formátu DOC (ale ne do jiného formátu).
- Při exportu do jiných formátů, vykreslování nebo tisku se styly stolů rozšiřují na přímé formátování na stůl, takže je zachován formátování.

V současné době nemůžete vytvářet nové stolní styly. Můžete použít pouze vestavěné stolní styly nebo vlastní stolní styly, které již existují v dokumentu k tabulce

## Vzít formátování z stolního stylu a aplikovat jej jako přímý formát

Aspose.Words také poskytuje [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) způsob, jak vzít formátování nalezené na stylu tabulky a rozšiřuje ji na řádky a buňky tabulky jako přímý formátování. Zkuste kombinovat formátování se stylem tabulky a buňky.

{{% alert color="primary" %}}

Tato metoda nepřepíše žádné jiné formátování, které již bylo použito v tabulce přes řádek nebo formát buňky.

{{% /alert %}}

Následující příklad kódu ukazuje, jak rozšířit formátování ze stylů na řádky tabulky a buňky jako přímý formátování:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}
