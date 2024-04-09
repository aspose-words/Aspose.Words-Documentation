---
title: Přizpůsobit vlastnosti pole v C#
second_title: Aspose.Words místo .NET
articleTitle: Přizpůsobit vlastnosti pole
linktitle: Přizpůsobit vlastnosti pole
description: "Naučte se přizpůsobit vlastnosti pole v C#. Přejmenovat pole sloučení nebo získat výsledky pro pole bez oddělovače uzel v .NET."
type: docs
weight: 27
url: /cs/net/customize-field-properties/
---

Aspose.Words poskytuje schopnost programově komunikovat s různými vlastnostmi pole. V tomto článku se podíváme na několik příkladů, abyste pochopili základní princip práce s vlastnostmi terénu. Úplný seznam vlastností pro každý typ pole můžete vidět v odpovídající třídě v [Název pole](https://reference.aspose.com/words/net/aspose.words.fields/).

## Aktualizace pozemků

Uživatelé někdy musí změnit hodnotu vlastnosti pole. Například aktualizovat [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) majetek `AUTHOR` nebo změnit [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) majetek `MERGEFIELD` pole.

Následující příklad kódu ukazuje, jak přejmenovat pole sloučení v dokumentu Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Výsledek zobrazení pole

Aspose.Words poskytuje vlastnost k získání výsledku pole pro pole, která nemají uzel oddělovače polí. Nazýváme to "falešný výsledek" nebo výsledek zobrazení; MS Word jej zobrazí v dokumentu výpočtem hodnoty pole při letu, ale v modelu dokumentu taková hodnota neexistuje.

Následující příklad kódu ukazuje použití [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) vlastnost:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
