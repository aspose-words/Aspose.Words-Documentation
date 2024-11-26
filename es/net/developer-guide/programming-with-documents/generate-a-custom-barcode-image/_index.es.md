---
title: Cómo Crear Código de barras
second_title: Aspose.Words para .NET
articleTitle: Generar una imagen de código de barras personalizada
linktitle: Generar una imagen de código de barras personalizada
description: "Ejemplo de generación de forma de código de barras usando C#."
type: docs
weight: 350
url: /es/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Un código de barras es una representación visual de datos en forma de líneas paralelas o patrones. Los códigos de barras se utilizan ampliamente en varias industrias como el comercio minorista, la logística, la salud, los servicios bancarios y muchas otras.

Microsoft Word permite a los usuarios incrustar códigos de barras directamente en documentos utilizando campos. Los usuarios pueden insertar un tipo específico de código de barras, como un código QR o un código lineal, utilizando el campo [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

En este artículo, examinaremos cómo se implementa el campo BARCODE en Aspose.Words y cómo Aspose.Words permite que los usuarios trabajen con documentos de Word a los que ya se ha añadido un código de barras.

## Tipos de códigos de barras admitidos por Aspose.Words

Aspose.Words admite varios tipos de códigos de barras. El tipo de código de barras se pasa como un valor de cadena en la propiedad [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Dado que trabajar con códigos de barras dentro de la funcionalidad de Aspose.Words es limitado, el usuario puede usar cualquier biblioteca, incluyendo Aspose.Barcode, o escribir su propio renderizado para trabajar con códigos de barras. Puede aprender más sobre los tipos de códigos de barras [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Al guardar en formatos de Word que admiten códigos de barras, puede utilizar cualquier tipo de código de barras que sea [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Si se pasa un tipo incorrecto de código de barras, Word mostrará un error.

Al guardar en otros formatos, como PDF, Aspose.Words delega el renderizado de códigos de barras en el código del usuario, por lo que el usuario se limita a los tipos de códigos de barras de su implementación o biblioteca utilizada.

## Inserte un código de barras en un documento o cargue un documento con un código de barras añadido

Aspose.Words ofrece la capacidad de:

1. Inserte programáticamente un código de barras en un documento usando los códigos [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) y [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. O cargar un documento de Word con códigos de barras ya insertados en él para un mayor trabajo

Aspose.Words tiene una interfaz para generar códigos de barras personalizados que lo hace fácil de usar [Aspose.Words](https://products.aspose.com/words/net/) y [Aspose.BarCode](https://products.aspose.com/barcode/net/) juntos para representar imágenes de códigos de barras en documentos de salida. Por ejemplo, puede crear un documento DOC, OOXML o RTF y agregar el campo DISPLAYBARCODE a él usando Aspose.Words. O puede cargar un documento DOC, OOXML o RTF con el campo DISPLAYBARCODE ya existente en ella y proporcionar su implementación personalizada del generador de códigos de barras.

Un campo tipico de DISPLAYBARCODE tiene la siguiente sintaxis:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

A continuación se muestra un ejemplo de generador de código utilizando Aspose.Words y los códigos Aspose. Barcode API. Este ejemplo muestra cómo insertar imágenes de código de barras en la posición de campo DISPLAYBARCODE en un documento de Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

También puede guardar el documento con el código de barras cargado o recién insertado en formatos fijos de página, como PDF, XPS, etc. El siguiente ejemplo de código muestra cómo guardar un documento de Word en formato PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Para más información sobre la conversión de documentos de un formato a otro, ver [Convert a Document](/words/net/convert-a-document/) sección de documentación.

{{% /alert %}}

{{% alert color="primary" %}}

También puedes usar la interfaz [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) para convertir códigos de barras incrustados en documentos de Word a imágenes. Las imágenes resultantes pueden extraerse del documento - consulta el artículo 'Trabajando con imágenes' para obtener más detalles.

{{% /alert %}}

## Especifique opciones de código de barras

Cuando se trabaja con códigos de barras, puede establecer algunas propiedades adicionales. Aspose.Words le proporciona la clase [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) - clase para parámetros de código de barras para pasar a través de GeneradorDeCódigosDeBarras".

Aspose.Words admite la resolución entrelazada de 96 ppi para las imágenes generadas con [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), lo que limita el tamaño mínimo de una imagen de código de barras. Para abordar esto, los desarrolladores pueden insertar manualmente imágenes de código de barras con la resolución objetivo en un documento de Word y guardarlos en el formato requerido. Para más detalles y ejemplos sobre cómo trabajar con códigos de barras, consulte el artículo [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).
