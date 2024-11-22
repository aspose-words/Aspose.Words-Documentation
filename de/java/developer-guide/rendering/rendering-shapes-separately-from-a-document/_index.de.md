---
title: Rendering Formen Getrennt von einem Dokument
second_title: Aspose.Words für Java
articleTitle: Rendering Formen Getrennt von einem Dokument
linktitle: Rendering Formen Getrennt von einem Dokument
description: "Extrahieren Sie verschiedene grafische Objekte, wie Bilder, Textfeld mit Absätzen oder Pfeilformen, wenn Sie ein Dokument bearbeiten, und exportieren Sie sie an einen externen Standort mit Java."
type: docs
weight: 40
url: /de/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Bei der Verarbeitung von Dokumenten besteht die gemeinsame Aufgabe darin, alle im Dokument gefundenen Bilder zu extrahieren und an einen externen Standort zu exportieren. Diese Aufgabe wird einfach mit Aspose.Words API, die bereits die Funktionalität zum Extrahieren und Speichern von Bilddaten bietet. Manchmal möchten Sie jedoch ähnlich andere Arten von grafischen Inhalten extrahieren, die durch eine andere Art von Zeichnungsobjekt dargestellt sind, beispielsweise ein Textfeld mit Absätzen, Pfeilformen und ein kleines Bild. Es gibt keinen einfachen Weg, dieses Objekt zu machen, da es sich um eine Kombination von einzelnen Inhaltselementen handelt. Sie können auch einen Fall auftreten, wenn die Inhalte zusammen in das Objekt gruppiert wurden, das wie ein einziges Bild aussieht.

Aspose.Words bietet Funktionalität, um diese Art von Inhalten in der gleichen Weise zu extrahieren, können Sie ein einfaches Bild aus der Form herausziehen, wie der erzeugte Inhalt. Dieser Artikel beschreibt, wie diese Funktionalität verwendet wird, um Formen unabhängig vom Dokument zu machen.

## Formen in Aspose.Words

Alle Inhalte in einer Belegzeichnungsschicht sind durch die [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) oder [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Knoten in der Aspose.Words Dokument Objektmodul (DOM) Solche Inhalte können Textfelder, Bilder, AutoShapes, OLE-Objekte usw. sein. Einige Felder werden auch als Formen importiert, zum Beispiel, `INCLUDEPICTURE` Feld.

Ein einfaches Bild wird durch eine **Shape** Knoten [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Dieser Formknoten hat keine Kinderknoten, aber die innerhalb dieses Formknotens enthaltenen Bilddaten können von der [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) Eigentum. Andererseits kann auch eine Form aus vielen Kinderknoten gebildet werden. Zum Beispiel eine Textfeldform, die durch die [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) Eigenschaft, kann aus vielen Knoten, wie [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) und [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Die meisten Formen können die **Paragraph** und **Table** Block-Level-Knoten. Dies sind die gleichen Knoten wie die im Hauptkörper erscheinen. Formen sind immer Teile eines Absatzes, entweder direkt inline enthalten oder an den **Absatz** aber "auslöschen" überall auf der Dokumentseite.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Ein Dokument kann auch Formen enthalten, die zusammen gruppiert werden. Grouping kann eingeschaltet werden Microsoft Word indem Sie mehrere Objekte auswählen und auf "Group" im Kontextmenü.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, Diese Formengruppen sind durch die [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Knoten. Diese können auch in gleicher Weise aufgerufen werden, um die gesamte Gruppe zum Bild zu machen.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Das DOCX-Format kann spezielle Arten von Bildern, wie Diagramme oder Diagramme enthalten. Diese Formen sind auch durch die **Shape** Knoten in Aspose.Words, die auch ein ähnliches Verfahren zur Darstellung als Bilder bietet. Eine Form kann nicht als Kind eine andere Form enthalten, es sei denn, diese Form ist ein Bild (**ShapeType.Image**) Zum Beispiel Microsoft Word erlaubt es Ihnen nicht, ein Textfeld in ein anderes Textfeld einzufügen.

Die oben beschriebenen Formtypen liefern ein spezielles Verfahren, um die Formen durch die [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) Klasse. Ein Beispiel der **ShapeRenderer** Klasse wird für eine **Shape** oder **GroupShape** durch die **GetShapeRenderer** Verfahren oder durch Passieren **Shape** zum Konstruktor der **ShapeRenderer** Klasse. Diese Klasse bietet Zugang zu Mitgliedern, die eine Form wie folgt zulassen:

- Datei auf der Festplatte mit der [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) Prozessüberlastung
- Stream mit der [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) Prozessüberlastung
- Grafiken Objekt mit Hilfe der [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) und [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) Methoden

{{% alert color="primary" %}}

Beim Rendern eines **Shape** Es muss Teil der Dokumentenhierarchie sein. Wenn **Shape** ist kein Teil des Dokumentbaums, dann wird die ausgegebene Ausgabe nach dem Aufruf leer sein **ShapeRenderer** Methoden.

{{% /alert %}}

## Rendering to File oder Stream

Die [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) Verfahren bietet Überlastungen, die eine Form direkt zu einer Datei oder einem Stream machen. Beide Überlastungen nehmen eine Instanz der [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) Klasse, die Optionen zur Gestaltung der Form definieren lässt. Dies funktioniert in der gleichen Weise wie die [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Methode. Auch wenn dieser Parameter erforderlich ist, können Sie einen Null-Wert übergeben, indem Sie angeben, dass es keine benutzerdefinierten Optionen gibt.

Die Form kann in jedem Bildformat exportiert werden, das im [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Aufzählung. Beispielsweise kann das Bild als Rasterbild wie JPEG durch Angabe der [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) Aufzählung oder als Vektorbild, wie EMF durch Angabe der [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Das nachfolgende Codebeispiel illustriert die Darstellung einer Form auf ein EMF-Bild getrennt von Dokument und das Speichern auf Festplatte:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Das nachfolgende Codebeispiel illustriert die Form eines JPEG-Bildes getrennt vom Dokument und die Speicherung in einen Stream:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

Die **ImageSaveOptions** class ermöglicht es Ihnen, eine Vielzahl von Optionen anzugeben, die steuern, wie das Bild dargestellt wird. Die oben beschriebene Funktionalität kann in gleicher Weise auf die **GroupShape** und **Shape** Knoten.

## Rendering to a `Graphics` Gegenstand

Direkt an eine **Graphics** Objekt ermöglicht es Ihnen, Ihre eigenen Einstellungen und den Zustand für die **Graphics** Objekt. Ein gemeinsames Szenario bedeutet, eine Form direkt in eine **Graphics** aus einem Windows Formular oder eine Bitmap. Wenn **Shape** node wird eingestellt, die Einstellungen beeinflussen die Form Aussehen. Beispielsweise können Sie die Form drehen oder skalieren, indem Sie die **RotateTransform** oder **ScaleTransform** Methoden für die **Graphics** Objekt.

Das folgende Beispiel zeigt, wie eine Form an eine **Graphics** Objekt getrennt vom Dokument und Anwendung Rotation auf das Rendered-Bild:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

In ähnlicher Weise [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) Verfahren, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)von der [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) ist nützlich für die Erstellung von Miniaturansichten von Dokumenteninhalten. Die Formgröße wird durch den Konstruktor vorgegeben. Die **RenderToSize** die Methode akzeptiert **Graphics** Objekt, die X- und Y-Koordinaten der Bildposition und die Größe des Bildes (Breite und Höhe), das auf die **Graphics** Objekt.

Die **Shape** mit Hilfe der [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) von der [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) Klasse. Dies ist ähnlich wie die [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) Methode, die die gleichen großen Parameter akzeptiert. Der Unterschied zwischen diesen beiden Methoden ist, daß **ShapeRenderer.RenderToScale** Methode, statt einer wörtlichen Größe, wählen Sie einen Float-Wert, der die Form während seiner Rendering skaliert. Wenn der Schwimmerwert gleich 1,0 ist, wird die Form bei 100% ihrer ursprünglichen Größe wiedergegeben. Ein Schwimmerwert von 0,5 reduziert die Bildgröße um die Hälfte.

## Rendern eines Formbildes

Die [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasse stellt Objekte in der Zeichenschicht dar, wie ein AutoShape, Textfeld, Freeform, OLE-Objekt, ActiveX-Steuerung oder ein Bild. Verwendung von **Shape** Klasse, können Sie Formen in einer Microsoft Word Dokument. Eine wichtige Eigenschaft einer Form ist ihre [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Formen verschiedener Typen können in einem Word-Dokument unterschiedliche Fähigkeiten haben. Zum Beispiel können nur Bilder und OLE-Formen Bilder in ihnen haben, während die meisten Formen nur Text haben können.

Das folgende Beispiel zeigt, wie man ein Shape-Bild zu einem JPEG-Bild getrennt vom Dokument macht und auf die Festplatte speichert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Abrufen einer Formgröße

Die [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) Klasse bietet auch Funktionalität, um die Größe der Form in Pixeln durch die [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) Methode. Diese Methode akzeptiert zwei Float- (Single)-Parameter – die Skala und DPI, die bei der Berechnung der Formgröße beim Rendern der Form verwendet werden. Das Verfahren gibt die [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) ein Objekt, das die Breite und Höhe der berechneten Größe enthält. Dies ist nützlich, wenn man die Größe der Rendered-Form im Voraus kennen muss, beispielsweise beim Erstellen einer neuen Bitmap aus dem Rendered-Ausgang.

Das folgende Beispiel zeigt, wie man ein neues Bitmap- und Grafikobjekt mit der Breite und Höhe der darzustellenden Form erstellt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Bei Verwendung der **RenderToSize** oder **RenderToScale** Verfahren, wobei die Bildgröße auch in der [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) Objekt. Dies kann einer Variable zugeordnet und bei Bedarf verwendet werden.

Die **SizeInPoints** Eigenschaft gibt die in Punkten gemessene Formgröße zurück (siehe [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)) Das Ergebnis ist `SizeF` Objekt mit Breite und Höhe.
