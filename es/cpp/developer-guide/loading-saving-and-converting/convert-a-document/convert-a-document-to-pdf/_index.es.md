---
title: Convertir un documento a PDF en C++
second_title: Aspose.Words para C++
articleTitle: Convertir un documento a PDF
linktitle: Convertir un documento a PDF
description: "Convierta un documento a PDF usando C++. Se admiten varios formatos de entrada, incluidos los formatos Word, OpenOffice, Image y eBook."
type: docs
weight: 10
url: /es/cpp/convert-a-document-to-pdf/
---

La capacidad de convertir documentos de un formato a otro de manera fácil y confiable es una característica clave de Aspose.Words. Uno de los formatos más populares para convertir es PDF, un formato de diseño fijo que conserva la apariencia original de un documento durante su representación en varias plataformas. El término" representación " se usa en Aspose.Words para describir el proceso de convertir un documento a un formato de archivo paginado o que tiene el concepto de páginas.

## Convertir un documento de Word a PDF {#convert-a-word-document-to-pdf}

La conversión de Word a PDF es un proceso bastante complejo que requiere varias etapas de cálculo. el motor de diseño Aspose.Words imita la forma en que funciona el motor de diseño de página de Microsoft Word, haciendo que los documentos de salida PDF se vean lo más parecido posible a lo que puede ver en Microsoft Word.

Con Aspose.Words puede convertir programáticamente un documento de formato DOC o DOCX a PDF sin usar Microsoft Office. Este artículo explica cómo realizar esta conversión.

{{% alert color="primary" %}}

Tenga en cuenta que el número de páginas de un documento afecta el tiempo de conversión.

{{% /alert %}}

### Convertir DOCX o DOC en PDF {#converting-doc-or-docx-to-pdf}

Convertir del formato de documento DOC o DOCX al formato PDF en Aspose.Words es muy fácil y se puede lograr con solo dos líneas de código que:

1. Cargue su documento en un objeto [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) utilizando uno de sus constructores especificando el nombre del documento con su extensión de formato.
1. Invoque uno de los [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) métodos en el objeto **Document** y especifique el formato de salida deseado como PDF ingresando un nombre de archivo con el ".PDF" extensión.

El siguiente ejemplo de código muestra cómo convertir un documento de DOCX a PDF usando el método `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

A veces es necesario especificar opciones adicionales, lo que puede afectar el resultado de guardar un documento como PDF. Estas opciones se pueden especificar mediante el uso de la clase [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), que contiene propiedades que determinan cómo se mostrará la salida PDF.

Tenga en cuenta que con la misma técnica, puede convertir cualquier documento de formato de diseño de flujo al formato PDF.

{{% /alert %}}

### Convertir a diferentes PDF Estándares {#converting-to-various-pdf-standards}

Aspose.Words proporciona la enumeración [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) para admitir la conversión de DOC o DOCX en varios estándares de formato PDF (como PDF 1.7, PDF 1.5, etc.).

El siguiente ejemplo de código demuestra cómo convertir un documento a PDF 1.7 usando [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) con cumplimiento de PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Convertir imágenes a PDF {#convert-an-image-to-pdf}

La conversión a PDF no está restringida por los formatos de documentos de Microsoft Word. Cualquier formato admitido por Aspose.Words, incluido el creado mediante programación, también se puede convertir a PDF. Por ejemplo, podemos convertir imágenes de una sola página, como JPEG, PNG, BMP, EMF o WMF, así como imágenes de varias páginas, como TIFF y GIF, a PDF.

El siguiente ejemplo de código muestra cómo convertir imágenes JPEG y TIFF a PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Para que este código funcione, debe agregar referencias a Aspose.Words y `System.Drawing` a su proyecto.

## Véase También

- El artículo [Renderizado](/words/cpp/rendering/) para obtener más información sobre los formatos de página fija y diseño de flujo
- El artículo [Conversión a Formato de página fija](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para obtener más información sobre el diseño de la página
- El artículo [Especifique las Opciones de representación Al Convertir a PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) para obtener más información sobre el uso de la clase `PdfSaveOptions`
