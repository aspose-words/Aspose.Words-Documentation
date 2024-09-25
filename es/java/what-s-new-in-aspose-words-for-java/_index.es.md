---
title: Lo nuevo
second_title: Aspose.Words para Java
articleTitle: Lo nuevo en Aspose.Words para Java
linktitle: Lo nuevo en Aspose.Words para Java
type: docs
description: "Aspose.Words para Java expande y mejora diariamente. En esta página, usted puede aprender sobre las características enormes y más interesantes del producto."
weight: 2
url: /es/java/what-s-new-in-aspose-words-for-java/
---

Esta página describe el nuevo más interesante Aspose.Words características introducidas en versiones recientes.

## Aspose.Words para Java 24.9

Aspose.Words 24.9 introduce la inserción de formas de grupo y la inserción de StructuredDocumentTag a través de DocumentBuilder, mejora la representación de gráficos radiales con graduaciones, mejora las firmas digitales con soporte XAdES-EPES, agrega reconocimiento de subrayado de Markdown y brinda acceso a separadores de notas al pie/notas al final.

### Representación e impresión

#### Graduaciones en gráficos radiales

Se ha implementado la representación de graduaciones en gráficos radiales.

### Conversión, carga y guardado de documentos

#### Formato de subrayado al cargar archivos Markdown

Se ha incorporado la opción de reconocer el formato de subrayado al cargar documentos Markdown agregando una nueva propiedad pública [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

### Firmas digitales

#### Firmar documentos con XAdES-EPES

Se ha introducido la capacidad de firmar documentos con firmas XML-DSig de nivel XAdES-EPES agregando una nueva propiedad pública [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) y una nueva enumeración pública [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Otros

* Se ha agregado un nuevo método público [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) para agrupar formas.
* Se ha agregado un nuevo método público [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) para insertar **StructuredDocumentTags** en un documento.
* Se ha proporcionado acceso público a los separadores de notas al pie y notas al final agregando algunas clases y propiedades públicas.

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión de Aspose.Words para Java 24.9](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 amplía las opciones para ensamblajes, mejora las capacidades de renderizado y amplía algunas otras opciones.

Aspose.Words 24.6 mejora las opciones de renderizado, mejora la funcionalidad de búsqueda y comparación y amplía varias otras funciones.

Aspose.Words 24.7 cambia la forma de trabajar con ActiveX, amplía las capacidades de renderizado y exporta a formatos Markdown y XLSX.

Aspose.Words 24.8 mejora la personalización de gráficos con un control preciso sobre las etiquetas de los ejes, amplía la gestión de fuentes, mejora el manejo de la estructura de los documentos y añade nuevas capacidades para la exportación HTML/XAML, la funcionalidad PDF, la conversión de documentos y las firmas digitales.

### Formatos admitidos

A partir de la versión 24.7, se admite la exportación a PDF/UA-2 para garantizar la accesibilidad para usuarios con discapacidades.

### Representación e impresión

#### Cambios en Charts, Shapes y DrawingML <sup>24.5</sup>

- Se ha implementado la representación de efectos DrawingML para gráficos SVG, ampliando la funcionalidad anterior limitada a imágenes.
- Se introdujo soporte para crear gráficos combinados y ajustar propiedades como ancho de espacio, superposición y escala de burbuja dentro de grupos de series mediante la adición de [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.palabras/chartseriesgroup/) y las clases [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) y las clases [SeriesGroups](https://reference.aspose.com/ palabras/java/com.aspose.words/chart/#getSeriesGroups).
- La funcionalidad para manipular el efecto SoftEdge de las formas se implementó agregando la clase [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- La capacidad de modificar los valores de ajuste de las formas se implementó agregando [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) y [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) clases públicas y [Ajustes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments) propiedad.

#### Cambios en gráficos, formas y dibujos <sup>24.6</sup>

* Se han mejorado las capacidades de gráficos. Ahora puede crear una variedad más amplia de gráficos, incluidos *Mapas de árbol*, *Estallidos solares*, *Histogramas*, gráficos de *Pareto*, gráficos de *Caja y bigotes*, *Cascadas* y *Embudos*. Esto le permite visualizar sus datos de una manera más diversa e informativa.
* Se ha mejorado el control de color para el formato de sombras. Puede obtener un control más preciso sobre la apariencia de sus documentos accediendo a los colores de las sombras.
* Se ha mejorado el aumento de rendimiento para la renderización en segundo plano. Puede acelerar significativamente la renderización de fondos que contienen elementos pequeños gracias a la tecnología de mosaico nativa.
* Se han agregado degradados realistas para las formas. Ahora puede crear formas DML con degradados no lineales, imitando el estilo visual de Microsoft Word para una apariencia más refinada.

#### Personalización de la etiqueta de datos del gráfico <sup>24.7</sup>

Se ha agregado la capacidad de personalizar etiquetas de datos del gráfico como **Orientación** y **Rotación**.

#### Estilo de números personalizado para niveles de lista <sup>24.7</sup>

Se ha agregado un definidor para la propiedad pública [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Ahora puede definir un estilo de número personalizado para los niveles de lista.

#### Cambios al trabajar con ActiveX <sup>24.7</sup>

* Las propiedades de los objetos ActiveX ahora se pueden modificar, brindándole más control sobre su comportamiento.
* Se ha agregado la capacidad de modificar el valor del control ActiveX del botón de opción para habilitar la interacción dinámica.
* Se ha agregado la capacidad de alternar una casilla de verificación ActiveX entre "marcada" o "desmarcada".

#### Control sobre la orientación y la rotación de las etiquetas de las marcas de los ejes de los gráficos <sup>24.8</sup>

Se ha añadido un control preciso sobre la orientación y la rotación de las etiquetas de las marcas de los ejes de los gráficos para una personalización más cómoda de los gráficos: la clase [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) se ha ampliado con nuevas propiedades de **Orientation** y **Rotation**.

#### Reemplazo de la barra invertida por el signo del yen <sup>24.8</sup>

Se ha mejorado la exportación HTML y XAML compatible con versiones anteriores para reemplazar el carácter de barra invertida por el signo del yen. Para lograrlo, se ha añadido la propiedad **ReplaceBackslashWithYenSign** a las clases [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) y [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Uso de etiquetas SDT como nombres de campos de formulario al exportar a PDF <sup>24.8</sup>

La exportación a PDF con compatibilidad para el uso de etiquetas SDT como nombres de campos de formulario se ha mejorado agregando una nueva propiedad **UseSdtTagAsFormFieldName** a la clase [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Conversión, carga y guardado de documentos

#### Exportación de enlaces al formato Markdown <sup>24.7</sup>

La capacidad de controlar la exportación de enlaces en formato Markdown se agregó mediante la implementación de la propiedad [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

Se ha introducido una nueva clase **LowCode.Converter**, diseñada para proporcionar un conjunto de métodos para convertir varios tipos de documentos con una sola línea de código.

### Buscar y comparar

#### Opciones de comparación avanzadas <sup>24.6</sup>
Se ha agregado la capacidad de optimizar los flujos de trabajo de análisis de datos con una funcionalidad de comparación mejorada. Esto incluye una nueva opción [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) y una interfaz rediseñada para comparaciones avanzadas.

### Otro

* Se ha implementado la función para eliminar páginas vacías de un documento agregando el método [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24,5</sup>
* La capacidad de comprobar la presencia de macros de VBA sin cargar un documento se ha proporcionado agregando [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) propiedad. <sup>24,5</sup>
* Ahora se admite mantener la numeración de origen al insertar un documento utilizando LINQ Reporting Engine. <sup>24,5</sup>
* Se agregó una nueva propiedad [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc): esto proporciona una marca de tiempo más precisa para los comentarios, lo que mejora la organización y la trazabilidad. <sup>24.6</sup>
* Se ha mejorado el motor de informes LINQ. Se han realizado la eliminación selectiva de párrafos vacíos y la definición de mensajes personalizados para los miembros de objetos faltantes, lo que genera informes más limpios e informativos. <sup>24.6</sup>
* El formato de fecha y hora ahora se detecta automáticamente para una exportación perfecta al formato XLSX. <sup>24.7</sup>
* Se ha agregado la propiedad pública [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), que le permite verificar si un proyecto VBA está protegido. <sup>24.7</sup>
* La información de fuentes se ha ampliado con la propiedad **EmbeddingLicensingRights** agregada a las clases [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) y [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Se ha agregado una forma de borrar de manera eficiente los encabezados y pies de página de las secciones mientras se conservan las marcas de agua para trabajar con mayor precisión con la estructura del documento. Para borrar los encabezados y pies de página de las secciones, utilice el nuevo método público **ClearHeadersFooters**. <sup>24.8</sup>
* Se ha habilitado la firma digital de documentos XPS mediante [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/); se ha agregado una nueva propiedad **DigitalSignatureDetails** para este propósito. <sup>24.8</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión de Aspose.Words para Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Obtenga más información sobre [Notas de la versión de Aspose.Words para Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Obtenga más información sobre [Notas de la versión de Aspose.Words para Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Obtenga más información sobre [Notas de la versión de Aspose.Words para Java 24.8](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 mejora la experiencia en la gestión de los colores de trazo, mejora los objetos OLE y la presentación de informes LINQ, así como introduce una nueva bibliografía Fuentes públicas API.

Aspose.Words Cargos ampliados 24.2 API, gestión de estilo y opciones de LINQ. Esta versión de Aspose.Words también introdujo la capacidad de especificar SvgSaveOptions durante la renderización, carga de control más flexible Markdown y trabajando con texto de referencia para notas de pie de página y notas.

Aspose.Words 24.3 presenta un nuevo TIFF Reader/Writer y Emulación de operaciones binarias de raster para metafiles WMF. Aspose.Words 24.3 continúa también ampliando los Gráficos API.

Aspose.Words 24.4 mejora el guardado de formatos, algunas opciones de renderizado, así como mejora el trabajo con firmas digitales.

### Formatos admitidos <sup>24.4</sup>

El formato de imagen moderno **WebP** ahora es compatible con Aspose.Words. Ahora puede leer e insertar imágenes WebP en documentos, así como guardar imágenes en formato WebP.

### Rendering and Printing

#### Control de Colores Stroke <sup>24.1</sup>

El [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) clase se ha extendido con un conjunto de nuevas propiedades públicas relacionadas con la gestión de los colores del trazo: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) y [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) y [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Cartones de dibujo de MLS API Extensión <sup>24.2 / 24.3 / 24.4</sup>

El **DrawingML Charts API** sigue creciendo.

#### Incluir fuentes declaradas en las reglas @font-face <sup>24.4</sup>

Se ha agregado la capacidad de incluir fuentes declaradas en las reglas @font-face en las definiciones de fuentes del documento resultante mediante la adición de una nueva propiedad llamada [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Trabajar con formatos de brillo y reflexión <sup>24.4</sup>

Se ha implementado la capacidad de trabajar con formatos de brillo y reflexión para un objeto de dibujo.

### Documentos de carga y ahorro

#### Especificar SvgSaveOptions Durante la Rendering <sup>24.2</sup>

Capacidad de especificar [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) durante el renderizado se ha añadido utilizando el [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) y [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) métodos.

#### Preserve Empty Lines al cargar Markdown archivos <sup>24.2</sup>

La capacidad de preservar líneas vacías al cargar Markdown Se han añadido archivos.

#### Un nuevo lector de TIFF <sup>24.3</sup>

Un nuevo lector/escritor TIFF Aspose.Words para .NET Standard, .NET 6 y más tarde se ha desarrollado. Aspose.Words para .NET 24.3 añadió soporte para leer imágenes TIFF con tipos de compresión JPEG y Old JPEG, y también mejoró significativamente la calidad de las operaciones de lectura y escritura.

### Otros

* La capacidad de modificar el texto del `TextBox` El control OLE ha sido introducido añadiendo un nuevo [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) propiedad a la nueva [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) clase. 24.1 <sup>24.1</sup>
* La bibliografía Fuentes públicas API se implementó añadiendo algunos nuevos [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) y [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) clases y clases [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) enumeración, así como agregando un nuevo [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) propiedad a [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) clase. <sup>24.1</sup>
* An API para limitar el acceso a los miembros del tipo utilizando sintaxis de plantilla para el motor de presentación de informes LINQ. <sup>24.1</sup>
* Nuevas propiedades públicas [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), y [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) para mejorar la gestión del estilo se han añadido a la [Style](https://reference.aspose.com/words/net/aspose.words/style/) clase. <sup>24.2</sup>
* Se ha mejorado la funcionalidad para recuperar el texto de referencia real para las notas de pie de página y las notas finales con el [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) propiedad y el [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) método. <sup>24.2</sup>
* Compatibilidad con `Word 2016` gráficos para los `LINQ Reporting Engine` ha sido habilitado. <sup>24.2</sup>
* Emulación de operaciones binarias de raster para metafiles WMF se ha implementado. <sup>24.3</sup>
* Se ha habilitado la posibilidad de definir opciones de firma para documentos dentro de SaveOptions mediante la adición de una nueva clase llamada [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) con nuevos miembros públicos, así como la adición de nuevas propiedades a las clases [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) y [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). 24.4

{{% alert color="primary" %}}

Aprender más acerca de [Aspose.Words para Java 24.1 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Aprender más acerca de [Aspose.Words para Java 24.2 Notas de lanzamiento.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Aprender más acerca de [Aspose.Words para Java 24.3 Notas de lanzamiento.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Aprender más acerca de [Aspose.Words para Java 24.4 Notas de lanzamiento.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words para Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 amplía las opciones de renderización, emulación de renderización de metafiles, y markdown Guardar opciones.

Aspose.Words 23.10 mejora la renderización, amplía las opciones para cargar y guardar documentos, y permite a los usuarios combinar documentos de nuevas maneras.

Aspose.Words 23.11 mejora el trabajo con revisiones, formato XLSX y fuentes en la leyenda del gráfico con opciones adicionales.

Aspose.Words 23.12 introduce nuevas propiedades y enumeraciones para trabajar con documentos PDF, soporte para WebP imágenes, y actualizada biblioteca Bouncy Castle.

### Rendering and Printing

#### Personalización de los ejes Títulos en DrawingML Gráficos <sup>23.9</sup>

La capacidad de personalizar los títulos del eje en los gráficos de DrawingML ha sido introducida por la implementación de una nueva clase pública [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) y [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) propiedad.

#### Determinación de la posición vertical de las fuentes dentro de un párrafo <sup>23.9</sup>

Ahora es posible definir la posición vertical de las fuentes dentro de un párrafo utilizando el nuevo público [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) propiedad y la nueva [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) enumeración.

#### Control de color de primer plano <sup>23.10</sup>

La capacidad de recuperar el color del primer plano sin modificadores se ha añadido a la [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) y [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) clases a través de **BaseForeColor** propiedad.

#### Ampliación de la funcionalidad de los gráficos <sup>23.10</sup>

La funcionalidad de la [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), y [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) se han ampliado las clases con nuevos métodos y propiedades.

#### Ajuste automático y ajuste una imagen en una forma <sup>23.10</sup>

Una manera sencilla de ajustar y ajustar automáticamente una imagen dentro de una forma particular se ha proporcionado a través de la nueva [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) método.

#### Formato de fuente predeterminado para dibujar ML Chart Legend Entries <sup>23.11</sup>

La capacidad de especificar el formato de fuente predeterminado para las entradas de leyenda de los gráficos de DrawingML se ha añadido a través de los **Font** propiedad. Esta característica facilita una apariencia más simplificada y coherente para los elementos del gráfico, mejorando la estética general del documento.

#### Especifique el diseño de página cuando abra PDF en Reader <sup>23.12</sup>

La capacidad de especificar el diseño de la página a utilizar al abrir un documento en un lector PDF se ha añadido a través de la introducción de un nuevo [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) propiedad a [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) clase y la introducción de una nueva [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) enumeración.

### Documentos de carga y ahorro

#### Especificar un nombre de carpeta para construir imágenes URI en Markdown <sup>23.9</sup>

El [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) la clase se ha ampliado incluyendo [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) propiedad, que permite especificar el nombre de la carpeta utilizada para construir imágenes URI escritas en Markdown documento.

#### Reducir PDF Tamaño del producto <sup>23.10</sup>

Diversas optimizaciones de renderización PDF para reducir el tamaño de salida al utilizar [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) se han implementado los ajustes.

#### Reconocer hipervínculos al cargar documentos TXT <sup>23.10</sup>

La característica para reconocer hipervínculos al cargar los documentos TXT se ha implementado añadiendo un nuevo [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) propiedad.

### Otros

- Se ha implementado emulación de renderizado de metafiles para determinar el tamaño de la rasterización, específicamente para ancho de pluma WMF y ancho de pluma cosmética EMF. Para lograr esto, el **ScaleWmfFontsToMetafileSize** la propiedad fue reemplazada por [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) propiedad y el [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) propiedad se agregó. <sup>23.9</sup>
- Se ha introducido un método simplificado para insertar un documento en otro documento en la posición del cursor actual utilizando el [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) método. <sup>23.10</sup>
- La capacidad de acceder y modificar propiedades de estilo se ha añadido a través de la introducción de la nueva [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) propiedad. <sup>23.10</sup>
- Se ha añadido un parámetro genérico a los métodos [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) clase. <sup>23.10</sup>
- Una manera de controlar cuando una determinada revisión debe ser aceptada o rechazada o no se ha aplicado utilizando la [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) y [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) métodos. Esta mejora otorga a los usuarios un control más estricto sobre el proceso de revisión. <sup>23.11</sup>
- La capacidad de escribir todas las secciones de un documento sobre la misma hoja de trabajo XLSX se ha proporcionado a través de la nueva [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) tipo de enumeración y el nuevo [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) propiedad. <sup>23.11</sup>
- Apoyo para WebP la imagen ha sido introducida. Tenga en cuenta que esta característica sólo está disponible .NetStandart y .NETVersión 6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Aprender más acerca de [Aspose.Words para Java 23.9 Notas de lanzamiento](/words/java/aspose-words-for-java-23-9-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.10 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.11 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.12 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 mejora la capacidad de trabajar con los datos de las series de gráficos y la capacidad de trabajar con documentos ODT, así como mejorar los encabezados/pieros y su envoltura de texto.

Aspose.Words 23.6 amplía las opciones de renderización, añade un nuevo formato de exportación, mejora la presentación de informes y LowCode herramientas.

Aspose.Words 23.7 mejora la capacidad de presentación de informes, añade un nuevo formato de exportación e introduce cambios en el trabajo con cuadros y firmas digitales.

Aspose.Words 23.8 amplía las capacidades de diferentes formatos, mejora la renderización y añade nuevas opciones para trabajar con campos

### Formatos compatibles

* A partir de la versión 23.6, es posible guardar un documento en formato XLSX. Ahora puede convertir sus documentos en formato Excel. <sup>23.6</sup>

* A partir de la versión 23.7, es posible guardar una página de documento o forma en formato EPS. <sup>23.7</sup>

* ## Nuevas características de formato

  - Se ha introducido la funcionalidad para generar automáticamente Tabla de Contenidos (TOC) para documentos MOBI. <sup>23.8</sup>
  - El [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) constructor se ha ampliado con [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - Se ha implementado la configuración de texto vertical para los metafiles EMF. <sup>23.8</sup>

### Rendering

#### Obtener y Modificar Datos de la serie de gráficos <sup>23.5</sup>

La función para obtener y modificar los datos de la serie de gráficos se proporcionó añadiendo:

- nuevas clases: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nuevos tipos de enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Apoyo a la tipografía avanzada <sup>23.6</sup>

Se ha añadido soporte para la tipografía avanzada en WMF, EMF y EMF+.

#### Contenido coloreado en la página <sup>23.6</sup>

La propiedad pública [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), indicando si la página es de color o no, se ha añadido.

#### Formato para etiquetas de datos de gráficos <sup>23.6</sup>

Se ha implementado la capacidad de configurar el formato de llenado, trazo y callout para etiquetas de datos de gráficos.

### Mail Merge and Reporting

#### Inserción HTML dinámica para el motor de presentación de informes LINQ <sup>23.6</sup>

Se ha añadido una nueva forma de inserción HTML dinámica para LINQ Reporting Engine.

#### Mustache Tags Apoyo <sup>23.7</sup>

Mustache las etiquetas ahora son compatibles en [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) y [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) métodos.

#### LINQ Reporting Engine Template sintaxis Actualizaciones <sup>23.7</sup>

La sintaxis LINQ Reporting Engine ahora admite la `ElementAt` y ElementAtOrDefault extension methods.

#### Especificar el tamaño de las imágenes rendidas <sup>23.8</sup>

Una nueva propiedad pública **ImageSize** para especificar el tamaño de las imágenes renderizadas en pixel se ha introducido.

#### Preserve Whitespaces para JSON String Values – LINQ <sup>23.8</sup>

Se ha añadido una opción al motor LINQ Reporting para preservar los espacios blancos para los valores de cadena JSON.

### LowCode <sup>23.6</sup>

Nuevo LowCode se han añadido métodos destinados a fusionar diferentes tipos de documentos en un solo documento de salida.

### Otros

- Se ha implementado el apoyo a la envoltura de texto en cabeceras/piezas. <sup>23.5</sup>
- La capacidad de eliminar firmas digitales de documentos ODT se ha añadido a través de la [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) método. <sup>23.5</sup>
- La propiedad pública [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) para obtener el texto base y rubí de la guía fonética [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) ha sido añadido. <sup>23.5</sup>
- Se ha añadido la capacidad de recuperar un valor de firma digital de un documento firmado digitalmente como matriz de byte introduciendo un nuevo [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) propiedad. <sup>23.7</sup>
- El [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) y [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) se han extendido clases con nuevos miembros públicos – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), y [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Se ha añadido apoyo a los campos de CITATION y BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Aprender más acerca de [Aspose.Words para Java 23.5 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.6 Notas de lanzamiento](/words/java/aspose-words-for-java-23-6-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.7 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.8 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 mejora el rendimiento de la emulación de operaciones de raster, así como mejora la calidad de exportación y renderización de documentos.

Aspose.Words 23.2 introduce documentos de ahorro en el formato MOBI, mejora la renderización de gráficos, y hace cambios notables en los detalles de la apariencia de documento.

Aspose.Words 23.3 mejora la importación y el ahorro de documentos con nuevas propiedades, y también mejora la calidad del trabajo con fondo y primer plano color y gradiente radial.

Aspose.Words 23.4 mejora el cálculo de algunos parámetros y el posicionamiento de la tabla y el texto circundante.

### Mejoras de la ejecución

#### Emulación de operaciones de Raster <sup>23.1</sup>

El rendimiento y la calidad de la emulación de operaciones de raster con metafiles han mejorado significativamente.

### Formatos compatibles

#### Exportar a MOBI <sup>23.2</sup>

A partir de la versión 23.2, es posible guardar un documento en formato MOBI (también llamado PRC, AZW – Amazon Kindle propio formato de archivo e-book). Ahora no sólo puede cargar documentos MOBI, sino también exportar sus archivos al formato MOBI.

### Rendering

#### Trabajar con Colores Témicos Afilados <sup>23.1</sup>

Se ha implementado la capacidad de trabajar con colores temáticos de sombra.

#### Apoyo al Coeficiente Cuota R en Gráficos DML <sup>23.1</sup>

Apoyo al coeficiente de R-cuadrado en las etiquetas de tendencia del gráfico DML cuando se ha añadido el renderizado.

#### Mejoras de la carga <sup>23.2</sup>

Desde el 23.2 se ha mejorado significativamente la renderización del gráfico.

#### Control de color de fondo y primer plano <sup>23.3</sup>

El [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) clase se ha extendido con un conjunto de nuevas propiedades públicas relacionadas con los colores de fondo y primer plano: **ForeThemeColor** y **BackThemeColor**, **ForeTintAndShade** y **BackTintAndShade**.

#### Gradientes radiales con los `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering de gradientes radiales con los `SkiaSharp` sombreador nativo para .NET Standard se ha aplicado.

#### Distancia entre la tabla y el texto redondeado <sup>23.4</sup>

La capacidad de fijar la distancia entre la tabla y el texto circundante se ha añadido introduciendo nuevas propiedades a la [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) clase: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), y [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Documentos de carga y ahorro

#### Generar `TOC` para documentos AZW3 <sup>23.1</sup>

La capacidad de generar `TOC` (table of contents) for AZW3 documents has been added through the use of the [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) propiedad.

#### Lista de Exportaciones Markdown <sup>23.1</sup>

Una manera de controlar la exportación de artículos de la lista Markdown el formato se ha proporcionado añadiendo el [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) propiedad a [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) clase.

#### Notificaciones de progreso de ahorro de documentos <sup>23.3</sup>

Se han aplicado notificaciones de progreso para los formatos MOBI y AZW3.

#### Ajuste de la sentencia y la palabra <sup>23.3</sup>

Se ha añadido la capacidad de especificar si se ajusta automáticamente la frase y el espaciamiento de palabras al importar documentos mediante la introducción de la **AdjustSentenceAndWordSpacing** propiedad.

### Otros

- La capacidad de especificar el ajuste de espaciamiento de caracteres de un documento se ha añadido a través de [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) ejecución de bienes <sup>23.2</sup>
- La manera de instruir Aspose.Words si incluir buzones de texto, notas de pie de página y notas en las estadísticas del número de palabras se ha proporcionado añadiendo los [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) propiedad <sup>23.2</sup>
- Una nueva opción para un estilo de documento, que permite especificar si el estilo se redefine automáticamente en función del valor apropiado, se ha introducido a través del [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) propiedad <sup>23.2</sup>
- La capacidad de determinar si [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) es una guía fonética que se ha añadido utilizando **IsPhoneticGuide** propiedad <sup>23.4</sup>
- Se ha implementado una manera sencilla de trabajar con series y ejes de gráficos combo introduciendo los **ChartAxisCollection** clase y añadir el **Chart.Axes** propiedad <sup>23.4</sup>
- Nuevas propiedades públicas conectadas a la forma relativa posicionamiento y tamaño se han añadido a la [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) clase <sup>23.4</sup>
- Precisión y rendimiento del cálculo del brillo de color para la resolución automática del color de texto se ha mejorado de acuerdo con las últimas versiones de Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Aprender más acerca de [Aspose.Words para Java 23.1 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.2 Notas de lanzamiento](/words/java/aspose-words-for-java-23-2-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.3 Notas de lanzamiento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

Aprender más acerca de [Aspose.Words para Java 23.4 Notas de lanzamiento](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Vea también

{{% alert color="primary" %}}

Esta página contiene las últimas noticias de lanzamiento de los últimos 2 años. Para más detalles sobre versiones anteriores, consulte [Notas de lanzamiento '](https://releases.aspose.com/words/java/release-notes/) páginas en las secciones pertinentes.

{{% /alert %}}
