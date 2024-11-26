---
title: Práce se stolními styly Java
second_title: Aspose.Words místo Java
articleTitle: Použít stolní styl
linktitle: Použít stolní styl
description: "Pokročilé formátování tabulky Java. Vytvořit styl tabulky pomocí Java. Úvod do pokročilé formátování tabulky, stolní styly pomocí Java."
type: docs
weight: 80
url: /cs/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Styl tabulky definuje soubor formátování, který lze snadno aplikovat na tabulku. Formátování, jako jsou hranice, stínování, zarovnání, a písmo lze nastavit ve stylu tabulky a aplikovat na mnoho tabulek pro konzistentní vzhled.

Aspose.Words podporuje použití stylu tabulky na tabulku a také čtení vlastností jakéhokoli stylu tabulky. Styly stolů jsou během nakládání a ukládání zachovány následujícími způsoby:

- Stolní styly ve formátech DOCX a WordML jsou zachovány při načítání a ukládání do těchto formátů
- Styly tabulky jsou zachovány při načítání a ukládání ve formátu DOC (ale ne do jiného formátu)
- Při exportu do jiných formátů, vykreslování nebo tisku jsou styly tabulky rozšířeny na přímý formátování v tabulce, takže všechny formátování je zachováno

## Vytvořit styl tabulky

Uživatel může vytvořit nový styl a přidat jej do kolekce stylů. The [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) metoda se používá k vytvoření nového stylu tabulky.

Následující příklad kódu ukazuje, jak vytvořit nový uživatelsky definovaný styl tabulky:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Kopírovat stávající stolní styl

V případě potřeby můžete zkopírovat styl tabulky, který již existuje v určitém dokumentu do vaší sbírky stylu pomocí `AddCopy` metoda.

Je důležité vědět, že s tímto kopírováním jsou také kopírovány propojené styly.

Následující příklad kódu ukazuje, jak importovat styl z jednoho dokumentu do jiného dokumentu:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Použít stávající stolní styl

Aspose.Words poskytuje a [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) zděděn po [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) třída. **TableStyle** usnadňuje uživateli aplikovat různé možnosti stylu, jako je stínování, vycpávání, odsazení, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) a [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), atd.

Kromě toho Aspose.Words poskytuje [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) třída a několik vlastností `Table` třída určit, s jakým stylem tabulky budeme pracovat: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), a [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words také poskytuje [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) třída, která představuje speciální formátování aplikované na některé oblasti tabulky s přiřazeným stylu tabulky, a [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) který představuje kolekci **ConditionalStyle** objekty. Tento soubor obsahuje stálou sadu položek představujících jednu položku pro každou hodnotu [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) typ výčtu. The **ConditionalStyleType** počet definuje všechny možné plochy tabulky, do kterých lze definovat podmíněný formátování ve stylu tabulky.

V tomto případě lze definovat podmínečné formátování pro všechny možné plochy tabulky definované pod označením ConditionalStyleType.

Následující příklad kódu ukazuje, jak definovat podmíněný formát pro řádek záhlaví tabulky:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Můžete si také vybrat, které části tabulky použít styly, jako je první sloupec, poslední sloupec, pruhované řádky. Jsou uvedeny v [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) počet a jsou aplikovány prostřednictvím [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) majetek. The **TableStyleOptions** výčtu umožňuje trochu kombinovat tyto funkce.

Následující příklad kódu ukazuje, jak vytvořit novou tabulku se stylem tabulky:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Následující obrázky zobrazují znázornění **Table Styles** v Microsoft Word a jejich odpovídající vlastnosti v Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Vzít formátování z stolního stylu a aplikovat jej jako přímý formátování

Aspose.Words také poskytuje [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) způsob, jak vzít formátování nalezený ve stylu tabulky a rozšiřuje ji na řádky a buňky tabulky jako přímý formátování. Zkuste kombinovat formátování se stylem tabulky a buňky.

{{% alert color="primary" %}}

Tato metoda nepřepíše žádné jiné formátování, které již bylo použito v tabulce přes řádek nebo formát buňky.

{{% /alert %}}

Následující příklad kódu ukazuje, jak rozšířit formátování ze stylů na řádky tabulky a buňky jako přímý formátování:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
