---
title: Hoe om BarCodeTe Skep
second_title: Aspose.Words vir .NET
articleTitle: Genereer'n Pasgemaakte BarCode - Beeldlêer
linktitle: Genereer'n Pasgemaakte BarCode - Beeldlêer
description: "Voorbeeld van barcode vorm generasie met behulp van C#."
type: docs
weight: 350
url: /af/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

'n strepieskode is'n visuele voorstelling van data in die vorm van parallelle lyne of patrone. Barcodes word wyd gebruik in verskeie bedrywe soos kleinhandel, logistiek, gesondheidsorg, bankwese en vele ander.

Microsoft Word laat gebruikers toe om strepieskode direk in dokumente in te bed met behulp van velde. Gebruikers kan'n spesifieke tipe strepieskode, soos'n QR - kode of'n lineêre strepieskode, invoeg deur die [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) veld.

In hierdie artikel sal ons kyk hoe die BARCODE veld geïmplementeer word in Aspose.Words en hoe Aspose.Words gebruikers toelaat om te werk met Word dokumente waaraan'n strepieskode reeds bygevoeg is.

## Barcode Tipes Ondersteun deur Aspose.Words

Aspose.Words ondersteun verskeie tipes strepieskode. Die barcode tipe is oorgedra as'n string waarde in die [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) eiendom.

{{% alert color="primary" %}}

Aangesien die werk met strepieskode binne die funksionaliteit van Aspose.Words beperk is, kan die gebruiker enige biblioteek gebruik, insluitend Aspose.Barcode, of skryf sy eie weergawe te werk met barcodes. Jy kan meer leer oor die tipes strepieskode [Ondersteun Deur Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Wanneer jy stoor Na Woordformate wat strepieskode ondersteun, kan jy enige tipe strepieskode gebruik wat is [ondersteun deur Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). As'n verkeerde tipe strepieskode geslaag is, sal Word'n fout vertoon.

Wanneer stoor na ander formate, soos PDF, Aspose.Words delegeer barcode weergawe aan die gebruiker kode, sodat die gebruiker is beperk tot die barcode tipes van hul implementering of biblioteek gebruik.

## Plaas'n Strepieskode in'n Dokument of Laai'n Dokument Met'n Bygevoegde Strepieskode

Aspose.Words bied die vermoë om:

1. Programmaties voeg'n strepieskode in'n dokument met behulp van die [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) en [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) veldkodes
2. Of laai'n Word-dokument met strepieskode wat reeds daarin geplaas is vir verdere werk

Aspose.Words het'n koppelvlak vir die opwekking van persoonlike strepieskode wat dit maklik maak om te gebruik [Aspose.Words](https://products.aspose.com/words/net/) en [Aspose.BarCode](https://products.aspose.com/barcode/net/) saam om strepieskode beelde in uitset dokumente te lewer. Byvoorbeeld, jy kan'n DOC, OOXML, of RTF dokument skep en DISPLAYBARCODE veld daarby voeg met Aspose.Words. Of jy kan'n DOC, OOXML of RTF dokument laai met DISPLAYBARCODE veld wat reeds daarin bestaan en jou implementering van persoonlike strepieskode generator verskaf.

'n tipiese DISPLAYBARCODE veld het die volgende sintaksis:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Hieronder is'n voorbeeld kode generator met behulp van die Aspose.Words en Aspose.BarCode APIs. Hierdie voorbeeld toon hoe om strepieskode beelde by DISPLAYBARCODE veld posisie in'n Word dokument in te voeg:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

U kan die dokument ook stoor met die gelaaide of nuut ingevoegde strepieskode in vaste bladsyformate soos PDF, XPS, ens. Die volgende kode voorbeeld toon hoe om'n Word dokument te stoor om PDF formaat:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Vir meer inligting oor die omskakeling van dokumente van een formaat na'n ander, sien die [Skakel'n Dokument om](/words/net/convert-a-document/) dokumentasie afdeling.

{{% /alert %}}

{{% alert color="primary" %}}

U kan ook die [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) - koppelvlak gebruik om strepieskode wat in Word-dokumente ingebed is, in beelde om te skakel. Die gevolglike beelde kan uit die dokument onttrek word – sien die Artikel Working with Images vir besonderhede.

{{% /alert %}}

## Spesifiseer Strepieskode Opsies

Wanneer jy met strepieskode werk, kan jy'n paar bykomende eienskappe stel. Aspose.Words gee jou die [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) klas – klas vir strepieskode parameters om deur te gaan na BarcodeGenerator.

Aspose.Words ondersteun ingebedde 96 ppi resolusie vir beelde wat gegenereer word met [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), wat die minimum grootte van'n strepieskode beeld beperk. Om dit aan te spreek, kan ontwikkelaars handmatig strepieskode-beelde met die teikenresolusie in'n Word-dokument invoeg en dit in die vereiste formaat stoor. Vir meer besonderhede en voorbeelde oor die werk met strepieskode, sien die artikel [Skep Pasgemaakte Strepieskode met IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).