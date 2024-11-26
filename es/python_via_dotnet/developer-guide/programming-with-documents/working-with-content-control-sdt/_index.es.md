---
title: Trabajar con SDT de control de contenido
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con SDT de control de contenido
linktitle: Trabajar con SDT de control de contenido
description: "Al utilizar Python, puede incorporar en un documento la semántica definida por el cliente, así como su comportamiento y apariencia."
type: docs
weight: 390
url: /es/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

En Microsoft Word, puede crear un formulario comenzando con una plantilla y agregando controles de contenido, incluidas casillas de verificación, cuadros de texto, selectores de fechas y listas desplegables. En Aspose.Words, una etiqueta de documento estructurado o un control de contenido de cualquier documento cargado en Aspose.Words se importa como un nodo [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Las etiquetas de documentos estructuradas (SDT o control de contenido) permiten incorporar en un documento la semántica definida por el cliente, así como su comportamiento y apariencia. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) puede aparecer en un documento en los siguientes lugares:

- Nivel de bloque: entre párrafos y tablas, como hijo de un nodo [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) o [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- Nivel de fila: entre filas de una tabla, como hijo de un nodo [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- Nivel de celda: entre celdas de una fila de la tabla, como elemento secundario de un nodo [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Nivel en línea: entre el contenido en línea interno, como hijo de un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Anidado dentro de otro [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Insertar controles de contenido en un documento

En esta versión de Aspose.Words se pueden crear los siguientes tipos de SDT o control de contenido:

- Casilla de verificación
- La lista desplegable
- Caja combo
- Fecha
- Galería de bloques de construcción
- Grupo
- Imagen
- Texto rico
- Texto sin formato

El siguiente ejemplo de código demuestra cómo crear un control de contenido de tipo casilla de verificación.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

El siguiente ejemplo de código demuestra cómo crear un control de contenido de tipo cuadro de texto enriquecido.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

El siguiente ejemplo de código demuestra cómo crear un control de contenido del tipo cuadro combinado.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Cómo actualizar los controles de contenido

Esta sección explica cómo actualizar los valores de SDT o control de contenido mediante programación.

El siguiente ejemplo de código muestra cómo establecer el estado actual de la casilla de verificación:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

El siguiente ejemplo de código muestra cómo modificar controles de contenido de tipo cuadro de texto sin formato, lista desplegable e imagen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de estos ejemplos desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Vincular el control de contenido a partes XML personalizadas

Puede vincular controles de contenido con datos XML (*parte XML personalizada*) en documentos de Word.

El siguiente ejemplo de código muestra cómo vincular el control de contenido a partes XML personalizadas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## Mapeo XML del rango de etiquetas de documentos estructurados

Puede obtener la asignación de este rango de etiquetas de documento estructurado a datos XML en una parte XML personalizada del documento actual utilizando la propiedad [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Sin embargo, el método [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) se puede utilizar para asignar un rango de etiquetas de documento estructurado a datos XML.

El siguiente ejemplo de código muestra cómo configurar la asignación XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Borrar el contenido de un control de contenido

Puede borrar el contenido de un control de contenido mostrando un marcador de posición. El método [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) borra el contenido de esta etiqueta de documento estructurado y muestra un marcador de posición si está definido. Sin embargo, no es posible borrar el contenido de un control de contenido si tiene revisiones. Si un control de contenido no tiene marcador de posición, se insertan cinco espacios como en MS Word (excepto secciones repetidas, elementos de sección repetidos, grupos, casillas de verificación y citas). Si un control de contenido se asigna a XML personalizado, el nodo XML al que se hace referencia se borra.

El siguiente ejemplo de código muestra cómo borrar el contenido del control de contenido:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Cambiar el fondo del control de contenido y los colores del borde

La propiedad [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) le permite obtener o establecer el color del control de contenido. El color afecta el control de contenido en dos situaciones:

1. MS Word resalta el fondo del control de contenido cuando el mouse se mueve sobre el control de contenido. Esto ayuda a identificar el control de contenido. El color del resaltado es un poco más "suave" que el *color*. Por ejemplo, MS Word resalta el fondo con color rosa, cuando *color* es rojo.
2. Cuando interactúa (edición, selección, etc.) con el control de contenido, el borde del control de contenido se colorea con el *color*.

El siguiente ejemplo de código muestra cómo cambiar el color del control de contenido:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Cómo configurar el estilo para dar formato al texto escrito en el control de contenido

Si desea establecer el estilo de control de contenido, puede utilizar las propiedades [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) o [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Cuando escribe el texto en el control de contenido del documento de salida, el texto escrito tendrá el estilo "Cita".

{{% alert color="primary" %}}

Tenga en cuenta que solo se pueden aplicar los estilos Vinculado y Carácter al control de contenido. Se genera una excepción ("No se puede aplicar este estilo al SDT") cuando se aplica un estilo que existe pero que no está vinculado o es un estilo de carácter.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo configurar el estilo de control de contenido:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Trabajar con control de contenido de sección repetida

El control de contenido de la sección repetida permite repetir el contenido contenido en ella. Con Aspose.Words, se pueden crear los nodos de etiquetas de documentos estructurados de la sección repetida y los tipos de elementos de sección repetida y, para este propósito, el tipo de enumeración [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) proporciona propiedad [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

El siguiente ejemplo de código muestra cómo vincular un control de contenido de sección repetida a una tabla:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
