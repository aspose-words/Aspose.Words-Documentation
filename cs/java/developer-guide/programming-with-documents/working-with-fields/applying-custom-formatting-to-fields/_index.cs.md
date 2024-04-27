---
title: Použít vlastní formátování na pole
second_title: Aspose.Words místo Java
articleTitle: Použít vlastní formátování na pole
linktitle: Použít vlastní formátování na pole
description: "Formátovat a vyhodnocovat výsledky polí pomocí Java."
type: docs
weight: 40
url: /cs/java/applying-custom-formatting-to-fields/
---

Uživatelé někdy musí aplikovat vlastní formátování na pole. V tomto článku se podíváme na několik příkladů toho, jak se to dá dělat.

Chcete-li se dozvědět více možností, viz úplný seznam vlastností každého typu pole v odpovídající třídě.

## Jak aplikovat vlastní formátování na výsledek pole

Aspose.Words poskytuje API pro vlastní formátování výsledků pole. Můžete implementovat [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) rozhraní pro kontrolu toho, jak je výsledek pole formátován. Můžete použít numerický formát switch, tj. \# "#.##," switch formátu date/time, tj. \@ "dd.MM.rrrr," a switch formátu čísel, tj. \* Ordinal.

Následující příklad kódu ukazuje, jak použít vlastní formátování pro výsledek pole.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Jak hodnotit `IF` stav

Pokud chcete hodnotit `IF` stav po mail merge, můžete použít [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) metoda, která okamžitě vrací výsledek hodnocení výrazu.

Následující příklad kódu ukazuje, jak používat tuto metodu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Jak aplikovat vlastní formátování na časové pole

Výchozí Aspose.Words aktualizace `TIME` pole s aktuální kulturou krátkého času. Pokud chcete formátovat `TIME` pole podle vašeho požadavku, můžete dosáhnout tím, že [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) rozhraní.

Následující příklady kódů ukazují, jak aplikovat vlastní formátování na `TIME` pole:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
