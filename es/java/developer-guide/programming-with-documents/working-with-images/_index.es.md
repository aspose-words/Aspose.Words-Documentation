---
title: Trabajar con imágenes en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Imágenes
linktitle: Trabajar con Imágenes
type: docs
description: "Formas de imagen en detalles y funciones avanzadas proporcionadas por Aspose.Words para Java."
weight: 300
url: /es/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite a los usuarios trabajar con imágenes de una manera muy flexible. En este artículo, puede explorar solo algunas de las posibilidades de trabajar con imágenes.

## Cómo Extraer Imágenes de un documento {#how-to-extract-images-from-a-document}

Todas las imágenes se almacenan dentro de **Shape** nodos en un documento. Para extraer todas las imágenes o imágenes que tengan un tipo específico del documento, siga estos pasos:

- Utilice el método [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) para seleccionar todos los nodos de forma.
- Iterar a través de las colecciones de nodos resultantes.
- Compruebe la propiedad booleana [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- Extraiga los datos de la imagen utilizando la propiedad [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- Guarde los datos de la imagen en un archivo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Cómo Insertar un código de barras en cada página del documento {#how-to-insert-barcode-on-each-documen-page}

Este ejemplo le permite agregar códigos de barras iguales o diferentes en todas las páginas o en páginas específicas de un documento de Word. No hay una forma directa de agregar códigos de barras en todas las páginas de un documento, pero puede usar los métodos [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) y [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) para moverse a cualquier sección o encabezado/pie de página e insertar las imágenes del código de barras como puede ver en el siguiente código.

El siguiente ejemplo de código muestra cómo insertar una imagen de código de barras en cada página de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Bloquear la Relación de aspecto de la Imagen {#lock-aspect-ratio-of-image}

La relación de aspecto de una forma geométrica es la relación de sus tamaños en diferentes dimensiones. Puede bloquear la relación de aspecto de una imagen usando [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). El valor predeterminado de la relación de aspecto de la forma depende de [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Es verdadero para `ShapeType.Image` y falso para otros tipos de formas.

El siguiente ejemplo de código muestra cómo trabajar con la relación de aspecto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Cómo Obtener Límites Reales de Forma en Puntos {#how-to-get-actual-bounds-of-shape-in-points}

Si desea que el cuadro delimitador real de la forma se represente en la página, puede lograrlo utilizando la propiedad [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

El siguiente ejemplo de código muestra cómo usar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Recortar Imágenes

El recorte de una imagen generalmente se refiere a la eliminación de las partes externas no deseadas de una imagen para ayudar a mejorar el encuadre. También se utiliza para eliminar algunas de las partes de una imagen para aumentar el enfoque en un área en particular.

El siguiente ejemplo de código muestra cómo lograr esto usando Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Guardar imágenes como WMF

Aspose.Words proporciona funcionalidad para guardar todas las imágenes disponibles en un documento en [WMF](https://docs.fileformat.com/image/wmf/)formatee mientras convierte DOCX a RTF.

El siguiente ejemplo de código muestra cómo guardar imágenes como WMF con las opciones de guardado RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
