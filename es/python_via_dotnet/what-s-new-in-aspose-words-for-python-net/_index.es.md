---
title: Qué hay de nuevo
second_title: Aspose.Words para Python via .NET
articleTitle: Novedades de Aspose.Words para Python via .NET
linktitle: Novedades de Aspose.Words para Python via .NET
type: docs
description: "Aspose.Words para Python via .NET se expande y mejora diariamente. En esta página, puede conocer las enormes e interesantes características del producto."
weight: 10
url: /es/python-net/what-s-new-in-aspose-words-for-python-net/
---

Esta página describe las nuevas funciones Aspose.Words más interesantes introducidas en versiones recientes.

## Aspose.Words para Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 mejora la experiencia en la gestión de colores de trazo, mejora los objetos OLE e introduce un nuevo API público de fuentes de bibliografía.

Aspose.Words 24.2 amplió la API de gráficos, la gestión de estilos y las opciones LINQ. Esta versión de Aspose.Words también introdujo la capacidad de especificar SvgSaveOptions durante el renderizado, un control más flexible de la carga de archivos Markdown y el trabajo con texto de referencia para notas al pie y notas finales.

Aspose.Words 24.3 introduce un nuevo lector/escritor TIFF y emulación de operaciones raster binarias para metarchivos WMF. Aspose.Words 24.3 también continúa expandiendo la API de gráficos.

Aspose.Words 24.4 mejora el guardado de formatos, algunas opciones de renderizado, así como mejora el trabajo con firmas digitales.

### Formatos admitidos <sup>24.4</sup>

El formato de imagen moderno **WebP** ahora es compatible con Aspose.Words para .NET Framework 4.6.2 y versiones superiores. Ahora puede leer e insertar imágenes WebP en documentos, así como guardar imágenes en formato WebP.

Tenga en cuenta que WebP actualmente solo está disponible en .NET Standard y .NET Framework v4.6.2 y superior.

### Representación e impresión

#### Control de color de trazo <sup>24.1</sup>

La clase [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) se ha ampliado con un conjunto de nuevas propiedades públicas relacionadas con la gestión de colores de trazo: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) y [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) y [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### Extensión DrawingML Charts API <sup>24.2 / 24.3 / 24.4</sup>

La **DrawingML Charts API** continúa ampliándose.

#### Incluir fuentes declaradas en las reglas @font-face <sup>24.4</sup>

Se ha agregado la capacidad de incluir fuentes declaradas en las reglas @font-face en las definiciones de fuentes del documento resultante mediante la adición de una nueva propiedad llamada [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### Trabajar con formatos de brillo y reflexión <sup>24.4</sup>

Se ha implementado la capacidad de trabajar con formatos de brillo y reflexión para un objeto de dibujo.

### Cargar y guardar documentos

#### Especifique SvgSaveOptions durante el renderizado <sup>24.2</sup>

La capacidad de especificar [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) durante el renderizado se agregó utilizando los métodos [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) y [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions).

#### Conservar líneas vacías al cargar archivos Markdown <sup>24.2</sup>

Se ha agregado la capacidad de conservar líneas vacías al cargar archivos Markdown.

#### Un nuevo lector/escritor TIFF <sup>24.3</sup>

Se ha desarrollado un nuevo lector/escritor TIFF para Aspose.Words. Aspose.Words for .NET 24.3 agregó soporte para leer imágenes TIFF con tipos de compresión JPEG y Old JPEG, y también mejoró significativamente la calidad de las operaciones de lectura y escritura.

### Otro

* La capacidad de modificar el texto del control `TextBox` OLE se ha introducido agregando una nueva propiedad **Text** a la nueva clase **TextBoxControl**. <sup>24.1</sup>
* El API público de Fuentes de bibliografía se implementó mediante la adición de un nuevo espacio de nombres [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) con sus nuevas clases y enumeraciones, y mediante la adición de una nueva propiedad [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) a la clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). <sup>24.1</sup>
* Se agregaron a la clase [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) nuevas propiedades públicas [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) y [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) para una gestión de estilo mejorada. <sup>24.2</sup>
* La funcionalidad para recuperar el texto de la marca de referencia real para notas al pie y notas al final se ha mejorado con la propiedad [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) y el método [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>
* Se ha implementado la emulación de operaciones raster binarias para metarchivos WMF. <sup>24.3</sup>
* Se ha habilitado la posibilidad de definir opciones de firma para documentos dentro de SaveOptions mediante la adición de una nueva clase llamada DigitalSignatureDetails con nuevos miembros públicos, así como la adición de nuevas propiedades a las clases [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) y [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 24.2](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 24.3](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 24.4](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 amplía las opciones de renderizado, la emulación de renderizado de metarchivos y las opciones de guardado de markdown.

Aspose.Words 23.10 mejora la renderización, amplía las opciones para cargar y guardar documentos y permite a los usuarios fusionar documentos de nuevas formas.

Aspose.Words 23.11 mejora el trabajo con revisiones, formato XLSX y fuentes en la leyenda del gráfico con opciones adicionales.

Aspose.Words 23.12 introduce nuevas propiedades y enumeraciones para trabajar con documentos PDF y OOXML, así como compatibilidad con imágenes WebP.

### Representación e impresión

#### Personalización de títulos de ejes en DrawingML Charts <sup>23.9</sup>

La capacidad de personalizar los títulos de los ejes en los gráficos DrawingML se introdujo mediante la implementación de una nueva propiedad [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) y [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) de clase pública.

####  Determinar la posición vertical de las fuentes dentro de un párrafo <sup>23.9</sup>

Ahora es posible definir la posición vertical de las fuentes dentro de un párrafo utilizando la nueva propiedad pública [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) y la nueva enumeración [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/).

#### Control de color de primer plano <sup>23.10</sup>

Se agregó la capacidad de recuperar el color de primer plano sin modificadores a las clases [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) y [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) a través de la propiedad **BaseForeColor**.

#### Ampliando la funcionalidad de los gráficos <sup>23.10</sup>

La funcionalidad de las clases [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) y [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) se ha ampliado con nuevos métodos y propiedades.

#### Ajustar y ajustar automáticamente una imagen a una forma <sup>23.10</sup>

Se ha proporcionado una forma sencilla de ajustar y ajustar automáticamente una imagen dentro de una forma particular a través del nuevo método [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default).

#### Formato de fuente predeterminado para las entradas de leyenda del gráfico DrawingML <sup>23.11</sup>

La capacidad de especificar el formato de fuente predeterminado para las entradas de leyenda de los gráficos DrawingML se agregó a través de la propiedad [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Esta característica facilita una apariencia más optimizada y consistente para los elementos del gráfico, mejorando la estética general del documento.

#### Especificar el diseño de página al abrir PDF en Reader <sup>23.12</sup>

La capacidad de especificar el diseño de página que se utilizará al abrir un documento en un lector de PDF se agregó mediante la introducción de una nueva propiedad [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) a la clase [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) y la introducción de una nueva enumeración [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/).

### Cargar y guardar documentos

#### Especificación de un nombre de carpeta para construir URI de imágenes en Markdown <sup>23.9</sup>

La clase [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) se ha ampliado al incluir la propiedad [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), que permite especificar el nombre de la carpeta utilizada para construir URI de imágenes escritas en el documento Markdown.

#### Reducir el tamaño de salida del PDF <sup>23.10</sup>

Se han implementado varias optimizaciones de representación de PDF para reducir el tamaño de salida cuando se utilizan configuraciones [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/).

#### Reconocer hipervínculos al cargar documentos TXT <sup>23.10</sup>

La función para reconocer hipervínculos al cargar documentos TXT se implementó agregando una nueva propiedad [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/).

### Otro

- Se implementó la emulación de renderizado de metarchivos para determinar el tamaño de rasterización, específicamente para el ancho de lápiz WMF y el ancho de lápiz cosmético EMF. Para lograr esto, se reemplazó la propiedad **ScaleWmfFontsToMetafileSize** por la propiedad [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) y se agregó la propiedad [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/). <sup>23.9</sup>
- Se ha introducido un método simplificado para insertar un documento en otro documento en la posición actual del cursor utilizando el método [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23.10</sup>
- Se agregó la capacidad de acceder y modificar propiedades de estilo mediante la introducción de la nueva propiedad [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/). <sup>23.10</sup>
- Se ha agregado un parámetro de tipo genérico a los métodos de la clase [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). <sup>23.10</sup>
- La capacidad de escribir todas las secciones de un documento en la misma hoja de cálculo XLSX se ha proporcionado mediante el nuevo tipo de enumeración [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) y la nueva propiedad [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/). <sup>23.11</sup>
* Se ha implementado una forma de controlar cómo se utilizarán las extensiones de formato ZIP64 para documentos OOXML a través de la nueva propiedad Zip64Mode de la clase `OoxmlSaveOptions` y la nueva enumeración Zip64Mode. <sup>23.12</sup>
* Se ha introducido soporte para imágenes WebP. Tenga en cuenta que esta función solo está disponible para las versiones .NetStandart y .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.9](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.10](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.11](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para .NET 23.12](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 mejora la capacidad de trabajar con datos de series de gráficos y la capacidad de trabajar con documentos ODT, además de mejorar los encabezados/pies de página y su ajuste de texto.

Aspose.Words 23.6 amplía las opciones de renderizado, agrega un nuevo formato de exportación, mejora los informes LINQ y las herramientas LowCode.

Aspose.Words 23.7 mejora las capacidades de generación de informes, agrega un nuevo formato de exportación e introduce cambios para trabajar con tablas y firmas digitales.

Aspose.Words 23.8 amplía las capacidades de diferentes formatos, mejora la representación y agrega nuevas opciones para trabajar con campos.

### Formatos admitidos

* A partir de la versión 23.6, es posible guardar un documento en formato XLSX. Ahora puedes convertir tus documentos al formato Excel. <sup>23.6</sup>

* A partir de la versión 23.7, es posible guardar una página o forma de un documento en formato EPS. <sup>23.7</sup>

### Nuevas características de formato

- Se ha introducido la funcionalidad para generar automáticamente tablas de contenido (TOC) para documentos MOBI. <sup>23.8</sup>
- El constructor [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) se ha ampliado con [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Se ha implementado la configuración de texto vertical para metarchivos EMF. <sup>23.8</sup>

### Representación

#### Obtener y modificar datos de series de gráficos <sup>23.5</sup>

La función para obtener y modificar datos de series de gráficos se proporcionó agregando:

- nuevas clases: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- nuevos tipos de enumeración: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Soporte para tipografía avanzada <sup>23.6</sup>

Se ha agregado soporte para tipografía avanzada en renderizado WMF, EMF y EMF+.

#### Contenido coloreado en la página <sup>23.6</sup>

Se ha añadido la propiedad pública [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), que indica si la página está coloreada o no.

#### Formato de etiquetas de datos de gráficos <sup>23.6</sup>

Se ha implementado la capacidad de configurar el formato de relleno, trazo y llamada para las etiquetas de datos del gráfico.

### Mail Merge e informes

#### Inserción dinámica de HTML para LINQ Reporting Engine <sup>23.6</sup>

Se ha agregado una nueva forma de inserción HTML dinámica para LINQ Reporting Engine.

#### Soporte de etiquetas Mustache <sup>23.7</sup>

Las etiquetas Mustache ahora son compatibles con los métodos [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) y [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Especificación del tamaño de las imágenes renderizadas <sup>23.8</sup>

Se ha introducido una nueva propiedad pública [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) para especificar el tamaño de las imágenes renderizadas en píxeles.

#### Preservar espacios en blanco para valores de cadena JSON - LINQ <sup>23.8</sup>

Se ha agregado una opción a LINQ Reporting Engine para conservar espacios en blanco para valores de cadena JSON.

### LowCode <sup>23.6</sup>

Se han agregado nuevos métodos LowCode destinados a fusionar diferentes tipos de documentos en un solo documento de salida.

### Otro

- Se ha implementado soporte para ajuste de texto en encabezados/pies de página. <sup>23,5</sup>
- Se agregó la capacidad de eliminar firmas digitales de documentos ODT mediante el método [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23,5</sup>
- Se ha añadido la propiedad pública [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) para obtener el texto base y ruby de la guía fonética [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). <sup>23,5</sup>
- Se agregó la capacidad de recuperar un valor de firma digital de un documento firmado digitalmente como una matriz de bytes mediante la introducción de una nueva propiedad [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23.7</sup>
- Las clases [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) se han ampliado con nuevos miembros públicos: [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) y [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.5](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.6](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.7](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.8](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 23.1, 23.2, 23.3, 23.4

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

Se agregó compatibilidad con el coeficiente R cuadrado en las etiquetas de línea de tendencia del gráfico DML cuando se representa.

#### Mejoras en la representación de gráficos <sup>23.2</sup>

Desde la versión 23.2, la representación de gráficos se ha mejorado significativamente.

#### Control de color de fondo y primer plano <sup>23.3</sup>

La clase [Fill](https://reference.aspose.com/words/es/net/aspose.words.drawing/fill/) se ha ampliado con un conjunto de nuevas propiedades públicas relacionadas con los colores de fondo y de primer plano: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) y [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) y [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Degradados radiales con `SkiaSharp` Native Shader <sup>23.3</sup>

Se ha implementado la renderización de gradientes radiales con el sombreador nativo `SkiaSharp` para .NET Standard.

#### Distancia entre la tabla y el texto circundante <sup>23,4</sup>

Se agregó la capacidad de establecer la distancia entre la tabla y el texto circundante mediante la introducción de nuevas propiedades en la clase [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) y [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Cargar y guardar documentos

#### Generar `TOC` para documentos AZW3 <sup>23.1</sup>

Se agregó la capacidad de generar `TOC` (tabla de contenido) para documentos AZW3 mediante el uso de la propiedad [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/).

#### Exportación de elementos de lista a Markdown <sup>23.1</sup>

Se ha proporcionado una forma de controlar la exportación de elementos de la lista al formato Markdown agregando la propiedad [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) a la clase [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Notificaciones de progreso de guardado de documentos <sup>23.3</sup>

Se ha implementado el guardado de notificaciones de progreso para los formatos MOBI y AZW3.

#### Ajuste de espaciado de oraciones y palabras <sup>23.3</sup>

Se agregó la capacidad de especificar si se ajusta automáticamente el espaciado entre oraciones y palabras al importar el documento mediante la introducción de la propiedad [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Otro

- La capacidad de especificar el ajuste del espacio entre caracteres de un documento se agregó a través de la implementación de la propiedad [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2.</sup>
- La forma de indicarle a Aspose.Words si debe incluir cuadros de texto, notas al pie y notas finales en las estadísticas de recuento de palabras se proporcionó agregando la propiedad [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- Se ha introducido una nueva opción para un estilo de documento, que permite especificar si el estilo se redefine automáticamente en función del valor apropiado, a través de la propiedad [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup> .
- Se agregó la capacidad de determinar si [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) es una guía fonética usando la propiedad [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- Se implementó una forma sencilla de trabajar con series y ejes de gráficos combinados introduciendo la clase [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) y agregando la propiedad [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- Se han agregado nuevas propiedades públicas relacionadas con el posicionamiento relativo y el tamaño de la forma a la clase [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup>
- Se ha mejorado la precisión y el rendimiento del cálculo del brillo del color para la resolución automática del color del texto de acuerdo con las últimas versiones de Microsoft Word <sup>23.4.</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.1](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.2](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.3](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 23.4](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 amplía las opciones para cargar y guardar documentos y mejora la interacción con algunas otras opciones.

Aspose.Words 22.10 mejora las opciones de búsqueda y reemplazo, mejora los objetos OLE y amplía la funcionalidad de listas.

Aspose.Words 22.11 amplía su funcionalidad con nuevas opciones para trabajar más cómodamente con objetos ya familiares: OLE y etiquetas de documentos estructurados.

Aspose.Words 22.12 mejora las capacidades de renderizado e introduce opciones para trabajar con márgenes al cargar/guardar un documento.

### Mejoras de rendimiento <sup>22.12</sup>

Se ha introducido una optimización que reduce significativamente la profundidad del anidamiento del estado de los gráficos al renderizar en PDF para mantener el cumplimiento de las especificaciones.

### Representación e impresión

#### Nuevas propiedades de renderizado de bordes <sup>22.12</sup>

Se han introducido nuevas propiedades públicas [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) y [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/).

#### Fórmula de línea de tendencia lineal para renderizado DrawingML <sup>22.12</sup>

Se ha implementado la representación de fórmulas de líneas de tendencia lineales para gráficos DrawingML.

#### Configuración de reserva de fuentes para fuentes Google Noto <sup>22.12</sup>

Se han actualizado las configuraciones de reserva de fuentes predefinidas para las fuentes Google Noto.

### Cargar y guardar documentos

#### Caché de formas de encabezado o pie de página para reducir el tamaño del PDF <sup>22.9</sup>

La capacidad de almacenar en caché las formas del encabezado/pie de página para reducir el tamaño del archivo PDF de salida se implementó agregando una nueva propiedad **CacheHeaderFooterShapes**.

#### Detección automática de numeración al cargar un documento <sup>22.9</sup>

La capacidad de especificar la propiedad [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) al cargar texto se ha implementado mediante una extensión de la clase [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/).

#### Especificación de un tipo de margen particular <sup>22.12</sup>

Se ha implementado la capacidad de especificar un tipo **Margin** particular para la sección determinada.

### Buscar y comparar <sup>22.10</sup>

La capacidad de ignorar [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) al buscar y reemplazar opciones se implementó agregando una nueva propiedad [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) a la clase [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Otro

- Se ha agregado una nueva característica para obtener FieldEQ como OfficeMath. <sup>22.9</sup>
- Se permitió la creación de etiquetas de documentos estructurados de tipo Grupo a nivel de Fila. <sup>22.9</sup>
- Los controles y objetos OLE ahora se tratan como imágenes de metarchivo al convertir un documento a HTML. <sup>22.10</sup>
- Se agregó una nueva característica para verificar que una lista particular se creó a partir de la misma plantilla que la lista comparada mediante la introducción de un nuevo método **HasSameTemplate** en la clase [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/). <sup>22.10</sup>
- Se ha agregado la capacidad de crear nuevas etiquetas de documentos estructurados del tipo [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/). <sup>22.11</sup>
- Se ha introducido una nueva propiedad **EmbedAttachments** que permite a los usuarios incrustar archivos adjuntos OLE de un documento fuente en el documento PDF de salida. <sup>22.11</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.9](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.10](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.11](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.12](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 introduce soporte para nuevos formatos de carga y un nuevo tamaño de página de impresión, además de mejorar algunas opciones de renderizado.

Aspose.Words 22.6 amplía las posibilidades de convertir PDF a otros formatos, además de mejorar el trabajo con DrawingML y el efecto de relleno de texto sólido.

Aspose.Words 22.7 mejora las posibilidades de trabajar con funciones de renderizado y también agrega nuevas funciones para trabajar con importación y exportación de HTML a PDF.

Aspose.Words 22.8 introduce un nuevo formato de exportación y mejora varios algoritmos de renderizado.

El API se ha mejorado para un desarrollo más flexible y conveniente.

### Formatos admitidos

* Se ha introducido soporte para cargar documentos EPUB y XML agregando nuevos valores a la enumeración **LoadFormat**. A partir de la versión 22.5, es posible cargar documentos EPUB y XML en el modelo de documento Aspose.Words y convertirlos a cualquier [Formatos de documentos admitidos](/words/es/python-net/supported-document-formats/). <sup>22.5</sup>
* A partir de la versión 22.8, es posible guardar un documento en formato AZW3, el formato de archivo de libro electrónico propietario de Amazon Kindle (KF8 es otro nombre para el formato). Ahora no sólo puede cargar documentos AZW3, sino también exportar sus archivos al formato AZW3, que es esencialmente un EPUB compilado. <sup>22.8</sup>

### Representación e impresión

#### Nuevo tamaño de impresión <sup>22,5</sup>

Se agregó compatibilidad con el tamaño de página de impresión "Sobre No. 10" mediante la introducción de un nuevo valor en la enumeración [PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/).

#### Representación de fórmulas MathML <sup>22.5</sup>

Se ha mejorado la representación de un cuadro de borde alrededor de las fórmulas MathML y la detección de fuentes al representar caracteres para dichas fórmulas.

#### Mejoras en el gráfico DML <sup>22.6</sup>

Los gráficos API públicos de DrawingML se han ampliado para admitir rellenos de degradado, textura y patrón.

#### Análisis de contornos de glifos para OpenType <sup>22.7</sup>

Se ha implementado el análisis de contornos de glifos propios de Aspose.Words para fuentes OpenType (CFF).

Anteriormente, el análisis de glifos para fuentes OpenType (CFF) se realizaba mediante GDI+. Ahora funciona en los casos en los que GDI+ no está disponible: plataformas Java, .NET Standard, Linux, macOS, etc. El análisis de contornos de glifos es necesario en casos específicos como WordArt, efectos de texto, algunas funciones de Office Math y otras.

#### Establecer formato de sombra de forma <sup>22.7</sup>

La capacidad de establecer el formato de sombra del objeto de forma se proporciona agregando una nueva propiedad [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/).

#### Compatibilidad con el espaciado entre celdas en las tablas <sup>22.8</sup>

El motor de diseño ahora ha mejorado significativamente: se ha implementado un mecanismo de espaciado de celdas muy complejo en las tablas.

#### Sustitución de fuentes para símbolos <sup>22.8</sup>

Se ha mejorado la sustitución de fuentes para símbolos.

#### Algoritmo de rotación de etiquetas del eje del gráfico <sup>22.8</sup>

Se ha mejorado el algoritmo de rotación de las etiquetas de los ejes del gráfico.

### Cargar y guardar documentos

#### Cargue y convierta PDF a formato de página fija sin el modelo de diseño <sup>22.6</sup>

Se ha implementado la capacidad de cargar y convertir documentos PDF a formatos de página fija con alta fidelidad y rendimiento.

#### Nuevo modo de importación HTML <sup>22.7</sup>

Se introdujo un nuevo modo de importación HTML para elementos a nivel de bloque agregando un nuevo valor a la enumeración [HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/).

#### Convertir a PDF/UA-1 compatible con WCAG 2.0 <sup>22.7</sup>

Se ha agregado soporte para convertir un documento al formato PDF/UA-1, compatible con WCAG 2.0.

Entonces, si el cliente tiene un documento de Word accesible y lo convierte a PDF/UA-1 a través de Aspose.Words mencionando los detalles de la conversión, entonces el resultado será compatible con WCAG 2.0.

WCAG o Pautas de accesibilidad al contenido web es un conjunto de pautas desarrolladas por el W3C en colaboración con personas y organizaciones de todo el mundo. Ahora con Aspose.Words puede convertir su documento al formato de salida PDF/UA-1, que es adecuado para crear documentos PDF compatibles con WCAG 2.0.

Vale la pena señalar que WCAG 2.0 tiene dos requisitos adicionales que no están especificados en la especificación PDF/UA-1:

- requisitos de contraste
- requisitos para etiquetar contenido multimedia

Pero ambos requisitos no son relevantes para nuestro caso de conversión de Word a PDF.

### Otro

Se ha implementado la excepción de heredar el efecto de relleno de texto sólido que imita el comportamiento de MS Word. <sup>22.6</sup>

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.5](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.6](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.7](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.8](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 22.3, 22.4

Aspose.Words 22.3 amplía las posibilidades de trabajar con formatos PDF y TXT y mejora el trabajo de algunos algoritmos y motores existentes.

Aspose.Words 22.4 mejora las capacidades de PDF: ahora puede guardar un archivo en formato PDF/A-4 y obtener otras mejoras en la salida de PDF. Al mismo tiempo, Aspose.Words 22.4 proporciona capacidades adicionales para trabajar con gráficos DML, leer los metadatos de Photoshop e importar elementos HTML a nivel de bloque.

El API se ha mejorado para un desarrollo más flexible y conveniente.

### Funciones admitidas

A partir de Aspose.Words 22.4, se agregó compatibilidad con Python 3.10.

### Mejoras de rendimiento

Se ha implementado la carga de un caché de búsqueda de fuentes previamente guardado para acelerar el proceso de inicialización del caché de fuentes al renderizar. Ahora sus soluciones funcionarán aún más rápido.

### Formatos admitidos

Se ha agregado la carga de un documento en formato AZW3 (KF8 es otro nombre para el formato). Ahora puede cargar un documento AZW3 y convertirlo a cualquier otro formato compatible.

### Representación

#### Representación de fórmulas MathML

Se ha mejorado la representación de operadores en fórmulas MathML.

#### Mejoras en los gráficos DML

Se han realizado las siguientes mejoras en los gráficos DML:

* El algoritmo de escala del eje del gráfico DML se ha mejorado para que sea el mismo que en MS Word.

* Se ha proporcionado la capacidad de manipular las entradas de la leyenda del gráfico DrawingML para que nuestro gráfico API sea cada vez más completo.
* Se ha implementado la capacidad de especificar el nombre de un archivo xls/xlsx al que está vinculado el gráfico DrawingML.

#### Renderizado a PDF compatible con PDF/A-4

Se agregó la representación en PDF compatible con PDF/A-4 agregando nuevos valores a la enumeración [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/): [PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4). Esta opción supone niveles de conformidad revisados: la conformidad normal con PDF/A-4 es equivalente al nivel de conformidad U de versiones anteriores y se elimina el nivel de conformidad A.

#### Lectura de resolución de metadatos de Photoshop en JPEG

Se implementó la lectura de la resolución de metadatos de Photoshop en imágenes JPEG para solucionar un problema interesante con el escalado incorrecto de las imágenes al renderizarlas.

#### Permitir que el texto en latín se ajuste en medio de una palabra

Se ha implementado la compatibilidad con la función "Permitir que el texto latino se ajuste en medio de una palabra" para mejorar aún más nuestra compatibilidad con el idioma latino al renderizar.

### Cargar y guardar documentos

#### Controlar el comportamiento del estilo al cargar un documento

Se ha introducido una nueva opción [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/) para controlar el comportamiento de estilos en conflicto al importar documentos.

#### Convertir formas a SVG al exportar

La capacidad de convertir formas a imágenes SVG al exportar a HTML, MHTML o EPUB se proporciona agregando la propiedad [export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/).

#### Guardar en PDF 2.0 y mejoras en la salida de PDF

Se ha introducido la capacidad de guardar un documento como PDF 2.0 agregando un nuevo valor a la enumeración [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/), así como varias otras mejoras solicitadas en la salida de PDF.

#### Nuevo modo de importación HTML

Se ha implementado un nuevo modo de importación para elementos HTML a nivel de bloque para imitar el comportamiento de Microsoft Word.

### Otro

* Se ha introducido la capacidad de obtener OOXML de un control de contenido y guardarlo en una cadena.
* Se ha agregado el reconocimiento de notas a pie de página no estándar en documentos PDF al importar.
* Se ha agregado la capacidad de obtener datos de campo personalizados asociados con el campo.
* Se ha mejorado el algoritmo de comparación de tablas que se basa en un análisis profundo del mecanismo de comparación de Microsoft Word.
* Se ha proporcionado la sintaxis de comentarios en el motor de informes LINQ.

{{% alert color="primary" %}}

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.3](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/).

Obtenga más información sobre [Notas de la versión Aspose.Words para Python via .NET 22.4](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/).

{{% /alert %}}

## Ver también

{{% alert color="primary" %}}

Esta página contiene las últimas noticias sobre lanzamientos de los últimos 2 años. Para obtener detalles sobre versiones anteriores, consulte las páginas [Notas de lanzamiento'](/words/python-net/release-notes/) en las secciones correspondientes.

{{% /alert %}}