---
title: Trabajando con PDF/A o PDF/UA
second_title: Aspose.Words para C++
articleTitle: Trabajando con PDF/A o PDF/UA
linktitle: Trabajando con PDF/A o PDF/UA
description: "Convertir a PDF/A-1, PDF/A-2, PDF/A-4 y PDF/UA usando C++. Hay algunos problemas al convertir a PDF/A documentos, y Aspose.Words para C++ los resuelve."
type: docs
weight: 38
url: /es/cpp/working-with-pdfa-or-pdfua/
---

Los formatos PDF/A y PDF/UA imponen varios requisitos relacionados con el contenido del documento que no se pueden cumplir durante la conversión automática de un documento en formato Word a PDF. Estos requisitos deben verificarse y corregirse en un documento de Word antes de la conversión o en un documento PDF después de la conversión para producir un documento totalmente compatible con PDF/A y PDF/UA.

Los requisitos básicos son para la estructura o las fuentes de un documento PDF/A y PDF/UA, que consideraremos en las siguientes secciones.

{{% alert color="primary" %}}

Tenga en cuenta que la salida PDF/UA-1 también cumplirá con las WCAG 2.0 y la Sección 508.

{{% /alert %}}

## Requisitos de Estructura de Documentos

Los requisitos actuales son para PDF/A-1a, PDF/A-2a, PDF/A-4, y PDF/UA-1 formatos.

Hay algunos matices de cómo funciona Aspose.Words al convertir a varios estándares de formato PDF. Deben tenerse en cuenta si desea obtener el resultado esperado.

{{% alert color="primary" %}}

Tenga en cuenta que no hay requisitos de estructura lógica para PDF/A-4. Por esta razón, no consideramos la versión PDF/A-4 en esta sección "Requisitos de la estructura del documento".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>No es aconsejable que los escritores generen información estructural o semántica utilizando procesos automatizados sin la verificación adecuada.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Las subsecciones a continuación describen los matices de cómo funciona Aspose.Words al convertir a varios estándares de formato PDF y las opciones para su solución.

### Tipo de Estructura

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Un documento PDF es una secuencia de bloques como encabezados, párrafos, tablas y otros. Estos bloques forman una estructura de documento, fuerte o débil.

Tanto las estructuras fuertes como las débiles son válidas para PDF/A. Los documentos de Microsoft Word tienen una estructura débil por diseño, y Aspose.Words crea PDF con la estructura débil respectivamente y también genera encabezados de acuerdo con los niveles de esquema de los párrafos en el documento de origen.

Para un documento PDF/UA-1 con una estructura débil, también se requiere que los números de encabezado vayan en orden sin espacios.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>La estructura a nivel de bloque puede seguir uno de dos paradigmas principales:</p>
    </ol>
      <li>Fuertemente estructurado. Los elementos de agrupación se anidan en tantos niveles como sea necesario para reflejar la organización del material en artículos, secciones, subsecciones,etc. En cada nivel, los elementos secundarios del elemento de agrupación deben consistir en un encabezado (H), uno o más párrafos (P) para el contenido en ese nivel y quizás uno o más elementos de agrupación adicionales para subsecciones anidadas.</li>
      <li>Débilmente estructurado. El documento es relativamente plano, teniendo quizás solo uno o dos niveles de elementos de agrupación, con todos los encabezados, párrafos y otros BLSEs como sus hijos inmediatos. En este caso, la organización del material no se refleja en la estructura lógica; sin embargo, puede expresarse mediante el uso de encabezados con niveles específicos (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Para los documentos PDF/UA-1, la especificación contiene una adición relacionada con los niveles de encabezado (expanda para ver los detalles):</summary>
    <p></p>
    <p>Si la semántica del documento requiere una secuencia descendente de encabezados, dicha secuencia procederá en estricto orden numérico y no omitirá un nivel de encabezado intermedio. H1 H2 H3 está permitido, mientras que H1 H3 no.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Para garantizar un resultado correcto, los usuarios deben asegurarse de que el contenido del documento de origen esté organizado correctamente y que los niveles de esquema estén especificados correctamente para los párrafos. De lo contrario, el usuario debe verificar y corregir la estructura del documento PDF de salida.

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: cómo establecer niveles de esquema en Microsoft Word o verificar y corregir la estructura del documento de salida PDF (expanda para ver los detalles).</summary>
    <p></p>
    <p>En Microsoft Word, los estilos predeterminados de "Encabezado X" se pueden usar para establecer el nivel de esquema:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Además, el nivel del contorno se puede verificar o cambiar en la ventana "Párrafo".:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>En Acrobat, la estructura del documento se puede verificar o cambiar en el panel "Etiquetas".:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Marcar el Contenido como un Artefacto

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Por el momento, Aspose.Words marca encabezados y pies de página, separadores de notas, celdas de encabezado de tabla repetidas e imágenes decorativas como artefactos. Tenga en cuenta que esta lista puede actualizarse en el futuro.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Los objetos gráficos de un documento se pueden dividir en dos clases:</p>
    </ol>
      <li>El contenido real de un documento comprende objetos que representan material introducido originalmente por el autor del documento.</li>
      <li>Los artefactos son objetos gráficos que no forman parte del contenido original del autor, sino que son generados por el escritor conforme en el curso de la paginación, el diseño u otros procesos estrictamente mecánicos.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Si un documento contiene cualquier otro contenido que deba marcarse como artefacto, o si alguno de los artefactos es un contenido real, los clientes deben corregirlo en el resultado PDF.

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: cómo marcar formas como decorativas en Microsoft Word o marcar formas como artefactos en el documento de salida PDF (expanda para ver los detalles).</summary>
    <p></p>
    <p>Por ejemplo, las formas podrían marcarse como decorativas en Microsoft Word, por lo que se exportarán a PDF como un artefacto:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Puede marcar la forma como un artefacto en la salida PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Además, puede cambiar el texto en un encabezado del artefacto al contenido real en la salida PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Especificación del Lenguaje Natural

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

El idioma del texto se especifica en los documentos de Microsoft Word. Aspose.Words exporta el idioma especificado a una salida PDF con el atributo *Lang* adjunto a una secuencia de contenido marcado o una etiqueta Span; está controlado por la propiedad [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). En general, no hay problemas de idioma cuando el usuario ingresa texto a través de Microsoft Word. Pero existe la posibilidad de que el idioma sea inexacto si el texto se genera automáticamente.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>El lenguaje natural predeterminado para todo el texto de un archivo debe especificarse mediante la entrada Lang en el diccionario del catálogo del documento.</p>
    <p>Todo el contenido textual dentro de un archivo que difiera del idioma predeterminado debe indicarse mediante el uso de una propiedad `Lang` adjunta a una secuencia de contenido marcado, o mediante una entrada de idioma en un diccionario de elementos de estructura...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Además, para PDF/UA-1, la especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Se declarará el lenguaje natural Changes Se declararán los cambios en el lenguaje natural.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: cómo asegurarse de que el idioma se especifique correctamente (expanda para ver los detalles).</summary>
    <p></p>
    <p>Los usuarios deben asegurarse de que el idioma se especifique correctamente en el documento de Word de origen:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>O el documento de salida PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Leyenda de la Figura

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a ||
| PDF/A-2a ||
| PDF/UA-1 | {{< emoticons/tick >}} |

Los documentos de Microsoft Word permiten a los usuarios agregar subtítulos de figuras.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Un título que acompañe a una figura deberá estar etiquetado con una etiqueta de título.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Actualmente Aspose.Words no puede exportar subtítulos con la etiqueta Caption, por lo que deben marcarse en la salida PDF.

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: cómo insertar el título (expanda para ver los detalles).</summary>
    <p></p>
    <p>En Microsoft Word, el título se puede insertar a través del menú contextual:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>En Acrobat, el título se puede agregar o cambiar a través del cuadro de diálogo `Object` Properties:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Descripciones Alternativas

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Los documentos de Microsoft Word permiten a los usuarios agregar texto alternativo a imágenes, formas y tablas. Aspose.Words exporta dicho texto alternativo a la salida PDF.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Todos los elementos de estructura cuyo contenido no tiene un análogo textual predeterminado natural, por ejemplo, imágenes, fórmulas, etc., debe proporcionar una descripción de texto alternativa utilizando la entrada Alt en el diccionario de elementos de estructura...</p>
    <p>NOTA Las descripciones alternativas proporcionan descripciones textuales que ayudan a la interpretación adecuada del contenido no textual que de otro modo sería opaco.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: cómo asegurarse de que todos los elementos tengan un texto alternativo (expanda para ver los detalles).</summary>
    <p></p>
    <p>Los usuarios deben asegurarse de que todos los elementos tengan un texto alternativo en el documento de Word de origen:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>O el documento de salida PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descripciones alternativas para Hipervínculos

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a ||
| PDF/A-2a ||
| PDF/UA-1 | {{< emoticons/tick >}} |

Además del punto anterior, los documentos de Microsoft Word también permiten a los usuarios agregar texto alternativo a los hipervínculos. Aspose.Words exporta dicho texto alternativo a la salida PDF.

Desafortunadamente, no todas las aplicaciones le permiten configurar una descripción alternativa. Por ejemplo, Adobe Acrobat actualmente no permite configurar dicha descripción para hipervínculos. Pero en Microsoft Word, puede hacer esto de la siguiente manera:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

A veces existe el problema de que no es posible establecer texto alternativo para hipervínculos generados automáticamente en la tabla de contenido (TOC) a través de la GUI de Microsoft Word. Aspose.Words podría actualizar dichos campos y generar los enlaces por sí mismo.

Siga el ejemplo de código para actualizar los campos `TOC` utilizando el Modelo de Objetos de Documento (DOM) Aspose.Words:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### Encabezados de Tabla

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a ||
| PDF/A-2a ||
| PDF/UA-1 | {{< emoticons/tick >}} |

Las tablas de los documentos PDF/UA-1 deben tener encabezados: columna, fila o ambos. PDF/A solo requiere marcado de tabla estándar, que no tiene restricciones adicionales. Tenga en cuenta que Aspose.Words genera el marcado estándar de la tabla automáticamente.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Las tablas deben incluir encabezados: las tablas pueden contener encabezados de columna, encabezados de fila o ambos.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: cómo configurar el encabezado de la tabla (expanda para ver los detalles).</summary>
    <p></p>
    <p>El encabezado de la tabla se puede configurar en el documento fuente de Microsoft Word:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>O la salida PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Texto de Reemplazo

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 ||

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>La especificación nos dice lo siguiente:</p>
    <p>Todos los elementos de estructura textual que se representan de una manera no estándar, por ejemplo, caracteres personalizados o gráficos en línea, deben proporcionar texto de reemplazo utilizando la entrada `ActualText` en el diccionario de elementos de estructura...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

El documento de Microsoft Word no permite a los usuarios establecer texto de reemplazo. Entonces, esto debe verificarse y corregirse en la salida PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abreviaturas y Acrónimos Expansiones

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 ||

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Todas las instancias de abreviaturas y acrónimos en el contenido textual deben colocarse en una secuencia de contenido marcado con una etiqueta Span cuya propiedad E proporcione una expansión textual de la abreviatura o acrónimo...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

El documento de Microsoft Word no permite a los usuarios establecer abreviaturas y acrónimos expansiones. Entonces, esto debe verificarse y corregirse en la salida PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Título del Documento

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a ||
| PDF/A-2a ||
| PDF/A-4 ||
| PDF/UA-1 | {{< emoticons/tick >}}<br />El documento en PDF/UA-1 debe tener un título. |

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>La especificación nos dice lo siguiente:</p>
    <p>La secuencia de metadatos en el diccionario del catálogo del documento contendrá una entrada dc:title, donde dc es el prefijo recomendado para el esquema de metadatos Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: cómo configurar el título del documento (expanda para ver los detalles).</summary>
    <p></p>
    <p>El título del documento se puede configurar en el documento de Microsoft Word de origen:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>O la salida PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Requisitos de Fuente

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

También hay una serie de matices al trabajar con fuentes al convertir a PDF/A-1, PDF/A-2, PDF/A-4 o PDF/UA-1 formatos usando Aspose.Words. Deben tenerse en cuenta si se quieren evitar posibles problemas con el documento de salida.

Las secciones a continuación describen dichos matices y opciones para su solución.

### Requisitos Legales de la Fuente

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words no verifica las restricciones legales de las fuentes utilizadas – depende de los usuarios. En otras palabras, un usuario no debe proporcionar fuentes inapropiadas para la conversión PDF usando Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Solo se utilizarán programas de fuentes que se puedan incrustar legalmente en un archivo para una representación ilimitada y universal.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exactamente las mismas comillas en dos especificaciones)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a ||
| PDF/A-1b ||
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

El uso del glifo `.notdef` está prohibido. El glifo `.notdef` aparecerá si un documento contiene caracteres que no están presentes en la fuente seleccionada y que tampoco se pueden resolver mediante el mecanismo de respaldo de fuentes.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Un documento conforme no contendrá una referencia a la .glifo notdef de cualquiera de los operadores que muestran texto, independientemente del modo de representación de texto, en cualquier flujo de contenido.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exactamente las mismas citas en dos especificaciones)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: cómo eliminar o reemplazar estos caracteres (expanda para ver los detalles).</summary>
    <p></p>
    <p>Los usuarios deben eliminar o reemplazar estos caracteres en el documento de Word de origen:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>O el documento de salida PDF usando la herramienta" Editar PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Área de Uso Privado (PUA)

| PDF niveles de cumplimiento estándar dentro de Aspose.Words | Presencia de requisito |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a ||
| PDF/A-1b ||
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 ||

Los caracteres del Área de Uso Privado (PUA) aparecen principalmente para Windows fuentes simbólicas como "Símbolo", "Alas", "Webdings" y otras. Los formatos de Microsoft Word no ofrecen una opción para almacenar texto real para los caracteres.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (expanda para ver los detalles):</summary>
    <p></p>
    <p>Solo para conformidad de nivel A, para cualquier carácter ... que se asigna a un código o códigos en el Área de uso privado Unicode (PUA), una entrada ActualText... deberá estar presente para este carácter o una secuencia de caracteres de la que dicho carácter forme parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" es una fuente Unicode Windows que podría usarse como alternativa a las fuentes simbólicas.

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque, puede ver ejemplos: qué debe hacer el usuario para resolver el problema con las fuentes simbólicas (expanda para ver los detalles).</summary>
    <p></p>
    <p>Reemplace la fuente simbólica con una Unicode en el documento de Word de origen:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>O agregue una entrada ActualText a los caracteres problemáticos en el documento PDF de salida:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}