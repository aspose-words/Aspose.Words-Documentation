---
title: Convertir un document en image dans Java
second_title: Aspose.Words pour Java
articleTitle: Convertir un document en image
linktitle: Convertir un document en image
type: docs
description: "Convertir un document en format image (JPG, PNG, etc.). Créer un aperçu de document ou créer un scan de document pour envoyer une facture en utilisant Java."
weight: 35
url: /fr/java/convert-a-document-to-an-image/
---

Parfois, il est nécessaire d'obtenir une image au lieu de documents dans d'autres formats, comme DOCX ou PDF. Par exemple, vous devez ajouter un aperçu de n'importe quelle page de document à votre site Web ou application ou créer un "scan" d'un document pour envoyer une facture. C'est alors que vous pouvez avoir besoin de convertir un document dans n'importe quel [format de charge support É](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) à une image, encore, dans n'importe quelle [format de sauvegarde pris en charge](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Convertir en Format d'image

Comme pour tous les exemples de conversion déjà décrits, vous devez créer un nouveau document ou charger un document existant dans n'importe quel format pris en charge, apporter les modifications nécessaires, et l'enregistrer dans n'importe quel format d'image disponible, par exemple, JPEG, PNG ou BMP.

L'exemple de code suivant montre comment convertir DOCX en JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Spécifier les options de sauvegarde lors de la conversion d'une image

Aspose.Words vous fournit le [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, qui donne plus de contrôle sur la façon dont les documents sont enregistrés dans différents formats d'image. Certaines propriétés de cette classe héritent ou surchargent des propriétés des classes de base telles que [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) ou [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), mais il existe aussi des options spécifiques pour enregistrer des images.

Il est possible de spécifier les pages à convertir en format image en utilisant la [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) propriété. Par exemple, il peut être appliqué si vous avez seulement besoin d'un aperçu pour la première ou pour une page définie.

Il est également possible de contrôler la qualité d'image de sortie et le format de pixel en utilisant les propriétés suivantes – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), ainsi que de configurer les paramètres de couleur d'image, en utilisant les propriétés suivantes – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Il y a aussi des propriétés qui s'appliquent à un certain format, par exemple, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) ou [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

L'exemple de code suivant montre comment créer un aperçu de la première page de document avec l'application de certains paramètres supplémentaires:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
