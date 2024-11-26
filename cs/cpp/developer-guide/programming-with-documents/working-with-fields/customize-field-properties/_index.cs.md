---
title: Přizpůsobení vlastností pole v C++
second_title: Aspose.Words pro C++
articleTitle: Přizpůsobení Vlastností Pole
linktitle: Přizpůsobení Vlastností Pole
description: "Přečtěte si, jak přizpůsobit vlastnosti pole v C++. Přejmenujte slučovací pole nebo Získejte výsledky pro pole bez oddělovacího uzlu v C++."
type: docs
weight: 27
url: /cs/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words poskytuje možnost programové interakce s různými vlastnostmi pole. V tomto článku se podíváme na několik příkladů, abyste pochopili základní princip práce s vlastnostmi pole. Úplný seznam vlastností pro každý typ pole v odpovídající třídě můžete vidět v [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Aktualizace Vlastností Pole

Někdy uživatelé potřebují změnit hodnotu vlastnosti pole. Například aktualizujte Vlastnost [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) pole `AUTHOR` nebo změňte vlastnost [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) pole `MERGEFIELD`.

Následující příklad kódu ukazuje, jak přejmenovat slučovací pole v dokumentu Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Výsledek Zobrazení Pole

Aspose.Words poskytuje vlastnost pro získání výsledku pole pro pole, která nemají uzel oddělovače polí. Říkáme tomu "falešný výsledek" nebo výsledek zobrazení; Microsoft Word jej zobrazí v dokumentu výpočtem hodnoty pole za běhu, ale v modelu dokumentu taková hodnota není.

Následující příklad kódu ukazuje použití vlastnosti [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
