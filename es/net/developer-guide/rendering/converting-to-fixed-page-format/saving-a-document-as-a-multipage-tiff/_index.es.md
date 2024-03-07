---
title: Guardar un documento como TIFF de varias páginas en C#
second_title: Aspose.Words para .NET
articleTitle: Guardar un documento como TIFF de varias páginas
linktitle: Guardar un documento como TIFF de varias páginas
description: "Convierta un documento a TIFF de varias páginas usando C#. Para determinar cómo se muestra el documento en la imagen, debe especificar opciones adicionales: resolución, número de páginas, binarización de la imagen, etc."
type: docs
weight: 30
url: /es/net/saving-a-document-as-a-multipage-tiff/
---

Cuando trabaja con documentos, a menudo necesita convertir su documento en un archivo de imagen rasterizada. Esto es especialmente relevante si tiene que presentar su documento en un formato legible e imprimible, pero no editable. Por ejemplo, puede utilizar una imagen rasterizada de la primera página de su documento como vista previa. Este artículo describe cómo convertir un documento a una imagen rasterizada utilizando el ejemplo del formato TIFF, uno de los formatos de imagen más populares.

## Conversión de DOC a TIFF de varias páginas

En Aspose.Words, la conversión de DOC a TIFF se puede realizar con una línea de código, simplemente pasando la ruta "guardar en" y la extensión de archivo relevante al método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/#save). El método **Save** deriva automáticamente el `SaveFormat` de la extensión del nombre de archivo especificada en la ruta. El siguiente ejemplo demuestra cómo convertir un documento al formato TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Especificación de opciones adicionales al renderizar TIFF

A menudo es necesario especificar opciones adicionales que afectan el resultado del renderizado. Para ello, utilice la clase [ImageSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/), que contiene propiedades que determinan cómo se muestra el documento en la imagen. Puede especificar lo siguiente:

- Guardar formato para determinar la lista de opciones disponibles ([SaveFormat](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Resolución ([HorizontalResolution](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Número de páginas ([PageIndex](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/))
- Configuraciones de color e iluminación ([PaperColor](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Calidad de imagen ([JpegQuality](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Método utilizado para binarizar la imagen ([TiffBinarizationMethod](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Formato de píxeles para imágenes generadas ([PixelFormat](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Manejo de metarchivos Windows por Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Opciones adicionales que puedes ver en la clase **ImageSaveOptions**

El siguiente ejemplo muestra cómo convertir DOC a TIFF con opciones configuradas:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Umbral para la binarización TIFF

Se puede guardar una imagen TIFF en formato b/n de 1 bpp configurando la propiedad [PixelFormat](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/pixelformat/) en el tipo de formato de píxel Format1bppIndexed y la propiedad [TiffCompression](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/tiffcompression/) en Ccitt3 o Ccitt4.

Para la segmentación de imágenes, Aspose.Words utiliza el método más simple: el umbral. Este método convierte una imagen TIFF en escala de grises en una imagen binaria, utilizando un valor umbral. Por lo tanto, cuando es necesario convertir un documento al formato de archivo TIFF, es posible obtener o establecer el umbral para la binarización TIFF a través de la propiedad [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). El valor predeterminado para esta propiedad se establece en 128 y cuanto mayor sea este valor, más oscura será la imagen.

El siguiente ejemplo muestra cómo realizar la binarización TIFF con un umbral específico:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

A continuación puede comparar imágenes en las que se realizó la binarización TIFF en varios valores de umbral:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="guardar-un-documento-como-tiff-multipágina-aspose-words-net" style="width:800px"/>
