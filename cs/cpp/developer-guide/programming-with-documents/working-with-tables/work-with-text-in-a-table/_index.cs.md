---
title: Práce s textem v tabulce
second_title: Aspose.Words pro C++
articleTitle: Práce s textem v tabulce
linktitle: Práce s textem v tabulce
description: "Nahraďte text v tabulce v C++. Extrahujte prostý Text z tabulky nebo buňky pomocí C++."
type: docs
weight: 60
url: /cs/cpp/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Jak již bylo zmíněno v předchozích článcích, tabulka obvykle obsahuje prostý text, i když do buněk tabulky lze umístit jiný obsah, jako jsou obrázky nebo dokonce jiné tabulky.

Přidání textu nebo jiného obsahu do tabulky se provádí pomocí příslušných metod třídy [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) a je popsáno v článku **"Create a Table"**. V tomto článku budeme hovořit o tom, jak pracovat s textem v již existující tabulce.

## Nahrazení textu v tabulce

Tabulka, stejně jako jakýkoli jiný uzel v Aspose.Words, má přístup k objektu [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). Pomocí objektu rozsah tabulky můžete nahradit text v tabulce.

V současné době je podporována možnost používat speciální znaky při nahrazování, takže je možné nahradit existující text textem s více odstavci. Chcete-li to provést, musíte použít speciální metaznaky popsané v odpovídající metodě [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/).

{{% alert color="primary" %}}

Nahrazení textu by se obvykle mělo provádět na úrovni buňky (na buňku) nebo na úrovni odstavce.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nahradit všechny instance řetězce textu v buňkách celé tabulky:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Extrahujte prostý Text z tabulky nebo buňky

Pomocí objektu **Range** můžete také volat metody v celém rozsahu tabulky a extrahovat tabulku jako prostý text. Chcete-li to provést, použijte vlastnost [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

Následující příklad kódu ukazuje, jak vytisknout rozsah textu tabulky:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

Stejná technika se používá pouze k extrakci obsahu z jednotlivých buněk tabulky.

Následující příklad kódu ukazuje, jak vytisknout textový rozsah prvků řádků a tabulek:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Práce s alternativním textem tabulky

Microsoft Word tabulky mají `table title` a `table description`, které poskytují alternativní textovou reprezentaci informací obsažených v tabulce.

V Aspose.Words můžete také přidat název a popis tabulky pomocí vlastností [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) a [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Tyto vlastnosti mají význam pro DOCX dokumenty odpovídající ISO / IEC 29500. Při ukládání ve formátech starších než ISO/IEC 29500 jsou tyto vlastnosti ignorovány.

Následující příklad kódu ukazuje, jak nastavit vlastnosti názvu a popisu tabulky:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}
