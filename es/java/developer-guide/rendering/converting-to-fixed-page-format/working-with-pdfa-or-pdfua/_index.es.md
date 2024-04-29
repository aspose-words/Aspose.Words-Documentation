---
title: Trabajando con PDF/A o PDF/UA
second_title: Aspose.Words para Java
articleTitle: Trabajando con PDF/A o PDF/UA
linktitle: Trabajando con PDF/A o PDF/UA
description: "Convertir en PDF/A-1, PDF/A-2, PDF/A-4 y PDF/UA utilizando Java. Hay algunos problemas al convertir en documentos PDF/A, y Aspose.Words para Java los resuelve."
type: docs
weight: 28
url: /es/java/working-with-pdfa-or-pdfua/
---

PDF/A y formato PDF/UA impone varios requisitos relacionados con el contenido de documento que no se pueden cumplir durante la conversión automática de un documento en formato Word a PDF. Estos requisitos deben ser verificados y corregidos ya sea en un documento de Word antes de la conversión o en un documento PDF después de la conversión para producir un documento compatible con PDF/A y PDF/UA.

Los requisitos básicos son para la estructura o fuentes de un documento PDF/A y PDF/UA, que vamos a considerar en las secciones siguientes.

{{% alert color="primary" %}}

Tenga en cuenta que la salida PDF/UA-1 también será compatible con WCAG 2.0 y la Sección 508.

{{% /alert %}}

## Requisitos de estructura de documentos

Los requisitos actuales son para formatos PDF/A-1a, PDF/A-2a, PDF/A-4 y PDF/UA-1.

Hay algunos matones de cómo Aspose.Words funciona cuando se convierte en varios estándares de formato PDF. Deben tenerse en cuenta si desea obtener el resultado esperado.

{{% alert color="primary" %}}

Tenga en cuenta que no hay requisitos de estructura lógica para PDF/A-4. Por esta razón, no consideramos la versión PDF/A-4 en esta sección "Requisitos de estructura de documentos".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Es inadvisible para los escritores generar información estructural o semántica utilizando procesos automatizados sin una verificación adecuada.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Las subsecciones a continuación describen matices de cómo Aspose.Words funciona cuando se convierte en varios estándares y opciones de formato PDF para su solución.

### Tipo de estructura

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Un documento PDF es una secuencia de bloques como encabezados, párrafos, tablas y otros. Estos bloques forman una estructura de documentos – fuerte o débil.

Ambas estructuras fuertes y débiles son válidas para PDF/A. Microsoft Word los documentos tienen una estructura débil por diseño, y Aspose.Words crea PDF con la estructura débil respectivamente y también genera encabezados según los niveles de esbozo de los párrafos en el documento fuente.

Para un documento PDF/UA-1 con una estructura débil, se requiere además que los números de encabezado vayan en orden sin lagunas.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>La estructura de bloques puede seguir uno de los dos paradigmas principales:</p>
    </ol>
      <li>Fuertemente estructurado. Los elementos de agrupación anidan tantos niveles como sea necesario para reflejar la organización del material en artículos, secciones, subsecciones, etc. En cada nivel, los niños del elemento de agrupación deben consistir en una partida (H), uno o más párrafos (P) para contenido a ese nivel, y quizás uno o más elementos de agrupación adicionales para subsecciones anidadas.</li>
      <li>Muy estructurada. El documento es relativamente plano, teniendo tal vez sólo uno o dos niveles de elementos de agrupación, con todos los títulos, párrafos, y otros BLSEs como sus hijos inmediatos. En este caso, la organización del material no se refleja en la estructura lógica; sin embargo, puede expresarse mediante el uso de partidas con niveles específicos (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Para documentos PDF/UA-1, la especificación contiene una adición relacionada con los niveles de encabezado (consultar detalles):</summary>
    <p></p>
    <p>Si la semántica del documento requiere una secuencia descendente de cabeceras, dicha secuencia procederá en estricto orden numérico y no saltará un nivel de encabezado interveniente. H1 H2 H3 es permisible, mientras que H1 H3 no es.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Para garantizar la correcta producción, los usuarios deben asegurarse de que el contenido de los documentos de origen se organice adecuadamente y especificar correctamente los niveles de esbozo de los párrafos. De lo contrario, el usuario debe verificar y fijar la estructura del documento PDF de salida.

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: cómo establecer niveles de contorno en Microsoft Word o comprobar y fijar la estructura del documento PDF de salida (consultar detalles).</summary>
    <p></p>
    <p>In Microsoft Word Los estilos predeterminados "Heading X" podrían utilizarse para establecer el nivel de contorno:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Además, el nivel de contorno podría ser revisado o cambiado en la ventana "Paragraph":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>En Acrobat la estructura de documentos se puede revisar o cambiar en el panel "Tags":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Marcar el Contenido como un artefacto

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

De momento, Aspose.Words marca las cabeceras de página y los pies, separadores de notas, las celdas de cabecera repetidas y las imágenes decorativas como artefactos. Tenga en cuenta que esta lista puede ser actualizada en el futuro.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Los objetos gráficos en un documento se pueden dividir en dos clases:</p>
    </ol>
      <li>El contenido real de un documento comprende objetos que representan material introducido originalmente por el autor del documento.</li>
      <li>Los artefactos son objetos gráficos que no forman parte del contenido original del autor, sino que son generados por el escritor conformador en el curso de paginación, diseño u otros procesos estrictamente mecánicos.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.1</p>
</details>
{{% /alert %}}

Si un documento contiene cualquier otro contenido que debe ser marcado como un artefacto, o si alguno de los contenidos producidos es un contenido real, los clientes deben fijarlo en el PDF de salida.

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: cómo marcar las formas como decorativas en Microsoft Word o marcar la forma como un artefacto en el documento PDF de salida (consultar detalles).</summary>
    <p></p>
    <p>Por ejemplo, las formas pueden ser marcadas como decorativas en Microsoft Word, para que sean exportados a PDF como un artefacto:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Puede marcar la forma como un artefacto en la salida PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Además, puede cambiar texto en un encabezado del artefacto a contenido real en el PDF de salida:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Especificación del lenguaje natural

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

El lenguaje de texto se especifica en Microsoft Word documentos. Aspose.Words exporta el idioma especificado a un PDF de salida con *Lang* atributo adjunto a una secuencia de contenido marcado o una etiqueta Span – es controlado por el [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) propiedad. Generalmente no hay problemas de lenguaje cuando el texto es introducido por el usuario a través de Microsoft Word. Pero existe la posibilidad de que el lenguaje sea inexacto si el texto se genera automáticamente.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>El idioma natural predeterminado para todo texto en un archivo debe ser especificado por la entrada Lang en el diccionario de catálogo del documento.</p>
    <p>Todo el contenido textual dentro de un archivo que difiere del idioma predeterminado debe ser indicado por el uso de un `Lang` propiedad adjunta a una secuencia de contenido marcado, o por una entrada Lang en un diccionario de elemento estructura ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Adicionalmente para PDF/UA-1, la especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>El lenguaje natural será declarado... Los cambios en el lenguaje natural serán declarados.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: cómo asegurar que el idioma se especifique correctamente (consultar detalles).</summary>
    <p></p>
    <p>Los usuarios deben asegurarse de que el idioma se especifique correctamente en el documento de Word fuente:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>O el documento PDF de salida:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Figure Caption

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word documentos permiten a los usuarios añadir la capción de la figura.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Una capción que acompaña una figura será etiquetada con una etiqueta Caption.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Actualmente Aspose.Words no pueden exportar subtítulos con la etiqueta Caption, por lo que deben ser marcados en el PDF de salida.

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: cómo insertar la capción (expandir para ver detalles).</summary>
    <p></p>
    <p>In Microsoft Word, la capción se puede insertar a través del menú contextual:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>En Acrobat la capción se puede añadir o cambiar a través del `Object` diálogo de propiedades:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternate Descriptions

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word documentos permiten a los usuarios añadir texto alternativo a imágenes, formas y tablas. Aspose.Words exporta un texto alternativo al PDF de salida.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Todos los elementos de estructura cuyo contenido no tiene un análogo textual predeterminado natural, por ejemplo imágenes, fórmulas, etc., deben proporcionar una descripción de texto alternativa usando la entrada Alt en el diccionario de elementos de estructura...</p>
    <p>NOTA Las descripciones suplementarias proporcionan descripciones textuales que ayudan en la interpretación adecuada del contenido no textual opaco.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: cómo asegurar que todos los elementos tengan un texto alternativo (consultar detalles).</summary>
    <p></p>
    <p>Los usuarios deben asegurarse de que todos los elementos tengan un texto alternativo en el documento de Word fuente:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>O el documento PDF de salida:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternate Descriptions for Hyperlinks

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Además del punto anterior, Microsoft Word documentos también permiten a los usuarios añadir texto alternativo a hipervínculos. Aspose.Words exporta un texto alternativo al PDF de salida.

Desafortunadamente, no todas las aplicaciones le permiten configurar una descripción alternativa. Por ejemplo, Adobe Acrobat Actualmente no permite configurar tal descripción para hipervínculos. Pero... Microsoft Word, puede hacer esto de la siguiente manera:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

A veces hay un problema que no es posible establecer texto alt para hipervínculos autogenerados en la tabla de contenidos (TOC) a través de la Microsoft Word GUI. Aspose.Words podría actualizar tales campos y generar los enlaces por su cuenta.

Siga el ejemplo de código para actualizar `TOC` campos utilizando Aspose.Words Document Object Model (G)DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Table Headers

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Las tablas en documentos PDF/UA-1 deben tener encabezados – columna, fila, o ambos. PDF/A sólo requiere un marcado estándar de tabla, que no tiene restricciones adicionales. Note que Aspose.Words genera el marcado estándar de mesa automáticamente.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Las tablas deben incluir los encabezados... Las tablas pueden contener cabeceras de columna, cabeceras de fila o ambas.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: cómo establecer el encabezado de la tabla (consultar detalles).</summary>
    <p></p>
    <p>El encabezado de la mesa podría configurarse o bien la fuente Microsoft Word documento:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>O la salida PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Texto de sustitución

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>La especificación nos dice lo siguiente:</p>
    <p>Todos los elementos de estructura textual que estén representados de una manera no estándar, por ejemplo, caracteres personalizados o gráficos en línea, deben suministrar texto de sustitución utilizando el texto `ActualText` entrada en el diccionario de elementos de la estructura...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word El documento no permite a los usuarios establecer texto de sustitución. Así que esto debe ser verificado y fijado en el PDF de salida:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abbreviations and Acronyms Expansions

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Todos los casos de abreviaturas y siglas en contenido textual deben colocarse en una secuencia de contenido marcado con una etiqueta Span cuya propiedad E proporciona una expansión textual de la abreviación o acrónimo...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word El documento no permite a los usuarios establecer abreviaturas y expansiones de siglas. Así que esto debe ser verificado y fijado en el PDF de salida:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Título del documento

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>El documento en PDF/UA-1 debe tener un título |

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>La especificación nos dice lo siguiente:</p>
    <p>El flujo de metadatos en el diccionario del catálogo del documento contendrá una entrada dc:title, donde dc es el prefijo recomendado para el esquema ...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: cómo establecer el título de documento (consultar detalles).</summary>
    <p></p>
    <p>El título de documento podría configurarse o bien la fuente Microsoft Word documento:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>O la salida PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Recursos necesarios

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

También hay varios matices de trabajar con fuentes al convertir a formatos PDF/A-1, PDF/A-2, PDF/A-4 o PDF/UA-1 utilizando Aspose.Words. Deben tenerse en cuenta si desea evitar posibles problemas con el documento de salida.

En las secciones siguientes se describen tales matices y opciones para su solución.

### Requisitos legales de la fuente

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words no verifica las restricciones legales de las fuentes usadas – depende de los usuarios. En otras palabras, un usuario no debe proporcionar fuentes inapropiadas para la conversión de PDF utilizando Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Únicamente se utilizarán programas de fuentes que estén legalmente incrustables en un archivo para un renderizado universal e ilimitado.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exactamente las mismas citas en dos especificaciones)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

El uso del `.notdef` glyph está prohibido. El `.notdef` glyph aparecerá si un documento contiene caracteres que no están presentes en la fuente seleccionada y que tampoco pueden resolverse a través del mecanismo Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Un documento de conformidad no contendrá una referencia al .notdef glyph de cualquiera de los operadores que muestren texto, independientemente del modo de renderización de texto, en cualquier flujo de contenido.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exactamente las mismas citas en dos especificaciones)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: cómo eliminar o reemplazar estos caracteres (consultar detalles).</summary>
    <p></p>
    <p>Los usuarios deben eliminar o reemplazar estos caracteres en el documento de Word fuente:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>O el documento PDF de salida usando la herramienta "Editar PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Zona de uso privado (PUA)

|  Niveles de cumplimiento estándar en PDF Aspose.Words |  Presencia del requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Los caracteres del Área de Uso Privado (PUA) aparecen principalmente para Windows fuentes simbólicas como "Symbol", "Wingdings", "Webdings", y otras. Microsoft Word formatos no proporcionan una opción para almacenar texto real para caracteres.

{{% alert color="secondary" %}}
<details>
    <summary>La especificación nos dice lo siguiente (consultar detalles):</summary>
    <p></p>
    <p>Para el nivel Una conformidad sólo, para cualquier personaje ... que se mapee a un código o códigos en el Área de Uso Privado Unicode (PUA), una entrada ActualText ... estará presente para este personaje o una secuencia de caracteres de los cuales tal carácter es parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" es un Windows Fuente Unicode que podría utilizarse como alternativa a fuentes simbólicas.

{{% alert color="secondary" %}}
<details>
    <summary>En este bloque se pueden ver ejemplos: qué usuario debe hacer para resolver el problema con fuentes simbólicas (consultar detalles).</summary>
    <p></p>
    <p>Reemplazar la fuente simbólica con un Unicode uno en el documento fuente Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>O añadir una entrada ActualText a los caracteres problemáticos en el documento PDF de salida:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
