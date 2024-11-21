---
title: Guardar un documento como un TIFF multipágina Java
second_title: Aspose.Words para Java
articleTitle: Salvar un documento como un TIFF multipágina
linktitle: Salvar un documento como un TIFF multipágina
description: "Convertir un documento en una imagen de mapa, que se discute sobre el ejemplo del formato TIFF. Para determinar cómo se muestra TIFF necesita especificar opciones adicionales: resolución, número de páginas, binarización de imágenes, etc. Java."
type: docs
weight: 30
url: /es/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Al trabajar con documentos, a menudo necesita convertir su documento a un archivo de imagen de mapas. Esto es especialmente relevante si usted tiene que presentar su documento en un formato legible e impreso, pero no editable. Por ejemplo, puede utilizar una imagen de mapa de la primera página de su documento como vista previa. Este artículo describe cómo convertir un documento a una imagen de mapa usando el ejemplo del formato TIFF – uno de los formatos de imagen más populares.

## Convertir DOC en TIFF multipágina

In Aspose.Words, conversión de DOC a TIFF se puede realizar con una línea de código, simplemente pasando la ruta "salvar a" y la extensión de archivo pertinente a la línea de código [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) método. El **Save** método deriva automáticamente el `SaveFormat` desde la extensión de nombre de archivo especificada en la ruta. El siguiente ejemplo demuestra cómo convertir un documento al formato TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Especificación de opciones adicionales al transferir TIFF

A menudo necesita especificar opciones adicionales, que afectan el resultado de renderización. Para ello, utilice el [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) clase, que contiene propiedades que determinan cómo se muestra el documento en la imagen. Puede especificar lo siguiente:

- Guardar formato para determinar la lista de opciones disponibles ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Resolución[HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Número de páginas ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Ajustes de color e iluminación ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Calidad de imagen ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- El método utilizado para binarizar la imagen ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Formato Pixel para imágenes generadas ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows metafiles manejando por Aspose.Words (G)[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Opciones adicionales que se pueden ver en **ImageSaveOptions** clase

El siguiente ejemplo muestra cómo convertir DOC a TIFF con opciones configuradas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Umbral para la Binarización TIFF

Una imagen TIFF se puede guardar en formato 1bpp b/w estableciendo [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) propiedad a Formato1bppIndexed pixel tipo de formato, y [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) propiedad a Ccitt3 o Ccitt4.

Para segmentación de imágenes, Aspose.Words utiliza el método más simple: umbral. Este método convierte una imagen TIFF a escala gris en una imagen binaria, utilizando un valor umbral. Por lo tanto, cuando un documento necesita ser convertido en el formato de archivo TIFF, es posible conseguir o establecer el umbral para la binarización TIFF a través del [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) propiedad. El valor predeterminado de esta propiedad se establece en 128, y el mayor de este valor, el más oscuro de la imagen.

El siguiente ejemplo muestra cómo realizar la binarización TIFF con un umbral especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

A continuación puede comparar imágenes sobre las cuales se realizó la binarización TIFF en varios valores umbral:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
