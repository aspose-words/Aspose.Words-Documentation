---
title: Enregistrement d'un document en tant que Multipage TIFF dans Java
second_title: Aspose.Words pour Java
articleTitle: Enregistrement d'un document en tant que Multipage TIFF
linktitle: Enregistrement d'un document en tant que Multipage TIFF
description: "Convertir un document en une image raster, ce qui est discuté sur l'exemple du format TIFF. Pour déterminer comment TIFF est affiché, vous devez spécifier des options supplémentaires: résolution, nombre de pages, binarisation de l'image, etc. en utilisant Java."
type: docs
weight: 30
url: /fr/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Lorsque vous travaillez avec des documents, vous devez souvent convertir votre document en fichier(s) image raster. Ceci est particulièrement pertinent si vous devez présenter votre document dans un format lisible et imprimable, mais non modifiable. Par exemple, vous pouvez utiliser une image raster de la première page de votre document comme aperçu. Cet article décrit comment convertir un document en image raster en utilisant l'exemple du format TIFF, l'un des formats d'image les plus populaires.

## Conversion de DOC en plusieurs pages TIFF

Dans Aspose.Words, la conversion de DOC en TIFF peut être effectuée avec une seule ligne de code, en passant simplement le chemin "enregistrer dans" et l'extension de fichier correspondante à la méthode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). La méthode **Save** dérive automatiquement le `SaveFormat` de l'extension de nom de fichier spécifiée dans le chemin. L'exemple suivant montre comment convertir un document au format TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Spécification D'Options Supplémentaires Lors Du Rendu De TIFF

Vous devez souvent spécifier des options supplémentaires, qui affectent le résultat du rendu. Pour cela, utilisez la classe [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), qui contient des propriétés qui déterminent la manière dont le document est affiché sur l'image. Vous pouvez spécifier les éléments suivants:

- Enregistrer le format pour déterminer la liste des options disponibles ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Résolution ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Nombre de pages ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Paramètres de couleur et d'éclairage ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Qualité d'image([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- La méthode utilisée pour binariser l'image ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Format de pixel pour les images générées ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows gestion des métafichiers par Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Options supplémentaires que vous pouvez voir dans la classe **ImageSaveOptions**

L'exemple suivant montre comment convertir DOC en TIFF avec des options configurées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Seuil de binarisation TIFF

Une image TIFF peut être enregistrée au format 1bpp n / b en définissant la propriété [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) sur le type de format Format1bppIndexed pixels et la propriété [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) sur Ccitt3 ou Ccitt4.

Pour la segmentation d'image, Aspose.Words utilise la méthode la plus simple: le seuillage. Cette méthode convertit une image en niveaux de gris TIFF en une image binaire, en utilisant une valeur de seuil. Par conséquent, lorsqu'un document doit être converti au format de fichier TIFF, il est possible d'obtenir ou de définir le seuil de binarisation TIFF via la propriété [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering). La valeur par défaut de cette propriété est définie sur 128, et plus cette valeur est élevée, plus l'image est sombre.

L'exemple suivant montre comment effectuer la binarisation TIFF avec un seuil spécifié:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Ci-dessous, vous pouvez comparer des images sur lesquelles la binarisation TIFF a été effectuée à différentes valeurs de seuil:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
