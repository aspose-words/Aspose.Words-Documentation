---
title: Maak een streepjescodes aan Java
second_title: Aspose.Words voor Java
articleTitle: Genereer een Aangepaste Barcode Afbeelding
linktitle: Genereer een Aangepaste Barcode Afbeelding
description: "Voorbeeld van het genereren van een streepjescodes met behulp van Java."
type: docs
weight: 350
url: /nl/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Een streepjescodes is een visuele weergave van gegevens in de vorm van parallele lijnen of patronen. Streepjescodes worden veel gebruikt in verschillende industrieën zoals detailhandel, logistiek, gezondheidszorg, bankieren en vele anderen.

Microsoft Word maakt het gebruikers mogelijk om streepjescodes rechtstreeks in documenten te integreren via velden. Gebruikers kunnen een specifieke soort streepcode invoegen, zoals een QR-code of een lineaire streepcode, met behulp van het [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19)-veld.

In dit artikel zullen we kijken hoe het BARCODE-veld wordt geïmplementeerd in Aspose.Words en hoe Aspose.Words gebruikers in staat stelt om te werken met Word-documenten waarop reeds een streepjescode is toegevoegd.

## Barcode typen ondersteund door Aspose.Words

Aspose.Words ondersteunt verschillende soorten streepjescodes. De streepjescodetype wordt doorgegeven als een tekenreekswaarde in de [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) eigenschap.

{{% alert color="primary" %}}

Omdat werken met streepjescodes binnen de functionaliteit van Aspose.Words beperkt is, kan de gebruiker gebruikmaken van elke bibliotheek inclusief Aspose.Barcode, of zijn eigen renderen schrijven om te werken met streepjescodes. U kunt meer leren over de typen streepjescodes [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Wanneer opslaan naar woordformaten die streepjescodes ondersteunen, kun je elk type streepjescode gebruiken dat [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) is. Als een verkeerd type streepjescode werd doorgegeven, zal Word een fout weergeven.

Bij het opslaan in andere formaten, zoals PDF, Aspose.Words delegeert het renderen van barcodes naar de gebruikerscode, zodat de gebruiker beperkt is tot de barcode-typen van hun implementatie of bibliotheek die wordt gebruikt.

## Voeg een streepjescode in een document in of laad een document met een toegevoegde streepjescode

Aspose.Words biedt de mogelijkheid om:

1. Programmeermatig een streepjescode in een document invoegen met behulp van de [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) en [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) veldcodes
2. Of laad een Word-document waarin al barcodes zijn ingevoegd voor verder werk

Aspose.Words heeft een interface voor het genereren van aangepaste streepjescodes waardoor het gemakkelijk is om [Aspose.Words](https://products.aspose.com/words/java/) en [Aspose.BarCode](https://products.aspose.com/barcode/java/) samen te gebruiken om streepjesbeeldbestanden in uitvoer-documenten weer te geven. U kunt bijvoorbeeld een DOC-, OOXML- of RTF-document maken en het DISPLAYBARCODE-veld toevoegen met behulp van Aspose.Words. Of u kunt een DOC-, OOXML- of RTF-document laden waarin het DISPLAYBARCODE-veld al bestaat en uw eigen implementatie van een aangepaste streepjescodegenerator bieden.

Een typisch DISPLAYBARCODE-veld heeft de volgende syntaxis:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Hieronder is een voorbeeld codegenerator die de Aspose.Words en Aspose.BarCode API gebruikt. Dit voorbeeld laat zien hoe u barcode afbeeldingen op het veld "DISPLAYBARCODE" in een Word-document kunt invoegen:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

U kunt het document ook opslaan met de geladen of nieuw ingevoerde streepjescodes in vaste paginaformaten zoals PDF, XPS, enz. Het volgende voorbeeld laat zien hoe u een Word-document naar PDF-indeling kunt opslaan:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Voor meer informatie over het converteren van documenten van een formaat naar een ander, zie de [Convert a Document](/words/java/convert-a-document/) documentatie sectie.

{{% /alert %}}

{{% alert color="primary" %}}

U kunt ook de [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)-interface gebruiken om streepjescodes die zijn ingebed in Word-documenten om te zetten naar afbeeldingen. De resulterende afbeeldingen kunnen uit het document worden gehaald - zie de handleiding 'Met Afbeeldingen Werken' voor details.

{{% /alert %}}

## Specificeren van Barcodeopties

Wanneer u werkt met streepjescodes kunt u enkele extra eigenschappen instellen. Aspose.Words geeft u de [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) klasse – klasse voor streepjecodeparameters om door te geven aan BarcodeGenerator.

Aspose.Words ondersteunt ingebedde 96 ppi-resolutie voor afbeeldingen die zijn gegenereerd met [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), waardoor de minimale grootte van een barcodeafbeelding wordt beperkt. Om dit op te lossen kunnen ontwikkelaars handmatig barcodeafbeeldingen met de doelresolutie invoegen in een Word-document en deze opslaan in het vereiste formaat. Voor meer details en voorbeelden over het werken met barcodes, zie artikel [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
