---
title: Een document opruimen in Java
second_title: Aspose.Words voor Java
articleTitle: Een document opruimen
linktitle: Een document opruimen
description: "Verwijder ongebruikte of dubbele informatie om de uitvoergrootte en verwerkingstijd te verminderen. Verwijder ongebruikte stijlen, ongebruikte ingebouwde stijlen, dubbele stijlen of ongebruikte lijsten met behulp van Java."
type: docs
weight: 30
url: /nl/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Soms moet u ongebruikte of dubbele informatie verwijderen om de grootte van het uitvoerdocument en de verwerkingstijd te verminderen.

Terwijl u kunt vinden en verwijderen ongebruikte gegevens, zoals stijlen of lijsten, of dubbele informatie handmatig, zal het veel gemakkelijker zijn om dit te doen met behulp van functies en mogelijkheden die door Aspose.Words.

De [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) klasse kunt u opties voor het opruimen van documenten specificeren. Om dubbele stijlen te verwijderen of gewoon ongebruikte stijlen of lijsten van het document, kunt u de [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) methode.

## Niet gebruikte informatie uit een document verwijderen

U kunt de [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) en [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) eigenschappen om stijlen te detecteren en te verwijderen die gemarkeerd zijn als "ongebruikt."

U kunt de [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) eigenschap om lijsten en lijstdefinities te detecteren en te verwijderen die als "ongebruikt" zijn gemarkeerd.

Het volgende voorbeeld toont hoe u alleen ongebruikte stijlen uit een document kunt verwijderen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Dubbele informatie uit een document verwijderen

U kunt ook de [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) eigenschap om alle dubbele stijlen te vervangen door de originele en duplicaten uit een document te verwijderen.

Het volgende voorbeeld van code laat zien hoe je dubbele stijlen uit een document verwijdert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
