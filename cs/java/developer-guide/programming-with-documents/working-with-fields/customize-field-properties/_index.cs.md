---
title: Přizpůsobit vlastnosti pole
second_title: Aspose.Words místo Java
articleTitle: Přizpůsobit vlastnosti pole
linktitle: Přizpůsobit vlastnosti pole
description: "Naučte se přizpůsobit vlastnosti pole v Java. Přejmenovat pole sloučení nebo získat výsledky pro pole bez oddělovače uzel v Java."
type: docs
weight: 27
url: /cs/java/customize-field-properties/
---

Aspose.Words poskytuje schopnost programově komunikovat s různými vlastnostmi pole. V tomto článku se podíváme na několik příkladů, abyste pochopili základní princip práce s vlastnostmi oboru. Úplný seznam vlastností pro každý typ pole můžete vidět v odpovídající třídě.

## Aktualizace pozemků

Někdy uživatelé potřebují změnit hodnotu vlastnosti pole. Například aktualizovat [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) majetek `AUTHOR` nebo změnit [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) majetek `MERGEFIELD` pole.

Následující příklad kódu ukazuje, jak přejmenovat pole sloučení v dokumentu Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Výsledek zobrazení pole

Aspose.Words poskytuje vlastnost pro získání výsledku pole pro pole, která nemají uzel oddělovače polí. Nazýváme to "falešný výsledek" nebo výsledek zobrazení; MS Word jej zobrazí v dokumentu výpočtem hodnoty pole při letu, ale v modelu dokumentu taková hodnota neexistuje.

Následující příklad kódu ukazuje použití [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
