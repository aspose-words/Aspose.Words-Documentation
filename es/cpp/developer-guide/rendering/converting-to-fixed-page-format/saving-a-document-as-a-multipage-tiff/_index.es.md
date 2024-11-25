---
title: Guardar un documento como un TIFF de varias páginas en C++
second_title: Aspose.Words para C++
articleTitle: Guardar un documento como TIFF de varias páginas
linktitle: Guardar un documento como TIFF de varias páginas
description: "Convierta un documento en un TIFF de varias páginas usando C++. Para determinar cómo se muestra el documento en la imagen, debe especificar opciones adicionales: resolución, número de páginas, binarización de la imagen, etc."
type: docs
weight: 40
url: /es/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Cuando trabaja con documentos, a menudo necesita convertir su documento en un archivo(s) de imagen rasterizada. Esto es especialmente relevante si tiene que presentar su documento en un formato legible e imprimible, pero no editable. Por ejemplo, puede usar una imagen rasterizada de la primera página de su documento como vista previa. Este artículo describe cómo convertir un documento en una imagen rasterizada utilizando el ejemplo del formato TIFF, uno de los formatos de imagen más populares.

## Conversión de DOC a TIFF de varias páginas

En Aspose.Words, la conversión de DOC a TIFF se puede realizar con una línea de código, simplemente pasando la ruta" guardar en " y la extensión de archivo relevante al método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). El método **Save** deriva automáticamente el `SaveFormat` de la extensión de nombre de archivo especificada en la ruta. El siguiente ejemplo muestra cómo convertir un documento al formato TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Especificación De Opciones Adicionales Al Renderizar TIFF

A menudo es necesario especificar opciones adicionales, que afectan el resultado del renderizado. Para este propósito, use la clase [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), que contiene propiedades que determinan cómo se muestra el documento en la imagen. Puede especificar lo siguiente:

- Guardar formato para determinar la lista de opciones disponibles ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Resolución ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Número de páginas ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Ajustes de color e iluminación ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Calidad de imagen([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Método utilizado para binarizar la imagen ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Formato de píxeles para las imágenes generadas ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows manejo de metarchivos por Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Opciones adicionales que puede ver en la clase **ImageSaveOptions**

El siguiente ejemplo muestra cómo convertir DOC a TIFF con las opciones configuradas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Umbral para la Binarización de TIFF

Una imagen TIFF se puede guardar en formato b/n 1 bpp configurando la propiedad [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) en Formato de tipo de formato de píxel1bppIndexed y la propiedad `TiffCompression` en Ccitt3 o Ccitt4.

Para la segmentación de imágenes, Aspose.Words utiliza el método más simple: umbralización. Este método convierte una imagen TIFF en escala de grises en una imagen binaria, utilizando un valor umbral. Por lo tanto, cuando un documento necesita convertirse al formato de archivo TIFF, es posible obtener o establecer el umbral para la binarización TIFF mediante la propiedad [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). El valor predeterminado para esta propiedad se establece en 128 y, cuanto mayor sea este valor, más oscura será la imagen.

El siguiente ejemplo muestra cómo realizar la binarización TIFF con un umbral especificado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

A continuación, puede comparar imágenes en las que se realizó binarización TIFF a varios valores umbral:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)