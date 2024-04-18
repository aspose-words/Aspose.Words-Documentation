---
title: Veldeigenschappen aanpassen in C#
second_title: Aspose.Words voor .NET
articleTitle: Veldeigenschappen aanpassen
linktitle: Veldeigenschappen aanpassen
description: "Leer hoe veldeigenschappen aan te passen in C#. Samenvoegvelden hernoemen of resultaten verkrijgen voor velden zonder scheidingsknooppunt in .NET."
type: docs
weight: 27
url: /nl/net/customize-field-properties/
---

Aspose.Words biedt de mogelijkheid om programmatisch interactie met verschillende veldeigenschappen. In dit artikel zullen we een paar voorbeelden bekijken zodat u het basisprincipe van werken met veldeigenschappen begrijpt. U kunt de volledige lijst van eigenschappen voor elk veldtype in de overeenkomstige klasse in de [Veldnaamruimte](https://reference.aspose.com/words/net/aspose.words.fields/).

## Veldeigenschap bijwerken

Soms moeten gebruikers de waarde van een veldeigenschap veranderen. Bijvoorbeeld, het bijwerken van de [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) eigendom van de `AUTHOR` veld veranderen of [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) eigendom van de `MERGEFIELD` veld.

Het volgende voorbeeld van code laat zien hoe je velden kunt samenvoegen in een Word-document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Resultaat van veldweergave

Aspose.Words geeft een eigenschap om het resultaat van het veld te verkrijgen voor velden die geen veldafscheiderknooppunt hebben. We noemen dit "vals resultaat" of display resultaat; MS Word toont het in het document door het berekenen van de waarde van het veld op de vlieg, maar er is geen dergelijke waarde in het document model.

Het volgende voorbeeld van code toont het gebruik van [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) eigenschap:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
