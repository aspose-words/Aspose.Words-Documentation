---
title: Enregistrement d'un document au format TIFF multipage en C++
second_title: Aspose.Words pour C++
articleTitle: Enregistrement d'un document au format TIFF multipage
linktitle: Enregistrement d'un document au format TIFF multipage
description: "Convertissez un document en TIFF multipage à l'aide de C++. Pour déterminer comment le document est affiché sur l'image, vous devez spécifier des options supplémentaires: résolution, nombre de pages, binarisation de l'image, etc."
type: docs
weight: 40
url: /fr/cpp/saving-a-document-as-a-multipage-tiff/
---

Lorsque vous travaillez avec des documents, vous devez souvent convertir votre document en fichier(s) image raster. Ceci est particulièrement pertinent si vous devez présenter votre document dans un format lisible et imprimable, mais non modifiable. Par exemple, vous pouvez utiliser une image raster de la première page de votre document comme aperçu. Cet article décrit comment convertir un document en une image raster en utilisant l'exemple du format TIFF, l'un des formats d'image les plus populaires.

## Conversion de DOC en TIFF multipage

Dans Aspose.Words, la conversion de DOC en TIFF peut être effectuée avec une seule ligne de code, en passant simplement le chemin "enregistrer dans" et l'extension de fichier correspondante à la méthode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). La méthode **Save** dérive automatiquement le `SaveFormat` de l'extension de nom de fichier spécifiée dans le chemin. L'exemple suivant montre comment convertir un document au format TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Spécification D'Options Supplémentaires Lors Du Rendu TIFF

Vous devez souvent spécifier des options supplémentaires, qui affectent le résultat du rendu. Pour cela, utilisez la classe [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), qui contient des propriétés qui déterminent la manière dont le document est affiché sur l'image. Vous pouvez spécifier les éléments suivants:

- Enregistrer le format pour déterminer la liste des options disponibles ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Résolution ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Nombre de pages ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Paramètres de couleur et d'éclairage ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Qualité d'image([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Méthode utilisée pour binariser l'image ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Format de pixel pour les images générées ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows gestion des métafichiers par Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Options supplémentaires que vous pouvez voir dans la classe **ImageSaveOptions**

L'exemple suivant montre comment convertir DOC en TIFF avec des options configurées:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Seuil de binarisation TIFF

Une image TIFF peut être enregistrée au format 1bpp n / b en définissant la propriété [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) sur le type de format de pixel Format1bppIndexed et la propriété `TiffCompression` sur Ccitt3 ou Ccitt4.

Pour la segmentation d'image, Aspose.Words utilise la méthode la plus simple: le seuillage. Cette méthode convertit une image TIFF en niveaux de gris en une image binaire, en utilisant une valeur de seuil. Par conséquent, lorsqu'un document doit être converti au format de fichier TIFF, il est possible d'obtenir ou de définir le seuil de binarisation TIFF via la propriété [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). La valeur par défaut de cette propriété est définie sur 128, et plus cette valeur est élevée, plus l'image est sombre.

L'exemple suivant montre comment effectuer une binarisation TIFF avec un seuil spécifié:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Ci-dessous, vous pouvez comparer des images sur lesquelles la binarisation TIFF a été effectuée à différentes valeurs de seuil:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
