---
title: Qué hay de nuevo
second_title: Aspose.Words para .NET
articleTitle: Novedades de Aspose.Words para .NET
linktitle: Novedades de Aspose.Words para .NET
type: docs
description: "Aspose.Words para .NET se expande y mejora diariamente. En esta página, puede conocer las características enormes y más interesantes del producto."
weight: 10
url: /es/net/what-s-new-in-aspose-words-for-net/
---

Esta página describe las nuevas funciones Aspose.Words más interesantes introducidas en versiones recientes.

## Aspose.Words para .NET 24.9, 24.10

Aspose.Words 24.9 introduce la inserción de formas de grupo y la inserción de StructuredDocumentTag a través de DocumentBuilder, mejora la representación de gráficos radiales con graduaciones, mejora las firmas digitales con compatibilidad con XAdES-EPES, agrega reconocimiento de subrayado de Markdown y brinda acceso a separadores de notas al pie/notas al final.

Aspose.Words 24.10 presenta una compatibilidad mejorada con controles ActiveX con creación de CommandButton, un nuevo control de visibilidad de formas, la capacidad de agrupar formas, exportación de Markdown mejorada para tablas, formato de gráficos para gráficos circulares y de anillos, mejor manejo de la codificación Big5 y compatibilidad con fuentes taiwanesas obsoletas.

### Representación e impresión

#### Graduaciones en gráficos radiales <sup>24.9</sup>

Se ha implementado la representación de graduaciones en gráficos radiales.

#### Controles ActiveX CommandButton <sup>24.10</sup>

Se ha introducido la capacidad de crear controles ActiveX CommandButton agregando un nuevo método público [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) y una nueva clase pública [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/).

#### Control de visibilidad de formas <sup>24.10</sup>

Se ha agregado una nueva propiedad pública [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) para controlar la visibilidad de las formas.

#### Cambios en gráficos circulares y de anillos <sup>24.10</sup>

Se han agregado varias propiedades públicas nuevas para dar formato a los gráficos circulares y de anillos.

### Conversión, carga y guardado de documentos

#### Formato de subrayado al cargar archivos Markdown <sup>24.9</sup>

Se ha incorporado la opción de reconocer el formato de subrayado al cargar documentos Markdown agregando una nueva propiedad pública [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Exportación de tablas como HTML al guardar en Markdown <sup>24.10</sup>

Se ha implementado una opción para exportar tablas como HTML al guardar documentos en formato Markdown agregando una nueva propiedad pública [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) y una enumeración [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/).

### Firmas digitales

#### Firmar documentos con XAdES-EPES <sup>24.9</sup>

Se ha introducido la capacidad de firmar documentos con firmas XML-DSig de nivel XAdES-EPES agregando una nueva propiedad pública [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) y una nueva enumeración pública [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Otros

* Se ha agregado un nuevo método público [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) para agrupar formas. <sup>24.9</sup>
* Se ha agregado un nuevo método público [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) para insertar **StructuredDocumentTags** en un documento. <sup>24.9</sup>
* Se ha proporcionado acceso público a los separadores de notas al pie y notas al final agregando algunas clases y propiedades públicas. <sup>24.9</sup>
* Se ha introducido la capacidad de agrupar formas individuales, agrupar formas juntas y agrupar directamente formas y agrupar formas agregando el método [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1). <sup>24.10</sup>
* Se ha mejorado el manejo de la codificación Big5 para las tablas cmap TrueType. <sup>24.10</sup>
* Se ha mejorado la compatibilidad con fuentes taiwanesas obsoletas. <sup>24.10</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión de Aspose.Words para .NET 24.9](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Obtenga más información sobre [Notas de la versión de Aspose.Words para .NET 24.10](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 amplía las opciones para ensamblajes, mejora las capacidades de renderizado y amplía algunas otras opciones.

Aspose.Words 24.6 mejora las opciones de renderizado, mejora la funcionalidad de búsqueda y comparación y amplía varias otras funciones.

Aspose.Words 24.7 cambia la forma de trabajar con ActiveX, amplía las capacidades de renderizado y exporta a formatos Markdown y XLSX.

Aspose.Words 24.8 mejora la personalización de gráficos con un control preciso de las etiquetas de los ejes, amplía la gestión de fuentes, mejora el manejo de la estructura de los documentos y agrega nuevas capacidades para la exportación de HTML/XAML, la funcionalidad PDF, la conversión de documentos y las firmas digitales.

### Formatos admitidos

A partir de la versión 24.7, se admite la exportación a PDF/UA-2 para garantizar la accesibilidad para usuarios con discapacidades.

### Plataformas

Los ensamblados .NET 7.0/8.0 se han incluido en el paquete Aspose.Words NuGet.

### Representación e impresión

#### Cambios en Charts, Shapes y DrawingML <sup>24.5</sup>

* Se ha implementado la representación de efectos DrawingML para gráficos SVG, ampliando la funcionalidad anterior limitada a imágenes.
* Se introdujo soporte para crear gráficos combinados y ajustar propiedades como ancho de espacio, superposición y escala de burbuja dentro de grupos de series agregando las clases [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) y [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) y la propiedad [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* La funcionalidad para manipular el efecto SoftEdge de las formas se implementó agregando la clase [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* La capacidad de modificar los valores de ajuste de las formas se implementó agregando [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) y [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) clases públicas y [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) propiedad.

#### Cambios en gráficos, formas y dibujos <sup>24.6</sup>

* Se han mejorado las capacidades de gráficos. Ahora puede crear una variedad más amplia de gráficos, incluidos *Mapas de árbol*, *Estallidos solares*, *Histogramas*, gráficos de *Pareto*, gráficos de *Caja y bigotes*, *Cascadas* y *Embudos*. Esto le permite visualizar sus datos de una manera más diversa e informativa.
* Se ha mejorado el control de color para el formato de sombras. Puede obtener un control más preciso sobre la apariencia de sus documentos accediendo a los colores de las sombras.
* Se ha mejorado el aumento de rendimiento para la renderización en segundo plano. Puede acelerar significativamente la renderización de fondos que contienen elementos pequeños gracias a la tecnología de mosaico nativa.
* Se han agregado degradados realistas para las formas. Ahora puede crear formas DML con degradados no lineales, imitando el estilo visual de Microsoft Word para una apariencia más refinada.

#### Personalización de la etiqueta de datos del gráfico <sup>24.7</sup>

Se ha agregado la capacidad de personalizar etiquetas de datos del gráfico como **Orientación** y **Rotación**.

#### Estilo de números personalizado para niveles de lista <sup>24.7</sup>

Se ha agregado un definidor para la propiedad pública [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/). Ahora puede definir un estilo de número personalizado para los niveles de lista.

#### Cambios al trabajar con ActiveX <sup>24.7</sup>

* Las propiedades de los objetos ActiveX ahora se pueden modificar, brindándole más control sobre su comportamiento.
* Se ha agregado la capacidad de modificar el valor del control ActiveX del botón de opción para habilitar la interacción dinámica.
* Se ha agregado la capacidad de alternar una casilla de verificación ActiveX entre "marcada" o "desmarcada".

#### Control sobre la orientación y rotación de las etiquetas de las marcas de los ejes del gráfico <sup>24.8</sup>

Se ha agregado un control preciso sobre la orientación y rotación de las etiquetas de las marcas de los ejes del gráfico para una personalización más conveniente del gráfico: la clase [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) se ha ampliado con las nuevas propiedades [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) y [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Reemplazo de la barra invertida con el signo del yen <sup>24.8</sup>

Se ha mejorado la exportación HTML y XAML compatible con versiones anteriores para reemplazar el carácter de barra invertida con el signo del yen. Para lograr esto, se agregó la propiedad **ReplaceBackslashWithYenSign** a las clases [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) y [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Uso de etiquetas SDT como nombres de campos de formulario al exportar a PDF <sup>24.8</sup>

La exportación a PDF con compatibilidad para el uso de etiquetas SDT como nombres de campos de formulario se ha mejorado agregando una nueva propiedad [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) a la clase [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Conversión, carga y guardado de documentos

#### Exportación de enlaces al formato Markdown <sup>24.7</sup>

La capacidad de controlar la exportación de enlaces en formato Markdown se agregó mediante la implementación de la propiedad [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode <sup>24.8</sup>

Se ha introducido una nueva clase [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), diseñada para proporcionar un conjunto de métodos para convertir varios tipos de documentos con una sola línea de código.

#### LowCode <sup>24.8</sup>

Se ha introducido una nueva clase [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), diseñada para proporcionar un conjunto de métodos para convertir varios tipos de documentos con una sola línea de código.

### Buscar y comparar

#### Opciones de comparación avanzadas <sup>24.6</sup>
Se ha agregado la capacidad de optimizar los flujos de trabajo de análisis de datos con una funcionalidad de comparación mejorada. Esto incluye una nueva opción [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) y una interfaz rediseñada para comparaciones avanzadas.

### Otro

* La función para eliminar páginas vacías de un documento se ha implementado agregando el método [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* La capacidad de comprobar la presencia de macros de VBA sin cargar un documento se proporciona agregando la propiedad [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Ahora se admite mantener la numeración de origen al insertar un documento utilizando LINQ Reporting Engine. <sup>24.5</sup>
* Se agregó una nueva propiedad [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/): esto proporciona una marca de tiempo más precisa para los comentarios, lo que mejora la organización y la trazabilidad. <sup>24.6</sup>
* Se ha mejorado el motor de informes LINQ. Se han realizado la eliminación selectiva de párrafos vacíos y la definición de mensajes personalizados para los miembros de objetos faltantes, lo que genera informes más limpios e informativos. <sup>24.6</sup>
* El formato de fecha y hora ahora se detecta automáticamente para una exportación perfecta al formato XLSX. <sup>24.7</sup>
* Se ha agregado la propiedad pública [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), que le permite verificar si un proyecto VBA está protegido. <sup>24.7</sup>
* La información de fuentes se ha ampliado con la propiedad **EmbeddingLicensingRights** agregada a las clases [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) y [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Se ha agregado una forma de borrar de manera eficiente los encabezados y pies de página de las secciones mientras se conservan las marcas de agua para trabajar con mayor precisión con la estructura del documento. Para borrar los encabezados y pies de página de las secciones, utilice el nuevo método público [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* Se ha habilitado la firma digital de documentos XPS mediante [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) – se ha añadido una nueva propiedad [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) para este fin. <sup>24.8</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión de Aspose.Words para .NET 24.5](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Obtenga más información sobre [Notas de la versión de Aspose.Words para .NET 24.6](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Obtenga más información sobre [Notas de la versión de Aspose.Words para .NET 24.7](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Obtenga más información sobre [Notas de la versión de Aspose.Words para .NET 24.8](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 mejora la experiencia en torno a la gestión de colores de trazo, mejora los objetos OLE y los informes LINQ, además de introducir un nuevo API público de fuentes de bibliografía.

Aspose.Words 24.2 amplió la API de gráficos, la gestión de estilos y las opciones LINQ. Esta versión de Aspose.Words también introdujo la capacidad de especificar SvgSaveOptions durante el renderizado, un control más flexible de la carga de archivos Markdown y el trabajo con texto de referencia para notas al pie y notas finales.

Aspose.Words 24.3 introduce un nuevo lector/escritor TIFF y emulación de operaciones raster binarias para metarchivos WMF. Aspose.Words 24.3 también continúa expandiendo la API de gráficos.

Aspose.Words 24.4 mejora el guardado de formatos, algunas opciones de renderizado, así como mejora el trabajo con firmas digitales.

### Formatos admitidos <sup>24.4</sup>

El formato de imagen moderno **WebP** ahora es compatible con Aspose.Words para .NET Framework 4.6.2 y versiones superiores. Ahora puede leer e insertar imágenes WebP en documentos, así como guardar imágenes en formato WebP.

Tenga en cuenta que WebP actualmente solo está disponible en .NET Standard y .NET Framework v4.6.2 y superior.

### Representación e impresión

#### Control de color de trazo <sup>24.1</sup>

La clase [Stroke](https://reference.aspose.com/words/es/net/aspose.words.drawing/stroke/) se ha ampliado con un conjunto de nuevas propiedades públicas relacionadas con la gestión de colores de trazo: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) y [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) y [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Extensión DrawingML Charts API <sup>24.2 / 24.3 / 24.4</sup>

La **DrawingML Charts API** continúa ampliándose.

#### Incluir fuentes declaradas en las reglas @font-face <sup>24.4</sup>

Se ha agregado la capacidad de incluir fuentes declaradas en las reglas @font-face en las definiciones de fuentes del documento resultante mediante la adición de una nueva propiedad llamada [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/).

#### Trabajar con formatos de brillo y reflexión <sup>24.4</sup>

Se ha implementado la capacidad de trabajar con formatos de brillo y reflexión para un objeto de dibujo.

### Cargar y guardar documentos

#### Especifique SvgSaveOptions durante el renderizado <sup>24.2</sup>

La capacidad de especificar [SvgSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/svgsaveoptions/) durante el renderizado se agregó utilizando los métodos [ShapeRenderer](https://reference.aspose.com/words/es/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/save/) y [OfficeMathRenderer](https://reference.aspose.com/words/es/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/save/).

#### Conservar líneas vacías al cargar archivos Markdown <sup>24.2</sup>

Se ha agregado la capacidad de conservar líneas vacías al cargar archivos Markdown.

#### Un nuevo lector/escritor TIFF <sup>24.3</sup>

Se ha desarrollado un nuevo lector/escritor TIFF para Aspose.Words for .NET Standard, .NET 6 y versiones posteriores. Aspose.Words for .NET 24.3 agregó soporte para leer imágenes TIFF con tipos de compresión JPEG y Old JPEG, y también mejoró significativamente la calidad de las operaciones de lectura y escritura.

### Otro

* La capacidad de modificar el texto del control `TextBox` OLE se ha introducido agregando una nueva propiedad [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) a la nueva clase [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* El API público de Fuentes de bibliografía se implementó mediante la adición de un nuevo espacio de nombres [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) con sus nuevas clases y enumeraciones, y mediante la adición de una nueva propiedad [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) a la clase [Document](https://reference.aspose.com/words/es/net/aspose.words/document/). <sup>24.1</sup>
* Se ha proporcionado un API para limitar el acceso a los miembros de tipo mediante la sintaxis de plantilla para LINQ Reporting Engine. <sup>24.1</sup>
* Se agregaron a la clase [Style](https://reference.aspose.com/words/es/net/aspose.words/style/) nuevas propiedades públicas [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) y [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) para una gestión de estilo mejorada. <sup>24.2</sup>
- La funcionalidad para recuperar el texto de la marca de referencia real para notas al pie y notas al final se ha mejorado con la propiedad [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) y el método [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Se ha habilitado la compatibilidad con gráficos de `Word 2016` para `LINQ Reporting Engine`. <sup>24.2</sup>
- Se ha implementado la emulación de operaciones raster binarias para metarchivos WMF. <sup>24.3</sup>
- Se ha habilitado la posibilidad de definir opciones de firma para documentos dentro de SaveOptions mediante la adición de una nueva clase llamada [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) con nuevos miembros públicos, así como la adición de nuevas propiedades a las clases [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) y [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). 24.4

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 24.4](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 amplía las opciones de renderizado, la emulación de renderizado de metarchivos y las opciones de guardado de markdown.

Aspose.Words 23.10 mejora la renderización, amplía las opciones para cargar y guardar documentos y permite a los usuarios fusionar documentos de nuevas formas.

Aspose.Words 23.11 mejora el trabajo con revisiones, formato XLSX y fuentes en la leyenda del gráfico con opciones adicionales.

Aspose.Words 23.12 introduce nuevas propiedades y enumeraciones para trabajar con documentos PDF y OOXML, así como compatibilidad con imágenes WebP.

### Representación e impresión

#### Personalización de títulos de ejes en DrawingML Charts <sup>23.9</sup>

La capacidad de personalizar los títulos de los ejes en los gráficos DrawingML se introdujo mediante la implementación de una nueva propiedad [ChartAxisTitle](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartaxistitle/) y [Title](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartaxis/title/) de clase pública.

#### Determinar la posición vertical de las fuentes dentro de un párrafo <sup>23.9</sup>

Ahora es posible definir la posición vertical de las fuentes dentro de un párrafo utilizando la nueva propiedad pública [BaselineAlignment](https://reference.aspose.com/words/es/net/aspose.words/paragraphformat/baselinealignment/) y la nueva enumeración [BaselineAlignment](https://reference.aspose.com/words/es/net/aspose.words/baselinealignment/).

#### Control de color de primer plano <sup>23.10</sup>

Se agregó la capacidad de recuperar el color de primer plano sin modificadores a las clases [Fill](https://reference.aspose.com/words/es/net/aspose.words.drawing/fill/) y [Stroke](https://reference.aspose.com/words/es/net/aspose.words.drawing/stroke/) a través de la propiedad **BaseForeColor**.

#### Ampliando la funcionalidad de los gráficos <sup>23.10</sup>

La funcionalidad de las clases [ChartDataPointCollection](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartseries/) y [ChartFormat](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartformat/) se ha ampliado con nuevos métodos y propiedades.

#### Ajustar y ajustar automáticamente una imagen a una forma <sup>23.10</sup>

Se ha proporcionado una forma sencilla de ajustar y ajustar automáticamente una imagen dentro de una forma particular a través del nuevo método [FitImageToShape](https://reference.aspose.com/words/es/net/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formato de fuente predeterminado para las entradas de leyenda del gráfico DrawingML <sup>23.11</sup>

La capacidad de especificar el formato de fuente predeterminado para las entradas de leyenda de los gráficos DrawingML se agregó a través de la propiedad [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Esta característica facilita una apariencia más optimizada y consistente para los elementos del gráfico, mejorando la estética general del documento.

#### Especificar el diseño de página al abrir PDF en Reader <sup>23.12</sup>

La capacidad de especificar el diseño de página que se utilizará al abrir un documento en un lector de PDF se agregó mediante la introducción de una nueva propiedad [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) a la clase [PdfSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/pdfsaveoptions/) y la introducción de una nueva enumeración [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/).

### Cargar y guardar documentos

#### Especificación de un nombre de carpeta para construir URI de imágenes en Markdown <sup>23.9</sup>

La clase [MarkdownSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/markdownsaveoptions/) se ha ampliado al incluir la propiedad [ImagesFolderAlias](https://reference.aspose.com/words/es/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), que permite especificar el nombre de la carpeta utilizada para construir URI de imágenes escritas en el documento Markdown.

#### Reducir el tamaño de salida del PDF <sup>23.10</sup>

Se han implementado varias optimizaciones de representación de PDF para reducir el tamaño de salida cuando se utilizan configuraciones [OptimizeOutput](https://reference.aspose.com/words/es/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### Reconocer hipervínculos al cargar documentos TXT <sup>23.10</sup>

La función para reconocer hipervínculos al cargar documentos TXT se implementó agregando una nueva propiedad [DetectHyperlinks](https://reference.aspose.com/words/es/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Otro

* Se ha implementado la emulación de renderizado de metarchivos para determinar el tamaño de rasterización, específicamente para el ancho de lápiz WMF y el ancho de lápiz cosmético EMF. Para lograr esto, se reemplazó la propiedad **ScaleWmfFontsToMetafileSize** por la propiedad [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/es/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) y se agregó la propiedad [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/es/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* Se ha introducido un método simplificado para insertar un documento en otro documento en la posición actual del cursor utilizando el método [InsertDocumentInline](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* La capacidad de acceder y modificar propiedades de estilo se ha agregado mediante la introducción de la nueva propiedad [Locked](https://reference.aspose.com/words/es/net/aspose.words/style/locked/). <sup>23.10</sup>
* Se ha agregado un parámetro de tipo genérico a los métodos de la clase [CompositeNode](https://reference.aspose.com/words/es/net/aspose.words/compositenode/). <sup>23.10</sup>
* Se ha implementado una forma de controlar cuándo se debe aceptar/rechazar o no una determinada revisión mediante el uso de los métodos [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) y [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Esta mejora otorga a los usuarios un control más preciso sobre el proceso de revisión. <sup>23.11</sup>
* La capacidad de escribir todas las secciones de un documento en la misma hoja de cálculo XLSX se ha proporcionado mediante el nuevo tipo de enumeración [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) y la nueva propiedad [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* Se ha implementado una forma de controlar cómo se utilizarán las extensiones de formato ZIP64 para documentos OOXML a través de la nueva propiedad Zip64Mode de la clase `OoxmlSaveOptions` y la nueva enumeración Zip64Mode. <sup>23.12</sup>
* Se ha introducido soporte para imágenes WebP. Tenga en cuenta que esta función solo está disponible para las versiones .NetStandart y .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.9](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.10](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.11](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.12](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 mejora la capacidad de trabajar con datos de series de gráficos y la capacidad de trabajar con documentos ODT, además de mejorar los encabezados/pies de página y su ajuste de texto.

Aspose.Words 23.6 amplía las opciones de renderizado, agrega un nuevo formato de exportación, mejora los informes LINQ y las herramientas LowCode.

Aspose.Words 23.7 mejora las capacidades de generación de informes, agrega un nuevo formato de exportación e introduce cambios en el trabajo con tablas y firmas digitales.

Aspose.Words 23.8 amplía las capacidades de diferentes formatos, mejora la representación y agrega nuevas opciones para trabajar con campos.

### Formatos admitidos

* A partir de la versión 23.6, es posible guardar un documento en formato XLSX. Ahora puedes convertir tus documentos al formato Excel. <sup>23.6</sup>
* A partir de la versión 23.7, es posible guardar una página o forma de un documento en formato EPS. <sup>23.7</sup>

### Nuevas características de formato

* Se ha introducido la funcionalidad para generar automáticamente tablas de contenido (TOC) para documentos MOBI. <sup>23.8</sup>
* El constructor [PdfEncryptionDetails](https://reference.aspose.com/words/es/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) se ha ampliado con [PdfPermissions](https://reference.aspose.com/words/es/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Se ha implementado la configuración de texto vertical para metarchivos EMF. <sup>23.8</sup>

### Representación e impresión

#### Obtener y modificar datos de series de gráficos <sup>23.5</sup>

La función para obtener y modificar datos de series de gráficos se proporcionó agregando:

* nuevas clases: [ChartXValue](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* nuevos tipos de enumeración: [ChartXValueType](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Soporte para tipografía avanzada <sup>23.6</sup>

Se ha agregado soporte para tipografía avanzada en renderizado WMF, EMF y EMF+.

#### Contenido coloreado en la página <sup>23.6</sup>

Se ha añadido la propiedad pública [PageInfo.Colored](https://reference.aspose.com/words/es/net/aspose.words.rendering/pageinfo/colored/), que indica si la página está coloreada o no.

#### Formato de etiquetas de datos de gráficos <sup>23.6</sup>

Se ha implementado la capacidad de configurar el formato de relleno, trazo y llamada para las etiquetas de datos del gráfico.

### Combinación de correspondencia e informes

#### Inserción dinámica de HTML para LINQ Reporting Engine <sup>23.6</sup>

Se ha agregado una nueva forma de inserción HTML dinámica para LINQ Reporting Engine.

#### Soporte de etiquetas de bigote <sup>23.7</sup>

Las etiquetas Moustache ahora son compatibles con los métodos [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/es/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) y [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/es/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Actualizaciones de sintaxis de plantillas de LINQ Reporting Engine <sup>23.7</sup>

La sintaxis de la plantilla de LINQ Reporting Engine ahora admite los métodos de extensión `ElementAt` y ElementAtOrDefault.

#### Especificación del tamaño de las imágenes renderizadas <sup>23.8</sup>

Se ha introducido una nueva propiedad pública [ImageSize](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/imagesize/) para especificar el tamaño de las imágenes renderizadas en píxeles.

#### Preservar espacios en blanco para valores de cadena JSON - LINQ <sup>23.8</sup>

Se ha agregado una opción a LINQ Reporting Engine para conservar espacios en blanco para valores de cadena JSON.

### Código bajo <sup>23.6</sup>

Se han agregado nuevos métodos LowCode destinados a fusionar diferentes tipos de documentos en un solo documento de salida.

### Otro

* Se ha implementado soporte para ajuste de texto en encabezados/pies de página. <sup>23.5</sup>
* Se agregó la capacidad de eliminar firmas digitales de documentos ODT mediante el método [RemoveAllSignatures](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23.5</sup>
*Se ha añadido la propiedad pública [PhoneticGuide](https://reference.aspose.com/words/es/net/aspose.words/run/phoneticguide/) para obtener el texto base y ruby de la guía fonética [Run](https://reference.aspose.com/words/es/net/aspose.words/run/). <sup>23.5</sup>
* Se agregó la capacidad de recuperar un valor de firma digital de un documento firmado digitalmente como una matriz de bytes mediante la introducción de una nueva propiedad [SignatureValue](https://reference.aspose.com/words/es/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23.7</sup>
* Las clases [Row](https://reference.aspose.com/words/es/net/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/es/net/aspose.words.tables/cell/) se han ampliado con nuevos miembros públicos: [Row.NextRow](https://reference.aspose.com/words/es/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/es/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/es/net/aspose.words.tables/cell/nextcell/) y [Cell.PreviousCell](https://reference.aspose.com/words/es/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Se ha agregado soporte para los campos CITACIÓN y BIBLIOGRAFÍA. <sup>23.8</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.7](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.8](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 mejora el rendimiento de la emulación de operaciones ráster, además de mejorar la calidad de exportación y representación de documentos.

Aspose.Words 23.2 introduce el almacenamiento de documentos en formato MOBI, mejora la representación de gráficos y realiza cambios notables en los detalles de la apariencia del documento.

Aspose.Words 23.3 mejora la importación y el guardado de documentos con nuevas propiedades y también mejora la calidad del trabajo con color de fondo y primer plano y degradado radial.

Aspose.Words 23.4 mejora el cálculo de algunos parámetros y el posicionamiento de la tabla y el texto circundante.

### Mejoras de rendimiento

#### Emulación de operaciones ráster <sup>23.1</sup>

Se ha mejorado significativamente el rendimiento y la calidad de la emulación de operaciones ráster con metarchivos.

### Formatos admitidos

#### Exportar a MOBI <sup>23.2</sup>

A partir de la versión 23.2, es posible guardar un documento en formato MOBI (también llamado PRC, AZW, el formato de archivo de libro electrónico Amazon propio de Kindle). Ahora no sólo puedes cargar documentos MOBI, sino también exportar tus archivos al formato MOBI.

### Representación

#### Trabajar con colores de tema de sombreado <sup>23.1</sup>

Se ha implementado la capacidad de trabajar con colores de temas de sombreado.

#### Soporte del coeficiente R cuadrado en los gráficos DML <sup>23.1</sup>

Se ha agregado compatibilidad con el coeficiente R cuadrado en las etiquetas de línea de tendencia del gráfico DML cuando se representa.

#### Mejoras en la representación de gráficos <sup>23.2</sup>

Desde la versión 23.2, la representación de gráficos se ha mejorado significativamente.

#### Control de color de fondo y primer plano <sup>23.3</sup>

La clase [Fill](https://reference.aspose.com/words/es/net/aspose.words.drawing/fill/) se ha ampliado con un conjunto de nuevas propiedades públicas relacionadas con los colores de fondo y de primer plano: [ForeThemeColor](https://reference.aspose.com/words/es/net/aspose.words.drawing/fill/forethemecolor/) y [BackThemeColor](https://reference.aspose.com/words/es/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/es/net/aspose.words.drawing/fill/foretintandshade/) y [BackTintAndShade](https://reference.aspose.com/words/es/net/aspose.words.drawing/fill/backtintandshade/).

#### Degradados radiales con `SkiaSharp` Native Shader <sup>23.3</sup>

Se ha implementado la renderización de gradientes radiales con el sombreador nativo `SkiaSharp` para .NET Standard.

#### Distancia entre la tabla y el texto circundante <sup>23.4</sup>

Se agregó la capacidad de establecer la distancia entre la tabla y el texto circundante mediante la introducción de nuevas propiedades en la clase [Table](https://reference.aspose.com/words/es/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/es/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/es/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/es/net/aspose.words.tables/table/distancetop/) y [DistanceBottom](https://reference.aspose.com/words/es/net/aspose.words.tables/table/distancebottom/).

### Cargar y guardar documentos

#### Generar `TOC` para documentos AZW3 <sup>23.1</sup>

Se agregó la capacidad de generar `TOC` (tabla de contenido) para documentos AZW3 mediante el uso de la propiedad [NavigationMapLevel](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Exportación de elementos de lista a Markdown <sup>23.1</sup>

Se ha proporcionado una forma de controlar la exportación de elementos de la lista al formato Markdown agregando la propiedad [ListExportMode](https://reference.aspose.com/words/es/net/aspose.words.saving/markdownsaveoptions/listexportmode/) a la clase [MarkdownSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/markdownsaveoptions/).

#### Notificaciones de progreso de guardado de documentos <sup>23.3</sup>

Se ha implementado el guardado de notificaciones de progreso para los formatos MOBI y AZW3.

#### Ajuste de espaciado de oraciones y palabras <sup>23.3</sup>

Se agregó la capacidad de especificar si se ajusta automáticamente el espaciado entre oraciones y palabras al importar el documento mediante la introducción de la propiedad [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/es/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Otro

* La capacidad de especificar el ajuste del espacio entre caracteres de un documento se agregó a través de la implementación de la propiedad [JustificationMode](https://reference.aspose.com/words/es/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* La forma de indicarle a Aspose.Words si debe incluir cuadros de texto, notas al pie y notas finales en las estadísticas de recuento de palabras se proporcionó agregando la propiedad [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/es/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* Se ha introducido una nueva opción para un estilo de documento, que permite especificar si el estilo se redefine automáticamente en función del valor apropiado, a través de la propiedad [AutomaticallyUpdate](https://reference.aspose.com/words/es/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup> .
* Se agregó la capacidad de determinar si [Run](https://reference.aspose.com/words/es/net/aspose.words/run/) es una guía fonética usando la propiedad [IsPhoneticGuide](https://reference.aspose.com/words/es/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* Se ha implementado una forma sencilla de trabajar con series y ejes de gráficos combinados introduciendo la clase [ChartAxisCollection](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartaxiscollection/) y añadiendo la propiedad [Chart.Axes](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Se han agregado nuevas propiedades públicas relacionadas con el posicionamiento relativo y el tamaño de la forma a la clase [Shape](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* La precisión y el rendimiento del cálculo del brillo del color para la resolución automática del color del texto se han mejorado de acuerdo con las últimas versiones de Microsoft Word <sup>23.4.</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.1](/words/net/aspose-words-for-net-23-1-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.2](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.4](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Ver también

{{% alert color="primary" %}}

Esta página contiene las últimas noticias sobre lanzamientos de los últimos 2 años. Para obtener detalles sobre versiones anteriores, consulte las páginas [Notas de lanzamiento](/words/net/release-notes/) en las secciones correspondientes.

{{% /alert %}}