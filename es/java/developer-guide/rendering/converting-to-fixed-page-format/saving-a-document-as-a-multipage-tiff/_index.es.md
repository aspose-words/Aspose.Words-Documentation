---
title: Guardar un documento como TIFF de varias páginas en Java
second_title: Aspose.Words por Java
articleTitle: Guardar un documento como Multipágina TIFF
linktitle: Guardar un documento como Multipágina TIFF
description: "Convierta un documento en una imagen rasterizada, que se analiza en el ejemplo del formato TIFF. Para determinar cómo se muestra TIFF, debe especificar opciones adicionales: resolución, número de páginas, binarización de imágenes, etc. usando Java."
type: docs
weight: 30
url: /es/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Cuando trabaja con documentos, a menudo necesita convertir su documento en un archivo(s) de imagen rasterizada. Esto es especialmente relevante si tiene que presentar su documento en un formato legible e imprimible, pero no editable. Por ejemplo, puede usar una imagen rasterizada de la primera página de su documento como vista previa. Este artículo describe cómo convertir un documento en una imagen rasterizada utilizando el ejemplo del formato TIFF, uno de los formatos de imagen más populares.

## Conversión de DOC a TIFF de varias páginas

En Aspose.Words, la conversión de DOC a TIFF se puede realizar con una línea de código, simplemente pasando la ruta" guardar en " y la extensión de archivo correspondiente al método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). El método **Save** deriva automáticamente el `SaveFormat` de la extensión de nombre de archivo especificada en la ruta. El siguiente ejemplo muestra cómo convertir un documento al formato TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Especificar Opciones Adicionales Al Renderizar TIFF

A menudo es necesario especificar opciones adicionales, que afectan el resultado del renderizado. Para este propósito, use la clase [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), que contiene propiedades que determinan cómo se muestra el documento en la imagen. Puede especificar lo siguiente:

- Guardar formato para determinar la lista de opciones disponibles ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Resolución ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Número de páginas ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Ajustes de color e iluminación ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Calidad de imagen([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- El método utilizado para binarizar la imagen ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Formato de píxeles para las imágenes generadas ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows manejo de metarchivos por Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Opciones adicionales que puede ver en la clase **ImageSaveOptions**

El siguiente ejemplo muestra cómo convertir DOC a TIFF con las opciones configuradas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Umbral para Binarización TIFF

Una imagen TIFF se puede guardar en formato b/n de 1bpp configurando la propiedad [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) en el tipo de formato de píxel Format1bppIndexed y la propiedad [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) en Ccitt3 o Ccitt4.

Para la segmentación de imágenes, Aspose.Words utiliza el método más simple: umbralización. Este método convierte una imagen de escala de grises TIFF en una imagen binaria, utilizando un valor umbral. Por lo tanto, cuando un documento necesita convertirse al formato de archivo TIFF, es posible obtener o establecer el umbral para la binarización TIFF a través de la propiedad [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering). El valor predeterminado para esta propiedad se establece en 128 y, cuanto mayor sea este valor, más oscura será la imagen.

El siguiente ejemplo muestra cómo realizar la binarización TIFF con un umbral especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

A continuación, puede comparar imágenes en las que se realizó la binarización TIFF con varios valores umbral:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
