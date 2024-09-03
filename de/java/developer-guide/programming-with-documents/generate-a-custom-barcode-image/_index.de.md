---
title: Erstelle Barcode in Java
second_title: Aspose.Words für Java
articleTitle: Erzeuge ein benutzerdefiniertes Barcode-Bild
linktitle: Erzeuge ein benutzerdefiniertes Barcode-Bild
description: "Beispiel für die Erzeugung von Strichcodes mithilfe von Java."
type: docs
weight: 350
url: /de/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Ein Strichcode ist eine visuelle Darstellung von Daten in Form paralleler Linien oder Muster. Strichcodes werden in verschiedenen Branchen wie Einzelhandel, Logistik, Gesundheitswesen, Banken und vielen anderen breit eingesetzt.

"Microsoft Word ermöglicht Benutzern die Einbettung von Strichcodes direkt in Dokumente mit Hilfe von Feldern. Benutzer können einen bestimmten Typ von Strichcode, wie z.B. einen QR-Code oder einen linearen Barcode, mithilfe des [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19)-Felds einfügen."

In diesem Artikel werden wir untersuchen, wie das BARCODE-Feld auf Aspose.Words umgesetzt wird und wie Aspose.Words Benutzern die Arbeit mit Word-Dokumenten ermöglicht, denen bereits ein Strichcode hinzugefügt wurde.

## Barcodentypen, die von Aspose.Words unterstützt werden

Aspose.Words unterstützt verschiedene Arten von Barcodes. Der Barcode-Typ wird als Zeichenfolgenwert im [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType)-Eigenschaftsfeld übergeben.

{{% alert color="primary" %}}

"Da die Arbeit mit Strichcodes innerhalb der Funktionalität von Aspose.Words begrenzt ist, kann der Benutzer jede Bibliothek verwenden, einschließlich Aspose.Barcode oder seinen eigenen Rendering-Code schreiben, um mit Strichcodes zu arbeiten. Sie können mehr über die Typen von Strichcodes [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/) erfahren."

{{% /alert %}}

Beim Speichern in Wörtern-Formaten, die Barcodes unterstützen, können Sie alle Arten von Barcodes verwenden, die [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) sind. Wenn ein falscher Barcodeart übergeben wurde, wird Word einen Fehler anzeigen.

Bei der Ersparnis in anderen Formaten wie PDF delegiert Aspose.Words den Barcode-Rendering an die Benutzer-Code, sodass der Benutzer auf die Barcodes der Implementierung oder Bibliothek beschränkt ist, die er verwendet.

## Einfügen einer Strichcode in ein Dokument oder Laden eines Dokuments mit einem hinzugefügten Strichcode

Aspose.Words bietet die Möglichkeit,:

1. Programmativ in ein Dokument eine Barcode mit den [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) und [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)-Feldcodes einfügen
2. Oder laden Sie ein Word-Dokument, in das bereits Barcodes eingefügt wurden, für weitere Arbeit

Aspose.Words verfügt über eine Schnittstelle zum Generieren benutzerdefinierter Barcodes, mit der es einfach ist, [Aspose.Words](https://products.aspose.com/words/java/) und [Aspose.BarCode](https://products.aspose.com/barcode/java/) zusammen zu verwenden, umBarcode-Bilder in Ausgabedokumenten zu rendern. Sie können beispielsweise ein DOC-, OOXML- oder RTF-Dokument erstellen und das Feld "DISPLAYBARCODE" damit hinzufügen, indem Sie Aspose.Words verwenden. Oder Sie laden ein DOC-, OOXML- oder RTF-Dokument mit dem bereits vorhandenen Feld "DISPLAYBARCODE" und stellen Ihre Implementierung eines benutzerdefinierten Barcode-Generators bereit.

Ein typisches DISPLAYBARCODE-Feld hat folgende Syntax:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Hier ist ein Beispielcode-Generator unter Verwendung von Aspose.Words und Aspose.BarCode API. Dieses Beispiel zeigt, wie man Barcodes als Bilder an der DISPLAYBARCODE-Position in einem Word-Dokument einfügt:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Du kannst das Dokument auch mit den geladenen oder neu eingefügten Strichcodes in festen Seitenformaten wie z.B. PDF, XPS u.ä. speichern. Der folgende Code-Beispiel zeigt, wie man ein Word-Dokument im PDF-Format speichert:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Für mehr Informationen über die Umwandlung von Dokumenten aus einem Format in ein anderes siehe den [Convert a Document](/words/java/convert-a-document/)-Dokumentationsteil.

{{% /alert %}}

{{% alert color="primary" %}}

Sie können das [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)-Interface auch verwenden, um Barcodes eingebettet in Word-Dokumente in Bilder zu konvertieren. Die resultierenden Bilder können aus dem Dokument extrahiert werden - siehe den Artikel "Arbeiten mit Bildern", für Details dazu.

{{% /alert %}}

## Barcode-Optionen angeben

Bei der Arbeit mit Strichcodes können Sie einige zusätzliche Eigenschaften einstellen. Aspose.Words bietet Ihnen die [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) Klasse – Klasse für Parameter von Strichcodes zum Weiterleiten an BarcodeGenerator.

Aspose.Words unterstützt eingebettete 96 ppi-Auflösung für Bilder, die mit [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) generiert wurden, was die Mindestgröße von Barcode-Bildern einschränkt. Um dieses Problem zu beheben, können Entwickler manuell Barcode-Bilder in der Zielauflösung in ein Word-Dokument einfügen und sie im erforderlichen Format speichern. Weitere Details und Beispiele zur Arbeit mit Barcodes finden Sie im Artikel [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
