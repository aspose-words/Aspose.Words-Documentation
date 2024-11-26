---
title: Erstelle BarCode in Java
second_title: Aspose.Words für Java
articleTitle: Benutzerdefiniertes BarCode-Bild generieren
linktitle: Benutzerdefiniertes BarCode-Bild generieren
description: "Beispiel für die Generierung von Barcode-Formen mit Java."
type: docs
weight: 350
url: /de/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Ein Barcode ist eine visuelle Darstellung von Daten in Form von parallelen Linien oder Mustern. Barcodes sind in verschiedenen Branchen wie Einzelhandel, Logistik, Gesundheitswesen, Banken und vielen anderen weit verbreitet.

Microsoft Word ermöglicht Benutzern das direkte Einbetten von Barcodes in Dokumente mithilfe von Feldern. Benutzer können einen bestimmten Barcode-Typ einfügen, z. B. einen QR-Code oder einen linearen Barcode, indem Sie die [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) Feld.

In diesem Artikel werden wir uns ansehen, wie das Feld BARCODE in Aspose.Words implementiert ist und wie Aspose.Words es Benutzern ermöglicht, mit Word-Dokumenten zu arbeiten, denen bereits ein Barcode hinzugefügt wurde.

## Von Aspose.Words unterstützte Barcode-Typen

Aspose.Words unterstützt verschiedene Arten von Barcodes. Der Barcode-Typ wird als Zeichenfolgenwert in der Eigenschaft [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) übergeben.

{{% alert color="primary" %}}

Da die Arbeit mit Barcodes innerhalb der Funktionalität von Aspose.Words eingeschränkt ist, kann der Benutzer jede Bibliothek verwenden, einschließlich Aspose.Barcode, oder schreiben Sie sein eigenes Rendering, um mit Barcodes zu arbeiten. Sie können mehr über die Arten von Barcodes erfahren [unterstützt von Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Beim Speichern in Word-Formaten, die Barcodes unterstützen, können Sie jeden beliebigen Barcodetyp verwenden [unterstützt von Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Wenn ein falscher Barcode-Typ übergeben wurde, zeigt Word einen Fehler an.

Beim Speichern in anderen Formaten, z. B. PDF, delegiert Aspose.Words das Rendern von Barcodes an den Benutzercode, sodass der Benutzer auf die Barcodetypen seiner Implementierung oder Bibliothek beschränkt ist.

## Fügen Sie einen Barcode in ein Dokument ein oder laden Sie ein Dokument mit einem hinzugefügten Barcode

Aspose.Words bietet die Möglichkeit:

1. Programmgesteuertes Einfügen eines Barcodes in ein Dokument mit dem [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) und [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) Feldfunktionen
2. Oder laden Sie ein Word-Dokument mit bereits eingefügten Barcodes für die weitere Arbeit

Aspose.Words verfügt über eine Schnittstelle zum Generieren benutzerdefinierter Barcodes, die die Verwendung vereinfacht [Aspose.Words](https://products.aspose.com/words/java/) und [Positionieren.BarCode](https://products.aspose.com/barcode/java/) zusammen, um Barcode-Bilder in Ausgabedokumenten zu rendern. Sie können beispielsweise ein DOC-, OOXML- oder RTF-Dokument erstellen und mit Aspose.Words das Feld DISPLAYBARCODE hinzufügen. Oder Sie können ein DOC -, OOXML - oder RTF -Dokument mit bereits vorhandenem DISPLAYBARCODE -Feld laden und Ihre Implementierung des benutzerdefinierten Barcode-Generators bereitstellen.

Ein typisches DISPLAYBARCODE-Feld hat die folgende Syntax:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Unten sehen Sie einen Beispielcodegenerator, der Aspose.Words und Aspose verwendet.BarCode APIs. Dieses Beispiel zeigt, wie Barcode-Bilder an der Feldposition DISPLAYBARCODE in ein Word-Dokument eingefügt werden:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Sie können das Dokument mit dem geladenen oder neu eingefügten Barcode auch in festen Seitenformaten wie PDF, XPS usw. speichern. Das folgende Codebeispiel zeigt, wie Sie ein Word-Dokument im Format PDF speichern:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Weitere Informationen zum Konvertieren von Dokumenten von einem Format in ein anderes finden Sie im [Ein Dokument konvertieren](/words/java/convert-a-document/) abschnitt Dokumentation.

{{% /alert %}}

{{% alert color="primary" %}}

Sie können auch die [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) -Schnittstelle verwenden, um in Word-Dokumente eingebettete Barcodes in Bilder umzuwandeln. Die resultierenden Bilder können aus dem Dokument extrahiert werden - Einzelheiten finden Sie im Artikel Arbeiten mit Bildern.

{{% /alert %}}

## Barcode-Optionen angeben

Wenn Sie mit Barcodes arbeiten, können Sie einige zusätzliche Eigenschaften festlegen. Aspose.Words liefert Ihnen die [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) -Klasse - Klasse für Barcode-Parameter, die an BarcodeGenerator übergeben werden sollen.

Aspose.Words unterstützt eine eingebettete Auflösung von 96 ppi für mit [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) generierte Bilder, wodurch die Mindestgröße eines Barcode-Bildes begrenzt wird. Um dies zu beheben, können Entwickler Barcode-Bilder mit der Zielauflösung manuell in ein Word-Dokument einfügen und im gewünschten Format speichern. Weitere Details und Beispiele zum Arbeiten mit Barcodes finden Sie im Artikel [Lesen von Barcodes aus Word-Dokumenten](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
