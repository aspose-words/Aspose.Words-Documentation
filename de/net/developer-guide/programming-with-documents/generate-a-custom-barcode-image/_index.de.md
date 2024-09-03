---
title: So erstellen Sie einen Strichcode
second_title: Aspose.Words für .NET
articleTitle: Erzeuge ein benutzerdefiniertes Strichkodebild
linktitle: Erzeuge ein benutzerdefiniertes Strichkodebild
description: "Beispiel für die Erzeugung von Barcodes unter Verwendung von C#."
type: docs
weight: 350
url: /de/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Ein Strichcode ist eine visuelle Darstellung von Daten in Form paralleler Linien oder Muster. Strichcodes werden in verschiedenen Branchen wie Einzelhandel, Logistik, Gesundheitswesen, Bankwesen und vielen anderen eingesetzt.

Microsoft Word ermöglicht es Benutzern, Barcodes direkt in Dokumente mithilfe von Feldern einzufügen. Benutzer können einen spezifischen Typ von Barcode wie z. B. einen QR-Code oder einen linearen Barcode mithilfe des [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19)-Felds einfügen.

In diesem Artikel werden wir uns ansehen, wie das Feld BARCodes in Aspose.Words implementiert ist und wie Aspose.Words es Benutzern ermöglicht, mit Word-Dokumenten zu arbeiten, die bereits einen Barcode enthalten.

## Barcodetypen, die von Aspose.Words unterstützt werden

Aspose.Words unterstützt verschiedene Arten von Strichcodes. Der Strichcodetyp wird als Zeichenfolgenwert in der [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/)-Eigenschaft übergeben.

{{% alert color="primary" %}}

Da die Arbeit mit Barcodes im Rahmen der Funktionalität von Aspose.Words eingeschränkt ist, kann der Anwender auf beliebige Bibliotheken, einschließlich Aspose.Barcode, zurückgreifen oder seinen eigenen Renderer schreiben, um mit Barcodes zu arbeiten. Sie können mehr über die Arten von Barcodes [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/) erfahren.

{{% /alert %}}

Beim Speichern in einem Wortformat, das Barcodes unterstützt, können Sie eine beliebige Art von Strichcode verwenden, die [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) ist. Wenn ein falscher Typ des Strichcodes übergeben wurde, wird Word einen Fehler anzeigen.

Beim Speichern in anderen Formaten wie PDF delegiert Aspose.Words die Barcode-Rendering an den Benutzercode, sodass der Benutzer auf die Barcode-Typen seiner Implementierung oder seines verwendeten Bibliotheks beschränkt ist.

## Einen Strichcode in ein Dokument einfügen oder ein Dokument mit hinzugefügtem Strichcode laden

"Aspose.Words bietet die Möglichkeit,"

1. Programmativ einen Barcode in ein Dokument mithilfe der [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) und [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) Feldcodes einfügen
2. Oder laden Sie ein Word-Dokument mit Barcodes, die bereits eingefügt wurden, für weitere Arbeit

Aspose.Words verfügt über eine Schnittstelle zum Generieren individueller Barcodes, die es einfach macht, [Aspose.Words](https://products.aspose.com/words/net/) und [Aspose.BarCode](https://products.aspose.com/barcode/net/) zusammen zu verwenden, um Barcode-Bilder in Ausgabedokumenten zu rendern. Sie können beispielsweise ein DOC-, OOXML- oder RTF-Dokument erstellen und das DISPLAYBARCODE-Feld mit Aspose.Words hinzufügen. Oder Sie können ein bereits vorhandenes DOC-, OOXML- oder RTF-Dokument laden, in dem das DISPLAYBARCODE-Feld bereits vorhanden ist, und Ihre eigene Implementierung des benutzerdefinierten Barcode-Generators bereitstellen.

Ein übliches DISPLAYBARCODE-Feld hat folgende Syntax:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Hier ist ein Beispielcode-Generator unter Verwendung der Aspose.Words und Aspose.BarCode API-Bibliotheken. Dieses Beispiel zeigt, wie man Barcode-Bilder an die DISPLAYBARCODE-Feldposition in einem Word-Dokument einfügt:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Sie können das Dokument auch mit dem geladenen oder neu eingefügten Barcode im festen Seitenformat wie z. B. PDF, XPS, u. a. speichern. Das folgende Code-Beispiel zeigt, wie Sie eine Word-Datei in PDF-Format speichern:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Für mehr Informationen zum Konvertieren von Dokumenten aus einem Format in ein anderes siehe die [Convert a Document](/words/net/convert-a-document/)-Dokumentations-Abschnitt.

{{% /alert %}}

{{% alert color="primary" %}}

Du kannst auch die [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/)-Schnittstelle verwenden, um Barcodes eingebettet in Word-Dokumenten in Bilder umzuwandeln. Die daraus resultierenden Bilder können aus dem Dokument extrahiert werden - siehe das Arbeits mit Bildern Artikel für Details.

{{% /alert %}}

## Angabe von Barcodeoptionen

"Bei der Arbeit mit Strichcodes können Sie einige zusätzliche Eigenschaften festlegen. Aspose.Words stellt Ihnen die [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/)-Klasse zur Verfügung – Klasse für Strichcodeparameter, die an den BarcodeGenerator weitergegeben werden sollen."

Aspose.Words unterstützt eingebettete 96 ppi-Auflösung für Bilder, die mit [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) generiert wurden, was die Mindestgröße eines Barcode-Bildes einschränkt. Um dies zu beheben, können Entwickler manuell Barcode-Bilder mit der Zielauflösung in ein Word-Dokument einfügen und sie im erforderlichen Format speichern. Weitere Informationen und Beispiele zur Arbeit mit Barcodes finden Sie in dem Artikel [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).