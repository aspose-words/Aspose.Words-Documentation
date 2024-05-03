---
title: Trabajando con Imágenes en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Imágenes
linktitle: Trabajando con Imágenes
type: docs
description: "Formas de imagen en detalles y características avanzadas proporcionadas por Aspose.Words para Java."
weight: 300
url: /es/java/working-with-images/
---

Aspose.Words permite a los usuarios trabajar con imágenes de una manera muy flexible. En este artículo, usted puede explorar sólo algunas de las posibilidades de trabajar con imágenes.

## Cómo extraer imágenes de un documento {#how-to-extract-images-from-a-document}

Todas las imágenes se almacenan dentro **Shape** nodos en un documento. Para extraer todas las imágenes o imágenes que tengan un tipo específico del documento, siga estos pasos:

- Usa el [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) método para seleccionar todos los nodos de Forma.
- Tetrato a través de colecciones de nodos resultantes.
- Revisa el [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) propiedad booleana.
- Extraer datos de imagen utilizando [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) propiedad.
- Guardar datos de imagen en un archivo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Cómo insertar código de barras en cada página de documento {#how-to-insert-barcode-on-each-documen-page}

Este ejemplo le permite agregar los mismos o diferentes códigos de barras en todas o páginas específicas de un documento de Word. No hay forma directa de añadir códigos de barras en todas las páginas de un documento, pero se puede utilizar [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) y [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) métodos para moverse a cualquier sección o encabezados/pieers e insertar las imágenes de código de barras como se puede ver en el siguiente código

El siguiente ejemplo de código muestra cómo insertar una imagen de código de barras en cada página de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Cierre la proporción de imagen {#lock-aspect-ratio-of-image}

La relación de aspecto de una forma geométrica es la relación de sus tamaños en diferentes dimensiones. Puede bloquear la relación de aspecto de una imagen usando [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). El valor predeterminado de la relación de aspecto de la forma depende de la [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Es true para `ShapeType.Image` y false para otros tipos de formas.

El siguiente ejemplo de código muestra cómo trabajar con relación de aspecto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Cómo obtener libras reales de forma en puntos {#how-to-get-actual-bounds-of-shape-in-points}

Si desea la caja de fijación actual de la forma tal como se muestra en la página, puede lograrlo utilizando la [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) propiedad.

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Crop Images

El recorte de una imagen generalmente se refiere a la eliminación de las partes externas no deseadas de una imagen para ayudar a mejorar el encuadre. También se utiliza para la eliminación de algunas de las porciones de una imagen para aumentar el enfoque en un área particular.

El siguiente ejemplo de código muestra cómo lograrlo utilizando Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Imágenes de ahorro como WMF

Aspose.Words proporciona funcionalidad para guardar todas las imágenes disponibles en un documento [WMF](https://docs.fileformat.com/image/wmf/)formato al convertir DOCX a RTF.

El siguiente ejemplo de código muestra cómo guardar imágenes como WMF con opciones de ahorro de RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
