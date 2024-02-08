---
title: Travailler avec des images dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des images
linktitle: Travailler avec des images
description: "Créez et gérez des images de différents formats dans un document à l'aide de Python."
type: docs
weight: 300
url: /fr/python-net/working-with-images/
---

Aspose.Words permet aux utilisateurs de travailler avec des images de manière très flexible. Dans cet article, vous ne pouvez explorer que certaines des possibilités de travail avec des images.

## Insérer une image

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fournit plusieurs surcharges de la méthode [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) qui vous permettent d'insérer une image en ligne ou flottante. Si l'image est un métafichier EMF ou WMF, elle sera insérée dans le document au format métafichier. Toutes les autres images seront stockées au format PNG. La méthode **Insérer une image** peut utiliser des images provenant de différentes sources:

- Depuis un fichier ou `URL` en passant un paramètre chaîne
- Depuis un flux en passant un paramètre `Stream`
- Depuis un tableau d'octets en passant un paramètre de tableau d'octets

Pour chacune des méthodes **Insérer une image**, il existe d'autres surcharges qui vous permettent d'insérer une image avec les options suivantes:
- En ligne ou flottant à une position spécifique, par exemple, **Insérer une image**
- Échelle de pourcentage ou taille personnalisée ; de plus, la méthode [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) renvoie un objet [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) qui vient d'être créé et inséré afin que vous puissiez modifier davantage les propriétés du [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Insertion d'une image en ligne

Transmettez une seule chaîne représentant un fichier contenant l'image à [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) pour insérer l'image dans le document en tant que graphique en ligne.

L'exemple de code suivant montre comment insérer une image en ligne à la position du curseur dans un document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Insertion d'une image flottante (absolument positionnée)

L'exemple de code suivant montre comment insérer une image flottante à partir d'un fichier ou d'un `URL` à une position et une taille spécifiées:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## Comment extraire des images d'un document

Toutes les images sont stockées dans les nœuds [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) dans un [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Pour extraire toutes les images ou images d'un type spécifique du document, procédez comme suit:

- Utilisez la méthode [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) pour sélectionner tous les nœuds [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Parcourez les collections de nœuds résultantes.
- Vérifiez la propriété booléenne [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Extrayez les données d'image à l'aide de la propriété [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Enregistrez les données d'image dans un fichier.

L'exemple de code suivant montre comment extraire des images d'un document et les enregistrer sous forme de fichiers:

Vous pouvez télécharger le fichier modèle de cet exemple depuis [ici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Comment insérer un code-barres sur chaque page d'un document

Cet exemple vous montre comment ajouter des codes-barres identiques ou différents sur toutes les pages ou des pages spécifiques d'un document Word. Il n'existe pas de moyen direct d'ajouter des codes-barres sur toutes les pages d'un document, mais vous pouvez utiliser les méthodes [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) et [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) pour vous déplacer vers n'importe quelle section ou en-têtes/pieds de page et insérer les images de codes-barres comme vous pouvez le voir dans le code suivant.

L'exemple de code suivant insère une image de code-barres sur chaque page d'un document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Verrouiller le rapport hauteur/largeur de l'image

Le rapport hauteur/largeur d’une forme géométrique est le rapport de ses tailles dans différentes dimensions. Vous pouvez verrouiller le rapport hauteur/largeur de l'image à l'aide de [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). La valeur par défaut du rapport hauteur/largeur de la forme dépend du [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Il s'agit de `True` pour [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) et `False` pour les autres types de formes.

L'exemple de code suivant montre comment utiliser les proportions:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Comment obtenir les limites réelles de la forme en points

Si vous souhaitez que le cadre de délimitation réel de la forme soit rendu sur la page, vous pouvez y parvenir en utilisant la propriété [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Recadrer les images

Le recadrage d'une image fait généralement référence à la suppression des parties extérieures indésirables d'une image pour aider à améliorer le cadrage. Il est également utilisé pour supprimer certaines parties d’une image afin d’augmenter la mise au point sur une zone particulière.

L'exemple de code suivant montre comment y parvenir à l'aide de Aspose.Words API:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## Enregistrer des images au format WMF

Aspose.Words fournit des fonctionnalités pour enregistrer toutes les images disponibles dans un document au format [WMF](https://docs.fileformat.com/image/wmf/) lors de la conversion de DOCX en RTF.

L'exemple de code suivant montre comment enregistrer des images au format WMF avec les options d'enregistrement RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
