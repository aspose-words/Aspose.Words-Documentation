---
title: Hoe BarCode aanmaken
second_title: Aspose.Words voor .NET
articleTitle: Een aangepaste BarCode-afbeelding aanmaken
linktitle: Een aangepaste BarCode-afbeelding aanmaken
description: "Voorbeeld van barcode-generatie met behulp van C#."
type: docs
weight: 350
url: /nl/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words heeft een interface voor het genereren van aangepaste barcodes waardoor het zeer gemakkelijk te gebruiken Aspose.Words en [Stel. Barcode](https://products.aspose.com/barcode/net/) samen barcodeafbeeldingen in uitvoerdocumenten weergeven. U kunt bijvoorbeeld een DOC, OOXML of RTF-document laden dat `DISPLAYBARCODE` Veld naar Aspose.Words, bieden uw implementatie van aangepaste barcode generator en opslaan naar vaste pagina formaten zoals PDF, XPS enz.

Een typisch `DISPLAYBARCODE` veld heeft de volgende syntax:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Hieronder is een sample code generator die de `Aspose.BarCode` API. Dit voorbeeld toont hoe je barcode afbeeldingen invoegt op `DISPLAYBARCODE` Veldpositie in Word-document met behulp van Aspose.Words en `Aspose.BarCode` APIs:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
