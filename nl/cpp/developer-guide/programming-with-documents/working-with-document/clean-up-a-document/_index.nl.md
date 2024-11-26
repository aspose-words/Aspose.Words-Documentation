---
title: Een Document opschonen in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document opschonen
linktitle: Een Document opschonen
description: "Verwijder ongebruikte of dubbele informatie om de uitvoergrootte en verwerkingstijd te verminderen met behulp van C++. Verwijder ongebruikte stijlen, ongebruikte ingebouwde stijlen, dubbele stijlen of ongebruikte lijsten."
type: docs
weight: 30
url: /nl/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Soms moet u ongebruikte of dubbele informatie verwijderen om de grootte van het uitvoerdocument en de verwerkingstijd te verkleinen.

Hoewel u ongebruikte gegevens, zoals stijlen of lijsten, kunt vinden en verwijderen of informatie handmatig kunt dupliceren, is het veel handiger om dit te doen met behulp van functies en mogelijkheden van Aspose.Words.

Met de klasse [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) kunt u opties opgeven voor het opschonen van documenten. Als u dubbele stijlen of alleen ongebruikte stijlen of lijsten uit het document wilt verwijderen, kunt u de methode [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/) gebruiken.

## Ongebruikte informatie uit een Document verwijderen

U kunt de eigenschappen [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) en [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) gebruiken om stijlen te detecteren en te verwijderen die zijn gemarkeerd als 'ongebruikt'.

U kunt de eigenschap [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) gebruiken om lijsten en lijstdefinities te detecteren en te verwijderen die zijn gemarkeerd als 'ongebruikt'.

Het volgende codevoorbeeld laat zien hoe u alleen ongebruikte stijlen uit een document kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Dubbele informatie uit een Document verwijderen

U kunt ook de eigenschap [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) gebruiken om alle dubbele stijlen te vervangen door de originele en duplicaten uit een document te verwijderen.

Het volgende codevoorbeeld laat zien hoe u dubbele stijlen uit een document kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
