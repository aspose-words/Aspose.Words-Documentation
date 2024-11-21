---
title: Enregistrer un document au format TIFF multipage dans C#
second_title: Aspose.Words pour .NET
articleTitle: Enregistrer un document au format TIFF multipage
linktitle: Enregistrer un document au format TIFF multipage
description: "Convertissez un document en TIFF multipage à l'aide de C#. Pour déterminer comment le document est affiché sur l'image, vous devez spécifier des options supplémentaires: résolution, nombre de pages, binarisation de l'image, etc."
type: docs
weight: 30
url: /fr/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Lorsque vous travaillez avec des documents, vous devez souvent convertir votre document en fichier(s) d'image raster. Ceci est particulièrement pertinent si vous devez présenter votre document dans un format lisible et imprimable, mais non modifiable. Par exemple, vous pouvez utiliser une image raster de la première page de votre document comme aperçu. Cet article décrit comment convertir un document en image raster en utilisant l'exemple du format TIFF, l'un des formats d'image les plus populaires.

## Conversion de DOC en TIFF multipage

Dans Aspose.Words, la conversion de DOC en TIFF peut être effectuée avec une seule ligne de code, en transmettant simplement le chemin "enregistrer dans" et l'extension de fichier appropriée à la méthode [Save](https://reference.aspose.com/words/fr/net/aspose.words/document/save/#save). La méthode **Save** dérive automatiquement le `SaveFormat` de l'extension de nom de fichier spécifiée dans le chemin. L'exemple suivant montre comment convertir un document au format TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Spécification d'options supplémentaires lors du rendu TIFF

Vous devez souvent spécifier des options supplémentaires, qui affectent le résultat du rendu. Pour cela, utilisez la classe [ImageSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/), qui contient des propriétés qui déterminent la manière dont le document est affiché sur l'image. Vous pouvez spécifier les éléments suivants:

- Enregistrer le format pour déterminer la liste des options disponibles ([SaveFormat](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Résolution ([HorizontalResolution](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Nombre de pages ([PageIndex](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/))
- Paramètres de couleur et d'éclairage ([PaperColor](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Qualité d'image ([JpegQuality](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Méthode utilisée pour binariser l'image ([TiffBinarizationMethod](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Format de pixels pour les images générées ([PixelFormat](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Gestion des métafichiers Windows par Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Options supplémentaires que vous pouvez voir dans la classe **ImageSaveOptions**

L'exemple suivant montre comment convertir DOC en TIFF avec les options configurées:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Seuil de binarisation TIFF

Une image TIFF peut être enregistrée au format 1bpp n/b en définissant la propriété [PixelFormat](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/pixelformat/) sur le type de format de pixel Format1bppIndexed et la propriété [TiffCompression](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/tiffcompression/) sur Ccitt3 ou Ccitt4.

Pour la segmentation d'images, Aspose.Words utilise la méthode la plus simple: le seuillage. Cette méthode convertit une image TIFF en niveaux de gris en une image binaire, en utilisant une valeur seuil. Par conséquent, lorsqu'un document doit être converti au format de fichier TIFF, il est possible d'obtenir ou de définir le seuil de binarisation TIFF via la propriété [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). La valeur par défaut de cette propriété est définie sur 128, et plus cette valeur est élevée, plus l'image est sombre.

L'exemple suivant montre comment effectuer une binarisation TIFF avec un seuil spécifié:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Ci-dessous, vous pouvez comparer les images sur lesquelles la binarisation TIFF a été effectuée à différentes valeurs seuils:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="enregistrer-un-document-sous-un-tiff-aspose-words-net multipage" style="width:800px"/>
