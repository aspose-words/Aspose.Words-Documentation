---
title: Arbeiten mit Bildern in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Bildern
linktitle: Arbeiten mit Bildern
description: "Bildformen im Detail und erweiterte Funktionen von Aspose.Words für .NET."
type: docs
weight: 300
url: /de/net/working-with-images/
---

Aspose.Words ermöglicht Benutzern ein sehr flexibles Arbeiten mit Bildern. In diesem Artikel können Sie nur einige der Möglichkeiten der Arbeit mit Bildern erkunden.

## So fügen Sie ein {#insert-an-image}-Bild ein

[DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/) bietet mehrere Überladungen der [InsertImage](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertimage/)-Methode, mit denen Sie ein Inline- oder Floating-Bild einfügen können. Wenn es sich bei dem Bild um eine EMF- oder WMF-Metadatei handelt, wird es im Metadateiformat in das Dokument eingefügt. Alle anderen Bilder werden im PNG-Format gespeichert. Die **InsertImage**-Methode kann Bilder aus verschiedenen Quellen verwenden:

- Aus einer Datei oder `URL` durch Übergabe eines `String`-Parameters [InsertImage](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertimage/)
- Aus einem Stream durch Übergabe eines `Stream`-Parameters **InsertImage**
- Von einem Image-Objekt durch Übergabe eines Image-Parameters **InsertImage**
- Aus einem Byte-Array durch Übergabe eines Byte-Array-Parameters **InsertImage**

Für jede der **InsertImage**-Methoden gibt es weitere Überladungen, die es Ihnen ermöglichen, ein Bild mit den folgenden Optionen einzufügen:
- Inline oder schwebend an einer bestimmten Position, zum Beispiel **InsertImage**
- Prozentskala oder benutzerdefinierte Größe, zum Beispiel **InsertImage**; Darüber hinaus gibt die **InsertImage**-Methode ein [Shape](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/)-Objekt zurück, das gerade erstellt und eingefügt wurde, sodass Sie die Eigenschaften der Form weiter ändern können

### So fügen Sie ein Inline-Bild {#insert-an-inline-image} ein

Übergeben Sie eine einzelne Zeichenfolge, die eine Datei darstellt, die das Bild enthält, an **InsertImage**, um das Bild als Inline-Grafik in das Dokument einzufügen

Das folgende Codebeispiel zeigt, wie man ein Inline-Bild an der Cursorposition in ein Dokument einfügt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### So fügen Sie ein schwebendes {#insert-a-floating-image}-Bild ein

Das folgende Codebeispiel zeigt, wie man ein schwebendes Bild aus einer Datei oder `URL` an einer angegebenen Position und Größe einfügt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## So extrahieren Sie Bilder aus einem {#how-to-extract-images-from-a-document}-Dokument

Alle Bilder werden in **Shape**-Knoten in einem [Document](https://reference.aspose.com/words/de/net/aspose.words/document/) gespeichert. Gehen Sie folgendermaßen vor, um alle Bilder oder Bilder mit einem bestimmten Typ aus dem Dokument zu extrahieren:

- Verwenden Sie die [GetChildNodes](https://reference.aspose.com/words/de/net/aspose.words/compositenode/getchildnodes/)-Methode, um alle **Shape**-Knoten auszuwählen.
– Durchlaufen Sie die resultierenden Knotensammlungen.
- Überprüfen Sie die boolesche [HasImage](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/hasimage/)-Eigenschaft.
- Extrahieren Sie Bilddaten mithilfe der [ImageData](https://reference.aspose.com/words/de/net/aspose.words.drawing/shape/imagedata/)-Eigenschaft.
- Bilddaten in einer Datei speichern.

Das folgende Codebeispiel zeigt, wie man Bilder aus einem Dokument extrahiert und als Dateien speichert:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx) herunterladen.

{{% /alert %}}

## So fügen Sie Barcodes auf jeder Dokumentseite ein {#how-to-insert-barcode-on-each-documen-page}

Dieses Beispiel zeigt, wie Sie auf allen oder bestimmten Seiten eines Word-Dokuments dieselben oder unterschiedliche Barcodes hinzufügen. Es gibt keine direkte Möglichkeit, Barcodes auf allen Seiten eines Dokuments hinzuzufügen, aber Sie können die Methoden **MoveToSection**, **MoveToHeaderFooter** und **InsertImage** verwenden, um zu einem beliebigen Abschnitt oder Kopf-/Fußzeilen zu wechseln und die Barcode-Bilder einzufügen, wie Sie im folgenden Code sehen können.

Das folgende Codebeispiel zeigt, wie auf jeder Seite eines Dokuments ein Barcodebild eingefügt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Seitenverhältnis des {#lock-aspect-ratio-of-image}-Bildes sperren

Das Seitenverhältnis einer geometrischen Form ist das Verhältnis ihrer Größen in verschiedenen Dimensionen. Sie können das Seitenverhältnis des Bildes mit [AspectRatioLocked](https://reference.aspose.com/words/de/net/aspose.words.drawing/shapebase/aspectratiolocked/) sperren. Der Standardwert des Seitenverhältnisses der Form hängt vom [ShapeType](https://reference.aspose.com/words/de/net/aspose.words.drawing/shapetype/) ab. Es ist *true* für `ShapeType.Image` und *false* für andere Formtypen.

Das folgende Codebeispiel zeigt, wie mit dem Seitenverhältnis gearbeitet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## So erhalten Sie tatsächliche Formgrenzen in Punkten {#how-to-get-actual-bounds-of-shape-in-points}

Wenn Sie möchten, dass der tatsächliche Begrenzungsrahmen der Form auf der Seite gerendert wird, können Sie dies mithilfe der [BoundsInPoints](https://reference.aspose.com/words/de/net/aspose.words.rendering/noderendererbase/boundsinpoints/)-Eigenschaft erreichen.

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Bilder zuschneiden {#crop-images}

Unter dem Zuschneiden eines Bildes versteht man in der Regel das Entfernen unerwünschter äußerer Teile eines Bildes, um den Bildausschnitt zu verbessern. Es wird auch zum Entfernen einiger Teile eines Bildes verwendet, um den Fokus auf einen bestimmten Bereich zu erhöhen.

Das folgende Codebeispiel zeigt, wie dies mit Aspose.Words API erreicht wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Speichern Sie Bilder als WMF {#save-images-as-wmf}

Aspose.Words bietet Funktionen zum Speichern aller verfügbaren Bilder in einem Dokument im [WMF](https://docs.fileformat.com/image/wmf/)-Format bei der Konvertierung von DOCX in RTF.

Das folgende Codebeispiel zeigt, wie Bilder als WMF mit RTF-Speicheroptionen gespeichert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
