---
title: Qué hay de nuevo
second_title: Aspose.Words por .NET
articleTitle: Novedades en Aspose.Words para .NET
linktitle: Novedades en Aspose.Words para .NET
type: docs
description: "Aspose.Words para .NET se expande y mejora a diario. En esta página, puede conocer las características enormes y más interesantes del producto."
weight: 10
url: /es/net/what-s-new-in-aspose-words-for-net/
timestamp: 2024-11-18-12-56-02
---

Esta página describe las nuevas funciones Aspose.Words más interesantes introducidas en versiones recientes.

## Aspose.Words por .NET 24.9, 24.10, 24.11

Aspose.Words 24.9 introduce la inserción group shape y la inserción StructuredDocumentTag a través de DocumentBuilder, mejora la representación de gráficos radiales con graduaciones, mejora las firmas digitales con compatibilidad con XAdES-EPES, agrega reconocimiento de subrayado Markdown y proporciona acceso a separadores de notas al pie/notas al final.

Aspose.Words 24.10 presenta compatibilidad mejorada con el control ActiveX con creación de CommandButton, nuevo control de visibilidad de formas, la capacidad de group shapes, exportación mejorada de Markdown para tablas, formato de gráficos para Pie y Doughnut, mejor manejo de codificación Big5 y compatibilidad con fuentes taiwanesas obsoletas.

Aspose.Words 24.11 presenta el resumen de documentos impulsado por AI, opciones de representación mejoradas, acceso mejorado a las propiedades del documento y subtítulos de control ActiveX.

### AI - funciones potenciadas <sup>24.11</sup>

Se ha integrado la compatibilidad con el resumen de documentos mediante los modelos de lenguaje generativo **OpenAI** y **Google** agregando el espacio de nombres [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) con sus miembros públicos.

### Renderizado e Impresión

#### Graduaciones en Gráficos Radiales <sup>24.9</sup>

Se ha implementado la representación de graduaciones en gráficos radiales.

#### CommandButton Controles ActiveX <sup>24.10</sup>

La capacidad de crear CommandButton controles ActiveX se ha introducido agregando un nuevo método público [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) y una nueva clase pública [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/).

#### Controlar la Visibilidad de la Forma <sup>24.10</sup>

Se ha agregado una nueva propiedad pública [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) para controlar la visibilidad de las formas.

#### Cambios en los gráficos Pie y Doughnut <sup>24.10</sup>

Se han agregado varias propiedades públicas nuevas a los gráficos de formato Pie y Doughnut.

#### Controle la representación de los Bordes de los Campos del Formulario de Elección PDF <sup>24.11</sup>

Se ha implementado una nueva opción para controlar la representación de los bordes de los campos de formulario de elección PDF agregando una nueva opción pública [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/).

#### Obtenga y Configure Códigos de Formato para Datos de Gráficos <sup>24.11</sup>

Se ha agregado la capacidad de obtener y establecer códigos de formato para datos de gráficos implementando la propiedad [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) en las clases [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/) y [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/).

#### Renderice Gráficos de Histogramas con Contenedores y Etiquetas <sup>24.11</sup>

La representación del gráfico de histogramas se ha mejorado al permitir un número específico de contenedores y etiquetas.

### Conversión, Carga y Guardado de Documentos

#### Subrayar el formato al Cargar Markdown Archivos <sup>24.9</sup>

Se ha incorporado la opción de reconocer el formato subrayado al cargar documentos Markdown agregando una nueva propiedad pública [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Exportar tablas como HTML al guardar en Markdown <sup>24.10</sup>

Se ha implementado una opción para exportar tablas como HTML al guardar documentos en formato Markdown agregando una nueva propiedad pública [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) y una enumeración [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/).

#### Exportar PDF con Estructura Lógica Actualizada <sup>24.11</sup>

La exportación PDF se ha mejorado al incluir las propiedades del título de la tabla como títulos de los elementos de la estructura lógica PDF.

### Firmas Digitales

#### Firme documentos con XAdES-EPES <sup>24.9</sup>

Se ha introducido la capacidad de firmar documentos con firmas XAdES-EPES de nivel XML-DSig agregando una nueva propiedad pública [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) y una nueva enumeración pública [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Otros

* Se ha agregado un nuevo método público [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) a group shapes. <sup>24.9</sup>
* Se ha agregado un nuevo método público [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) para insertar **StructuredDocumentTags** en un documento. <sup>24.9</sup>
* Se ha proporcionado acceso público a los separadores de notas al pie/notas al final agregando algunas clases y propiedades públicas. <sup>24.9</sup>
* La capacidad de agrupar formas individuales, group shapes juntas y agrupar directamente ambas formas y group shapes se ha introducido agregando el método [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1). <sup>24.10</sup>
* Se ha mejorado el manejo de la codificación Big5 para TrueType tablas cmap. <sup>24.10</sup>
* Se ha mejorado la compatibilidad con fuentes taiwanesas obsoletas. <sup>24.10</sup>
* Para acceder a las propiedades extendidas del documento, se han agregado propiedades de solo lectura a la clase [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/). <sup>24.11</sup>
* Se ha habilitado la configuración de subtítulos para los controles ActiveX agregando un nuevo configurador público a la propiedad [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Más información sobre [Aspose.Words para .NET 24.9 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Más información sobre [Aspose.Words para .NET 24.10 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

Más información sobre [Aspose.Words para .NET 24.11 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/).

{{% /alert %}}

## Aspose.Words por .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 expande las opciones para ensamblados, mejora las capacidades de representación y expande algunas otras opciones.

Aspose.Words 24.6 mejora las opciones de representación, mejora la funcionalidad de búsqueda y comparación y amplía varias otras funciones.

Aspose.Words 24.7 cambia la forma de trabajar con ActiveX, amplía las capacidades de renderizado y exporta a formatos Markdown y XLSX.

Aspose.Words 24.8 mejora la personalización de los gráficos con un control preciso sobre las etiquetas de los ejes, amplía la administración de fuentes, mejora el manejo de la estructura de los documentos y agrega nuevas capacidades para la exportación HTML/XAML, la funcionalidad PDF, la conversión de documentos y las firmas digitales.

### Formatos Admitidos

A partir de la versión 24.7, se admite la exportación a PDF/UA-2 para garantizar la accesibilidad de los usuarios con discapacidades.

### Plataformas <sup>24.5</sup>

.NET 7.0/8.0 ensamblados se han incluido en el paquete Aspose.Words NuGet.

### Renderizado e Impresión

#### Cambios en Gráficos, Formas y DrawingML <sup>24.5</sup>

* Se ha implementado la representación de efectos DrawingML para gráficos SVG, ampliando la funcionalidad anterior limitada a imágenes.
* Se ha agregado compatibilidad para crear gráficos combinados y ajustar propiedades como el ancho del espacio, la superposición y la escala de burbujas dentro de los grupos de series agregando las clases [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) y [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) y la propiedad [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* La funcionalidad para manipular el efecto SoftEdge de las formas se ha implementado agregando la clase [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* La capacidad de modificar los valores adjust de las formas se ha implementado agregando las clases públicas [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) y [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) y la propiedad [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/).

#### Cambios en Gráficos, Formas y Dibujos <sup>24.6</sup>

* Se han mejorado las capacidades de creación de gráficos. Ahora puede crear una variedad más amplia de gráficos, que incluyen *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* gráficos, *Box & Whisker* gráficos, *Waterfalls* y *Funnels*. Esto le permite visualizar sus datos de una manera más diversa e informativa.
* Se ha mejorado el control del color para el formato de las sombras. Puede obtener un control más preciso sobre la apariencia de sus documentos accediendo a los colores de las sombras.
* Se ha mejorado el aumento del rendimiento del renderizado en segundo plano. Puede acelerar significativamente la representación de fondos que contienen elementos pequeños gracias a la tecnología de mosaico nativa.
* Se han añadido degradados realistas para las formas. Ahora puede crear formas DML con degradados no lineales, imitando el estilo visual de Microsoft Word para una apariencia más pulida.

#### Personalización de Etiquetas de Datos de Gráficos <sup>24.7</sup>

Se ha agregado la capacidad de personalizar etiquetas de datos de gráficos como **Orientation** y **Rotation**.

#### Estilo de Número Personalizado para Niveles de Lista <sup>24.7</sup>

Se ha agregado un colocador para la propiedad pública [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/). Ahora puede definir un estilo de número personalizado para los niveles de lista.

#### Cambios en el trabajo con ActiveX <sup>24.7</sup>

* Las propiedades de los objetos ActiveX ahora se pueden modificar, lo que le brinda más control sobre su comportamiento.
* Se ha agregado la capacidad de modificar el valor del control ActiveX del botón de opción para habilitar la interacción dinámica.
* Se ha agregado la capacidad de alternar un ActiveX checkbox a "marcado" o "desmarcado".

#### Control Sobre la Orientación y Rotación de las Etiquetas de las Marcas de Verificación del Eje del Gráfico <sup>24.8</sup>

Se ha agregado un control preciso sobre la orientación y rotación de las etiquetas de marcas del eje del gráfico para una personalización más conveniente del gráfico: la clase [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) se ha ampliado con las nuevas propiedades [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) y [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Reemplazando la Barra Invertida con el Signo del Yen <sup>24.8</sup>

Se ha mejorado la exportación HTML y XAML compatible con versiones anteriores para reemplazar el carácter de barra invertida con el signo Yen. Para lograr esto, se ha agregado la propiedad **ReplaceBackslashWithYenSign** a las clases [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) y [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Usar Etiquetas SDT como Nombres de Campo de Formulario al Exportar a PDF <sup>24.8</sup>

La exportación PDF con soporte para usar etiquetas SDT como nombres de campo de formulario se ha mejorado al agregar una nueva propiedad [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) a la clase [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Conversión, Carga y Guardado de Documentos

#### Exportación de enlaces al formato Markdown <sup>24.7</sup>

Se ha agregado la capacidad de controlar la exportación de enlaces en formato Markdown mediante la implementación de la propiedad [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode 24.8 <sup>24.8</sup>

Se ha introducido una nueva clase [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), diseñada para proporcionar un conjunto de métodos para convertir varios tipos de documentos con una sola línea de código.

### Buscar y Comparar

#### Opciones Avanzadas de Comparación <sup>24.6</sup>
Se ha agregado la capacidad de agilizar los flujos de trabajo de análisis de datos con una funcionalidad de comparación mejorada. Esto incluye una nueva opción [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) y una interfaz rediseñada para comparaciones avanzadas.

### Otros

* La función para eliminar páginas vacías de un documento se ha implementado agregando el método [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* Se ha proporcionado la capacidad de verificar la presencia de VBA macros sin cargar un documento agregando la propiedad [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Ahora se admite mantener la numeración de origen al insertar un documento utilizando el Motor de informes LINQ. <sup>24.5</sup>
* Se ha agregado una nueva propiedad [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) que proporciona una marca de tiempo más precisa para los comentarios, mejorando la organización y la trazabilidad. <sup>24.6</sup>
* Se ha mejorado el motor de informes LINQ. Se ha realizado la eliminación selectiva de párrafos vacíos y la definición de mensajes personalizados para miembros de objetos faltantes, lo que lleva a informes más limpios e informativos. <sup>24.6</sup>
* El formato de fecha y hora ahora se detecta automáticamente para una exportación perfecta al formato XLSX. <sup>24.7</sup>
* Se ha agregado la propiedad pública [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), que le permite verificar si un proyecto VBA está protegido. <sup>24.7</sup>
* La información de la fuente se ha ampliado con la propiedad **EmbeddingLicensingRights** agregada a las clases [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) y [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Se ha agregado una forma de borrar de manera eficiente los encabezados y pies de página de las secciones al tiempo que se conservan las marcas de agua para trabajar con mayor precisión con la estructura del documento. Para borrar los encabezados y pies de página de las secciones, use el nuevo método public [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* Se ha habilitado la firma digital de XPS documentos usando [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/); se ha agregado una nueva propiedad [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) para este propósito. <sup>24.8</sup>

{{% alert color="primary" %}}

Más información sobre [Aspose.Words para .NET 24.5 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Más información sobre [Aspose.Words para .NET 24.6 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Más información sobre [Aspose.Words para .NET 24.7 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Más información sobre [Aspose.Words para .NET 24.8 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words por .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 mejora la experiencia en torno a la administración de los colores de trazo, mejora los objetos OLE y los informes LINQ, e introduce un nuevo `Bibliography Sources` público API.

Aspose.Words 24.2 gráficos expandidos API, gestión de estilos y LINQ opciones. Esta versión de Aspose.Words también introdujo la capacidad de especificar SvgSaveOptions durante el procesamiento, un control más flexible para cargar archivos Markdown y trabajar con texto de referencia para notas al pie y notas al final.

Aspose.Words 24.3 introduce un nuevo Lector/escritor TIFF y emulación de operaciones ráster binarias para metarchivos WMF. Aspose.Words 24.3 también continúa expandiendo los Gráficos API.

Aspose.Words 24.4 mejora los formatos de guardado, algunas opciones de renderizado y mejora el trabajo con firmas digitales.

### Formatos Admitidos <sup>24.4</sup>

El formato de imagen **WebP** moderno ahora es compatible con Aspose.Words para .NET Framework 4.6.2 y versiones posteriores. Ahora puede leer e insertar imágenes WebP en documentos, así como guardar imágenes en formato WebP.

Tenga en cuenta que WebP actualmente solo está disponible en .NET Standard y .NET Framework contra4.6.2 y superiores.

### Renderizado e Impresión

#### Control de Color de Trazo <sup>24.1</sup>

La clase [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) se ha ampliado con un conjunto de nuevas propiedades públicas relacionadas con la administración de los colores de trazo: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) y [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) y [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Extensión DrawingML Gráficos API <sup>24.2 / 24.3 / 24.4</sup>

El **DrawingML Charts API** continúa expandiéndose.

#### Incrustar fuentes Declaradas en @font-face Reglas <sup>24.4</sup>

Se agregó la capacidad de incrustar fuentes declaradas en las reglas @font-face en las definiciones de fuentes del documento resultante agregando una nueva propiedad [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/).

#### Trabajar con Formato de Resplandor y Reflejo <sup>24.4</sup>

Se ha implementado la capacidad de trabajar con formato de resplandor y reflejo para un objeto de dibujo.

### Cargar y Guardar Documentos

#### Especifique SvgSaveOptions Durante el Procesamiento <sup>24.2</sup>

La capacidad de especificar [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) durante el renderizado se ha agregado usando [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) y [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) métodos.

#### Conservar las Líneas Vacías al Cargar Markdown archivos <sup>24.2</sup>

Se ha agregado la capacidad de conservar líneas vacías al cargar archivos Markdown.

#### Un Nuevo TIFF Lector / Escritor <sup>24.3</sup>

Se ha desarrollado un nuevo lector/escritor TIFF para Aspose.Words para .NET Standard, .NET 6 y posteriores. Aspose.Words para .NET 24.3 agregó soporte para leer TIFF imágenes con JPEG y tipos de compresión JPEG antiguos, y también mejoró significativamente la calidad de las operaciones de lectura y escritura.

### Otros

* Se ha introducido la capacidad de modificar el texto del control `TextBox` OLE agregando una nueva propiedad [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) a la nueva clase [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* Las Fuentes de Bibliografía public API se implementaron agregando un nuevo espacio de nombres [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) con sus nuevas clases y enumeraciones, y agregando una nueva propiedad [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) a la clase [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* Se ha proporcionado un API para limitar el acceso a los miembros de tipo utilizando la sintaxis de plantilla para el `LINQ Reporting Engine`. <sup>24.1</sup>
* Se han agregado nuevas propiedades públicas [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) y [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) para una mejor administración de estilos a la clase [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* La funcionalidad para recuperar el texto real de la marca de referencia para notas al pie y notas al final se ha mejorado con la propiedad [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) y el método [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Se ha habilitado la compatibilidad con los gráficos `Word 2016` para `LINQ Reporting Engine`. <sup>24.2</sup>
* Se ha implementado la emulación de operaciones ráster binarias para metarchivos WMF. <sup>24.3</sup>
* La capacidad de definir opciones de firma para documentos dentro de **SaveOptions** se ha habilitado agregando una nueva clase [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) con nuevos miembros públicos, así como agregando nuevas propiedades a las clases [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) y [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Más información sobre [Aspose.Words para .NET 24.1 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Más información sobre [Aspose.Words para .NET 24.2 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Más información sobre [Aspose.Words para .NET 24.3 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Más información sobre [Aspose.Words para .NET 24.4 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words por .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 expande las opciones de representación, la emulación de representación de metarchivo y las opciones de guardado markdown.

Aspose.Words 23.10 mejora el renderizado, amplía las opciones para cargar y guardar documentos y permite a los usuarios fusionar documentos de nuevas formas.

Aspose.Words 23.11 mejora el trabajo con revisiones, formato XLSX y fuentes en la leyenda del gráfico con opciones adicionales.

Aspose.Words 23.12 introduce nuevas propiedades y enumeraciones para trabajar con documentos PDF y OOXML, así como compatibilidad con imágenes WebP.

### Renderizado e Impresión

#### Personalización de Títulos de Ejes en Gráficos DrawingML <sup>23.9</sup>

La capacidad de personalizar los títulos de los ejes en los gráficos DrawingML se ha introducido mediante la implementación de una nueva propiedad pública de clase [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) y [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/).

#### Determinar la Posición Vertical de las Fuentes dentro de un Párrafo <sup>23.9</sup>

Ahora es posible definir la posición vertical de las fuentes dentro de un párrafo utilizando la nueva propiedad public [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) y la nueva enumeración [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/).

#### Control de Color de Primer Plano <sup>23.10</sup>

La capacidad de recuperar el color de primer plano sin modificadores se ha agregado a las clases [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) y [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) a través de la propiedad **BaseForeColor**.

#### Ampliación de la Funcionalidad de los Gráficos <sup>23.10</sup>

La funcionalidad de las clases [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) y [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) se ha ampliado con nuevos métodos y propiedades.

#### Ajusta y ajusta Automáticamente una Imagen en una Forma <sup>23.10</sup>

Se ha proporcionado una forma sencilla de ajustar y ajustar automáticamente una imagen dentro de una forma particular a través del nuevo método [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formato de fuente Predeterminado para las Entradas de Leyenda de Gráfico DrawingML <sup>23.11</sup>

Se ha agregado la capacidad de especificar el formato de fuente predeterminado para las entradas de leyenda de los gráficos DrawingML a través de la propiedad [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Esta característica facilita una apariencia más optimizada y consistente para los elementos del gráfico, mejorando la estética general del documento.

#### Especifique el Diseño de página al Abrir PDF en Reader <sup>23.12</sup>

Se ha agregado la capacidad de especificar el diseño de página que se utilizará al abrir un documento en un lector PDF mediante la introducción de una nueva propiedad [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) en la clase [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) y la introducción de una nueva enumeración [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/).

### Cargar y Guardar Documentos

#### Especificar un Nombre de Carpeta para Construir la Imagen URIs en Markdown <sup>23.9</sup>

La clase [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) se ha ampliado al incluir la propiedad [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), que permite especificar el nombre de la carpeta utilizada para construir la imagen URIs escrita en el documento Markdown.

#### Reducir el Tamaño de Salida PDF <sup>23.10</sup>

Se han implementado varias optimizaciones de renderizado PDF para reducir el tamaño de salida al utilizar la configuración [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### Reconocer Hipervínculos al Cargar Documentos TXT <sup>23.10</sup>

La función para reconocer hipervínculos al cargar documentos TXT se ha implementado agregando una nueva propiedad [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Otros

* Se ha implementado la emulación de representación de metarchivo para determinar el tamaño de rasterización, específicamente para el ancho del lápiz WMF y el ancho del lápiz cosmético EMF. Para lograr esto, la propiedad **ScaleWmfFontsToMetafileSize** se reemplazó con la propiedad [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) y se agregó la propiedad [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* Se ha introducido un método simplificado para insertar un documento en otro documento en la posición actual del cursor utilizando el método [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* La capacidad de acceder y modificar propiedades de estilo se ha agregado mediante la introducción de la nueva propiedad [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/). <sup>23.10</sup>
* Se ha agregado un parámetro de tipo genérico a los métodos de la clase [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/). <sup>23.10</sup>
* Se ha implementado una forma de controlar cuándo se debe aceptar/rechazar o no una determinada revisión utilizando los métodos [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) y [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Esta mejora otorga a los usuarios un control más preciso sobre el proceso de revisión. <sup>23.11</sup>
* La capacidad de escribir todas las secciones de un documento en la misma hoja de cálculo XLSX se ha proporcionado a través del nuevo tipo de enumeración [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) y la nueva propiedad [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* Se ha implementado una forma de controlar cómo se utilizarán las extensiones de formato ZIP64 para los documentos OOXML a través de la nueva propiedad Zip64Mode de la clase `OoxmlSaveOptions` y la nueva enumeración Zip64Mode. <sup>23.12</sup>
* Se ha introducido soporte para la imagen WebP. Tenga en cuenta que esta función solo está disponible para .versiones NetStandart y .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Más información sobre [Aspose.Words para .NET 23.9 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Más información sobre [Aspose.Words para .NET 23.10 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Más información sobre [Aspose.Words para .NET 23.11 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Más información sobre [Aspose.Words para .NET 23.12 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words por .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 mejora la capacidad de trabajar con datos de series de gráficos y la capacidad de trabajar con documentos ODT, así como mejorar los encabezados/pies de página y su ajuste de texto.

Aspose.Words 23.6 amplía las opciones de representación, agrega un nuevo formato de exportación, mejora los informes LINQ y las herramientas LowCode.

Aspose.Words 23.7 mejora las capacidades de generación de informes, agrega un nuevo formato de exportación e introduce cambios en el trabajo con tablas y firmas digitales.

Aspose.Words 23.8 amplía las capacidades de diferentes formatos, mejora el procesamiento y agrega nuevas opciones para trabajar con campos.

### Formatos Admitidos

* A partir de la versión 23.6, es posible guardar un documento en formato XLSX. Ahora puedes convertir tus documentos a formato Excel. <sup>23.6</sup>
* A partir de la versión 23.7, es posible guardar una página o forma de documento en formato EPS. <sup>23.7</sup>

### Nuevas Funciones de Formato

* Se ha introducido la funcionalidad para generar automáticamente una Tabla de contenido (TOC) para MOBI documentos. <sup>23.8</sup>
* El constructor [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) se ha expandido con [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Se ha implementado la configuración de texto vertical para metarchivos EMF. <sup>23.8</sup>

### Renderizado e Impresión

#### Obtener y Modificar Datos de Series de Gráficos <sup>23.5</sup>

La función para obtener y modificar datos de series de gráficos se proporcionó agregando:

* nuevas clases: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* nuevos tipos de enumeración: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Soporte para Tipografía Avanzada <sup>23.6</sup>

Se ha agregado soporte para tipografía avanzada en WMF, EMF y EMF+ renderizado.

#### Contenido coloreado en la página <sup>23.6</sup>

Se ha agregado la propiedad pública [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), que indica si la página está coloreada o no.

#### Formateo de Etiquetas de Datos de Gráficos <sup>23.6</sup>

Se ha implementado la capacidad de establecer el formato de relleno, trazo y llamada para las etiquetas de datos del gráfico.

### Mail Merge y Presentación de Informes

#### Inserción dinámica HTML para el Motor de Informes LINQ <sup>23.6</sup>

Se ha agregado una nueva forma de inserción dinámica HTML para el motor de informes LINQ.

#### Mustache Soporte de etiquetas <sup>23.7</sup>

Las etiquetas Mustache ahora son compatibles con los métodos [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) y [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Actualizaciones de Sintaxis de la Plantilla del Motor de Informes LINQ <sup>23.7</sup>

La sintaxis de la plantilla del Motor de informes LINQ ahora admite los métodos de extensión `ElementAt` y ElementAtOrDefault.

#### Especificar el Tamaño de las Imágenes Renderizadas <sup>23.8</sup>

Se ha introducido una nueva propiedad pública [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) para especificar el tamaño de las imágenes renderizadas en píxeles.

#### Conservar espacios en blanco para JSON Valores de cadena - LINQ <sup>23.8</sup>

Se ha agregado una opción al Motor de informes LINQ para conservar los espacios en blanco para los valores de cadena JSON.

### LowCode <sup>23.6</sup>

Se han agregado nuevos métodos LowCode destinados a fusionar diferentes tipos de documentos en un solo documento de salida.

### Otros

* Se ha implementado el soporte para el ajuste de texto en encabezados/pies de página. <sup>23.5</sup>
* Se ha agregado la capacidad de eliminar firmas digitales de ODT documentos a través del método [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23.5</sup>
* Se ha añadido la propiedad pública [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) para obtener el texto base y rubí de la guía fonética [Run](https://reference.aspose.com/words/net/aspose.words/run/). <sup>23.5</sup>
* Se ha agregado la capacidad de recuperar un valor de firma digital de un documento firmado digitalmente como una matriz de bytes al introducir una nueva propiedad [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23.7</sup>
* Las clases [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) se han ampliado con nuevos miembros públicos– [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), y [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Se ha agregado soporte para los campos CITATION y BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Más información sobre [Aspose.Words para .NET 23.5 Notas de la versión](/words/net/aspose-words-for-net-23-5-release-notes/).

Más información sobre [Aspose.Words para .NET 23.6 Notas de la versión](/words/net/aspose-words-for-net-23-6-release-notes/).

Más información sobre [Aspose.Words para .NET 23.7 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

Más información sobre [Aspose.Words para .NET 23.8 Notas de la versión](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words por .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 mejora el rendimiento de la emulación de operaciones ráster, así como la calidad de exportación y representación de documentos.

Aspose.Words 23.2 introduce el guardado de documentos en el formato MOBI, mejora la representación de gráficos y realiza cambios notables en los detalles de apariencia del documento.

Aspose.Words 23.3 mejora la importación y el guardado de documentos con nuevas propiedades, y también mejora la calidad del trabajo con el color de fondo y de primer plano y el degradado radial.

Aspose.Words 23.4 mejora el cálculo de algunos parámetros y el posicionamiento de la tabla y el texto circundante.

### Mejoras de Rendimiento

#### Emulación de Operaciones Ráster <sup>23.1</sup>

El rendimiento y la calidad de la emulación de operaciones ráster con metarchivos se han mejorado significativamente.

### Formatos Admitidos

#### Exportar a MOBI <sup>23.2</sup>

A partir de la versión 23.2, es posible guardar un documento en formato MOBI (también llamado PRC, AZW – Amazon Formato de archivo de libro electrónico propio de Kindle). Ahora no solo puede cargar documentos MOBI, sino también exportar sus archivos al formato MOBI.

### Renderizado

#### Trabajar con Colores de Tema de Sombreado <sup>23.1</sup>

Se ha implementado la capacidad de trabajar con colores de sombreado de temas.

#### Soporte del Coeficiente R cuadrado en Gráficos DML <sup>23.1</sup>

Compatibilidad con el coeficiente R cuadrado en las etiquetas de la línea de tendencia del gráfico DML cuando se ha agregado el renderizado.

#### Mejoras en la Representación de Gráficos <sup>23.2</sup>

Desde 23.2, la representación del gráfico se ha mejorado significativamente.

#### Control de Color de Fondo y Primer Plano <sup>23.3</sup>

La clase [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) se ha ampliado con un conjunto de nuevas propiedades públicas relacionadas con los colores de fondo y primer plano: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) y [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) y [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Gradientes radiales con el Sombreador nativo `SkiaSharp` <sup>23.3</sup>

Se ha implementado la representación de gradientes radiales con el sombreador nativo `SkiaSharp` para .NET Standard.

#### Distancia entre la Tabla y el Texto Circundante <sup>23.4</sup>

Se ha agregado la capacidad de establecer la distancia entre la tabla y el texto circundante al introducir nuevas propiedades en la clase [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/).: [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), y [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Cargar y Guardar Documentos

#### Generar `TOC` para AZW3 Documentos <sup>23.1</sup>

Se ha agregado la capacidad de generar `TOC` (tabla de contenido) para AZW3 documentos mediante el uso de la propiedad [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Exportar Elementos de la Lista a Markdown <sup>23.1</sup>

Se ha proporcionado una forma de controlar la exportación de elementos de la lista al formato Markdown agregando la propiedad [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) a la clase [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/).

#### Notificaciones de Progreso de Guardado de Documentos <sup>23.3</sup>

Se ha implementado el guardado de notificaciones de progreso para los formatos MOBI y AZW3.

#### Ajuste del Espaciado entre Oraciones y Palabras <sup>23.3</sup>

Se ha agregado la capacidad de especificar si se ajusta el espaciado de oraciones y palabras automáticamente al importar documentos al introducir la propiedad [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Otros

* Se ha agregado la capacidad de especificar el ajuste del espaciado de caracteres de un documento a través de la implementación de la propiedad [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* La forma de indicar a Aspose.Words si incluir cuadros de texto, notas al pie y notas al final en las estadísticas de recuento de palabras se ha proporcionado agregando la propiedad [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* Se ha introducido una nueva opción para un estilo de documento, que permite especificar si el estilo se redefine automáticamente en función del valor apropiado, a través de la propiedad [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/). <sup>23.2</sup>
* Se ha agregado la capacidad de determinar si [Run](https://reference.aspose.com/words/net/aspose.words/run/) es una ejecución de guía fonética utilizando la propiedad [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* Se ha implementado una forma sencilla de trabajar con series y ejes de gráficos combinados introduciendo la clase [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) y agregando la propiedad [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Se han agregado nuevas propiedades públicas conectadas al posicionamiento relativo y tamaño de la forma a la clase [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* Se ha mejorado la precisión y el rendimiento del cálculo del brillo del color para la resolución automática del color del texto de acuerdo con las últimas versiones de Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Más información sobre [Aspose.Words para .NET 23.1 Notas de la versión](/words/net/aspose-words-for-net-23-1-release-notes/).

Más información sobre [Aspose.Words para .NET 23.2 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Más información sobre [Aspose.Words para .NET 23.3 Notas de la versión](/words/net/aspose-words-for-net-23-3-release-notes/).

Más información sobre [Aspose.Words para .NET 23.4 Notas de la versión](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Véase También

{{% alert color="primary" %}}

Esta página contiene las últimas noticias de lanzamiento de los últimos 2 años. Para obtener detalles sobre versiones anteriores, consulte [Notas de la versión'](https://releases.aspose.com/words/net/release-notes/) páginas en las secciones relevantes.

{{% /alert %}}
