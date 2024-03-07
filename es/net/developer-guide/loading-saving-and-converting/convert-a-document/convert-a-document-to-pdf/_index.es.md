---
title: Convertir Word a PDF en C#
second_title: Aspose.Words para .NET
articleTitle: Convertir un documento a PDF
linktitle: Convertir un documento a PDF
description: "Convierta un documento a PDF usando C#. Convierta DOCX a PDF C#. Se admiten varios formatos de entrada, incluidos los formatos Word, OpenOffice, Image y eBook."
type: docs
weight: 10
url: /es/net/convert-a-document-to-pdf/
---

La capacidad de convertir documentos de un formato a otro de forma fácil y fiable es una característica clave de Aspose.Words. Uno de los formatos más populares para la conversión es PDF, un formato de diseño fijo que conserva la apariencia original de un documento durante su reproducción en varias plataformas. El término "renderizado" se utiliza en Aspose.Words para describir el proceso de convertir un documento a un formato de archivo paginado o que tiene el concepto de páginas.

## Convertir un documento de Word a PDF

La conversión de Word a PDF es un proceso bastante complejo que requiere varias etapas de cálculo. El motor de diseño Aspose.Words imita la forma en que funciona el motor de diseño de página de Microsoft Word, haciendo que los documentos de salida PDF se parezcan lo más posible a lo que puede ver en Microsoft Word.

Con Aspose.Words puedes convertir mediante programación un documento de formatos de Word, como DOC o DOCX, a PDF sin utilizar Microsoft Office. Este artículo explica cómo realizar esta conversión.

{{% alert color="primary" %}}

Tenga en cuenta que el número de páginas de un documento afecta el tiempo de conversión.

{{% /alert %}}

### Convertir DOCX o DOC a PDF

La conversión del formato de documento DOC o DOCX al formato PDF en Aspose.Words es muy fácil y se puede lograr con solo dos líneas de código que:

1. Cargue su documento en un objeto [Document](https://reference.aspose.com/words/es/net/aspose.words/document/) usando uno de sus constructores especificando el nombre del documento con su extensión de formato.
1. Invoque uno de los métodos [Document.Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/#save/) en el objeto **Document** y especifique el formato de salida deseado como PDF ingresando un nombre de archivo con la extensión ".PDF".

El siguiente ejemplo de código muestra cómo convertir un documento de DOCX a PDF utilizando el método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/):

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

A veces es necesario especificar opciones adicionales, lo que puede afectar el resultado de guardar un documento como PDF. Estas opciones se pueden especificar mediante el uso de la clase [PdfSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/pdfsaveoptions/), que contiene propiedades que determinan cómo se mostrará la salida PDF.

Tenga en cuenta que con la misma técnica, puede convertir cualquier documento con formato de diseño fluido a formato PDF.

{{% /alert %}}

### Convertir a diferentes estándares de PDF

Aspose.Words proporciona la enumeración [PdfCumplimiento](https://reference.aspose.com/words/es/net/aspose.words.saving/pdfcompliance/) para admitir la conversión de DOC o DOCX a varios estándares de formato PDF (como PDF 1.7, PDF 1.5, etc.).

El siguiente ejemplo de código demuestra cómo convertir un documento a PDF 1.7 usando [PdfSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/pdfsaveoptions/) conforme a PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Convertir imágenes a PDF

La conversión a PDF no está restringida por los formatos de documentos Microsoft Word. Cualquier formato compatible con Aspose.Words, incluido el creado mediante programación, también se puede convertir a PDF. Por ejemplo, podemos convertir imágenes de una sola página, como JPEG, PNG, BMP, EMF o WMF, así como imágenes de varias páginas, como TIFF y GIF, a PDF.

El siguiente ejemplo de código muestra cómo convertir imágenes JPEG y TIFF a PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Para que este código funcione, debe agregar referencias a Aspose.Words y `System.Drawing` a su proyecto.

## Reducir el tamaño de salida del PDF

Al guardar en PDF, puede especificar si desea optimizar la salida. Para hacer esto, debe establecer el indicador [OptimizeOutput](https://reference.aspose.com/words/es/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) en verdadero y luego se eliminarán los lienzos anidados redundantes y los lienzos vacíos y se concatenarán los glifos vecinos con el mismo formato.

El siguiente ejemplo de código muestra cómo optimizar la salida:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

El uso de la propiedad **OptimizeOutput** puede afectar la precisión de la visualización del contenido.

{{% /alert %}}

## Ver también

- El artículo [Representación](/words/es/net/rendering/) para obtener más información sobre los formatos de página fija y diseño de flujo.
- El artículo ["Conversión a formato de página fija"](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para más información sobre el diseño de la página.
- El artículo [Especificar opciones de renderizado al convertir a PDF](/words/es/net/specify-rendering-options-when-converting-to-pdf/) para más información sobre el uso de la clase `PdfSaveOptions`
- El artículo [Conozca las funciones de conversión a PDF/A y PDF/UA](/words/es/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) que describe qué estándar PDF y el ISO relevante para los estándares PDF admiten Aspose.Words.
- El artículo [¿Qué estándar de PDF es mejor elegir?](/words/es/net/which-pdf-standard-is-better-to-choose/) para determinar qué estándares PDF tienen sentido y en qué casos.

- El artículo [Trabajar con PDF/A o PDF/UA](/words/es/net/working-with-pdfa-or-pdfua/) describe los requisitos para el contenido del documento en formatos PDF/A y PDF/UA, principalmente los requisitos para la estructura y las fuentes.

- El artículo [Advertencias de problemas de accesibilidad al guardar en PDF/A y PDF/UA](/words/es/net/warnings-when-saving-to-pdfa-and-pdfua/) describe qué requisitos de accesibilidad al contenido imponen PDF/A y PDF/UA.
