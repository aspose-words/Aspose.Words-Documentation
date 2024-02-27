---
title: Trabajar con PDF/A o PDF/UA
second_title: Aspose.Words para .NET
articleTitle: Trabajar con PDF/A o PDF/UA
linktitle: Trabajar con PDF/A o PDF/UA
description: "Convierta a PDF/A-1, PDF/A-2, PDF/A-4 y PDF/UA usando C#. Hay algunos problemas al convertir a documentos PDF/A y Aspose.Words para .NET los resuelve."
type: docs
weight: 28
url: /es/net/working-with-pdfa-or-pdfua/
---

Los formatos PDF/A y PDF/UA imponen varios requisitos relacionados con el contenido del documento que no se pueden cumplir durante la conversión automática de un documento en formato Word a PDF. Estos requisitos deben verificarse y corregirse en un documento de Word antes de la conversión o en un documento PDF después de la conversión para producir un documento totalmente compatible con PDF/A y PDF/UA.

Los requisitos básicos son para la estructura o fuentes de un documento PDF/A y PDF/UA, que consideraremos en las siguientes secciones.

{{% alert color="primary" %}}

Tenga en cuenta que la salida PDF/UA-1 también será compatible con WCAG 2.0 y la Sección 508.

{{% /alert %}}

## Requisitos de estructura del documento

Los requisitos actuales son para los formatos PDF/A-1a, PDF/A-2a, PDF/A-4 y PDF/UA-1.

Hay algunos matices en el funcionamiento de Aspose.Words al convertir a varios estándares de formato PDF. Deben tenerse en cuenta si se quiere obtener el resultado esperado.

{{% alert color="primary" %}}

Tenga en cuenta que no existen requisitos de estructura lógica para PDF/A-4. Por este motivo, no consideramos la versión PDF/A-4 en esta sección "Requisitos de estructura del documento".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>No es aconsejable que los escritores generen información estructural o semántica mediante procesos automatizados sin una verificación adecuada.</p>
   <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Las subsecciones siguientes describen los matices de cómo funciona Aspose.Words al convertir a varios estándares de formato PDF y las opciones para su solución.

### Tipo de estructura

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |  {{< emoticons/tick >}} |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

Un documento PDF es una secuencia de bloques como encabezados, párrafos, tablas y otros. Estos bloques forman una estructura de documento, fuerte o débil.

Tanto las estructuras fuertes como las débiles son válidas para PDF/A. Los documentos Microsoft Word tienen una estructura débil por diseño, y Aspose.Words crea PDF con la estructura débil respectivamente y también genera encabezados de acuerdo con los niveles de esquema de los párrafos en el documento fuente.

Para un documento PDF/UA-1 con una estructura débil, se requiere además que los números de encabezado estén en orden y sin espacios.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>La estructura a nivel de bloque puede seguir uno de dos paradigmas principales:</p>
   </ol>
     <li>Fuertemente estructurado. Los elementos de agrupación se anidan en tantos niveles como sea necesario para reflejar la organización del material en artículos, secciones, subsecciones, etc. En cada nivel, los elementos secundarios del elemento de agrupación deben consistir en un título (H), uno o más párrafos (P) para el contenido de ese nivel y quizás uno o más elementos de agrupación adicionales para las subsecciones anidadas.</li>
     <li>Débilmente estructurado. El documento es relativamente plano y tiene quizás sólo uno o dos niveles de elementos de agrupación, con todos los títulos, párrafos y otros BLSE como sus hijos inmediatos. En este caso, la organización del material no se refleja en la estructura lógica; sin embargo, puede expresarse mediante el uso de títulos con niveles específicos (H1-H6).</li>
   </ol>
   <p></p>
   <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>Para documentos PDF/UA-1, la especificación contiene una adición relacionada con los niveles de encabezado (amplíe para ver detalles):</summary>
   <p></p>
   <p>Si la semántica del documento requiere una secuencia descendente de encabezados, dicha secuencia procederá en estricto orden numérico y no saltará ningún nivel de encabezado intermedio. H1 H2 H3 está permitido, mientras que H1 H3 no.</p>
   <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Para garantizar una salida correcta, los usuarios deben asegurarse de que el contenido del documento fuente esté organizado adecuadamente y que los niveles de esquema estén especificados correctamente para los párrafos. De lo contrario, el usuario debe verificar y corregir la estructura del documento PDF de salida.

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque, puede ver ejemplos: cómo establecer niveles de esquema en Microsoft Word o verificar y corregir la estructura del documento PDF de salida (expandir para ver detalles).</summary>
   <p></p>
   <p>En Microsoft Word, los estilos predeterminados de "Encabezado X" se pueden usar para establecer el nivel del esquema:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MW Título 1-2" style="width:800px"/>
   <p>Además, el nivel del esquema se puede comprobar o cambiar en la ventana "Párrafo":</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWNivel de contorno" style="width:800px"/>
   <p>En Acrobat, la estructura del documento se puede verificar o cambiar en el panel "Etiquetas":</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="Panel de etiquetas de Acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Marcar el contenido como un artefacto

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |  {{< emoticons/tick >}} |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

Por el momento, Aspose.Words marca los encabezados y pies de página, los separadores de notas, las celdas repetidas de los encabezados de las tablas y las imágenes decorativas como artefactos. Tenga en cuenta que esta lista puede actualizarse en el futuro.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
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

Si un documento contiene cualquier otro contenido que deba marcarse como un artefacto, o si alguno de los contenidos artefactos es un contenido real, los clientes deben corregirlo en el PDF de salida.

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque, puede ver ejemplos: cómo marcar formas como decorativas en Microsoft Word o marcar una forma como un artefacto en el documento PDF de salida (expandir para ver detalles).</summary>
   <p></p>
   <p>Por ejemplo, las formas podrían marcarse como decorativas en Microsoft Word, por lo que se exportarán a PDF como un artefacto:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDorativadecorativa" style="width:800px"/>
   <p>Puede marcar la forma como un artefacto en el PDF de salida:</p>
  <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfEliminarEtiqueta Vacía" style="width:800px"/>
   <p>Además, puede cambiar el texto de un encabezado del artefacto al contenido real en el PDF de salida:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Especificación del lenguaje natural

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |  {{< emoticons/tick >}} |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

El idioma del texto se especifica en los documentos Microsoft Word. Aspose.Words exporta el idioma especificado a un PDF de salida con el atributo *Lang* adjunto a una secuencia de contenido marcado o una etiqueta Span; está controlado por la propiedad [ExportLanguageToSpanTag](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/). Generalmente no hay problemas de idioma cuando el usuario ingresa texto a través de Microsoft Word. Pero existe la posibilidad de que el lenguaje sea inexacto si el texto se genera automáticamente.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>El idioma natural predeterminado para todo el texto de un archivo debe especificarse mediante la entrada Lang en el diccionario del catálogo del documento.</p>
   <p>Todo el contenido textual dentro de un archivo que difiere del idioma predeterminado debe indicarse mediante el uso de una propiedad `Lang` adjunta a una secuencia de contenido marcado, o mediante una entrada Lang en un diccionario de elementos de estructura...</p>
   <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>Además para PDF/UA-1, la especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>Se declarará el lenguaje natural… Se declararán los cambios en el lenguaje natural.</p>
   <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque puedes ver ejemplos: cómo asegurar que el idioma esté especificado correctamente (ampliar para ver detalles).</summary>
   <p></p>
   <p>Los usuarios deben asegurarse de que el idioma esté especificado correctamente en el documento de Word de origen:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLenguaje" style="width:800px"/>
   <p>O el documento PDF de salida:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeIdioma" style="width:800px"/>
</details>
{{% /alert %}}

### Pie de figura

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

Los documentos Microsoft Word permiten a los usuarios agregar títulos de figuras.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>Un título que acompañe a una figura deberá etiquetarse con una etiqueta de título.</p>
   <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Actualmente, Aspose.Words no puede exportar subtítulos con la etiqueta Caption, por lo que deben marcarse en el PDF de salida.

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque puedes ver ejemplos: cómo insertar el título (ampliar para ver detalles).</summary>
   <p></p>
   <p>En Microsoft Word, el título se puede insertar a través del menú contextual:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="leyenda-de-figura-mw" style="width:800px"/>
   <p>En Acrobat, el título se puede agregar o cambiar a través del cuadro de diálogo Propiedades `Object`:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figura-pie-acróbata" style="width:800px"/>
</details>
{{% /alert %}}

### Descripciones alternativas

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |  {{< emoticons/tick >}} |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

Los documentos Microsoft Word permiten a los usuarios agregar texto alternativo a imágenes, formas y tablas. Aspose.Words exporta dicho texto alternativo al PDF de salida.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>Todos los elementos de estructura cuyo contenido no tenga un análogo textual predeterminado natural, por ejemplo, imágenes, fórmulas, etc., deben proporcionar una descripción de texto alternativa utilizando la entrada Alt en el diccionario de elementos de estructura...</p>
   <p>NOTA Las descripciones alternativas proporcionan descripciones textuales que ayudan en la interpretación adecuada de contenido no textual que de otro modo sería opaco.</p>
   <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque puedes ver ejemplos: cómo asegurar que todos los elementos tengan un texto alternativo (ampliar para ver detalles).</summary>
   <p></p>
   <p>Los usuarios deben asegurarse de que todos los elementos tengan un texto alternativo en el documento original de Word:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
   <p></p>
   <img src="/words/net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWFormaAltText" style="width:800px"/>
   <p>O el documento PDF de salida:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
   <p></p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatFormaAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descripciones alternativas para hipervínculos

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

Además del punto anterior, los documentos Microsoft Word también permiten a los usuarios agregar texto alternativo a los hipervínculos. Aspose.Words exporta dicho texto alternativo al PDF de salida.

Desafortunadamente, no todas las aplicaciones le permiten configurar una descripción alternativa. Por ejemplo, Adobe Acrobat actualmente no permite configurar dicha descripción para hipervínculos. Pero en Microsoft Word, puedes hacer esto de la siguiente manera:

<img src="/words/net/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="descripciones-alternativas-hipervínculos-mw" style="width:800px"/>

A veces existe el problema de que no es posible configurar texto alternativo para hipervínculos generados automáticamente en la tabla de contenido (TOC) a través de la GUI de Microsoft Word. Aspose.Words podría actualizar dichos campos y generar los enlaces por sí solo.

Siga el ejemplo de código para actualizar los campos `TOC` utilizando el modelo de objetos de documento (DOM) Aspose.Words:

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### Encabezados de tabla

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

Las tablas en documentos PDF/UA-1 deben tener encabezados: columna, fila o ambos. PDF/A solo requiere marcado de tabla estándar, que no tiene restricciones adicionales. Tenga en cuenta que Aspose.Words genera el marcado de tabla estándar automáticamente.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>Las tablas deben incluir encabezados... Las tablas pueden contener encabezados de columna, encabezados de fila o ambos.</p>
   <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque puedes ver ejemplos: cómo configurar el encabezado de la tabla (ampliar para ver detalles).</summary>
   <p></p>
   <p>El encabezado de la tabla se puede configurar en el documento Microsoft Word de origen:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="encabezados-de-tabla-mw" style="width:800px"/>
   <p>O el PDF de salida:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="encabezados-de-tabla-acrobat-encabezado-celda" style="width:800px"/>
   <p></p>
   <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="encabezados-de-tabla-acrobat-scope1" style="width:800px"/>
   <p></p>
   <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="encabezados-de-tabla-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Texto de reemplazo

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |  {{< emoticons/tick >}} |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>La especificación nos dice lo siguiente:</p>
   <p>Todos los elementos de estructura textual que se representan de una manera no estándar, por ejemplo, caracteres personalizados o gráficos en línea, deben proporcionar texto de reemplazo utilizando la entrada `ActualText` en el diccionario de elementos de estructura...</p>
   <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

El documento Microsoft Word no permite a los usuarios establecer texto de reemplazo. Por lo tanto, esto debe verificarse y corregirse en el PDF de salida:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReemplazoTexto" style="width:800px"/>

### Ampliaciones de abreviaturas y acrónimos

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |  {{< emoticons/tick >}} |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>Todas las instancias de abreviaturas y acrónimos en el contenido textual deben colocarse en una secuencia de contenido marcado con una etiqueta Span cuya propiedad E proporciona una expansión textual de la abreviatura o acrónimo...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

El documento Microsoft Word no permite a los usuarios establecer abreviaturas y ampliaciones de acrónimos. Por lo tanto, esto debe verificarse y corregirse en el PDF de salida:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titulo del documento

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br /> El documento en PDF/UA-1 debe tener un título. |

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>La especificación nos dice lo siguiente:</p>
   <p>El flujo de metadatos en el diccionario del catálogo del documento contendrá una entrada dc:title, donde dc es el prefijo recomendado para el esquema de metadatos Dublin Core...</p>
   <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque puedes ver ejemplos: cómo configurar el título del documento (ampliar para ver detalles).</summary>
   <p></p>
   <p>El título del documento se puede configurar en el documento Microsoft Word de origen:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/document-title-mw.png" alt="título-documento-mw" style="width:800px"/>
   <p>O el PDF de salida:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="título-documento-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Requisitos de fuente

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |  {{< emoticons/tick >}} |
|  PDF/A-1b |  {{< emoticons/tick >}} |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/A-2u |  {{< emoticons/tick >}} |
|  PDF/A-4 |  {{< emoticons/tick >}} |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

También hay una serie de matices al trabajar con fuentes al convertir a formatos PDF/A-1, PDF/A-2, PDF/A-4 o PDF/UA-1 usando Aspose.Words. Hay que tenerlos en cuenta si se quiere evitar posibles problemas con el documento de salida.

Las secciones siguientes describen dichos matices y opciones para su solución.

### Requisitos legales de fuentes

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |  {{< emoticons/tick >}} |
|  PDF/A-1b |  {{< emoticons/tick >}} |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/A-2u |  {{< emoticons/tick >}} |
|  PDF/A-4 |  {{< emoticons/tick >}} |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

Aspose.Words no verifica las restricciones legales de las fuentes utilizadas; depende de los usuarios. En otras palabras, un usuario no debe proporcionar fuentes inapropiadas para la conversión de PDF utilizando Aspose.Words.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>Sólo se utilizarán programas de fuentes que sean legalmente incrustables en un archivo para una representación universal e ilimitada.</p>
   <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exactamente las mismas comillas en dos especificaciones)</p>
</details>
{{% /alert %}}

### .notdef Glifo

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/A-2u |  {{< emoticons/tick >}} |
|  PDF/A-4 |  {{< emoticons/tick >}} |
|  PDF/UA-1 |  {{< emoticons/tick >}} |

Está prohibido el uso del glifo `.notdef`. El glifo `.notdef` aparecerá si un documento contiene caracteres que no están presentes en la fuente seleccionada y que tampoco se pueden resolver mediante el mecanismo de reserva de fuente.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>Un documento conforme no deberá contener una referencia al glifo .notdef de ninguno de los operadores de visualización de texto, independientemente del modo de representación del texto, en cualquier flujo de contenido.</p>
   <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exactamente las mismas comillas en dos especificaciones)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque puedes ver ejemplos: cómo eliminar o reemplazar estos caracteres (ampliar para ver detalles).</summary>
   <p></p>
   <p>Los usuarios deben eliminar o reemplazar estos caracteres en el documento de Word de origen:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlifo" style="width:800px"/>
   <p>O el documento PDF de salida usando la herramienta "Editar PDF":</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Área de Uso Privado (PUA)

|  Niveles de cumplimiento del estándar PDF dentro de Aspose.Words |  Presencia de requisito |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |  {{< emoticons/tick >}} |
|  PDF/A-2u |  {{< emoticons/tick >}} |
|  PDF/A-4 |  {{< emoticons/tick >}} |
|  PDF/UA-1 |                           |

Los caracteres del área de uso privado (PUA) aparecen principalmente para fuentes simbólicas Windows como "Símbolo", "Wingdings", "Webdings" y otras. Los formatos Microsoft Word no ofrecen una opción para almacenar texto real para caracteres.

{{% alert color="secondary" %}}
<details>
   <summary>La especificación nos dice lo siguiente (ampliar para ver detalles):</summary>
   <p></p>
   <p>Solo para conformidad de Nivel A, para cualquier carácter... que esté asignado a un código o códigos en el Área de uso privado (PUA) Unicode, una entrada ActualText... deberá estar presente para este carácter o una secuencia de caracteres de los cuales dicha un personaje es una parte.</p>
   <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" es una fuente Windows Unicode que podría usarse como alternativa a las fuentes simbólicas.

{{% alert color="secondary" %}}
<details>
   <summary>En este bloque puedes ver ejemplos: qué debe hacer el usuario para solucionar el problema con las fuentes simbólicas (ampliar para ver detalles).</summary>
   <p></p>
   <p>Reemplace la fuente simbólica con una Unicode en el documento de Word fuente:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertarSímbolo" style="width:800px"/>
   <p>O agregue una entrada ActualText a los caracteres problemáticos en el documento PDF de salida:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
