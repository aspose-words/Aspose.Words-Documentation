---
title: Guardar un documento como TIFF de varias páginas
second_title: Aspose.Words para Python via .NET
articleTitle: Guardar un documento como TIFF de varias páginas
linktitle: Guardar un documento como TIFF de varias páginas
description: "Convierta un documento a TIFF de varias páginas usando Python. Para determinar cómo se muestra el documento en la imagen, debe especificar opciones adicionales: resolución, número de páginas, binarización de la imagen, etc."
type: docs
weight: 30
url: /es/python-net/saving-a-document-as-a-multipage-tiff/
---

Cuando trabaja con documentos, a menudo necesita convertir su documento en un archivo de imagen rasterizada. Esto es especialmente relevante si tiene que presentar su documento en un formato legible e imprimible, pero no editable. Por ejemplo, puede utilizar una imagen rasterizada de la primera página de su documento como vista previa. Este artículo describe cómo convertir un documento a una imagen rasterizada utilizando el ejemplo del formato TIFF, uno de los formatos de imagen más populares.

## Conversión de DOC a TIFF de varias páginas

En Aspose.Words, la conversión de DOC a TIFF se puede realizar con una línea de código, simplemente pasando la ruta "guardar en" y la extensión de archivo relevante al método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). El método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) deriva automáticamente el [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) de la extensión del nombre de archivo especificada en la ruta. El siguiente ejemplo demuestra cómo convertir un documento al formato TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Especificación de opciones adicionales al renderizar TIFF

A menudo es necesario especificar opciones adicionales que afectan el resultado del renderizado. Para ello, utilice la clase [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), que contiene propiedades que determinan cómo se muestra el documento en la imagen. Puede especificar lo siguiente:

- Guardar formato para determinar la lista de opciones disponibles ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Resolución ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Número de páginas ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Configuraciones de color e iluminación ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Calidad de imagen ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Método utilizado para binarizar la imagen ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Formato de píxeles para imágenes generadas ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Manejo de metarchivos Windows por Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Opciones adicionales que puedes ver en la clase [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

El siguiente ejemplo muestra cómo convertir DOC a TIFF con opciones configuradas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Umbral para la binarización TIFF

Se puede guardar una imagen TIFF en formato b/n de 1 bpp configurando la propiedad [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) en el tipo de formato de píxel [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) y la propiedad [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) en [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) o [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Para la segmentación de imágenes, Aspose.Words utiliza el método más simple: el umbral. Este método convierte una imagen TIFF en escala de grises en una imagen binaria, utilizando un valor umbral. Por lo tanto, cuando es necesario convertir un documento al formato de archivo TIFF, es posible obtener o establecer el umbral para la binarización TIFF a través de la propiedad [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). El valor predeterminado para esta propiedad se establece en 128 y cuanto mayor sea este valor, más oscura será la imagen.

El siguiente ejemplo muestra cómo realizar la binarización TIFF con un umbral específico:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

A continuación puede comparar imágenes en las que se realizó la binarización TIFF en varios valores de umbral:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="guardar-un-documento-como-tiff-multipágina-aspose-words-net" style="width:800px"/>
