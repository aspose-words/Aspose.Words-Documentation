---
title: Een document opruimen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document opruimen
linktitle: Een document opruimen
description: "Verwijder ongebruikte of dubbele informatie om de uitvoergrootte en verwerkingstijd te verminderen met behulp van Python. Verwijder ongebruikte stijlen, ongebruikte ingebouwde stijlen, dubbele stijlen of ongebruikte lijsten."
type: docs
weight: 30
url: /nl/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Soms moet u ongebruikte of dubbele informatie verwijderen om de grootte van het uitvoerdocument en de verwerkingstijd te verminderen.

Terwijl u kunt vinden en verwijderen ongebruikte gegevens, zoals stijlen of lijsten, of dubbele informatie handmatig, zal het veel gemakkelijker zijn om dit te doen met behulp van functies en mogelijkheden verstrekt door Aspose.Words.

De [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) klasse geeft u de mogelijkheid om opties voor het opruimen van documenten op te geven. Om dubbele stijlen te verwijderen of gewoon ongebruikte stijlen of lijsten van het document, kunt u de [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) methode.

## Niet gebruikte informatie uit een document verwijderen

U kunt de [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) en [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) eigenschappen om stijlen te detecteren en te verwijderen die gemarkeerd zijn als "ongebruikt."

U kunt de [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) eigenschap om lijsten en lijstdefinities te detecteren en te verwijderen die als "ongebruikt" zijn gemarkeerd.

Het volgende voorbeeld van code laat zien hoe u alleen ongebruikte stijlen uit een document kunt verwijderen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Dubbele informatie uit een document verwijderen

U kunt ook de [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) eigenschap om alle dubbele stijlen te vervangen door de originele en duplicaten uit een document te verwijderen.

Het volgende voorbeeld van code laat zien hoe je dubbele stijlen uit een document verwijdert:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
