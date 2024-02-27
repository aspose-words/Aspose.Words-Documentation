---
title: Formen getrennt vom Dokument rendern
second_title: Aspose.Words für .NET
articleTitle: Formen getrennt von einem Dokument rendern
linktitle: Formen getrennt von einem Dokument rendern
description: "Extrahieren Sie bei der Verarbeitung eines Dokuments verschiedene Grafikobjekte wie Bilder, Textfelder mit Absätzen oder Pfeilformen und exportieren Sie sie mit C# an einen externen Speicherort."
type: docs
weight: 40
url: /de/net/rendering-shapes-separately-from-a-document/
---

Bei der Verarbeitung von Dokumenten besteht eine häufige Aufgabe darin, alle im Dokument gefundenen Bilder zu extrahieren und an einen externen Speicherort zu exportieren. Diese Aufgabe wird mit Aspose.Words API vereinfacht, das bereits über die Funktionalität zum Extrahieren und Speichern von Bilddaten verfügt. Manchmal möchten Sie jedoch möglicherweise auch andere Arten von Grafikinhalten extrahieren, die durch einen anderen Zeichenobjekttyp dargestellt werden, beispielsweise ein Textfeld mit Absätzen, Pfeilformen und einem kleinen Bild. Es gibt keine einfache Möglichkeit, dieses Objekt darzustellen, da es sich um eine Kombination einzelner Inhaltselemente handelt. Es kann auch vorkommen, dass die Inhalte zu einem Objekt gruppiert wurden, das wie ein einzelnes Bild aussieht.

Aspose.Words bietet Funktionen zum Extrahieren dieser Art von Inhalten, genauso wie Sie ein einfaches Bild aus einer Form als gerenderten Inhalt extrahieren können. In diesem Artikel wird beschrieben, wie Sie diese Funktionalität nutzen, um Formen unabhängig vom Dokument zu rendern.

## Formtypen in Aspose.Words

Der gesamte Inhalt einer Dokumentzeichnungsebene wird durch den [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)- oder [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/)-Knoten im Aspose.Words Document Object Module (DOM) dargestellt. Solche Inhalte können Textfelder, Bilder, AutoShapes, OLE-Objekte usw. sein. Einige Felder werden auch als Formen importiert, beispielsweise das `INCLUDEPICTURE`-Feld.

Ein einfaches Bild wird durch einen **Shape**-Knoten von [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) dargestellt. Dieser Formknoten hat keine untergeordneten Knoten, aber auf die in diesem Formknoten enthaltenen Bilddaten kann über die [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/)-Eigenschaft zugegriffen werden. Andererseits kann eine Form auch aus vielen untergeordneten Knoten bestehen. Beispielsweise kann eine Textfeldform, die durch die [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/)-Eigenschaft dargestellt wird, aus vielen Knoten wie [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) und [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) bestehen. Die meisten Formen können die **Paragraph**- und **Table**-Blockebenenknoten enthalten. Dabei handelt es sich um dieselben Knoten wie im Hauptteil. Formen sind immer Teile eines Absatzes, entweder direkt inline eingebunden oder im **Absatz,** verankert, aber an einer beliebigen Stelle auf der Dokumentseite "schwebend".

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Ein Dokument kann auch Formen enthalten, die gruppiert sind. Grouping kann in Microsoft Word aktiviert werden, indem Sie mehrere Objekte auswählen und im Kontextmenü auf "Group" klicken.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words werden diese Formengruppen durch den [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/)-Knoten dargestellt. Diese können auch auf die gleiche Weise aufgerufen werden, um die gesamte Gruppe als Bild darzustellen.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Das DOCX-Format kann spezielle Bildtypen wie Diagramme oder Diagramme enthalten. Diese Formen werden auch durch den **Shape**-Knoten in Aspose.Words dargestellt, der auch eine ähnliche Methode zum Rendern als Bilder bietet. Eine Form kann konstruktionsbedingt keine andere Form als Kind enthalten, es sei denn, diese Form ist ein Bild (**ShapeType.Image**). Mit Microsoft Word ist es beispielsweise nicht möglich, ein Textfeld in ein anderes Textfeld einzufügen.

Die oben beschriebenen Formtypen bieten eine spezielle Methode zum Rendern der Formen über die [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/)-Klasse. Eine Instanz der **ShapeRenderer**-Klasse wird für ein **Shape** oder **GroupShape** über die **GetShapeRenderer**-Methode oder durch Übergabe des **Shape** an den Konstruktor der **ShapeRenderer**-Klasse abgerufen. Diese Klasse bietet Zugriff auf Mitglieder, die das Rendern einer Form wie folgt ermöglichen:

- Datei auf der Festplatte mit der [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)-Methodenüberladung
- Streamen Sie mit der [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)-Methodenüberladung
- .NET-Grafikobjekt unter Verwendung der [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/)- und [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)-Methoden

{{% alert color="primary" %}}

Beim Rendern eines **Shape** muss es Teil der Dokumenthierarchie sein. Wenn das **Shape** nicht Teil des Dokumentbaums ist, ist die gerenderte Ausgabe nach dem Aufruf von **ShapeRenderer**-Methoden leer.

{{% /alert %}}

## Rendern in Datei oder Stream

Die [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)-Methode stellt Überladungen bereit, die eine Form direkt in eine Datei oder einen Stream rendern. Beide Überladungen akzeptieren eine Instanz der [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)-Klasse, die es ermöglicht, Optionen zum Rendern der Form zu definieren. Dies funktioniert auf die gleiche Weise wie die [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save)-Methode. Auch wenn dieser Parameter erforderlich ist, können Sie einen Nullwert übergeben und damit angeben, dass keine benutzerdefinierten Optionen vorhanden sind.

Die Form kann in jedes in der [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/)-Enumeration angegebene Bildformat exportiert werden. Beispielsweise kann das Bild durch Angabe der [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/)-Enumeration als Rasterbild wie JPEG oder durch Angabe von [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/) als Vektorbild wie EMF gerendert werden.

Das folgende Codebeispiel veranschaulicht das Rendern einer Form in ein EMF-Bild getrennt vom Dokument und das Speichern auf der Festplatte:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Das folgende Codebeispiel veranschaulicht das Rendern einer Form in ein JPEG-Bild getrennt vom Dokument und das Speichern in einem Stream:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

Mit der **ImageSaveOptions**-Klasse können Sie verschiedene Optionen angeben, die steuern, wie das Bild gerendert wird. Die oben beschriebene Funktionalität kann auf die gleiche Weise auf die **GroupShape**- und **Shape**-Knoten angewendet werden.

## Rendern in ein .NET-Grafikobjekt

Durch direktes Rendern in ein **Graphics**-Objekt können Sie Ihre eigenen Einstellungen und den Status für das **Graphics**-Objekt definieren. Ein häufiges Szenario besteht darin, eine Form direkt in ein **Graphics**-Objekt zu rendern, das aus einem Windows-Formular oder einer Bitmap abgerufen wird. Wenn der **Shape**-Knoten gerendert wird, wirken sich die Einstellungen auf das Erscheinungsbild der Form aus. Beispielsweise können Sie die Form drehen oder skalieren, indem Sie die **RotateTransform**- oder **ScaleTransform**-Methoden für das **Graphics**-Objekt verwenden.

Das folgende Beispiel zeigt, wie Sie eine Form getrennt vom Dokument in ein .**NET Graphics**-Objekt rendern und eine Drehung auf das gerenderte Bild anwenden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Ähnlich wie die [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/)-Methode ist die aus [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) geerbte [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/)-Methode nützlich zum Erstellen von Miniaturansichten eines Dokumentinhalts. Die Formgröße wird über den Konstruktor angegeben. Die **RenderToSize**-Methode akzeptiert das **Graphics**-Objekt, die X- und Y-Koordinaten der Bildposition und die Größe des Bildes (Breite und Höhe), das auf das **Graphics**-Objekt gezeichnet wird.

Das **Shape** kann mit der von der [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/)-Klasse geerbten [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)-Methode in einem bestimmten Maßstab gerendert werden. Dies ähnelt der [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/)-Methode, die dieselben Hauptparameter akzeptiert. Der Unterschied zwischen diesen beiden Methoden besteht darin, dass Sie bei der **ShapeRenderer.RenderToScale**-Methode anstelle einer Literalgröße einen Float-Wert wählen, der die Form während des Renderns skaliert. Wenn der Float-Wert gleich 1,0 ist, wird die Form mit 100 % ihrer ursprünglichen Größe gerendert. Ein Float-Wert von 0,5 reduziert die Bildgröße um die Hälfte.

## Rendern eines Formbildes

Die [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)-Klasse stellt Objekte in der Zeichenebene dar, beispielsweise eine AutoForm, ein Textfeld, eine Freiform, ein OLE-Objekt, ein ActiveX-Steuerelement oder ein Bild. Mithilfe der **Shape**-Klasse können Sie Formen in einem Microsoft Word-Dokument erstellen oder ändern. Eine wichtige Eigenschaft einer Form ist ihr [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). Formen unterschiedlichen Typs können in einem Word-Dokument unterschiedliche Funktionen haben. Beispielsweise können nur Bild- und OLE-Formen Bilder enthalten, während die meisten Formen nur Text enthalten können.

Das folgende Beispiel zeigt, wie Sie ein Shape-Bild getrennt vom Dokument in ein JPEG-Bild rendern und auf der Festplatte speichern:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Abrufen einer Formgröße

Die [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/)-Klasse bietet auch Funktionen zum Abrufen der Größe der Form in Pixeln über die [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/)-Methode. Diese Methode akzeptiert zwei Float-Parameter (Einzelparameter): Skalierung und DPI, die bei der Berechnung der Formgröße beim Rendern der Form verwendet werden. Die Methode gibt das [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/)-Objekt zurück, das die Breite und Höhe der berechneten Größe enthält. Dies ist nützlich, wenn die Größe der gerenderten Form im Voraus bekannt sein muss, beispielsweise beim Erstellen einer neuen Bitmap aus der gerenderten Ausgabe.

Das folgende Beispiel zeigt, wie ein neues Bitmap- und Grafikobjekt mit der Breite und Höhe der zu rendernden Form erstellt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Bei Verwendung der Methoden **RenderToSize** oder **RenderToScale** wird auch die Größe des gerenderten Bildes im [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)-Objekt zurückgegeben. Dieser kann einer Variablen zugewiesen und bei Bedarf verwendet werden.

Die **SizeInPoints**-Eigenschaft gibt die in Punkten gemessene Formgröße zurück (siehe [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/)). Das Ergebnis ist ein `SizeF`-Objekt, das die Breite und Höhe enthält.
