---
title: Convertir PDF a otros formatos de documentos en C#
second_title: Aspose.Words para .NET
articleTitle: Convertir PDF a otros formatos de documentos
linktitle: Convertir PDF a otros formatos de documentos
type: docs
description: "Convierta PDF a formatos de Word como DOCX, DOC, formatos de imagen como JPG o PNG, o cualquier otro formato admitido por Aspose.Words usando C#."
keywords: convert pdf to other formats c#
weight: 45
url: /es/net/convert-pdf-to-other-document-formats/
---

Aspose.Words puede cargar incluso un formato tan complejo como PDF. Esto abre nuevas oportunidades: es posible convertir PDF a Word u otros formatos que llevan a los usuarios muy por delante en la resolución de muchos problemas aplicados.

## Requisitos previos

* Se agregó referencia al paquete Aspose.Words ***O*** a Aspose.Words.Pdf2Word.dll.
* Al menos .NET Framework 4.6.1 o .NET Standard 2.0. Destinos como .NET Core 2.x o 3.0, .NET 5 y Xamarin también son compatibles gracias a la compatibilidad con .NET Standard.

## Convertir PDF a varios formatos {#convert-pdf-to-other-formats}

La conversión más popular de PDF es la conversión a formatos Microsoft Word como DOCX, DOC, así como formatos de imagen como JPG o PNG. Dicho esto, la conversión de un documento de un formato a otro se realiza de forma familiar.

El siguiente ejemplo de código muestra cómo convertir un documento de PDF a DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Especificar opciones de carga al importar PDF {#specify-load-options-when-importing-pdf}

Aspose.Words le proporciona la clase [PdfLoadOptions](https://reference.aspose.com/words/es/net/aspose.words.loading/pdfloadoptions/), que permite un control más preciso sobre cómo se cargan los documentos PDF.

La mayoría de las propiedades heredan o sobrecargan propiedades que ya existen en la clase `LoadOptions`. Además de ellas, se especifican una serie de propiedades para el formato PDF. Por ejemplo, puede utilizar las propiedades [PageCount](https://reference.aspose.com/words/es/net/aspose.words.loading/pdfloadoptions/pagecount/) y [PageIndex](https://reference.aspose.com/words/es/net/aspose.words.loading/pdfloadoptions/pageindex/) para definir el rango de páginas que se cargarán desde un documento PDF y las propiedades [SkipPdfImages](https://reference.aspose.com/words/es/net/aspose.words.loading/pdfloadoptions/skippdfimages/) para controlar si las imágenes deben omitirse al cargar un PDF. Otro parámetro admitido es el [Password](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/password/), que debe proporcionarse para [documentos protegidos con contraseña](/words/net/protect-documents-and-parts-of-documents/).

## Contenido PDF compatible {#supported-pdf-content}

El complemento PDF2Word actualmente admite los siguientes tipos de datos:

* Párrafos de texto
* Imágenes
* Mesas
* Listas
* Encabezados y pies de pagina
* Notas a pie de página
* Número de páginas
* Texto de derecha a izquierda (con algunas limitaciones)
* Archivos PDF con capacidad de búsqueda (las imágenes frontales se eliminarán en favor del texto de fondo)

## Funciones futuras {#planned-features}

Algunas características aún se encuentran en desarrollo inicial o están incluidas en la hoja de ruta de desarrollo:

* Tabla de contenido
* OCR para archivos PDF con y sin búsqueda
* Informe de progreso
* Texto de varias columnas
* Fórmulas matemáticas
* Más campos automáticos (además de `PAGE` y NUMPAGES)

## Excepciones de carga de PDF

Durante la conversión de un documento PDF, puede ocurrir una de las siguientes excepciones:

|  Excepción |  Descripción |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  Un archivo PDF no se puede procesar por algún motivo.<br /> {{% alert color="primary" %}}Puede informar el problema al equipo de desarrollo para una investigación detallada utilizando [Apoyo técnico](/words/es/net/technical-support/).{{% /alert %}}. |
|  `DrmProtectedFileException`       |  Un archivo PDF está protegido por Adobe DRM y no puede ser decodificado por Pdf2Word. |
|  `PasswordProtectedFileException`  |  Se debe proporcionar la contraseña correcta para un PDF protegido con contraseña. |

## Ver también

* [Referencia Nuget a Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

