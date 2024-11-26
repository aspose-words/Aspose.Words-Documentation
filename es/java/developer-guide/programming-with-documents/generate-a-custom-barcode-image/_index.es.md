---
title: Crear BarCode en Java
second_title: Aspose.Words por Java
articleTitle: Generar una Imagen BarCode Personalizada
linktitle: Generar una Imagen BarCode Personalizada
description: "Ejemplo de generación de forma de código de barras usando Java."
type: docs
weight: 350
url: /es/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Un código de barras es una representación visual de datos en forma de líneas o patrones paralelos. Los códigos de barras se utilizan ampliamente en diversas industrias, como el comercio minorista, la logística, la atención médica, la banca y muchas otras.

Microsoft Word permite a los usuarios incrustar códigos de barras directamente en los documentos mediante campos. Los usuarios pueden insertar un tipo específico de código de barras, como un código QR o un código de barras lineal, utilizando el [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) campo.

En este artículo, veremos cómo se implementa el campo BARCODE en Aspose.Words y cómo Aspose.Words permite a los usuarios trabajar con documentos de Word a los que ya se les ha agregado un código de barras.

## Tipos de códigos de barras admitidos por Aspose.Words

Aspose.Words admite varios tipos de códigos de barras. El tipo de código de barras se pasa como un valor de cadena en la propiedad [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Dado que trabajar con códigos de barras dentro de la funcionalidad de Aspose.Words es limitado, el usuario puede usar cualquier biblioteca, incluida Aspose.Código de barras, o escribir su propia representación para trabajar con códigos de barras. Puede obtener más información sobre los tipos de códigos de barras [con el apoyo de Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Al guardar en formatos de Word que admitan códigos de barras, puede usar cualquier tipo de código de barras que sea [apoyado por Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Si se pasó un tipo incorrecto de código de barras, Word mostrará un error.

Al guardar en otros formatos, como PDF, Aspose.Words delega la representación de códigos de barras en el código de usuario, por lo que el usuario está limitado a los tipos de códigos de barras de su implementación o biblioteca utilizados.

## Inserte un código de barras en un Documento o Cargue un Documento con un código de barras Agregado

Aspose.Words proporciona la capacidad de:

1. Inserte programáticamente un código de barras en un documento usando el [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) y [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) códigos de campo
2. O cargue un documento de Word con códigos de barras ya insertados en él para continuar trabajando

Aspose.Words tiene una interfaz para generar códigos de barras personalizados que facilita su uso [Aspose.Words](https://products.aspose.com/words/java/) y [Aspose.BarCode](https://products.aspose.com/barcode/java/) juntos para renderizar imágenes de códigos de barras en documentos de salida. Por ejemplo, puede crear un documento DOC, OOXML o RTF y agregarle el campo DISPLAYBARCODE usando Aspose.Words. O puede cargar un documento DOC, OOXML o RTF con el campo DISPLAYBARCODE ya existente y proporcionar su implementación del generador de códigos de barras personalizado.

Un campo DISPLAYBARCODE típico tiene la siguiente sintaxis:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

A continuación se muestra un generador de código de ejemplo que utiliza Aspose.Words y Aspose.BarCode APIs. Este ejemplo muestra cómo insertar imágenes de código de barras en la posición del campo DISPLAYBARCODE en un documento de Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

También puede guardar el documento con el código de barras cargado o recién insertado en formatos de página fijos como PDF, XPS, etc. El siguiente ejemplo de código muestra cómo guardar un documento de Word en formato PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Para obtener más información sobre cómo convertir documentos de un formato a otro, consulte la [Convertir un Documento](/words/java/convert-a-document/) sección de documentación.

{{% /alert %}}

{{% alert color="primary" %}}

También puede usar la interfaz [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) para convertir códigos de barras incrustados en documentos de Word en imágenes. Las imágenes resultantes se pueden extraer del documento; consulte el artículo Trabajar con imágenes para obtener más detalles.

{{% /alert %}}

## Especificar Opciones de Código de Barras

Al trabajar con códigos de barras, puede establecer algunas propiedades adicionales. Aspose.Words le proporciona la clase [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - clase para que los parámetros del código de barras pasen a BarcodeGenerator.

Aspose.Words admite una resolución incrustada de 96 ppp para las imágenes generadas con [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), lo que limita el tamaño mínimo de una imagen de código de barras. Para abordar esto, los desarrolladores pueden insertar manualmente imágenes de códigos de barras con la resolución de destino en un documento de Word y guardarlas en el formato requerido. Para obtener más detalles y ejemplos sobre cómo trabajar con códigos de barras, consulte el artículo [Leer Códigos de Barras de Documentos de Word](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
