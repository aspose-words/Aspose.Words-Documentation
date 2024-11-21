---
title: Convertir un document en image
second_title: Aspose.Words pour Python via .NET
articleTitle: Convertir un document en image
linktitle: Convertir un document en image
type: docs
description: "Convertir un document au format image (JPG, PNG, etc.). Créez un aperçu du document ou créez une numérisation de document pour envoyer une facture à l'aide de Python."
weight: 43
url: /fr/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Parfois, il est nécessaire d'obtenir une image au lieu de documents dans d'autres formats, tels que DOCX ou PDF. Par exemple, vous devez ajouter un aperçu de n'importe quelle page de document à votre site Web ou à votre application, ou créer un "scan" d'un document pour envoyer une facture. C'est à ce moment-là que vous devrez peut-être convertir un document dans n'importe quel [format de chargement pris en charge](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) en une image, encore une fois, dans n'importe quel [format de sauvegarde pris en charge](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Convertir au format d'image {#convert-to-image-format}

Comme pour tous les exemples de conversion déjà décrits, vous devez créer un nouveau document ou charger un document existant dans n'importe quel format pris en charge, apporter les modifications nécessaires et l'enregistrer dans n'importe quel format d'image disponible, par exemple JPEG, PNG ou BMP.

L'exemple de code suivant montre comment convertir un PDF en JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Spécifier les options d'enregistrement lors de la conversion en image {#specify-save-options-when-converting-to-an-image}

Aspose.Words vous propose la classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), qui donne plus de contrôle sur la façon dont les documents sont enregistrés dans différents formats d'image. Certaines propriétés de cette classe héritent ou surchargent les propriétés des classes de base telles que [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) ou [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), mais il existe également des options spécifiques à l'enregistrement des images.

Il est possible de spécifier les pages à convertir au format image grâce à la propriété [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). Par exemple, il peut être appliqué si vous avez uniquement besoin d'un aperçu de la première page ou d'une page définie.

Il est également possible de contrôler la qualité de l'image de sortie et le format de pixel à l'aide des propriétés suivantes – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), ainsi que de configurer les paramètres de couleur de l'image, à l'aide des propriétés suivantes – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Il existe également des propriétés qui s'appliquent à un certain format, par exemple [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) ou [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

L'exemple de code suivant montre comment créer un aperçu de la première page du document en appliquant des paramètres supplémentaires:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
