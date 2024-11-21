---
title: Práce s textem v tabulce
second_title: Aspose.Words místo Java
articleTitle: Práce s textem v tabulce
linktitle: Práce s textem v tabulce
description: "Nahradit text v tabulce v Java. Extrahovat prostý text z tabulky nebo buňky pomocí Java."
type: docs
weight: 60
url: /cs/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Jak je uvedeno v předchozích článcích, tabulka obvykle obsahuje prostý text, i když jiný obsah, jako jsou obrázky nebo dokonce jiné tabulky mohou být umístěny v tabulkách.

Přidávání textu nebo jiného obsahu do tabulky se provádí vhodnými metodami [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) třída a je popsána v **"Vytvořit stůl"** článek. V tomto článku budeme hovořit o tom, jak pracovat s textem v již existující tabulce.

## Nahradit text v tabulce

Stůl, jako každý jiný uzel v Aspose.Words, má přístup k [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) objekt. Pomocí objektu rozsahu tabulky můžete text nahradit v tabulce.

V současné době je podporována schopnost používat zvláštní znaky při výměně, takže je možné nahradit existující text text vícebodovým textem. K tomu je třeba použít speciální metaznaky popsané v odpovídajících [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) metoda.

{{% alert color="primary" %}}

Typicky by se měla výměna textu provádět na úrovni buňky (na buňku) nebo na úrovni odstavce.

{{% /alert %}}

Následující příklad kódu ukazuje, jak nahradit všechny případy řetězce textu v buňkách celé tabulky:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Extrahovat prostý text z tabulky

Použití **Range** objekt, můžete také volat metody na celém rozsahu tabulky a extrahovat tabulku jako prostý text. K tomu použijte [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) majetek

Následující příklad kódu ukazuje, jak tisknout rozsah textu tabulky:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

Stejná technika se používá pouze k získání obsahu z jednotlivých stolních buněk.

Následující příklad kódu ukazuje, jak tisknout textovou řadu prvků řádku a tabulky:

{{% /alert %}}

Následující příklad kódu ukazuje, jak tisknout textový rozsah prvků řádku a tabulky.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Práce s alternativním textem tabulky

Microsoft Word tabulky mají `table title` a `table description` které poskytují alternativní textové znázornění informací obsažených v tabulce.

In Aspose.Words, můžete také přidat název tabulky a popis pomocí [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) a [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) vlastnosti. Tyto vlastnosti mají význam pro dokumenty DOCX odpovídající ISO/IEC 29500. Při ukládání ve formátech dříve než ISO/IEC 29500, tyto vlastnosti jsou ignorovány.

Následující příklad kódu ukazuje, jak nastavit vlastnosti názvu a popisu tabulky:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
