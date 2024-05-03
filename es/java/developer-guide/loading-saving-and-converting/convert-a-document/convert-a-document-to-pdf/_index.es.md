---
title: Convertir un documento en PDF en Java
second_title: Aspose.Words para Java
articleTitle: Convertir un documento en PDF
linktitle: Convertir un documento en PDF
description: "Convertir un documento en Word o cualquier otro formato compatible en PDF, que preserva la apariencia original de un documento durante su presentación en varias plataformas utilizando Java."
type: docs
weight: 10
url: /es/java/convert-a-document-to-pdf/
---

La capacidad de convertir fácilmente y de forma fiable documentos de un formato a otro es una característica clave Aspose.Words. Uno de los formatos más populares para la conversión es PDF – un formato de eliminación fija, que preserva la apariencia original de un documento durante su presentación en varias plataformas. El término "rendering" se utiliza en Aspose.Words para describir el proceso de conversión de un documento en un formato de archivo que está paginado o tiene el concepto de páginas.

## Convertir un documento de palabra en PDF {#convert-a-word-document-to-pdf}

La conversión de Word a PDF es un proceso bastante complejo que requiere varias etapas de cálculo. Aspose.Words el motor de diseño imita la manera Microsoft Word’s diseño de página funciona el motor, haciendo que los documentos de salida PDF se vean lo más cerca posible de lo que se puede ver en Microsoft Word.

Con Aspose.Words puede convertir programáticamente un documento de formato DOC o DOCX a PDF sin usar Microsoft Oficina. Este artículo explica cómo realizar esta conversión.

{{% alert color="primary" %}}

Tenga en cuenta que el número de páginas en un documento afecta el tiempo de conversión.

{{% /alert %}}

### Convertir DOCX o DOC en PDF {#converting-doc-or-docx-to-pdf}

Convertir del formato DOC o DOCX en formato PDF Aspose.Words es muy fácil y se puede lograr con sólo dos líneas de código que:

1. Cargue su documento en un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objeto utilizando uno de sus constructores especificando el nombre del documento con su extensión de formato.
1. Invocar uno de los [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) sobre los métodos **Document** objeto y especificar el formato de salida deseado como PDF al introducir un nombre de archivo con la extensión ".PDF".

El siguiente ejemplo de código muestra cómo convertir un documento de DOCX en PDF usando el `Save` método:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

A veces es necesario especificar opciones adicionales, que pueden afectar el resultado de guardar un documento como PDF. Estas opciones se pueden especificar mediante el uso del [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) clase, que contiene propiedades que determinan cómo se mostrará la salida PDF.

Tenga en cuenta que con la misma técnica, puede convertir cualquier documento de formato de flujo de salida a formato PDF.

{{% /alert %}}

### Convertir en Diferente PDF Normas {#converting-to-various-pdf-standards}

Aspose.Words proporciona el [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)enumeración para apoyar la conversión de DOC o DOCX en varios estándares de formato PDF (como PDF 1.7, PDF 1.5, etc.).

El siguiente ejemplo de código muestra cómo convertir un documento a PDF 1.7 utilizando [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) cumplimiento a PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Convertir Imágenes en PDF

Convertirse en PDF no está restringido por Microsoft Word formatos de documentos. Cualquier formato apoyado por Aspose.Words, incluyendo creado programáticamente, también se puede convertir en PDF. Por ejemplo, podemos convertir imágenes de una sola página, como JPEG, PNG, BMP, EMF o WMF, así como imágenes de varias páginas, como TIFF y GIF, a PDF.

El siguiente ejemplo de código muestra cómo convertir imágenes JPEG y TIFF a PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Para hacer que este código funcione, necesita añadir referencias a Aspose.Words, Java.awt.image, y javax. paquetes de clase imageio a su proyecto.

## Reducir PDF Tamaño del producto

Al guardar a PDF, puede especificar si desea optimizar la salida. Para hacer esto, necesitas establecer el [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) bandera true, y luego lonas anidadas redundantes y lienzos vacíos serán eliminados, vecino glyphs con el mismo formato será concatenado.

El siguiente ejemplo de código muestra cómo optimizar la salida:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Usando el **OptimizeOutput** propiedad puede afectar la exactitud de la pantalla de contenido.

{{% /alert %}}

## Vea también

- El artículo [Rendering](/words/es/java/rendering/) para más información sobre los formatos de página fija y de flujo
- El artículo [Convertir en Formato de página fija](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para más información sobre el diseño de la página
- El artículo [Especificar Opciones de Rendering Al Convertirse en PDF](/words/es/java/specify-rendering-options-when-converting-to-pdf/) para más información sobre el uso del `PdfSaveOptions` clase
