---
title: Formen getrennt vom Dokument
second_title: Aspose.Words für Python via .NET
articleTitle: Formen getrennt von einem Dokument rendern
linktitle: Formen getrennt von einem Dokument rendern
description: "Extrahieren Sie bei der Verarbeitung eines Dokuments verschiedene Grafikobjekte wie Bilder, Textfelder mit Absätzen oder Pfeilformen und exportieren Sie sie mit Python an einen externen Speicherort."
type: docs
weight: 40
url: /de/python-net/rendering-shapes-separately-from-a-document/
---

Bei der Verarbeitung von Dokumenten besteht eine häufige Aufgabe darin, alle im Dokument gefundenen Bilder zu extrahieren und an einen externen Speicherort zu exportieren. Diese Aufgabe wird mit Aspose.Words API vereinfacht, das bereits über die Funktionalität zum Extrahieren und Speichern von Bilddaten verfügt. Manchmal möchten Sie jedoch möglicherweise auch andere Arten von Grafikinhalten extrahieren, die durch einen anderen Zeichenobjekttyp dargestellt werden, beispielsweise ein Textfeld mit Absätzen, Pfeilformen und einem kleinen Bild. Es gibt keine einfache Möglichkeit, dieses Objekt darzustellen, da es sich um eine Kombination einzelner Inhaltselemente handelt. Es kann auch vorkommen, dass die Inhalte zu einem Objekt gruppiert wurden, das wie ein einzelnes Bild aussieht.

Aspose.Words bietet Funktionen zum Extrahieren dieser Art von Inhalten, genauso wie Sie ein einfaches Bild aus einer Form als gerenderten Inhalt extrahieren können. In diesem Artikel wird beschrieben, wie Sie diese Funktionalität nutzen, um Formen unabhängig vom Dokument zu rendern.

## Formtypen in Aspose.Words

Der gesamte Inhalt einer Dokumentzeichnungsebene wird durch den [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)- oder [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)-Knoten im Aspose.Words Document Object Module (DOM) dargestellt. Solche Inhalte können Textfelder, Bilder, AutoShapes, OLE-Objekte usw. sein. Einige Felder werden auch als Formen importiert, beispielsweise das `INCLUDEPICTURE`-Feld.

Ein einfaches Bild wird durch einen [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Knoten von [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image) dargestellt. Dieser Formknoten hat keine untergeordneten Knoten, aber auf die in diesem Formknoten enthaltenen Bilddaten kann über die [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/)-Eigenschaft zugegriffen werden. Andererseits kann eine Form auch aus vielen untergeordneten Knoten bestehen. Beispielsweise kann eine Textfeldform, die durch die [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box)-Eigenschaft dargestellt wird, aus vielen Knoten wie [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) und [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) bestehen. Die meisten Formen können die Knoten auf [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)- und [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-Blockebene enthalten. Dabei handelt es sich um dieselben Knoten wie im Hauptteil. Formen sind immer Teile eines Absatzes, entweder direkt inline eingebunden oder im [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) verankert, aber an einer beliebigen Stelle auf der Dokumentseite "schwebend".

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Ein Dokument kann auch Formen enthalten, die gruppiert sind. Grouping kann in Microsoft Word aktiviert werden, indem Sie mehrere Objekte auswählen und im Kontextmenü auf "Group" klicken.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words werden diese Formengruppen durch den [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)-Knoten dargestellt. Diese können auch auf die gleiche Weise aufgerufen werden, um die gesamte Gruppe als Bild darzustellen.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Das DOCX-Format kann spezielle Bildtypen wie Diagramme oder Diagramme enthalten. Diese Formen werden auch durch den [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Knoten in Aspose.Words dargestellt, der auch eine ähnliche Methode zum Rendern als Bilder bietet. Eine Form kann konstruktionsbedingt keine andere Form als Kind enthalten, es sei denn, diese Form ist ein Bild ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Mit Microsoft Word ist es beispielsweise nicht möglich, ein Textfeld in ein anderes Textfeld einzufügen.

Die oben beschriebenen Formtypen bieten eine spezielle Methode zum Rendern der Formen über die [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/)-Klasse. Eine Instanz der [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/)-Klasse wird für einen [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) oder [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) über die [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/)-Methode oder durch Übergabe des [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) an den Konstruktor der [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/)-Klasse abgerufen. Diese Klasse bietet Zugriff auf Mitglieder, die das Rendern einer Form wie folgt ermöglichen:

- Datei auf der Festplatte
- Streamen

{{% alert color="primary" %}}

Beim Rendern eines [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) muss es Teil der Dokumenthierarchie sein. Wenn das [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nicht Teil des Dokumentbaums ist, ist die gerenderte Ausgabe nach dem Aufruf von [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/)-Methoden leer.

{{% /alert %}}

## Rendern in Datei oder Stream

Die [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/)-Methode stellt Überladungen bereit, die eine Form direkt in eine Datei oder einen Stream rendern. Beide Überladungen akzeptieren eine Instanz der [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)-Klasse, die es ermöglicht, Optionen zum Rendern der Form zu definieren. Dies funktioniert auf die gleiche Weise wie die [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methode. Auch wenn dieser Parameter erforderlich ist, können Sie einen Nullwert übergeben und damit angeben, dass keine benutzerdefinierten Optionen vorhanden sind.

Die Form kann in jedes in der [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)-Enumeration angegebene Bildformat exportiert werden. Beispielsweise kann das Bild durch Angabe der [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg)-Enumeration als Rasterbild wie JPEG oder durch Angabe von [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf) als Vektorbild wie EMF gerendert werden.

Das folgende Codebeispiel veranschaulicht das Rendern einer Form in ein EMF-Bild getrennt vom Dokument und das Speichern auf der Festplatte:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Das folgende Codebeispiel veranschaulicht das Rendern einer Form in ein JPEG-Bild getrennt vom Dokument und das Speichern in einem Stream:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

Mit der [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)-Klasse können Sie verschiedene Optionen angeben, die steuern, wie das Bild gerendert wird. Die oben beschriebene Funktionalität kann auf die gleiche Weise auf die [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)- und [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Knoten angewendet werden.

## Rendern eines Formbildes

Die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Klasse stellt Objekte in der Zeichenebene dar, beispielsweise eine AutoForm, ein Textfeld, eine Freiform, ein OLE-Objekt, ein ActiveX-Steuerelement oder ein Bild. Mithilfe der [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Klasse können Sie Formen in einem Microsoft Word-Dokument erstellen oder ändern. Eine wichtige Eigenschaft einer Form ist ihr [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Formen unterschiedlichen Typs können in einem Word-Dokument unterschiedliche Funktionen haben. Beispielsweise können nur Bild- und OLE-Formen Bilder enthalten, während die meisten Formen nur Text enthalten können.

Das folgende Beispiel zeigt, wie Sie ein Shape-Bild getrennt vom Dokument in ein JPEG-Bild rendern und auf der Festplatte speichern:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Abrufen einer Formgröße

Die [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/)-Klasse bietet auch Funktionen zum Abrufen der Größe der Form in Pixeln über die [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/)-Methode. Diese Methode akzeptiert zwei Float-Parameter (Einzelparameter): Skalierung und DPI, die bei der Berechnung der Formgröße beim Rendern der Form verwendet werden. Die Methode gibt das **Size**-Objekt zurück, das die Breite und Höhe der berechneten Größe enthält. Dies ist nützlich, wenn die Größe der gerenderten Form im Voraus bekannt sein muss. Die [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/)-Eigenschaft gibt die in Punkten gemessene Formgröße zurück. Das Ergebnis ist ein **SizeF**-Objekt, das die Breite und Höhe enthält. Sie können auch die [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/)-Eigenschaft verwenden, um die tatsächlichen Grenzen der Form zu ermitteln.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


