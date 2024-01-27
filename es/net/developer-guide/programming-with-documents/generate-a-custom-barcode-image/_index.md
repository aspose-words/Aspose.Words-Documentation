---
title: Cómo crear un código de barras
second_title: Aspose.Words para .NET
articleTitle: Generar una imagen de código de barras personalizada
linktitle: Generar una imagen de código de barras personalizada
description: "Ejemplo de generación de formas de códigos de barras utilizando C#."
type: docs
weight: 350
url: /es/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words tiene una interfaz para generar códigos de barras personalizados que hace que sea muy fácil usar Aspose.Words y [Aspose.BarCode](https://products.aspose.com/barcode/net/) juntos para representar imágenes de códigos de barras en documentos de salida. Por ejemplo, puede cargar un documento DOC, OOXML o RTF que contenga un campo `DISPLAYBARCODE` en Aspose.Words, proporcionar su implementación de generador de códigos de barras personalizado y guardarlo en formatos de página fijos como PDF, XPS, etc.

Un campo `DISPLAYBARCODE` típico tiene la siguiente sintaxis:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

A continuación se muestra un generador de código de muestra que aprovecha `Aspose.BarCode` API. Este ejemplo muestra cómo insertar imágenes de códigos de barras en la posición del campo `DISPLAYBARCODE` en un documento de Word usando Aspose.Words y `Aspose.BarCode` API:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
