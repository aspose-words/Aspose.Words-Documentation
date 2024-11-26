---
title: Veldeigenschappen aanpassen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Veldeigenschappen aanpassen
linktitle: Veldeigenschappen aanpassen
description: "Leer hoe veldeigenschappen aan te passen in Python. Samenvoegvelden hernoemen of resultaten verkrijgen voor velden zonder scheidingsknooppunt in Python via .NET."
type: docs
weight: 27
url: /nl/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words biedt de mogelijkheid om programmatisch interactie met verschillende veldeigenschappen. In dit artikel zullen we een paar voorbeelden bekijken zodat u het basisprincipe van werken met veldeigenschappen begrijpt. U kunt de volledige lijst van eigenschappen voor elk veldtype in de overeenkomstige klasse in de [Veldmodule](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Veldeigenschap bijwerken

Soms moeten gebruikers de waarde van een veldeigenschap veranderen. Bijvoorbeeld, het bijwerken van de [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) eigendom van de `AUTHOR` veld veranderen of [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) eigendom van de `MERGEFIELD` veld.

Het volgende voorbeeld van code laat zien hoe je velden kunt samenvoegen in een Word-document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Resultaat van veldweergave

Aspose.Words geeft een eigenschap om het resultaat van het veld te verkrijgen voor velden die geen veldafscheiderknooppunt hebben. We noemen dit "vals resultaat" of display resultaat; MS Word toont het in het document door het berekenen van de waarde van het veld op de vlieg, maar er is geen dergelijke waarde in het document model.

Het volgende voorbeeld van code toont het gebruik van [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) eigenschap:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
