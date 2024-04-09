---
title: Použít vlastní formátování na pole v C#
second_title: Aspose.Words místo .NET
articleTitle: Použít vlastní formátování na pole
linktitle: Použít vlastní formátování na pole
description: "Formátovat a vyhodnocovat výsledek polí pomocí C#."
type: docs
weight: 40
url: /cs/net/applying-custom-formatting-to-fields/
---

Někdy musí uživatelé aplikovat vlastní formátování na pole. V tomto článku se podíváme na několik příkladů, jak se to dá dělat.

Chcete-li se dozvědět více možností, viz celý seznam vlastností pro každý typ pole v odpovídající třídě v [Název pole](https://reference.aspose.com/words/net/aspose.words.fields/).

## Jak aplikovat vlastní formátování na výsledek pole

Aspose.Words poskytuje API pro vlastní formátování výsledků pole. Můžete implementovat [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) rozhraní pro kontrolu toho, jak je výsledek pole formátován. Můžete použít numerický formát switch, tj. \# "#.##," switch formátu date/time, tj. \@ "dd.MM.rrrr" a switch formátu čísel, tj. \* Ordinal.

Následující příklad kódu ukazuje, jak použít vlastní formátování pro výsledek pole:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Jak hodnotit `IF` stav

Pokud chcete hodnotit `IF` stav po mail merge, můžete použít [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) metoda, která okamžitě vrací výsledek exprese hodnocení.

Následující příklad kódu ukazuje, jak používat tuto metodu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Jak aplikovat vlastní formátování na časové pole

Výchozí Aspose.Words aktualizace `TIME` pole s aktuální kulturou krátký časový formát. Zjistili jsme, že je rozdíl mezi Microsoft Word formátování a .NET/Windows formátování a také mezi různými .NET Framework verze. Pokud chcete formátovat `TIME` pole podle vašeho požadavku, můžete dosáhnout tím, že provádí [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) rozhraní.

Následující příklady kódů ukazují, jak aplikovat vlastní formátování na `TIME` pole:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
