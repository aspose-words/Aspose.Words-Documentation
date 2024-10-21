---
title: Trabajar con imágenes en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Imágenes
linktitle: Trabajar con Imágenes
type: docs
description: "Introducción a la función de imagen, cómo crear y manipular imágenes usando C++."
weight: 300
url: /es/cpp/working-with-images/
---

Aspose.Words permite a los usuarios trabajar con imágenes de una manera muy flexible. En este artículo, puede explorar solo algunas de las posibilidades de trabajar con imágenes.

## Cómo Extraer Imágenes de un Documento

Todas las imágenes se almacenan dentro de **Shape** nodos en un [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Para extraer todas las imágenes o imágenes que tengan un tipo específico del documento, siga estos pasos:

- Utilice el método [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) para seleccionar todos los nodos **Shape**.
- Iterar a través de las colecciones de nodos resultantes.
- Compruebe la propiedad booleana [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Extraiga los datos de la imagen utilizando la propiedad [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Guarde los datos de la imagen en un archivo.

El siguiente ejemplo de código muestra cómo extraer imágenes de un documento y guardarlas como archivos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Guardar imágenes como WMF

Aspose.Words proporciona funcionalidad para guardar todas las imágenes disponibles en un documento en [WMF ](https://docs.fileformat.com/image/wmf/)formatee mientras convierte DOCX a RTF.

El siguiente ejemplo de código muestra cómo guardar imágenes como WMF con las opciones de guardado de RTF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
