---
title: Enregistrer un document au format TIFF multipage
second_title: Aspose.Words pour Python via .NET
articleTitle: Enregistrer un document au format TIFF multipage
linktitle: Enregistrer un document au format TIFF multipage
description: "Convertissez un document en TIFF multipage à l'aide de Python. Pour déterminer comment le document est affiché sur l'image, vous devez spécifier des options supplémentaires: résolution, nombre de pages, binarisation de l'image, etc."
type: docs
weight: 30
url: /fr/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Lorsque vous travaillez avec des documents, vous devez souvent convertir votre document en fichier(s) d'image raster. Ceci est particulièrement pertinent si vous devez présenter votre document dans un format lisible et imprimable, mais non modifiable. Par exemple, vous pouvez utiliser une image raster de la première page de votre document comme aperçu. Cet article décrit comment convertir un document en image raster en utilisant l'exemple du format TIFF, l'un des formats d'image les plus populaires.

## Conversion de DOC en TIFF multipage

Dans Aspose.Words, la conversion de DOC en TIFF peut être effectuée avec une seule ligne de code, en transmettant simplement le chemin "enregistrer dans" et l'extension de fichier appropriée à la méthode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). La méthode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) dérive automatiquement le [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) de l'extension du nom de fichier spécifiée dans le chemin. L'exemple suivant montre comment convertir un document au format TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Spécification d'options supplémentaires lors du rendu TIFF

Vous devez souvent spécifier des options supplémentaires, qui affectent le résultat du rendu. Pour cela, utilisez la classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), qui contient des propriétés qui déterminent la manière dont le document est affiché sur l'image. Vous pouvez spécifier les éléments suivants:

- Enregistrer le format pour déterminer la liste des options disponibles ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Résolution ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Nombre de pages ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Paramètres de couleur et d'éclairage ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Qualité d'image ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Méthode utilisée pour binariser l'image ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Format de pixels pour les images générées ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Gestion des métafichiers Windows par Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Options supplémentaires que vous pouvez voir dans la classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

L'exemple suivant montre comment convertir DOC en TIFF avec les options configurées:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Seuil de binarisation TIFF

Une image TIFF peut être enregistrée au format 1bpp n/b en définissant la propriété [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) sur le type de format de pixel [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) et la propriété [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) sur [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) ou [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Pour la segmentation d'images, Aspose.Words utilise la méthode la plus simple: le seuillage. Cette méthode convertit une image TIFF en niveaux de gris en une image binaire, en utilisant une valeur seuil. Par conséquent, lorsqu'un document doit être converti au format de fichier TIFF, il est possible d'obtenir ou de définir le seuil de binarisation TIFF via la propriété [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). La valeur par défaut de cette propriété est définie sur 128, et plus cette valeur est élevée, plus l'image est sombre.

L'exemple suivant montre comment effectuer une binarisation TIFF avec un seuil spécifié:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Ci-dessous, vous pouvez comparer les images sur lesquelles la binarisation TIFF a été effectuée à différentes valeurs seuils:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="enregistrer-un-document-sous-un-tiff-aspose-words-net multipage" style="width:800px"/>
