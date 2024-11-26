---
title: Formes séparément du document
second_title: Aspose.Words pour Python via .NET
articleTitle: Rendu des formes séparément d'un document
linktitle: Rendu des formes séparément d'un document
description: "Extrayez divers objets graphiques, tels que des images, des zones de texte contenant des paragraphes ou des formes de flèches, lors du traitement d'un document, et exportez-les vers un emplacement externe à l'aide de Python."
type: docs
weight: 40
url: /fr/python-net/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Lors du traitement de documents, une tâche courante consiste à extraire toutes les images trouvées dans le document et à les exporter vers un emplacement externe. Cette tâche devient simple avec le Aspose.Words API, qui fournit déjà la fonctionnalité d'extraction et de sauvegarde des données d'image. Cependant, vous souhaiterez parfois extraire de la même manière d'autres types de contenu graphique représenté par un type différent d'objet de dessin, par exemple une zone de texte contenant des paragraphes, des formes de flèches et une petite image. Il n'existe pas de moyen simple de restituer cet objet puisqu'il s'agit d'une combinaison d'éléments de contenu individuels. Vous pouvez également rencontrer un cas où le contenu a été regroupé dans un objet qui ressemble à une seule image.

Aspose.Words fournit des fonctionnalités pour extraire ce type de contenu de la même manière que vous pouvez extraire une image simple d'une forme en tant que contenu rendu. Cet article décrit comment utiliser cette fonctionnalité pour restituer des formes indépendamment du document.

## Types de formes dans Aspose.Words

Tout le contenu d'une couche de dessin de document est représenté par le nœud [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ou [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) dans le module DOM (Aspose.Words Document Object Module). Ce contenu peut être des zones de texte, des images, des formes automatiques, des objets OLE, etc. Certains champs sont également importés sous forme de formes, par exemple le champ `INCLUDEPICTURE`.

Une image simple est représentée par un nœud [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) de [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Ce nœud de forme n'a pas de nœuds enfants mais les données d'image contenues dans ce nœud de forme sont accessibles via la propriété [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). D’un autre côté, une forme peut également être composée de nombreux nœuds enfants. Par exemple, une forme de zone de texte, représentée par la propriété [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), peut être composée de nombreux nœuds, tels que [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) et [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). La plupart des formes peuvent inclure les nœuds au niveau du bloc [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) et [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Ce sont les mêmes nœuds que ceux apparaissant dans le corps principal. Les formes font toujours partie d'un paragraphe, soit incluses directement en ligne, soit ancrées au [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), mais "flottantes" n'importe où dans la page du document.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un document peut également contenir des formes regroupées. Grouping peut être activé dans Microsoft Word en sélectionnant plusieurs objets et en cliquant sur "Group" dans le menu contextuel.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Dans Aspose.Words, ces groupes de formes sont représentés par le nœud [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Ceux-ci peuvent également être invoqués de la même manière pour restituer l’ensemble du groupe en image.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Le format DOCX peut contenir des types spéciaux d'images, tels que des diagrammes ou des graphiques. Ces formes sont également représentées via le nœud [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) en Aspose.Words, qui fournit également une méthode similaire pour les restituer sous forme d'images. De par sa conception, une forme ne peut pas contenir une autre forme en tant qu'enfant, sauf si cette forme est une image ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Par exemple, Microsoft Word ne vous permet pas d'insérer une zone de texte dans une autre zone de texte.

Les types de formes décrits ci-dessus fournissent une méthode spéciale pour restituer les formes via la classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Une instance de la classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) est récupérée pour un [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ou [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) via la méthode [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) ou en passant le [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) au constructeur de la classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Cette classe donne accès aux membres, qui permettent de restituer une forme aux éléments suivants:

- Fichier sur le disque
- Flux

{{% alert color="primary" %}}

Lors du rendu d'un [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), il doit faire partie de la hiérarchie du document. Si le [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ne fait pas partie de l'arborescence du document, la sortie rendue sera vide après l'appel des méthodes [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## Rendu dans un fichier ou un flux

La méthode [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) fournit des surcharges qui restituent une forme directement dans un fichier ou un flux. Les deux surcharges acceptent une instance de la classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), qui permet de définir des options de rendu de la forme. Cela fonctionne de la même manière que la méthode [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Même si ce paramètre est obligatoire, vous pouvez transmettre une valeur nulle, spécifiant qu'il n'existe aucune option personnalisée.

La forme peut être exportée dans n'importe quel format d'image spécifié dans l'énumération [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Par exemple, l'image peut être rendue sous forme d'image raster, telle que JPEG en spécifiant l'énumération [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), ou sous forme d'image vectorielle, telle que EMF en spécifiant [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

L'exemple de code ci-dessous illustre le rendu d'une forme sur une image EMF séparément du document et son enregistrement sur le disque:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

L'exemple de code ci-dessous illustre le rendu d'une forme sur une image JPEG séparément du document et son enregistrement dans un flux:

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

La classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) vous permet de spécifier une variété d'options qui contrôlent la manière dont l'image est rendue. La fonctionnalité décrite ci-dessus peut être appliquée de la même manière aux nœuds [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) et [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Rendu d'une image de forme

La classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) représente les objets du calque de dessin, tels qu'une forme automatique, une zone de texte, une forme libre, un objet OLE, un contrôle ActiveX ou une image. À l'aide de la classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), vous pouvez créer ou modifier des formes dans un document Microsoft Word. Une propriété importante d'une forme est son [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Les formes de différents types peuvent avoir différentes fonctionnalités dans un document Word. Par exemple, seules les images et les formes OLE peuvent contenir des images, tandis que la plupart des formes ne peuvent contenir que du texte.

L'exemple suivant montre comment restituer une image Shape en image JPEG séparément du document et l'enregistrer sur le disque:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Récupération d'une taille de forme

La classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) fournit également des fonctionnalités permettant de récupérer la taille de la forme en pixels via la méthode [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Cette méthode accepte deux paramètres flottants (simples): l'échelle et le DPI, qui sont utilisés dans le calcul de la taille de la forme lors du rendu de la forme. La méthode renvoie l'objet **Size**, qui contient la largeur et la hauteur de la taille calculée. Ceci est utile lorsqu'il est nécessaire de connaître à l'avance la taille de la forme rendue. La propriété [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) renvoie la taille de la forme mesurée en points. Le résultat est un objet **SizeF** contenant la largeur et la hauteur. Vous pouvez également utiliser la propriété [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) pour obtenir les limites réelles de la forme.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


