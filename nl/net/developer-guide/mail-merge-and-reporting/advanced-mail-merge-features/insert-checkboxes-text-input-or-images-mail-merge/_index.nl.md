---
title: Checkboxes, tekstinvoer of afbeeldingen invoegen tijdens Mail Merge
second_title: Aspose.Words voor .NET
articleTitle: Checkboxes, tekstinvoer of afbeeldingen invoegen
linktitle: Checkboxes, tekstinvoer of afbeeldingen invoegen
description: "Voeg checkboxes of tekstinvoervelden in tijdens Mail Merge met behulp van C#. Voeg ook afbeeldingen uit een Database toe tijdens Mail Merge in C#."
type: docs
weight: 40
url: /nl/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

De merge engine neemt een document als invoer, zoekt naar `MERGEFIELD` velden erin en vervangt deze door de gegevens die uit de gegevensbron zijn verkregen. Normaal gesproken worden platte tekst en HTML ingevoegd, maar Aspose.Words gebruikers kunnen ook een document genereren dat meer ongebruikelijke scenario ' s voor Mail Merge velden behandelt.

Met de krachtige Aspose.Words - functionaliteit kunt u het Mail Merge - proces uitbreiden:

- invoegen checkbox es en tekst invoer formuliervelden in het document tijdens een mail merge
- afbeeldingen invoegen vanuit een aangepaste opslag (bestanden, BLOB velden, enz.)

## Checkboxes en tekstinvoer invoegen tijdens Mail Merge

Soms is het nodig om een Mail Merge - bewerking uit te voeren, zodat er geen tekst wordt vervangen in het samenvoegveld, maar een checkbox - of tekstinvoerveld. Hoewel dit niet het meest voorkomende scenario is, is het erg handig voor sommige taken.

De volgende schermafbeelding van een Word document toont een sjabloon met samenvoegvelden:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Deze screenshot van het Word document hieronder toont het reeds gegenereerde document:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Merk op dat sommige velden zijn vervangen door platte tekst, sommige velden zijn vervangen door checkbox formuliervelden en het veld `Subject` is vervangen door een tekstinvoerveld.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u checkboxes invoegt en tekstvelden invoert in een document tijdens een mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Afbeeldingen invoegen tijdens Mail Merge

Wanneer u een bewerking Mail Merge uitvoert, kunt u afbeeldingen uit de database in het document invoegen met behulp van speciale velden voor Afbeelding Mail Merge. Het veld Afbeelding Mail Merge is een samenvoegveld met de naam afbeelding:MyFieldName.

### Afbeeldingen uit een Database Invoegen

Tijdens een mail merge, wanneer een afbeelding Mail Merge veld wordt aangetroffen in een document, wordt de [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) gebeurtenis gestart. U kunt op deze gebeurtenis reageren om een bestandsnaam, stream of afbeeldingsobject terug te sturen naar de engine Mail Merge, zodat deze in het document kan worden ingevoegd.

Het volgende codevoorbeeld laat zien hoe u afbeeldingen die zijn opgeslagen in een databaseveld BLOB invoegt in een rapport:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Afbeeldingseigenschappen instellen tijdens Mail Merge

Tijdens het samenvoegen van een veld voor het samenvoegen van afbeeldingen moet u soms verschillende afbeeldingseigenschappen beheren, zoals [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Op dit moment kunt u met [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) alleen de eigenschappen breedte of hoogte van de afbeelding instellen. Om dit probleem op te lossen, biedt Aspose.Words De Eigenschap [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), waarmee u volledige controle krijgt over de ingevoegde afbeelding of een andere vorm.

Het volgende codevoorbeeld laat zien hoe u verschillende afbeeldingseigenschappen instelt:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
