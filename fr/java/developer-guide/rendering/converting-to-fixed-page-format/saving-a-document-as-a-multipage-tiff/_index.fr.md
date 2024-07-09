---
title: Enregistrer un document comme un TIFF multipage dans Java
second_title: Aspose.Words pour Java
articleTitle: Enregistrer un document en tant que TIFF multipage
linktitle: Enregistrer un document en tant que TIFF multipage
description: "Convertir un document en image raster, qui est discuté sur l'exemple du format TIFF. Pour déterminer comment le TIFF est affiché, vous devez spécifier des options supplémentaires: résolution, nombre de pages, binarisation d'images, etc. Java."
type: docs
weight: 30
url: /fr/java/saving-a-document-as-a-multipage-tiff/
---

Lorsque vous travaillez avec des documents, vous devez souvent convertir votre document en fichier d'image raster. Ceci est particulièrement pertinent si vous devez présenter votre document dans un format lisible et imprimable, mais non modifiable. Par exemple, vous pouvez utiliser une image raster de la première page de votre document comme un aperçu. Cet article décrit comment convertir un document en image raster en utilisant l'exemple du format TIFF – l'un des formats d'image les plus populaires.

## Convertir DOC en TIFF multi-pages

En Aspose.Words, la conversion de DOC en TIFF peut être effectuée avec une seule ligne de code, en passant simplement le chemin d'enregistrement à l'entrée et l'extension de fichier pertinente au [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) méthode. Les **Save** la méthode dérive automatiquement la `SaveFormat` à partir de l'extension de nom de fichier spécifiée dans le chemin. L'exemple suivant montre comment convertir un document au format TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Spécifier d'autres options lors de l'appel d'offres TIFF

Vous devez souvent spécifier des options supplémentaires, qui affectent le résultat de rendu. À cette fin, utiliser [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, qui contient des propriétés qui déterminent comment le document est affiché sur l'image. Vous pouvez spécifier ce qui suit:

- Format d'enregistrement pour déterminer la liste des options disponibles ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Résolution ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Nombre de pages ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Réglages couleur et éclairage ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Qualité de l'image ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- La méthode utilisée pour binariser l'image ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Format Pixel pour images générées ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Oui. Windows gestion des métafiles par Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Autres options que vous pouvez voir dans le **ImageSaveOptions** classe

L'exemple suivant montre comment convertir DOC en TIFF avec des options configurées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Seuil pour la binarisation TIFF

Une image TIFF peut être sauvegardée au format 1bpp b/w [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) propriété au format1bppIndexed pixel format type, et le [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) biens appartenant soit à Ccitt3 soit à Ccitt4.

Pour la segmentation de l'image, Aspose.Words utilise la méthode la plus simple - le seuil. Cette méthode convertit une image TIFF à échelle grise en image binaire, en utilisant une valeur seuil. Par conséquent, lorsqu'un document doit être converti au format de fichier TIFF, il est possible d'obtenir ou de définir le seuil pour la binarisation TIFF par l'intermédiaire du [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) propriété. La valeur par défaut de cette propriété est de 128, et plus cette valeur est élevée, plus l'image est sombre.

L'exemple suivant montre comment effectuer la binarisation TIFF avec un seuil spécifié:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Ci-dessous, vous pouvez comparer les images sur lesquelles la binarisation TIFF a été effectuée à différentes valeurs seuils:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
