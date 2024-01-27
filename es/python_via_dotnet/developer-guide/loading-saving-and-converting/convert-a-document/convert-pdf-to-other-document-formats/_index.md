---
title: Convertir PDF a otros formatos de documentos
second_title: Aspose.Words para Python via .NET
articleTitle: Convertir PDF a otros formatos de documentos
linktitle: Convertir PDF a otros formatos de documentos
type: docs
description: "Convierta PDF a formatos de Word como DOCX, DOC, formatos de imagen como JPG o PNG, o cualquier otro formato admitido por Aspose usando `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /es/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words puede cargar incluso un formato tan complejo como PDF. Esto abre nuevas oportunidades: es posible convertir PDF a Word u otros formatos que llevan a los usuarios muy por delante en la resolución de muchos problemas aplicados.

## Convertir PDF a otros formatos {#convert-pdf-to-other-formats}

La conversión más popular de PDF es la conversión a formatos Microsoft Word como DOCX, DOC, así como formatos de imagen como JPG o PNG. Dicho esto, la conversión de un documento de un formato a otro se realiza de forma familiar.

El siguiente ejemplo de código muestra cómo convertir un documento de PDF a DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Especificar opciones de carga al importar PDF {#specify-load-options-when-importing-pdf}

Aspose.Words le proporciona la clase [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/), que permite un control más preciso sobre cómo se cargan los documentos PDF.

La mayoría de las propiedades heredan o sobrecargan propiedades que ya existen en la clase [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Además de ellas, se especifican una serie de propiedades para el formato PDF. Por ejemplo, puede utilizar las propiedades [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) y [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) para definir el rango de páginas que se cargarán desde un documento PDF y las propiedades [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) para controlar si las imágenes deben omitirse al cargar un PDF. Otro parámetro admitido es el [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), que debe proporcionarse para documentos protegidos con contraseña.

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

## Funciones planificadas {#planned-features}

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
|  *FileLoadException* |  Un archivo PDF no se puede procesar por algún motivo.<br /> {{% alert color="primary" %}}Puede informar el problema al equipo de desarrollo para una investigación detallada utilizando [apoyo técnico](/words/python-net/technical-support/).{{% /alert %}}. |
|  *DrmProtectedFileException* |  Un archivo PDF está protegido por Adobe DRM y no puede ser decodificado por Pdf2Word. |
|  *PasswordProtectedFileException* |  Se debe proporcionar la contraseña correcta para un PDF protegido con contraseña. |


