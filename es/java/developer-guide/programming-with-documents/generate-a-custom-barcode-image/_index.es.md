---
title: Crear Código de barras en Java
second_title: Aspose.Words para Java
articleTitle: Generar una imagen de Código de Barras Personalizada
linktitle: Generar una imagen de Código de Barras Personalizada
description: "Ejemplo de generación de forma de código de barras usando Java."
type: docs
weight: 350
url: /es/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Un código de barras es una representación visual de datos en forma de líneas paralelas o patrones. Los códigos de barras se utilizan ampliamente en diferentes industrias como el comercio minorista, la logística, la atención médica, la banca y muchas otras.

Microsoft Word permite que los usuarios incrusten códigos de barras directamente en documentos utilizando campos. Los usuarios pueden insertar un tipo específico de código de barras, como un código QR o un código lineal, utilizando el campo [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

En este artículo, veremos cómo el campo BARCODE se implementa en Aspose.Words, y cómo Aspose.Words permite a los usuarios trabajar con documentos de Word a los que ya se ha añadido un código de barras.

## Tipos de código de barras compatibles con Aspose.Words

Aspose.Words soporta varios tipos de códigos de barras. El tipo de código de barras se pasa como un valor de cadena en la propiedad [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Puesto que trabajar con códigos de barras dentro de la funcionalidad de Aspose.Words está limitado, el usuario puede usar cualquier biblioteca incluyendo Aspose.Barcode, o escribir su propio renderizado para trabajar con códigos de barras. Puedes aprender más sobre los tipos de códigos de barras [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Al guardar en formatos de Word que admiten códigos de barras, se puede usar cualquier tipo de código de barras que es [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Si se pasó un tipo incorrecto de código de barras, Word mostrará un error.

Cuando se guarda en otros formatos, tales como PDF, Aspose.Words delega la representación de código de barras al código del usuario, por lo tanto el usuario está limitado a los tipos de código de barras de su implementación o biblioteca utilizada.

## Insertar un código de barras en un documento o cargar un documento con un código de barras agregado

Aspose.Words proporciona la capacidad de:

1. Programáticamente inserte un código de barras en un documento usando el [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) y [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) códigos de campo
2. O cargar un documento de Word con códigos de barras ya insertados en él para trabajar más adelante

Aspose.Words tiene una interfaz para generar códigos de barras personalizados que hace que sea fácil usar [Aspose.Words](https://products.aspose.com/words/java/) y [Aspose.BarCode](https://products.aspose.com/barcode/java/) juntos para representar imágenes de códigos de barras en documentos de salida. Por ejemplo, puede crear un documento DOC, OOXML o RTF y agregar el campo DISPLAYBARCODE a él usando Aspose.Words. O puede cargar un documento DOC, OOXML o RTF con el campo DISPLAYBARCODE ya existente en él y proporcionar su propia implementación del generador de códigos de barras personalizado.

Un campo tipíco de DISPLAYBARCODE tiene la siguiente sintaxis:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

A continuación se muestra un ejemplo de código generador utilizando los Aspose.Words y Aspose.BarCode API. Este ejemplo muestra cómo insertar imágenes de código de barras en la posición de campo DISPLAYBARCODE en un documento de Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

También puede guardar el documento con el código de barras cargado o recién insertado en formatos de página fijos como PDF, XPS, etc. El siguiente ejemplo de código muestra cómo guardar un documento de Word en formato PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Para más información sobre la conversión de documentos de un formato a otro, consulte el [Convert a Document](/words/java/convert-a-document/) sección de documentación.

{{% /alert %}}

{{% alert color="primary" %}}

También puedes utilizar la interfaz [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) para convertir códigos de barras incrustados en documentos de Word a imágenes. Las imágenes resultantes pueden extraerse del documento – consulte el artículo Trabajar con imágenes para obtener más detalles.

{{% /alert %}}

## Especificar Opciones de Código de Barra

Al trabajar con códigos de barras, se pueden establecer algunas propiedades adicionales. Aspose.Words te proporciona la clase [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - clase para parámetros del código de barras para pasar a través de BarcodeGenerator.

Aspose.Words admite la resolución integrada de 96 ppp para las imágenes generadas con [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), lo que limita el tamaño mínimo de una imagen de código de barras. Para abordar esto, los desarrolladores pueden insertar manualmente imágenes de código de barras con la resolución objetivo en un documento de Word y guardarlas en el formato requerido. Para más detalles y ejemplos sobre cómo trabajar con códigos de barras, consulte el artículo [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
