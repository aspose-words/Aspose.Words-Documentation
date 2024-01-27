---
title: Opciones al convertir a PDF
second_title: Aspose.Words para .NET
articleTitle: Especificar opciones de renderizado al convertir a PDF
linktitle: Especificar opciones de renderizado al convertir a PDF
description: "Convierta un documento a PDF con opciones avanzadas usando C#. Convierta formularios DOCX a PDF C#. Utilice PdfSaveOptions para cambiar el resultado de guardar un documento en PDF."
type: docs
weight: 20
url: /es/net/specify-rendering-options-when-converting-to-pdf/
---

El formato PDF es un formato de página fija muy popular entre los usuarios y ampliamente soportado por varias aplicaciones, porque un documento PDF tiene el mismo aspecto en cualquier dispositivo. Por ese motivo, la conversión a PDF es una característica importante de Aspose.Words.

PDF es un formato complejo. Se requieren varias etapas de cálculo en el proceso de convertir un documento a PDF, incluido el cálculo del diseño. Dado que estas etapas incluyen cálculos complejos, requieren mucho tiempo. Además, el formato PDF es bastante complejo en sí mismo. Tiene una estructura de archivos, un modelo de gráficos y una incrustación de fuentes específicos. Además, presenta algunas funciones de salida complejas, como etiquetas de estructura de documentos, cifrado, firmas digitales y formularios editables.

El motor de diseño Aspose.Words imita la forma en que funciona el motor de diseño de página de Microsoft Word. Por lo tanto, Aspose.Words hace que los documentos de salida PDF se parezcan lo más posible a lo que puede ver en Microsoft Word. A veces es necesario especificar opciones adicionales, lo que puede afectar el resultado de guardar un documento en formato PDF. Estas opciones se pueden especificar mediante el uso de la clase [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/), que contiene las propiedades que determinan cómo se mostrará la salida PDF.

A continuación se proporcionan algunos ejemplos del uso de **PdfSaveOptions**.

{{% alert color="primary" %}}

Actualmente, puede guardar en formatos PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u y PDF/UA-1. Utilice la enumeración [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) para establecer el nivel de cumplimiento de los estándares PDF. Tenga en cuenta que con el formato PDF/A, el tamaño de un archivo de salida es mayor que el tamaño de un archivo PDF normal.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) y [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) están marcados como obsoletos.

Para obtener más información sobre PDF/A, consulte el siguiente artículo, "Conozca las características de la conversión a PDF/A".

{{% /alert %}}

## Crear un documento PDF con formularios rellenables

También es posible exportar formularios rellenables desde un documento Microsoft Word a un PDF de salida, que tiene formularios rellenables en lugar de texto sin formato. Utilice la propiedad [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) para guardar un documento como PDF con formularios rellenables.

Tenga en cuenta que, a diferencia de Microsoft Word, el formato PDF tiene una cantidad limitada de opciones para formularios editables, como cuadros de texto, cuadros combinados y casillas de verificación. Microsoft Word tiene más tipos de formularios, por ejemplo, selector de fecha del calendario. Generalmente, no es posible imitar completamente el comportamiento de Microsoft Word en PDF. Por lo tanto, en algunos casos complejos, la salida del PDF puede diferir de lo que ve en Microsoft Word.

El siguiente ejemplo de código muestra cómo guardar un documento como PDF con formularios rellenables con compresión y calidad Jpeg especificadas:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Exportación de estructura de documento y propiedades personalizadas

La propiedad [https://reference.aspose.com/words/net/aspose.words.served/pdfsaveoptions/properties/exportdocumentstructure) le permite exportar la estructura del documento a formato PDF.

Las funciones de estructura lógica de PDF proporcionan un mecanismo para incorporar información relacionada con la estructura del contenido del documento en un archivo PDF. Aspose.Words conserva información sobre la estructura de un documento Microsoft Word, como párrafos, listas, tablas, notas al pie/notas finales, etc.

El siguiente ejemplo demuestra cómo guardar un documento en formato PDF, preservando la estructura del documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words también le permite exportar propiedades personalizadas de documentos a PDF, como se demuestra en el siguiente ejemplo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Exportación de esquemas desde marcadores y encabezados en un PDF de salida

Si desea exportar marcadores como esquemas en el PDF de salida, puede utilizar la propiedad [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/). Esta propiedad especifica el nivel predeterminado en el esquema del documento, en el que se muestran los marcadores de Microsoft Word. Si el documento contiene marcadores en el encabezado/pie de página del documento, puede configurar la propiedad [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) en [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) o [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) para especificar cómo se exportan en el PDF de salida. Los marcadores en encabezados/pies de página no se exportan cuando el valor de **HeaderFooterBookmarksExportMode** es [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

El siguiente ejemplo de código muestra cómo exportar marcadores desde el primer encabezado/pie de página de una sección:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

El PDF de salida de este ejemplo se muestra a continuación:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Cuando **HeaderFooterBookmarksExportMode** está configurado en [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) y el documento tiene encabezados/pies de página pares e impares o un encabezado/pie de página diferente en la primera página, se exportan marcadores para los primeros encabezados/pies de página únicos en una sección.

También puede exportar encabezados en el PDF de salida, utilizando la propiedad [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/). Esta propiedad especifica cuántos niveles de encabezados se incluyen en el esquema del documento.

El siguiente ejemplo de código muestra cómo exportar títulos con tres niveles:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

El PDF de salida de este ejemplo se muestra a continuación:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un marcador o encabezado de navegación puede tener diferentes apariencias en distintos visores de PDF. Además, en algunas aplicaciones, los marcadores y la navegación por encabezados no están disponibles en la interfaz de usuario.

{{% /alert %}}

## Reducción de resolución de imágenes para reducir el tamaño del documento

Aspose.Words ofrece la posibilidad de reducir la resolución de las imágenes para reducir el tamaño del PDF de salida, utilizando la propiedad [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/). La reducción de resolución está habilitada de forma predeterminada en la propiedad [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/).

Tenga en cuenta que también es posible establecer una resolución específica en la propiedad [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) o un umbral de resolución en la propiedad [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold). En el segundo caso, si la resolución de la imagen es menor que el valor umbral, no se aplicará la reducción de resolución.

El siguiente ejemplo de código muestra cómo cambiar la resolución de las imágenes en un documento PDF de salida:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

La resolución se calcula según el tamaño real de la imagen en la página.

## Incrustar fuentes en formato Adobe PDF

Aspose.Words también le permite controlar cómo se incrustan las fuentes en los documentos PDF resultantes. Las fuentes deben estar incrustadas en cualquier documento PDF de Adobe para garantizar que el documento se pueda representar correctamente en cualquier máquina (consulte más detalles sobre la representación de fuentes en la sección ["Usar fuentes TrueType"](/words/net/using-truetype-fonts/)). De forma predeterminada, Aspose.Words incorpora un subconjunto de fuentes utilizadas en el documento en el PDF generado. En este caso, sólo se guardan en PDF los glifos (caracteres) utilizados en el documento.

### Cuándo utilizar fuentes completas y cuándo crear subconjuntos

Hay una manera de especificar una opción para que Aspose.Words incorpore fuentes completas. En la siguiente tabla se describen más detalles, junto con algunas ventajas y desventajas de cada configuración.

| Modo de incrustar fuentes |  Ventajas | Desventajas |
|  :-  |  :-  |  :-  |
|  `Full`  | Útil cuando desea editar el PDF resultante más adelante agregando o modificando el texto. Se incluyen todas las fuentes, por lo que todos los glifos están presentes. | Dado que algunas fuentes son grandes (varios megabytes), incrustarlas sin subconjuntos puede generar archivos de salida de gran tamaño. |
|  `Subset`  | El subconjunto es útil si desea mantener el tamaño del archivo de salida más pequeño. | <p>El usuario no puede agregar ni editar texto por completo utilizando la fuente subconjunto en el documento PDF de salida. Esto se debe a que no todos los glifos de la fuente están presentes.</p>

<p>Si se guardan varios archivos PDF con subconjuntos de fuentes y se ensamblan juntos, entonces el documento PDF combinado puede tener una fuente que contenga muchos subconjuntos innecesarios.</p> |

### Incrustar fuentes completas en PDF

La propiedad [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) le permite especificar cómo Aspose.Words incrusta fuentes en un documento PDF de salida.

- Para incrustar fuentes completas en el documento PDF de salida, configure **EmbedFullFonts** en verdadero
- Para crear subconjuntos de fuentes al guardar en PDF, establezca **EmbedFullFonts** en falso

El siguiente ejemplo demuestra cómo incrustar fuentes completas en el documento PDF de salida:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

El siguiente ejemplo demuestra cómo configurar Aspose.Words para crear subconjuntos de fuentes en el PDF de salida:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para estos ejemplos desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Cómo controlar la incrustación de fuentes principales y fuentes estándar Windows

Las fuentes principales y las fuentes Windows estándar son conjuntos de fuentes "estándar", que generalmente están presentes en la máquina de destino o las proporciona el lector de documentos, por lo que no es necesario incrustarlas en el PDF de salida. Al no incrustar estas fuentes, puede disminuir el tamaño de los documentos PDF renderizados y aún así mantener la portabilidad.

Aspose.Words ofrece opciones para elegir cómo se exportan las fuentes a PDF. Puede elegir entre incrustar fuentes principales y estándar en el PDF de salida o omitir la incrustación y utilizar fuentes PDF principales estándar o fuentes del sistema en la máquina de destino. El uso de cualquiera de estas opciones normalmente resulta en una reducción significativa del tamaño del archivo para los documentos PDF generados por Aspose.Words.

- Dado que estas opciones son mutuamente excluyentes, debes elegir sólo una a la vez.
- Al guardar con cumplimiento de PDF/A-1, todas las fuentes utilizadas deben estar incrustadas en el documento PDF. Al guardar con este cumplimiento, la propiedad [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) debe establecerse en falso y la propiedad [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) debe establecerse en [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### Incrustar fuentes principales

La opción para incrustar fuentes Core se puede habilitar o deshabilitar mediante la propiedad [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/). Cuando se establece en verdadero, las siguientes fuentes "True Type" más populares (fuentes Base 14) no se incrustan en el documento PDF de salida:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Estas fuentes se reemplazan con las fuentes principales Tipo 1 correspondientes, que proporciona un lector cuando se abre el PDF.

El ejemplo que se proporciona a continuación muestra cómo configurar Aspose.Words para evitar incrustar fuentes principales y permitir que el lector las sustituya por fuentes PDF Tipo 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla para este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Dado que los visores de PDF proporcionan fuentes principales en cualquier plataforma compatible, esta opción también es útil cuando se requiere una mayor portabilidad de los documentos. Sin embargo, las fuentes principales pueden verse diferentes a las fuentes del sistema.

{{% alert color="primary" %}}

Esta configuración solo funciona para texto codificado ANSI (Windows-1252). Escribir un texto que no sea ANSI en PDF siempre requerirá que se incrusten las fuentes correspondientes.

{{% /alert %}}

### Incrustar fuentes del sistema

Esta opción se puede habilitar o deshabilitar utilizando la propiedad [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/). Cuando esta propiedad se establece en [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), las fuentes True Type "Arial" y "Times New Roman" no se incrustan en un documento PDF. En este caso, el visor del cliente depende de las fuentes instaladas en el sistema operativo del cliente. Cuando la propiedad **FontEmbeddingMode** se establece en [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words no incrusta ninguna fuente.

El siguiente ejemplo muestra cómo configurar Aspose.Words para que omita la incrustación de fuentes Arial y Times New Roman en un documento PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Este modo es más útil cuando desea ver sus documentos en la misma plataforma, preservando la apariencia exacta de las fuentes en el PDF de salida.

{{% alert color="primary" %}}

Esta configuración solo funciona para texto codificado ANSI (Windows-1252). Escribir un texto que no sea ANSI en PDF requiere que se incruste la fuente correspondiente.

{{% /alert %}}
