---
title: Přizpůsobit vlastnosti pole v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Přizpůsobit vlastnosti pole
linktitle: Přizpůsobit vlastnosti pole
description: "Naučte se přizpůsobit vlastnosti pole v Python. Přejmenovat pole sloučení nebo získat výsledky pro pole bez oddělovače uzel v Python via .NET."
type: docs
weight: 27
url: /cs/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words poskytuje schopnost programově komunikovat s různými vlastnostmi pole. V tomto článku se podíváme na několik příkladů, abyste pochopili základní princip práce s vlastnostmi terénu. Úplný seznam vlastností pro každý typ pole můžete vidět v odpovídající třídě v [Modul polí](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Aktualizace pozemků

Uživatelé někdy musí změnit hodnotu vlastnosti pole. Například aktualizovat [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) majetek `AUTHOR` nebo změnit [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) majetek `MERGEFIELD` pole.

Následující příklad kódu ukazuje, jak přejmenovat pole sloučení v dokumentu Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Výsledek zobrazení pole

Aspose.Words poskytuje vlastnost k získání výsledku pole pro pole, která nemají uzel oddělovače polí. Nazýváme to "falešný výsledek" nebo výsledek zobrazení; MS Word jej zobrazí v dokumentu výpočtem hodnoty pole při letu, ale v modelu dokumentu taková hodnota neexistuje.

Následující příklad kódu ukazuje použití [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
