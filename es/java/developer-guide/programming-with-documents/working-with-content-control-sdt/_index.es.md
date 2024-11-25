---
title: Trabajar con Control de contenido SDT en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Control de Contenido SDT
linktitle: Trabajar con Control de Contenido SDT
type: docs
description: "Gestión avanzada de contenido de documentos, cómo crear y manipular controles de contenido (Etiquetas de Documentos Estructurados) usando Java."
weight: 390
url: /es/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

En Microsoft Word, puede crear un formulario comenzando con una plantilla y agregando controles de contenido, incluidos checkboxes, cuadros de texto, selectores de fecha y listas desplegables. En Aspose.Words, una Etiqueta de Documento estructurado o un control de contenido de cualquier documento cargado en Aspose.Words se importa como un nodo StructuredDocumentTag. Las etiquetas de documentos estructurados (SDT o control de contenido) permiten incrustar semánticas definidas por el cliente, así como su comportamiento y apariencia en un documento.

StructuredDocumentTag puede aparecer en un documento en los siguientes lugares:

- Nivel de bloque: entre párrafos y tablas, como elemento secundario de un Cuerpo, HeaderFooter, Comentario, Nota al pie o un nodo de Forma.
- Nivel de fila: entre las filas de una tabla, como elemento secundario de un nodo de tabla.
- Nivel de celda: entre las celdas de una fila de tabla, como elemento secundario de un nodo de fila.
- Nivel en línea: Entre el contenido en línea dentro, como elemento secundario de un párrafo.
- Anidado dentro de otro StructuredDocumentTag.

## Inserción de Controles de Contenido en un Documento

En esta versión de Aspose.Words, se pueden crear los siguientes tipos de SDT o control de contenido:

- Checkbox
- DropDownList
- ComboBox
- Fecha
- BuildingBlockGallery
- Grupo
- `Picture`
- RichText
- PlainText

El siguiente ejemplo de código muestra cómo crear un control de contenido de tipo checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

El siguiente ejemplo de código muestra cómo crear un control de contenido de tipo cuadro de texto enriquecido:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

El siguiente ejemplo de código muestra cómo crear un control de contenido de tipo cuadro combinado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Cómo Actualizar los Controles de Contenido

En esta sección se explica cómo actualizar los valores de SDT o content control mediante programación.

El siguiente ejemplo de código muestra cómo establecer el estado actual de checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

El siguiente ejemplo de código muestra cómo modificar los controles de contenido de tipo cuadro de texto sin formato, lista desplegable e imagen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de estos ejemplos en [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Vincular el Control de Contenido a Partes XML Personalizadas

Puede vincular controles de contenido con XML datos (*custom XML part*) en documentos de Word.

El siguiente ejemplo de código muestra cómo vincular el control de contenido a partes XML personalizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Borrar contenido de un Control de Contenido

Puede borrar el contenido de un control de contenido mostrando un marcador de posición. el método **StructuredDocumentTag.clear()** borra el contenido de esta etiqueta de documento estructurado y muestra un marcador de posición si está definido. Sin embargo, no es posible borrar el contenido de un control de contenido si tiene revisiones. Si un control de contenido no tiene marcador de posición, se insertan cinco espacios como en MS Word (excepto secciones repetidas, elementos de sección repetidos, grupos, casillas de verificación, citas). Si un control de contenido se asigna a XML personalizado, se borra el nodo XML al que se hace referencia.

El siguiente ejemplo de código muestra cómo borrar el contenido de content control:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Cambiar los Colores de Fondo y Borde del Control de Contenido

La propiedad `StructuredDocumentTag.Color` le permite obtener o establecer el color del control de contenido. El color afecta al control del contenido en dos situaciones:

1. MS Word resalta el fondo del control de contenido cuando el mouse se mueve sobre el control de contenido. Esto ayuda a identificar el control de contenido. El color del resaltado es un poco "más suave" que el *Color*. Por ejemplo, MS Palabra resalta el fondo con el color rosa, cuando *Color* es rojo.
2. Cuando interactúa (editando, seleccionando, etc.) con el control de contenido, el borde del control de contenido se colorea con *Color*.

El siguiente ejemplo de código muestra cómo cambiar el color del control de contenido:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Cómo Establecer el Estilo para Formatear el Texto Escrito en el Control de Contenido

Si desea establecer el estilo del control de contenido, puede usar las propiedades `StructuredDocumentTag.Style` o `StructuredDocumentTag.StyleName`. Cuando escriba el texto en el control de contenido en el documento de salida, el texto escrito tendrá el estilo "Cita".

{{% alert color="primary" %}}

Tenga en cuenta que solo se pueden aplicar estilos vinculados y de caracteres al control de contenido. Se genera un InvalidOperationException ("No se puede aplicar este estilo al SDT") cuando se aplica un estilo que existe pero que no está vinculado o un estilo de carácter.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo establecer el estilo del control de contenido:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Trabajar con el Control de Contenido de Secciones Repetidas

El control de contenido de la sección repetición permite repetir el contenido que contiene. Usando Aspose.Words, se pueden crear los nodos de etiqueta de documento estructurado de los tipos de sección repetitiva y elemento de sección repetitiva y, para este propósito, [SdtType tipo de enumeración](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) proporciona REPEATING_SECTION_ITEM miembro.

El siguiente ejemplo de código muestra cómo vincular un control de contenido de sección repetitiva a una tabla:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

