---
title: Arbeiten mit Bildern in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Bildern
linktitle: Arbeiten mit Bildern
type: docs
description: "Bildformen in Details und erweiterten Funktionen von Aspose.Words für Java."
weight: 300
url: /de/java/working-with-images/
---

Aspose.Words ermöglicht es Benutzern, mit Bildern sehr flexibel zu arbeiten. In diesem Artikel können Sie nur einige der Möglichkeiten der Arbeit mit Bildern erkunden.

## Wie man Bilder aus einem Dokument extrahiert {#how-to-extract-images-from-a-document}

Alle Bilder sind im Inneren gespeichert **Shape** Knoten in einem Dokument. Um alle Bilder oder Bilder mit einem bestimmten Typ aus dem Dokument zu extrahieren, folgen Sie diesen Schritten:

- Verwenden Sie die [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) Verfahren zur Auswahl aller Shape-Knoten.
- Iterate durch resultierende Knotensammlungen.
- Überprüfen Sie die [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) boolean Eigentum.
- Bilddaten mit Hilfe der [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) Eigentum.
- Speichern Sie Bilddaten in eine Datei.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Wie Barcode auf jeder Dokumentseite einfügen {#how-to-insert-barcode-on-each-documen-page}

In diesem Beispiel können Sie die gleichen oder unterschiedlichen Barcodes auf allen oder bestimmten Seiten eines Word-Dokuments hinzufügen. Es gibt keine direkte Möglichkeit, Barcodes auf allen Seiten eines Dokuments hinzuzufügen, aber Sie können verwenden [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) und [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) Methoden, um zu jedem Abschnitt oder Kopfzeilen / Fußzeilen zu bewegen und die Barcode-Bilder einzufügen, wie Sie im folgenden Code sehen können

Das folgende Codebeispiel zeigt, wie man auf jeder Seite eines Dokuments ein Barcodebild einfügen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Verriegeln Aspect Ratio von Bild {#lock-aspect-ratio-of-image}

Das Aspektverhältnis einer geometrischen Form ist das Verhältnis ihrer Größen in unterschiedlichen Abmessungen. Sie können das Seitenverhältnis eines Bildes unter Verwendung von [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Der Standardwert des Aspektverhältnisses der Form hängt von der [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Es ist true für `ShapeType.Image` und false für andere Formen.

Das folgende Codebeispiel zeigt, wie man mit Aspektverhältnis arbeitet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Wie man tatsächliche Brüste der Form in Punkten erhält {#how-to-get-actual-bounds-of-shape-in-points}

Wenn Sie die tatsächliche Begrenzungsbox der Form möchten, wie auf der Seite dargestellt, können Sie dies erreichen, indem Sie die [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) Eigentum.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft genutzt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Crop Images

Das Ernten eines Bildes bezieht sich in der Regel auf die Entfernung der unerwünschten äußeren Teile eines Bildes, um die Schaumbildung zu verbessern. Es wird auch zur Entfernung von einigen der Abschnitte eines Bildes verwendet, um den Fokus auf einen bestimmten Bereich zu erhöhen.

Das folgende Codebeispiel zeigt, wie dies mit Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Bilder als WMF speichern

Aspose.Words bietet Funktionalität, um alle verfügbaren Bilder in einem Dokument zu speichern [WMF](https://docs.fileformat.com/image/wmf/)Format bei der Konvertierung von DOCX zu RTF.

Das folgende Codebeispiel zeigt, wie man Bilder als WMF mit RTF Speicheroptionen speichert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
