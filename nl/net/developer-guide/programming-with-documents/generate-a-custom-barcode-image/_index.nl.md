---
title: Hoe maak je een streepjescode
second_title: Aspose.Words voor .NET
articleTitle: Genereer een aangepaste Barcode afbeelding
linktitle: Genereer een aangepaste Barcode afbeelding
description: "Voorbeeld van het genereren van een streepjescodeshape met behulp van C#."
type: docs
weight: 350
url: /nl/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Een streepjescode is een visuele weergave van gegevens in de vorm van parallelle lijnen of patronen. Streepjescodes worden veel gebruikt in verschillende industrieën zoals detailhandel, logistiek, gezondheidszorg, bankzaken en vele anderen.

Microsoft Word maakt het gebruikers mogelijk om streepjescodes rechtstreeks in documenten te voegen via velden. Gebruikers kunnen een specifiek type streepje scode invoeren, zoals een QR-code of een lineaire streepjescode, met behulp van het [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19)-veld.

We gaan hierna kijken hoe het BARCODE veld wordt geïmplementeerd in Aspose.Words en hoe Aspose.Words gebruikers toestaat om te werken met Word documenten waaraan reeds een streepjescodes zijn toegevoegd.

## Barcodes ondersteund door Aspose.Words

Aspose.Words ondersteunt verschillende soorten streepjescodes. De streepjescode-soort wordt doorgegeven als een tekenreekswaarde aan de [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) eigenschap.

{{% alert color="primary" %}}

Aangezien werken met streepjescodes binnen de functionaliteit van Aspose.Words beperkt is, kan de gebruiker gebruikmaken van elke bibliotheek, inclusief Aspose.Barcode, of zijn eigen renderen schrijven om te werken met streepjescodes. Je kunt meer leren over de soorten streepjescodes [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Wanneer je opslaat in Word-indelingen die streepjescodes ondersteunen, kan je elk type streepjecode gebruiken dat [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) is. Indien een verkeerd type streepjecode werd doorgegeven, zal Word een fout weergeven.

Bij het opslaan naar andere indelingen zoals PDF, Aspose.Words delegeert barcodeweergave aan de gebruikerscode, zodat de gebruiker beperkt is tot de barcodesoorten van hun implementatie of bibliotheek die wordt gebruikt.

## Voeg een barcode in een document of laad een document met een toegevoegde barcode

Aspose.Words biedt de mogelijkheid om:

1. Programmatisch een streepjescode in een document invoegen met de [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) en [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) veldcodes
2. Of een Word-document laden met al ingevoerde streepjes voor verder werk

Aspose.Words heeft een interface voor het genereren van aangepaste streepjescodes waardoor het eenvoudig is om [Aspose.Words](https://products.aspose.com/words/net/) en [Aspose.BarCode](https://products.aspose.com/barcode/net/) samen te gebruiken om streepjescode afbeeldingen in uitgangsdocumenten weer te geven. Bijvoorbeeld, je kunt een DOC-, OOXML- of RTF-document maken en de DISPLAYBARCODE veld toevoegen aan het met Aspose.Words. Of u kunt een DOC-, OOXML- of RTF-document laden met een DISPLAYBARCODE veld al in het bestaande en uw eigen implementatie van aangepaste streepjescode generator te bieden.

Een typische DISPLAYBARCODE-velden heeft de volgende syntaxis:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Hieronder is een voorbeeldcode generator die gebruikmaakt van de Aspose.Words en Aspose.BarCode APIs. Dit voorbeeld laat zien hoe u de barcode-afbeeldingen kunt invoegen op het DISPLAYBARCODE veldpositie in een Word document:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

U kunt het document ook opslaan met de geladen of nieuw ingevoerde streepjescodes in vaste paginaformaten zoals PDF, XPS, enz. Het volgende codevoorbeeld laat zien hoe u een woorddocument naar PDF-indeling kunt opslaan

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Voor meer informatie over het converteren van documenten van een vormaat naar een ander, zie de [Convert a Document](/words/net/convert-a-document/) documentatiesectie.

{{% /alert %}}

{{% alert color="primary" %}}

Je kunt ook de [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) interface gebruiken om streepjescodes die zijn ingebed in Word-documenten te converteren naar afbeeldingen. De resulterende afbeeldingen kunnen uit het document worden gehaald - zie de 'Met Afbeeldingen Werken' artikel voor meer informatie.

{{% /alert %}}

## Specificeer barcodeopties

Wanneer u werkt met streepjescodes kunt u enkele extra eigenschappen instellen. Aspose.Words biedt je de [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) klasse – klasse voor streepjescodeparameters om door te geven aan BarcodeGenerator".

Aspose.Words ondersteunt ingebedde 96 ppi resolutie voor afbeeldingen die zijn gegenereerd met [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), wat de minimale grootte van een barcode afbeelding beperkt. Om dit te verhelpen kunnen ontwikkelaars handmatig barcode afbeeldingen met de doelresolutie invoegen in een Word document en deze opslaan in het vereiste formaat. Voor meer details en voorbeelden over werken met barcodes, zie artikel [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).