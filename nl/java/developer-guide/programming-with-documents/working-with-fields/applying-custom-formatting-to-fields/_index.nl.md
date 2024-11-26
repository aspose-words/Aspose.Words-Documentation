---
title: Aangepaste opmaak toepassen op velden
second_title: Aspose.Words voor Java
articleTitle: Aangepaste opmaak toepassen op velden
linktitle: Aangepaste opmaak toepassen op velden
description: "Formatteren en evalueren van velden resultaat met behulp van Java."
type: docs
weight: 40
url: /nl/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Soms moeten gebruikers aangepaste opmaak toepassen op velden. In dit artikel zullen we een paar voorbeelden bekijken van hoe dit gedaan kan worden.

Voor meer opties, zie de volledige lijst van eigenschappen voor elk veldtype in de corresponderende klasse.

## Aangepaste formattering toepassen op veldresultaat

Aspose.Words levert API voor aangepaste opmaak van het resultaat van het veld. U kunt implementeren [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) interface om te bepalen hoe het veldresultaat wordt geformatteerd. U kunt numeriek formaat switch, d.w.z. \# "#.##," datum/tijd format switch, d.w.z. \@ "dd.MM.jjjj," en nummer formaat switch, d.w.z. \* Ordinal.

Het volgende voorbeeld van code laat zien hoe u aangepaste opmaak voor het veld resultaat toe te passen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Hoe te evalueren `IF` conditie

Als u wilt evalueren `IF` toestand na mail merge, u kunt de [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) methode die het resultaat van de expressie-evaluatie onmiddellijk teruggeeft.

Het volgende voorbeeld van code laat zien hoe deze methode te gebruiken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Hoe aangepaste formattering toe te passen op tijdveld

Standaard Aspose.Words bijwerken `TIME` veld met huidige cultuur korte tijd formaat. Als u de `TIME` veld volgens uw eis, kunt u dit bereiken door de implementatie [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) interface.

De volgende code voorbeelden laat zien hoe u aangepaste opmaak toe te passen op de `TIME` veld:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
