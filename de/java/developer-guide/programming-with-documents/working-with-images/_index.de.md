---
title: Arbeiten mit Bildern in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Bildern
linktitle: Arbeiten mit Bildern
type: docs
description: "Bildformen in Details und erweiterten Funktionen, die von Aspose.Words für Java bereitgestellt werden."
weight: 300
url: /de/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ermöglicht es Benutzern, sehr flexibel mit Bildern zu arbeiten. In diesem Artikel können Sie nur einige der Möglichkeiten der Arbeit mit Bildern erkunden.

## So extrahieren Sie Bilder aus einem Dokument {#how-to-extract-images-from-a-document}

Alle Bilder werden in **Shape** Knoten in einem Dokument gespeichert. Gehen Sie folgendermaßen vor, um alle Bilder oder Bilder mit einem bestimmten Typ aus dem Dokument zu extrahieren:

- Verwenden Sie die Methode [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes), um alle Formknoten auszuwählen.
- Durchlaufen Sie die resultierenden Knotensammlungen.
- Überprüfen Sie die boolesche Eigenschaft [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- Extrahieren Sie Bilddaten mit der Eigenschaft [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- Speichern Sie Bilddaten in einer Datei.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## So fügen Sie einen Barcode auf jeder Dokumentseite ein {#how-to-insert-barcode-on-each-documen-page}

In diesem Beispiel können Sie auf allen oder bestimmten Seiten eines Word-Dokuments dieselben oder verschiedene Barcodes hinzufügen. Es gibt keine direkte Möglichkeit, Barcodes auf allen Seiten eines Dokuments hinzuzufügen, aber Sie können die Methoden [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) und [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) verwenden, um zu einem beliebigen Abschnitt oder Kopf- / Fußzeilen zu wechseln und die Barcode-Bilder einzufügen, wie Sie sehen können im folgenden Code.

Das folgende Codebeispiel zeigt, wie Sie auf jeder Seite eines Dokuments ein Barcode-Bild einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Seitenverhältnis des Bildes sperren {#lock-aspect-ratio-of-image}

Das Seitenverhältnis einer geometrischen Form ist das Verhältnis ihrer Größen in verschiedenen Dimensionen. Sie können das Seitenverhältnis eines Bildes mit [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked) sperren. Der Standardwert für das Seitenverhältnis der Form hängt von [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/) ab. Es ist wahr für `ShapeType.Image` und falsch für andere Formtypen.

Das folgende Codebeispiel zeigt, wie Sie mit dem Seitenverhältnis arbeiten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## So erhalten Sie die tatsächlichen Formgrenzen in Punkten {#how-to-get-actual-bounds-of-shape-in-points}

Wenn Sie den tatsächlichen Begrenzungsrahmen der Form wie auf der Seite gerendert haben möchten, können Sie dies mithilfe der Eigenschaft [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) erreichen.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Bilder zuschneiden

Das Zuschneiden eines Bildes bezieht sich normalerweise auf das Entfernen der unerwünschten äußeren Teile eines Bildes, um den Rahmen zu verbessern. Es wird auch zum Entfernen einiger Teile eines Bildes verwendet, um den Fokus auf einen bestimmten Bereich zu erhöhen.

Das folgende Codebeispiel zeigt, wie dies mit Aspose.Words API erreicht wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Speichern von Bildern als WMF

Aspose.Words bietet Funktionen zum Speichern aller verfügbaren Bilder in einem Dokument in [WMF](https://docs.fileformat.com/image/wmf/)formatieren Sie beim Konvertieren von DOCX in RTF.

Das folgende Codebeispiel zeigt, wie Bilder als WMF mit RTF Speicheroptionen gespeichert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
