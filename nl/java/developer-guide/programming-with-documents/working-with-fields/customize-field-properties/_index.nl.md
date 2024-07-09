---
title: Veldeigenschappen aanpassen
second_title: Aspose.Words voor Java
articleTitle: Veldeigenschappen aanpassen
linktitle: Veldeigenschappen aanpassen
description: "Leer hoe je veldeigenschappen aanpast in Java. Samenvoegvelden hernoemen of resultaten verkrijgen voor velden zonder scheidingsknooppunt in Java."
type: docs
weight: 27
url: /nl/java/customize-field-properties/
---

Aspose.Words biedt de mogelijkheid om programmatisch interactie met verschillende veldeigenschappen. In dit artikel zullen we een paar voorbeelden bekijken zodat je het basisprincipe van werken met veldeigenschappen begrijpt. U kunt de volledige lijst van eigenschappen voor elk veldtype in de corresponderende klasse zien.

## Veldeigenschap bijwerken

Soms moeten gebruikers de waarde van een veldeigenschap veranderen. Bijvoorbeeld, het bijwerken van de [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) eigendom van de `AUTHOR` veld veranderen of [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) eigendom van de `MERGEFIELD` veld.

Het volgende voorbeeld van code laat zien hoe je velden kunt samenvoegen in een Word-document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Resultaat van veldweergave

Aspose.Words geeft een eigenschap om het resultaat van het veld te verkrijgen voor velden die geen veldscheidingsknoop hebben. We noemen dit "valse resultaat" of display resultaat; MS Word toont het in het document door het berekenen van de waarde van het veld op de vlieg, maar er is geen dergelijke waarde in het document model.

De volgende code voorbeeld toont het gebruik van [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) eigenschap:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
