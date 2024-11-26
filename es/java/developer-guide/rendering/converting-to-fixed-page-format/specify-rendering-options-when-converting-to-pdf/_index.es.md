---
title: Especifique las Opciones de representación Al Convertir a PDF
second_title: Aspose.Words por Java
articleTitle: Especifique las Opciones de representación Al Convertir a PDF
linktitle: Especifique las Opciones de representación Al Convertir a PDF
description: "Convierta un documento a PDF con opciones avanzadas. Use PdfSaveOptions para cambiar el resultado de guardar un documento en formato PDF usando Java."
type: docs
weight: 20
url: /es/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

El formato PDF es un formato de página fija que es muy popular entre los usuarios y ampliamente compatible con varias aplicaciones porque un documento PDF tiene el mismo aspecto en cualquier dispositivo. Por esa razón, convertir a PDF es una característica importante de Aspose.Words.

PDF es un formato complejo. Se requieren varias etapas de cálculos en el proceso de conversión de un documento a PDF, incluido el cálculo del diseño. Dado que estas etapas incluyen cálculos complejos, requieren mucho tiempo. Además, el formato PDF es bastante complejo por sí mismo. Tiene una estructura de archivos específica, modelo de gráficos e incrustación de fuentes. Además, presenta algunas funcionalidades de salida complejas, como etiquetas de estructura de documentos, cifrado, firmas digitales y formularios editables.

El motor de diseño de Aspose.Words imita la forma en que funciona el motor de diseño de página de Microsoft Word. Por lo tanto, Aspose.Words hace que los documentos de salida de PDF se parezcan lo más posible a lo que puede ver en Microsoft Word. A veces es necesario especificar opciones adicionales, que pueden afectar el resultado de guardar un documento en el formato PDF. Estas opciones se pueden especificar mediante el uso de la clase [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), que contiene las propiedades que determinan cómo se mostrará la salida PDF.

A continuación se proporcionan algunos ejemplos del uso de **PdfSaveOptions**.

{{% alert color="primary" %}}

Actualmente, puede guardar en PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, y PDF/UA-1 formatos. Utilice la enumeración [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) para establecer el nivel de cumplimiento de los estándares PDF. Tenga en cuenta que con el formato PDF/A, el tamaño del archivo de salida es mayor que el tamaño normal del archivo PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) y [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) están marcados como obsoletos.

Para obtener más información sobre PDF/A, consulte el siguiente artículo, " Aprenda las características de la conversión a PDF/A".

{{% /alert %}}

## Creación de un Documento PDF con Formularios rellenables

También es posible exportar formularios rellenables de un documento Microsoft Word a la salida PDF, que tiene formularios rellenables en lugar de texto sin formato. Use la propiedad [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) para guardar un documento como PDF con formularios rellenables.

Tenga en cuenta que, a diferencia de Microsoft Word, el formato PDF tiene un número limitado de opciones para formularios editables, como cuadro de texto, cuadro combinado y checkbox. Microsoft Word tiene más tipos de formularios, por ejemplo, selector de fecha de calendario. Generalmente, no es posible imitar completamente el comportamiento de Microsoft Word en PDF. Por lo tanto, en algunos casos complejos, la salida PDF puede diferir de lo que ve en Microsoft Word.

El siguiente ejemplo de código muestra cómo guardar un documento como PDF con formularios rellenables con compresión y calidad Jpeg especificadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exportación de Estructura de Documentos y Propiedades Personalizadas

La propiedad [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) le permite exportar la estructura del documento a la salida PDF.

Las instalaciones de estructura lógica PDF proporcionan un mecanismo para incorporar información, con respecto a la estructura del contenido del documento, en un archivo PDF. Aspose.Words conserva información sobre la estructura de un documento Microsoft Word, como párrafos, listas, tablas, notas al pie/notas al final, etc.

El siguiente ejemplo muestra cómo guardar un documento en formato PDF, conservando la estructura del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words también le permite exportar propiedades personalizadas del documento a PDF, lo que se demuestra en el siguiente ejemplo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Exportación de Contornos desde Marcadores y Encabezados en el Resultado PDF

Si desea exportar marcadores como contornos en el resultado PDF, puede usar la propiedad [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel). Esta propiedad especifica el nivel predeterminado en el esquema del documento, en el que se muestran los marcadores Microsoft Word. Si el documento contiene marcadores en el encabezado/pie de página del documento, puede establecer la propiedad [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) en [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) o [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) para especificar cómo se exportan en la salida PDF. Los marcadores en encabezados/pies de página no se exportan cuando el valor de **HeaderFooterBookmarksExportMode** es [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

El siguiente ejemplo de código muestra cómo exportar marcadores desde el primer encabezado/pie de página de una sección:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

La salida PDF de este ejemplo se muestra a continuación:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Cuando **HeaderFooterBookmarksExportMode** se establece en [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) y el documento tiene encabezados/pies de página pares e impares o un encabezado/pie de página de primera página diferente, los marcadores se exportan para los primeros encabezados/pies de página únicos en una sección.

También puede exportar encabezados en la salida PDF, utilizando la propiedad [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels). Esta propiedad especifica cuántos niveles de encabezados se incluyen en el esquema del documento.

El siguiente ejemplo de código muestra cómo exportar encabezados con tres niveles:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

La salida PDF de este ejemplo se muestra a continuación:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un marcador o navegación de encabezado puede tener diferentes apariencias en varios visores PDF. Además, en algunas aplicaciones, los marcadores y la navegación de encabezados no están disponibles en UI.

{{% /alert %}}

## Reducción de resolución de Imágenes para Reducir el Tamaño del Documento

Aspose.Words proporciona la capacidad de reducir la resolución de las imágenes para reducir el tamaño de salida PDF, utilizando la propiedad [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions). La reducción de resolución está habilitada de forma predeterminada en la propiedad [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages).

Tenga en cuenta que también es posible establecer una resolución específica en la propiedad [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) o un umbral de resolución en la propiedad [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold). En el segundo caso, si la resolución de la imagen es inferior al valor umbral, no se aplicará la reducción de resolución.

El siguiente ejemplo de código muestra cómo cambiar la resolución de las imágenes en un documento PDF de salida:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

La resolución se calcula de acuerdo con el tamaño real de la imagen en la página.

## Incrustación de fuentes en formato Adobe PDF

Aspose.Words también le permite controlar cómo se incrustan las fuentes en los documentos PDF resultantes. Las fuentes deben incrustarse en cualquier documento de Adobe PDF para garantizar que el documento se pueda representar correctamente en cualquier máquina (consulte más detalles sobre la representación de fuentes en la sección [Uso de fuentes TrueType](/words/java/using-truetype-fonts/)). De forma predeterminada, Aspose.Words incrusta un subconjunto de fuentes utilizadas en el documento en el PDF generado. En este caso, solo los glifos (caracteres) utilizados en el documento se guardan en PDF.

### Cuándo Usar Fuentes Completas y Cuándo Subconjuntar

Hay una forma de especificar una opción para que Aspose.Words incruste fuentes completas. En la tabla a continuación se describen más detalles, junto con algunas ventajas y desventajas de cada configuración.

| Modo de Incrustación de Fuentes | Ventajas | Desventajas |
| :- | :- | :- |
| `Full` | Útil cuando desea editar el PDF resultante más tarde agregando o modificando el texto. Todas las fuentes están incluidas, por lo tanto, todos los glifos están presentes. | Dado que algunas fuentes son grandes (varios megabytes), incrustarlas sin subconjuntos puede generar archivos de salida grandes. |
| `Subset` | La subconfiguración es útil si desea mantener el tamaño del archivo de salida más pequeño. | <p>El usuario no puede agregar o editar completamente el texto utilizando la fuente subconjuntada en el documento PDF de salida. Esto se debe a que no todos los glifos de la fuente están presentes.</p><p>Si se guardan varios PDFs con fuentes subconjuntadas y se ensamblan juntos, entonces el documento PDF combinado puede tener una fuente que contenga muchos subconjuntos innecesarios.</p> |

### Incrustar fuentes completas en PDF

La propiedad [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) le permite especificar cómo Aspose.Words incrusta fuentes en un documento PDF de salida.

- Para incrustar fuentes completas en el documento PDF de salida, establezca **EmbedFullFonts** en verdadero
- Para subconjuntar fuentes al guardar en PDF, establezca **EmbedFullFonts** en falso

El siguiente ejemplo muestra cómo incrustar fuentes completas en el documento PDF de salida:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

El siguiente ejemplo demuestra cómo establecer Aspose.Words en subconjuntos de fuentes en la salida PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para estos ejemplos en [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Cómo Controlar la Incrustación de Fuentes Principales y Fuentes Estándar Windows

Las fuentes principales y las fuentes estándar Windows son los conjuntos de fuentes "estándar", que generalmente están presentes en la máquina de destino o proporcionados por el lector de documentos, por lo que no es necesario incrustarlos en la salida PDF. Al no incrustar estas fuentes, puede disminuir el tamaño de los documentos PDF renderizados y, sin embargo, mantener la portabilidad.

Aspose.Words proporciona opciones para elegir cómo se exportan las fuentes a PDF. Puede optar por incrustar fuentes básicas y estándar en la salida PDF o omitir incrustarlas y utilizar fuentes básicas estándar PDF o fuentes del sistema en el equipo de destino. El uso de cualquiera de estas opciones normalmente da como resultado una reducción significativa del tamaño de archivo para PDF documentos generados por Aspose.Words.

- Dado que estas opciones son mutuamente excluyentes, debe elegir solo una a la vez.
- Al guardar con el cumplimiento de PDF/A-1, todas las fuentes utilizadas deben estar incrustadas en el documento PDF. Al guardar con este cumplimiento, la propiedad [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) debe establecerse en false y la propiedad [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) debe establecerse en [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL) [.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Incrustación de Fuentes Principales

La opción de incrustar fuentes principales se puede habilitar o deshabilitar utilizando la propiedad [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts). Cuando se establece en true, las siguientes fuentes más populares de "Tipo verdadero" (fuentes Base 14) no se incrustan en el documento PDF de salida:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Estas fuentes se reemplazan con las fuentes core Type 1 correspondientes, que proporciona un lector cuando se abre PDF.

El ejemplo que se proporciona a continuación muestra cómo configurar Aspose.Words para evitar incrustar fuentes principales y permitir que el lector las sustituya por fuentes PDF Tipo 1:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Dado que los visores PDF proporcionan fuentes principales en cualquier plataforma compatible, esta opción también es útil cuando se requiere una mayor portabilidad de documentos. Sin embargo, las fuentes principales pueden tener un aspecto diferente al de las fuentes del sistema.

{{% alert color="primary" %}}

Esta configuración solo funciona para texto de codificación ANSI (Windows-1252). Escribir un texto que no seaANSI en PDF siempre requerirá que se incrusten las fuentes correspondientes.

{{% /alert %}}

### Incrustación de Fuentes del Sistema

Esta opción se puede habilitar o deshabilitar usando la propiedad [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode). Cuando esta propiedad se establece en [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), las fuentes true type" Arial "y" Times New Roman " no se incrustan en un documento PDF. En este caso, el visor del cliente se basa en las fuentes que están instaladas en el sistema operativo del cliente. Cuando la propiedad **FontEmbeddingMode** se establece en [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words no incruste ninguna fuente.

El siguiente ejemplo muestra cómo configurar Aspose.Words para omitir la incrustación de fuentes Arial y Times New Roman en un documento PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Este modo es más útil cuando desea ver sus documentos en la misma plataforma, conservando la apariencia exacta de las fuentes en la salida PDF.

{{% alert color="primary" %}}

Esta configuración solo funciona para texto de codificación ANSI (Windows-1252). Escribir un texto que no seaANSI en PDF requiere que se incruste la fuente correspondiente.

{{% /alert %}}
