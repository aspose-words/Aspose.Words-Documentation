---
title: Een document opruimen in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document opruimen
linktitle: Een document opruimen
description: "Verwijder ongebruikte of dubbele informatie om de uitvoergrootte en verwerkingstijd te verminderen met behulp van C#. Verwijder ongebruikte stijlen, ongebruikte ingebouwde stijlen, dubbele stijlen of ongebruikte lijsten."
type: docs
weight: 30
url: /nl/net/clean-up-a-document/
---

Soms moet u ongebruikte of dubbele informatie verwijderen om de grootte van het uitvoerdocument en de verwerkingstijd te verminderen.

Terwijl u kunt vinden en verwijderen ongebruikte gegevens, zoals stijlen of lijsten, of dubbele informatie handmatig, zal het veel gemakkelijker zijn om dit te doen met behulp van functies en mogelijkheden verstrekt door Aspose.Words.

De [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) klasse geeft u de mogelijkheid om opties voor het opruimen van documenten op te geven. Om dubbele stijlen te verwijderen of gewoon ongebruikte stijlen of lijsten van het document, kunt u de [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) methode.

## Niet gebruikte informatie uit een document verwijderen

U kunt de [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) en [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) eigenschappen om stijlen te detecteren en te verwijderen die gemarkeerd zijn als "ongebruikt."

U kunt de [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) eigenschap om lijsten en lijstdefinities te detecteren en te verwijderen die als "ongebruikt" zijn gemarkeerd.

Het volgende voorbeeld van code laat zien hoe u alleen ongebruikte stijlen uit een document kunt verwijderen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Dubbele informatie uit een document verwijderen

U kunt ook de [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) eigenschap om alle dubbele stijlen te vervangen door de originele en duplicaten uit een document te verwijderen.

Het volgende voorbeeld van code laat zien hoe je dubbele stijlen uit een document verwijdert:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
