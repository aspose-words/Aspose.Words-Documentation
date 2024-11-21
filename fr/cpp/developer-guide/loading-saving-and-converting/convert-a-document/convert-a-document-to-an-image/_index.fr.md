---
title: Convertir un document en image en C++
second_title: Aspose.Words pour C++
articleTitle: Convertir un document en image
linktitle: Convertir un document en image
type: docs
description: "Convertir un document au format d'image (JPG, PNG, etc.). Créez un aperçu du document ou créez une numérisation de document pour envoyer une facture."
weight: 43
url: /fr/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

Parfois, il est nécessaire d'obtenir une image au lieu de documents dans d'autres formats, tels que DOCX ou PDF. Par exemple, vous devez ajouter un aperçu de n'importe quelle page de document sur votre site Web ou votre application, ou créer un "scan" d'un document pour envoyer une facture. C'est à ce moment que vous devrez peut-être convertir un document dans n'importe quel [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) en une image, encore une fois, dans n'importe quel [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Convertir au format d'image

Comme pour tous les exemples de conversion déjà décrits, vous devez créer un nouveau document ou charger un document existant dans n'importe quel format pris en charge, apporter les modifications nécessaires et l'enregistrer dans n'importe quel format d'image disponible, par exemple JPEG, PNG ou BMP.

L'exemple de code suivant montre comment convertir DOCX en JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Spécifiez les options d'enregistrement lors de la conversion en image

Aspose.Words vous fournit la classe [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), qui vous donne plus de contrôle sur la façon dont les documents sont enregistrés dans divers formats d'image. Certaines propriétés de cette classe héritent ou surchargent les propriétés des classes de base telles que [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) ou [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), mais il existe également des options spécifiques à l'enregistrement des images.

Il est possible de spécifier les pages à convertir au format d'image à l'aide de la propriété [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Par exemple, il peut être appliqué si vous n'avez besoin d'un aperçu que pour la première ou pour une page définie.

Il est également possible de contrôler la qualité de l'image de sortie et le format des pixels à l'aide des propriétés suivantes– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), ainsi que configurer les paramètres de couleur de l'image, en utilisant les propriétés suivantes– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Il existe également des propriétés qui s'appliquent à un certain format, par exemple [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) ou [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

L'exemple de code suivant montre comment créer un aperçu de la première page du document en appliquant certains paramètres supplémentaires:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
