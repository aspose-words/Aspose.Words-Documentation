---
title: Formen getrennt von einem Dokument rendern
second_title: Aspose.Words für C++
articleTitle: Formen getrennt von einem Dokument rendern
linktitle: Formen getrennt von einem Dokument rendern
description: "Extrahieren Sie bei der Verarbeitung eines Dokuments verschiedene Grafikobjekte, z. B. Bilder, Textfelder mit Absätzen oder Pfeilformen, und exportieren Sie sie an einen externen Speicherort."
type: docs
weight: 40
url: /de/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Bei der Verarbeitung von Dokumenten besteht eine häufige Aufgabe darin, alle im Dokument gefundenen Bilder zu extrahieren und an einen externen Speicherort zu exportieren. Diese Aufgabe wird mit Aspose.Words API einfach, das bereits die Funktionalität zum Extrahieren und Speichern von Bilddaten bietet. Manchmal möchten Sie jedoch möglicherweise auch andere Arten von Grafikinhalten extrahieren, die durch einen anderen Typ von Zeichenobjekt dargestellt werden, z. B. ein Textfeld mit Absätzen, Pfeilformen und einem kleinen Bild. Es gibt keine einfache Möglichkeit, dieses Objekt zu rendern, da es sich um eine Kombination einzelner Inhaltselemente handelt. Es kann auch vorkommen, dass der Inhalt zu einem Objekt gruppiert wurde, das wie ein einzelnes Bild aussieht.

Aspose.Words bietet Funktionen zum Extrahieren dieses Inhaltstyps auf die gleiche Weise, wie Sie ein einfaches Bild aus einer Form als gerenderten Inhalt extrahieren können. In diesem Artikel wird beschrieben, wie Sie diese Funktionalität verwenden, um Formen unabhängig vom Dokument zu rendern.

## Formtypen in Aspose.Words

Der gesamte Inhalt einer Dokumentzeichnungsebene wird durch den Knoten [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) oder [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) im Dokumentobjektmodul Aspose.Words (DOM) dargestellt. Solche Inhalte können Textfelder, Bilder, AutoShapes, OLE Objekte usw. sein. Einige Felder werden auch als Formen importiert, z. B. das Feld `INCLUDEPICTURE`.

Ein einfaches Bild wird durch einen **Shape** -Knoten von [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) dargestellt. Dieser Formknoten hat keine untergeordneten Knoten, aber auf die in diesem Formknoten enthaltenen Bilddaten kann mit der Eigenschaft [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/) zugegriffen werden. Andererseits kann eine Form auch aus vielen untergeordneten Knoten bestehen. Beispielsweise kann eine Textfeldform, die durch die Eigenschaft [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) dargestellt wird, aus vielen Knoten bestehen, z. B. [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) und [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). Die meisten Formen können die Knoten **Paragraph** und **Table** auf Blockebene enthalten. Dies sind die gleichen Knoten wie die, die im Hauptteil erscheinen. Formen sind immer Teile eines Absatzes, entweder direkt inline enthalten oder an **Paragraph,** verankert, aber an einer beliebigen Stelle auf der Dokumentseite "schwebend".

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Ein Dokument kann auch Formen enthalten, die gruppiert sind. Die Gruppierung kann in Microsoft Word aktiviert werden, indem mehrere Objekte ausgewählt und im Kontextmenü auf "Gruppieren" geklickt wird.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words werden diese Gruppen von Formen durch den Knoten `GroupShape` dargestellt. Diese können auch auf die gleiche Weise aufgerufen werden, um die gesamte Gruppe für das Bild zu rendern.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Das Format DOCX kann spezielle Bildtypen enthalten, z. B. Diagramme oder Diagramme. Diese Formen werden auch durch den Knoten **Shape** in Aspose.Words dargestellt, der auch eine ähnliche Methode zum Rendern als Bilder bereitstellt. Konstruktionsbedingt kann eine Form als Kind keine andere Form enthalten, es sei denn, diese Form ist ein Bild (**ShapeType.Image**). Mit Microsoft Word können Sie beispielsweise kein Textfeld in ein anderes Textfeld einfügen.

Die oben beschriebenen Formtypen bieten eine spezielle Methode zum Rendern der Formen über die Klasse [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Eine Instanz der **ShapeRenderer** -Klasse wird für eine **Shape** oder **GroupShape** durch die **GetShapeRenderer** -Methode oder durch Übergeben der **Shape** an den Konstruktor der **ShapeRenderer** -Klasse abgerufen. Diese Klasse bietet Zugriff auf Elemente, mit denen eine Form wie folgt gerendert werden kann:

- Datei auf der Festplatte mit der [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)-Methodenüberladung
- Stream mit der [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) -Methodenüberladung
- Das `Graphics` -Objekt mithilfe der Methoden [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) und [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Beim Rendern einer **Shape** muss sie Teil der Dokumenthierarchie sein. Wenn **Shape** nicht Teil des Dokumentbaums ist, ist die gerenderte Ausgabe nach dem Aufrufen von **ShapeRenderer** -Methoden leer.

{{% /alert %}}

## Rendern in Datei oder Stream

Die [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) -Methode stellt Überladungen bereit, die eine Form direkt in eine Datei oder einen Stream rendern. Beide Überladungen akzeptieren eine Instanz der Klasse [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), mit der Optionen zum Rendern der Form definiert werden können. Dies funktioniert genauso wie die [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) -Methode. Obwohl dieser Parameter erforderlich ist, können Sie einen Nullwert übergeben, der angibt, dass keine benutzerdefinierten Optionen vorhanden sind.

Die Form kann in ein beliebiges Bildformat exportiert werden, das in der [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)-Aufzählung angegeben ist. Beispielsweise kann das Bild als Rasterbild gerendert werden, z. B. JPEG durch Angabe der `SaveFormat.Jpeg`-Aufzählung, oder als Vektorbild, z. B. EMF durch Angabe von `SaveFormat.Emf`.

Das folgende Codebeispiel zeigt das Rendern einer Form in ein EMF -Bild getrennt vom Dokument und das Speichern auf der Festplatte:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Das folgende Codebeispiel zeigt das Rendern einer Form in ein JPEG -Bild getrennt vom Dokument und das Speichern in einem Stream:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Mit der Klasse **ImageSaveOptions** können Sie eine Vielzahl von Optionen angeben, die steuern, wie das Bild gerendert wird. Die oben beschriebene Funktionalität kann in gleicher Weise auf die Knoten **GroupShape** und **Shape** angewendet werden.

## Rendern in ein .NET -Grafikobjekt

Durch direktes Rendern in ein **Graphics** -Objekt können Sie Ihre eigenen Einstellungen und den Status für das **Graphics** -Objekt definieren. Ein häufiges Szenario besteht darin, eine Form direkt in ein **Graphics**-Objekt zu rendern, das aus einem Windows-Formular oder einer Bitmap abgerufen wurde. Wenn der **Shape** -Knoten gerendert wird, wirken sich die Einstellungen auf das Erscheinungsbild der Form aus. Sie können die Form beispielsweise drehen oder skalieren, indem Sie die Methoden **RotateTransform** oder **ScaleTransform** für das Objekt **Graphics** verwenden.

Das folgende Beispiel zeigt, wie eine Form in a gerendert wird.**NET Graphics** Objekt getrennt vom Dokument und Drehung auf das gerenderte Bild anwenden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Ähnlich wie bei der [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/)-Methode ist die von [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) geerbte [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)-Methode nützlich, um Miniaturansichten von Dokumentinhalten zu erstellen. Die Formgröße wird durch den Konstruktor angegeben. Die **RenderToSize** -Methode akzeptiert das **Graphics** -Objekt, die X- und Y-Koordinaten der Bildposition und die Größe des Bildes (Breite und Höhe), das auf das **Graphics** -Objekt gezeichnet wird.

Die **Shape** kann mit der von der [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) -Klasse geerbten [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) -Methode in einem bestimmten Maßstab gerendert werden. Dies ähnelt der [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/) -Methode, die dieselben Hauptparameter akzeptiert. Der Unterschied zwischen diesen beiden Methoden besteht darin, dass Sie bei der **ShapeRenderer.RenderToScale** -Methode anstelle einer Literalgröße einen Gleitkommawert auswählen, der die Form während des Renderns skaliert. Wenn der Gleitkommawert gleich 1.0 ist, wird die Form bei gerendert 100% in seiner ursprünglichen Größe. Ein Gleitkommawert von 0.5 reduziert die Bildgröße um die Hälfte.

## Rendern eines Formbilds

Die Klasse [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) repräsentiert Objekte in der Zeichnungsebene, z. B. ein AutoShape-, Textfeld-, Freiform-, OLE-Objekt, ActiveX-Steuerelement oder ein Bild. Mit der Klasse **Shape** können Sie Formen in einem Microsoft Word-Dokument erstellen oder ändern. Eine wichtige Eigenschaft einer Form ist ihre [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Formen verschiedener Typen können in einem Word-Dokument unterschiedliche Funktionen aufweisen. Beispielsweise können nur Bilder und OLE -Formen Bilder enthalten, während die meisten Formen nur Text enthalten können.

Das folgende Beispiel zeigt, wie Sie ein Formbild separat vom Dokument in ein JPEG-Bild rendern und auf der Festplatte speichern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Abrufen einer Formgröße

Die [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) -Klasse bietet auch Funktionen zum Abrufen der Größe der Form in Pixeln über die [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/) -Methode. Diese Methode akzeptiert zwei Parameter vom Typ float (Single) - die Skalierung und DPI, die bei der Berechnung der Formgröße beim Rendern der Form verwendet werden. Die Methode gibt das `Size` -Objekt zurück, das die Breite und Höhe der berechneten Größe enthält. Dies ist nützlich, wenn die Größe der gerenderten Form im Voraus bekannt sein muss, z. B. beim Erstellen einer neuen Bitmap aus der gerenderten Ausgabe.

Das folgende Beispiel zeigt, wie Sie ein neues Bitmap- und Grafikobjekt mit der Breite und Höhe der zu rendernden Form erstellen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

Bei Verwendung der Methoden **RenderToSize** oder **RenderToScale** wird die gerenderte Bildgröße auch im Objekt [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) zurückgegeben. Dies kann einer Variablen zugewiesen und bei Bedarf verwendet werden.

Die Eigenschaft **SizeInPoints** gibt die in Punkten gemessene Formgröße zurück (siehe [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Ein Ergebnis ist ein `SizeF` -Objekt, das die Breite und Höhe enthält.
