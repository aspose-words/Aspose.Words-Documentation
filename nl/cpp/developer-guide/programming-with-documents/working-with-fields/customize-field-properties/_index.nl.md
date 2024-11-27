---
title: Veldeigenschappen aanpassen in C++
second_title: Aspose.Words voor C++
articleTitle: Veldeigenschappen Aanpassen
linktitle: Veldeigenschappen Aanpassen
description: "Leer hoe u veldeigenschappen in C++ kunt aanpassen. Hernoem samenvoegvelden of verkrijg resultaten voor velden zonder scheidingsknooppunt in C++."
type: docs
weight: 27
url: /nl/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words biedt de mogelijkheid om programmatisch te interageren met verschillende veldeigenschappen. In dit artikel zullen we een paar voorbeelden bekijken, zodat u het basisprincipe van het werken met veldeigenschappen begrijpt. U kunt de volledige lijst met eigenschappen zien voor elk veldtype in de overeenkomstige klasse in [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Field Property Update

Soms moeten gebruikers de waarde van een veldeigenschap wijzigen. Werk bijvoorbeeld de Eigenschap [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) van het veld `AUTHOR` bij of wijzig de eigenschap [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) van het veld `MERGEFIELD`.

Het volgende codevoorbeeld laat zien hoe u samenvoegvelden in een Word - document hernoemt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Resultaat Veldweergave

Aspose.Words biedt een eigenschap om het resultaat van het veld te verkrijgen voor velden die geen veldscheidingsknooppunt hebben. We noemen dit "vals resultaat" of weergaveresultaat; Microsoft Word geeft het weer in het document door de waarde van het veld on the fly te berekenen, maar er is geen dergelijke waarde in het documentmodel.

Het volgende codevoorbeeld toont het gebruik van [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/) eigenschap:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
