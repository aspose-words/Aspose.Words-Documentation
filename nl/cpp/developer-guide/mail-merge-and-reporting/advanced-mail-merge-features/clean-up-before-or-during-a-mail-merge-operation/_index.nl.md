﻿---
title: Opruimen voor of tijdens een Mail Merge - bewerking
second_title: Aspose.Words voor C++
articleTitle: Opruimen voor of tijdens een Mail Merge - bewerking
linktitle: Opruimen voor of tijdens een Mail Merge - bewerking
type: docs
description: "Pas verschillende opties voor opschonen en verwijderen toe, zoals het verwijderen van samenvoegvelden voordat u een Mail Merge - bewerking uitvoert of het verwijderen van ongebruikte gebieden tijdens een Mail Merge - bewerking."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /nl/cpp/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Met Aspose.Words kunt u verschillende opties voor opschonen en verwijderen toepassen, zoals het verwijderen van samenvoegvelden voordat u een Mail Merge - bewerking uitvoert of het verwijderen van ongebruikte gebieden tijdens een Mail Merge - bewerking. In dit gedeelte wordt uitgelegd hoe u Samengevoegde velden kunt verwijderen en hoe u een verwijderingsoptie kunt instellen.

## Samengevoegde Velden Verwijderen

Wanneer u een lange sjabloon gebruikt die door iemand anders is gemaakt, wilt u mogelijk alle samenvoegvelden verwijderen die al in die sjabloon bestaan voordat u een bewerking Mail Merge uitvoert. U kunt de methode [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) gebruiken als u alle samenvoegvelden uit een document wilt verwijderen zonder een bewerking Mail Merge uit te voeren. Deze methode wordt niet beïnvloed door verwijderingsopties van de eigenschap [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) en het uitvoeren ervan verwijdert alleen samengevoegde velden, geen velden met velden of lege alinea ' s.

Het volgende codevoorbeeld laat zien hoe u alle samenvoegvelden uit uw sjabloon verwijdert zonder een Mail Merge - bewerking uit te voeren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Een optie `Removing` instellen

Met Aspose.Words kunt u niet-Samengevoegde velden, regio 's en alinea' s uit een sjabloon verwijderen tijdens een bewerking met Mail Merge met verwijderingsopties.

Gebruik de Eigenschap **CleanupOptions** samen met de [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) opsomming om de optie Verwijderen in te stellen. Geef op welke items u wilt verwijderen door de volgende opties te kiezen (u kunt er meer dan één combineren):

* Lege alinea ' s verwijderen
* Ongebruikte gebieden verwijderen
* Ongebruikte velden verwijderen
* Bevattende velden verwijderen
* Statische velden verwijderen
* Lege tabelrijen verwijderen

U kunt een samenvoegveld beschouwen als niet-samengevoegd in een van de volgende voorwaarden:

1. Als het samenvoegveld in de gegevensbron geen kolom of toewijzingsveld heeft.
2. Als het samenvoegveld in de gegevensbron een toewijzingsveld bevat, maar de gegevens null zijn.

{{% alert color="primary" %}}

Als u gegevens samenvoegt met behulp van afzonderlijke gegevensbronnen, worden deze verwijderingsopties alleen ingeschakeld met de laatste aanroep van de methode Mail Merge uitvoeren.

{{% /alert %}}

### Lege Alinea ' S Verwijderen

Een alinea die alleen samenvoegvelden bevat, zal leeg zijn wanneer het proces Mail Merge alle samenvoegvelden als niet-samengevoegd verwijdert. Die lege alinea ' s kunnen ongewenste ruimte toevoegen en veranderen hoe het gegenereerde rapport eruit zal zien. U kunt twee situaties met alinea ' s tegenkomen tijdens een bewerking van Mail Merge:

1. Het veld Mail Merge wordt samengevoegd met lege gegevens.
2. Het merge-veld wordt niet gebruikt en wordt verwijderd.

In beide situaties verwijdert de optie **RemoveEmptyParagraphs** automatisch lege alinea ' s uit het document. Het zal ook de `TableStart` en TableEnd samenvoegvelden verwijderen als de rest van de alinea leeg is.

Het volgende codevoorbeeld laat zien hoe u de lege alinea ' s kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Ongebruikte Velden Verwijderen

Met Aspose.Words kunt u ongebruikte Mail Merge velden verwijderen door de vlag **RemoveUnusedFields** toe te wijzen aan **CleanupOptions**. Deze optie verwijdert samenvoegvelden die niet de overeenkomstige gegevens in de gegevensbron hebben.

Het volgende codevoorbeeld laat zien hoe u ongebruikte samenvoegvelden automatisch uit een document verwijdert tijdens een bewerking met Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Bevattende Velden Verwijderen

Een samenvoegveld kan worden opgenomen in een ander veld, zoals een veld **IF** of een formuleveld. Verwijder dit buitenste veld wanneer het samenvoegveld wordt samengevoegd of verwijderd uit het document.

Het volgende codevoorbeeld laat zien hoe u velden met samenvoegvelden uit een document kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Opmerking**

### Lege Tabelrijen Verwijderen

Met Aspose.Words kunt u lege tabelrijen verwijderen door de vlag **RemoveEmptyTableRows** toe te wijzen aan **CleanupOptions**. Met deze optie worden tabelrijen verwijderd die lege samenvoegvelden bevatten.

Het volgende codevoorbeeld laat zien hoe u lege tabelrijen met Mail Merge - regio ' s uit een document kunt verwijderen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}