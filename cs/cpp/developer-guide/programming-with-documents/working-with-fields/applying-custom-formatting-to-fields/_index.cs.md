---
title: Použití vlastního formátování na pole v C++
second_title: Aspose.Words pro C++
articleTitle: Použití vlastního formátování na pole
linktitle: Použití vlastního formátování na pole
description: "Formátujte a vyhodnoťte výsledek polí pomocí C++."
type: docs
weight: 40
url: /cs/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Někdy uživatelé potřebují použít vlastní formátování polí. V tomto článku se podíváme na několik příkladů, jak toho lze dosáhnout.

Chcete-li se dozvědět více možností, podívejte se na úplný seznam vlastností pro každý typ pole v odpovídající třídě v [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Jak použít vlastní formátování na výsledek pole

Aspose.Words poskytuje API pro vlastní formátování výsledku pole. Můžete implementovat rozhraní [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) a řídit, jak je výsledek pole formátován. Můžete použít přepínač číselného formátu, tj. \# "#.##", Přepínač formátu data/času, tj. \@ "dd.MM.yyyy", a přepínač formátu čísla, tj. \* Ordinal.

Následující příklad kódu ukazuje, jak použít vlastní formátování pro výsledek pole:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Jak vyhodnotit `IF` podmínku

Pokud chcete vyhodnotit podmínku `IF` za mail merge, můžete použít metodu [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/), která okamžitě vrátí výsledek vyhodnocení výrazu.

Následující příklad kódu ukazuje, jak tuto metodu použít:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Jak použít vlastní formátování na časové pole

Ve výchozím nastavení Aspose.Words aktualizuje `TIME` pole s aktuálním formátem krátkého času kultury. Pokud chcete formátovat pole `TIME` podle vašeho požadavku,můžete toho dosáhnout implementací rozhraní [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Následující příklady kódu ukazují, jak použít vlastní formátování na pole `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
