---
title: So erstellen Sie einen Barcode
second_title: Aspose.Words für .NET
articleTitle: Generieren Sie ein benutzerdefiniertes Barcode-Bild
linktitle: Generieren Sie ein benutzerdefiniertes Barcode-Bild
description: "Beispiel für die Generierung von Barcode-Formen mit C#."
type: docs
weight: 350
url: /de/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words verfügt über eine Schnittstelle zum Generieren benutzerdefinierter Barcodes, die es sehr einfach macht, Aspose.Words und [Aspose.BarCode](https://products.aspose.com/barcode/net/) zusammen zu verwenden, um Barcode-Bilder in Ausgabedokumenten darzustellen. Sie können beispielsweise ein DOC-, OOXML- oder RTF-Dokument mit einem `DISPLAYBARCODE`-Feld in Aspose.Words laden, Ihre Implementierung eines benutzerdefinierten Barcode-Generators bereitstellen und in festen Seitenformaten wie PDF, XPS usw. speichern.

Ein typisches `DISPLAYBARCODE`-Feld hat die folgende Syntax:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Unten finden Sie einen Beispielcodegenerator, der `Aspose.BarCode` API nutzt. Dieses Beispiel zeigt, wie Barcodebilder an der Position des `DISPLAYBARCODE`-Felds in ein Word-Dokument mithilfe von Aspose.Words- und `Aspose.BarCode`-APIs eingefügt werden:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
