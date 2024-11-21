---
title: Especificar Opciones de Rendering Al Convertirse en PDF
second_title: Aspose.Words para Java
articleTitle: Especificar Opciones de Rendering Al Convertirse en PDF
linktitle: Especificar Opciones de Rendering Al Convertirse en PDF
description: "Convertir un documento en PDF con opciones avanzadas. Utilice PdfSaveOptions para cambiar el resultado de guardar un documento en formato PDF utilizando Java."
type: docs
weight: 20
url: /es/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

El formato PDF es un formato de página fija muy popular entre los usuarios y ampliamente soportado por varias aplicaciones porque un documento PDF se ve igual en cualquier dispositivo. Por esa razón, convertir a PDF es una característica importante de Aspose.Words.

PDF es un formato complejo. Se requieren varias etapas de cálculos en el proceso de conversión de un documento a PDF, incluyendo el cálculo de diseño. Dado que estas etapas incluyen computaciones complejas, consumen mucho tiempo. Además, el formato PDF es bastante complejo por sí mismo. Tiene una estructura de archivos específica, modelo gráfico y embedding de fuentes. Además, cuenta con una funcionalidad de salida compleja, como etiquetas de estructura de documentos, cifrado, firmas digitales y formas editables.

Aspose.Words el motor de diseño imita la manera Microsoft Word’s página de diseño del motor funciona. Por lo tanto, Aspose.Words hace que los documentos de salida PDF se vean lo más cerca posible de lo que se puede ver Microsoft Word. A veces es necesario especificar opciones adicionales, que pueden afectar el resultado de guardar un documento en el formato PDF. Estas opciones se pueden especificar mediante el uso del [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) clase, que contiene las propiedades que determinan cómo se mostrará la salida PDF.

Algunos ejemplos de uso **PdfSaveOptions** se proporcionan a continuación.

{{% alert color="primary" %}}

Actualmente, puede guardar en formato PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u y PDF/UA-1. Usar el [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) enumeración para establecer el nivel de cumplimiento de las normas PDF. Tenga en cuenta que con el formato PDF/A, un tamaño de archivo de salida es mayor que un tamaño de archivo PDF regular.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) y [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) están marcados como obsoletos.

Para obtener más información sobre PDF/A, consulte el siguiente artículo, "Aprenda características de conversión a PDF/A".

{{% /alert %}}

## Crear un PDF Documento con Formas Fillables

También es posible exportar formas rellenables de un Microsoft Word documento en PDF de salida, que tiene formas rellenables en lugar de un texto llano. Usar el [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) propiedad para guardar un documento como PDF con formularios rellenables.

Note que en contraste con <span notrans="<span notrans=" Microsoft Word"=""></span>," el formato PDF tiene un número limitado de opciones para formularios editables, como la caja de texto, el cuadro combinado y la casilla de verificación. Microsoft Word tiene más tipos de formas, por ejemplo, el selector de fecha calendario. Generalmente, no es posible imitar completamente Microsoft Word comportamiento en PDF. Por lo tanto, en algunos casos complejos, la salida PDF puede diferir de lo que usted ve en Microsoft Word.

El ejemplo de código a continuación muestra cómo guardar un documento como PDF con formularios rellenables con compresión y calidad Jpeg especificados:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exportar estructura de documentos y propiedades personalizadas

El [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) propiedad le permite exportar la estructura de documentos a la salida PDF.

Las instalaciones de estructura lógica PDF proporcionan un mecanismo para incorporar la información, en relación con la estructura del contenido de documentos, en un archivo PDF. Aspose.Words conserva información sobre la estructura de un Microsoft Word documento, como párrafos, listas, cuadros, notas de pie de página o notas, etc.

El siguiente ejemplo demuestra cómo guardar un documento en formato PDF, preservando la estructura del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words también le permite exportar propiedades personalizadas de documentos a PDF, que se demuestra por el siguiente ejemplo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Exportar líneas de interés de marcadores y encabezados en PDF de salida

Si desea exportar marcadores como esquemas en PDF de salida, puede utilizar el [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) propiedad. Esta propiedad especifica el nivel por defecto en el esquema de documento, en el que Microsoft Word Los marcadores se muestran. Si el documento contiene marcadores en la cabecera/pieza del documento, puede establecer el [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) propiedad a [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) o [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) para especificar cómo se exportan en PDF de salida. Los marcadores en los encabezados/pieros no se exportan cuando el valor de **HeaderFooterBookmarksExportMode** es [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

El ejemplo de código a continuación muestra cómo exportar marcadores desde el primer encabezado / Pie de una sección:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

La salida PDF de este ejemplo se muestra a continuación:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Cuando **HeaderFooterBookmarksExportMode** se establece [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) y el documento tiene cabeceras/pies iguales y extraños o un encabezado/pieza de primera página diferente, los marcadores se exportan para los primeros encabezados/pieros únicos en una sección.

También puede exportar encabezados en el PDF de salida, utilizando el [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) propiedad. Esta propiedad especifica cuántos niveles de partidas se incluyen en el esbozo del documento.

El ejemplo de código a continuación muestra cómo exportar partidas con tres niveles:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

El PDF de salida de este ejemplo se describe a continuación:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un marcador o la navegación por encabezado puede tener diferentes apariencias en varios visores PDF. Además, en algunas aplicaciones, marcadores y navegación encabezada no están disponibles en la interfaz de usuario.

{{% /alert %}}

## Imágenes para reducir el tamaño del documento

Aspose.Words proporciona una capacidad para reducir las imágenes para reducir el tamaño PDF de la salida, utilizando [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) propiedad. El muestreo está habilitado por defecto en el [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) propiedad.

Tenga en cuenta que también es posible establecer una resolución específica en la [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) o un umbral de resolución en el [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) propiedad. En el segundo caso, si la resolución de la imagen es menor que el valor del umbral, entonces no se aplicará el muestreo.

El ejemplo de código a continuación muestra cómo cambiar la resolución de las imágenes en un documento PDF de salida:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

La resolución se calcula según el tamaño real de la imagen en la página.

## Insertar fuentes en Adobe PDF Formato

Aspose.Words También le permite controlar cómo las fuentes están incrustadas en los documentos PDF resultantes. Las fuentes deben estar incrustadas en cualquier documento PDF de Adobe para asegurar que el documento pueda ser correcto en cualquier máquina (ver más detalles sobre la reproducción de fuentes en la sección [Usando True Tipo Fuentes](/words/es/java/using-truetype-fonts/)). Por defecto, Aspose.Words incorpora un subconjunto de fuentes utilizadas en el documento en el PDF generado. En este caso, sólo el glyphs (caracters) utilizados en el documento se guardan en PDF.

### Cuándo utilizar fuentes completas y cuándo subconfigurar

Hay una manera de especificar una opción para Aspose.Words para insertar fuentes completas. En el cuadro que figura a continuación se describen más detalles, junto con algunas ventajas y desventajas de cada entorno.

| Modo de fuentes insertadas |  Ventajas | Desventajas |
|  :-  |  :-  |  :-  |
|  `Full`  | Útil cuando desea editar el PDF resultante más adelante añadiendo o modificando el texto. Todas las fuentes están incluidas, por lo tanto todas glyphs están presentes. | Dado que algunas fuentes son grandes (varios megabytes), incrustarlas sin subsetting puede resultar en grandes archivos de salida. |
|  `Subset`  | Subsetting es útil si desea mantener el tamaño de archivo de salida más pequeño. | <p>El usuario no puede agregar o editar completamente el texto usando la fuente subsetted en el documento PDF de salida. Esto es porque no todo glyphs de la fuente están presentes.</p>

<p>Si se guardan múltiples PDFs con fuentes subconfiguradas y se reúnen, el documento PDF combinado puede tener una fuente que contenga muchos subconjuntos innecesarios.</p>
 |

### Insertar fuentes completas en PDF

El [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) propiedad le permite especificar cómo Aspose.Words incorpora fuentes en un documento PDF de salida.

- Para insertar fuentes completas en el documento PDF de salida, conjunto **EmbedFullFonts** a true
- Para subconfigurar las fuentes cuando se guardan en PDF, se establece **EmbedFullFonts** a false

El siguiente ejemplo muestra cómo insertar fuentes completas en el documento PDF de salida:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

El siguiente ejemplo demuestra cómo establecer Aspose.Words to subset fonts in the output PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para estos ejemplos desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Cómo controlar las fuentes de núcleo embedding y Windows Fuentes estándar

Fuentes principales y Windows Las fuentes estándar son los conjuntos "estándar" de fuentes, que generalmente están presentes en la máquina de destino o proporcionados por el lector de documentos, por lo tanto no necesitan ser incrustados en el PDF de salida. Al no incrustar estas fuentes, puede disminuir el tamaño de documentos PDF renderizados y mantener la portabilidad.

Aspose.Words ofrece opciones para elegir cómo se exportan fuentes a PDF. Puede optar por incrustar fuentes básicas y estándar en el PDF de salida o por omitir incrustarlos y utilizar fuentes estándar de código PDF o fuentes de sistema en la máquina de destino. Utilizando cualquiera de estas opciones normalmente resulta en una reducción significativa del tamaño de archivo para documentos PDF generados por Aspose.Words.

- Dado que estas opciones son mutuamente excluyentes, debe elegir sólo una a la vez.
- Al guardar con el cumplimiento PDF/A-1, todas las fuentes usadas deben estar incrustadas en el documento PDF. Al guardar este cumplimiento, el [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) propiedad debe establecerse false y el [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) propiedad debe establecerse [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Insertar fuentes básicas

La opción de insertar fuentes Core puede ser habilitada o deshabilitada utilizando la [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) propiedad. Cuando se establece true, las siguientes fuentes más populares "True Type" (Base 14 fuentes) no están incrustadas en el documento PDF de salida:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Estas fuentes son reemplazadas por las fuentes correspondientes tipo 1 que son proporcionadas por un lector cuando se abre el PDF.

El ejemplo que figura a continuación muestra cómo establecer Aspose.Words para evitar insertar fuentes de núcleo y dejar que el lector las sustituya con PDF Tipo 1 fuentes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Dado que los visores PDF proporcionan fuentes básicas en cualquier plataforma soportada, esta opción también es útil cuando se requiere mayor portabilidad de documentos. Sin embargo, las fuentes de núcleo pueden parecer diferentes de las fuentes del sistema.

{{% alert color="primary" %}}

Este ajuste funciona sólo para ANSI (Windows-1252) texto de codificación. Escribir un texto no-ANSI a PDF siempre requerirá que las fuentes correspondientes sean incrustadas.

{{% /alert %}}

### Fuentes del sistema de integración

Esta opción puede ser habilitada o desactivada utilizando [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) propiedad. Cuando esta propiedad se establece [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), el "Arial" y "Times New Roman" true Tipo de fuentes no están incrustadas en un documento PDF. En este caso, el cliente se basa en las fuentes que se instalan en el sistema operativo cliente. Cuando el **FontEmbeddingMode** propiedad se establece [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words no incrustar ninguna fuente.

El ejemplo a continuación muestra cómo establecer Aspose.Words para saltar incrustando fuentes Arial y Times New Roman en un documento PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Este modo es muy útil cuando desea ver sus documentos en la misma plataforma, preservando la apariencia exacta de las fuentes en el PDF de salida.

{{% alert color="primary" %}}

Este ajuste funciona sólo para ANSI (Windows-1252) texto de codificación. Escribir un texto no-ANSI a PDF requiere que la fuente correspondiente sea incrustada.

{{% /alert %}}
