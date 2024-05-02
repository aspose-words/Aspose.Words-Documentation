---
title: Trabajando con SDT de control de contenido Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con SDT Control de Contenidos
linktitle: Trabajar con SDT Control de Contenidos
type: docs
description: "Gestión avanzada de contenidos de documentos, cómo crear y manipular controles de contenido (Etiquetas de documentos estructuradas) utilizando Java."
weight: 390
url: /es/java/working-with-content-control-sdt/
---

In Microsoft Word, puede crear un formulario comenzando con una plantilla y agregando controles de contenido, incluyendo casillas de verificación, cajas de texto, selectores de fechas y listas desplegables. In <span notrans="<span notrans=" Aspose.Words"=""></span>," a Etiqueta de documento estructurada o control de contenido de cualquier documento cargado en Aspose.Words se importa como un nodo EstructuradoDocumentTag. Las etiquetas de documentos estructuradas (SDT o control de contenido) permiten incorporar la semántica definida por el cliente, así como su comportamiento y apariencia en un documento.

Documento estructurado La etiqueta puede ocurrir en un documento en los siguientes lugares:

- Nivel de bloque - Entre párrafos y tablas, como niño de un Cuerpo, HeaderFooter, Comment, Footnote o un Nodo de Forma.
- Nivel de fila - Entre filas en una mesa, como un niño de un nodo de mesa.
- Nivel de celda - Entre las células en una fila de mesa, como un niño de un nodo de fila.
- Nivel de línea - Entre el contenido en línea dentro, como niño de un párrafo.
- Anidado dentro de otro documento estructuradoTag.

## Inserción de controles de contenido en un documento

En esta versión Aspose.Words, se pueden crear los siguientes tipos de SDT o control de contenido:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

El siguiente ejemplo de código muestra cómo crear el control de contenido de la casilla de verificación de tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

El siguiente ejemplo de código muestra cómo crear el control de contenido del cuadro de texto rico de tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

El siguiente ejemplo de código muestra cómo crear el control de contenido del cuadro combo tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Cómo actualizar los controles de contenido

Esta sección explica cómo actualizar los valores de SDT o control de contenido programáticamente.

El siguiente ejemplo de código muestra cómo establecer el estado actual de la casilla de verificación:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

El siguiente ejemplo de código muestra cómo modificar los controles de contenido del cuadro de texto simple tipo, lista desplegable y imagen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de estos ejemplos [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Control de contenido de unión a piezas XML personalizadas

Puede vincular los controles de contenido con datos XML (*parte XML de base*) en documentos Word

El siguiente ejemplo de código muestra cómo vincular el control de contenido a partes XML personalizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Contenido claro de un control de contenidos

Puede borrar el contenido de un control de contenido con visualización de un marcador de posición. **Documentación estructuradaTag.clear()** método aclara el contenido de esta etiqueta de documento estructurada y muestra un marcador de lugar si se define. Sin embargo, No es posible aclarar el contenido de un control de contenido si tiene revisiones. Si un control de contenido no tiene titular, se insertan cinco espacios como en MS Word (excepto secciones de repetición, artículos de sección de repetición, grupos, casillas de verificación, citas). Si se asigna un control de contenido a XML personalizado, se elimina el nodo XML referenciado.

El siguiente ejemplo de código muestra cómo despejar el contenido del control de contenido:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Cambio de contenido Control de fondo y colores fronterizos

El `StructuredDocumentTag.Color` propiedad le permite obtener o establecer el color del control de contenido. El color afecta el control de contenido en dos situaciones:

1. MS Word destaca el fondo del control de contenido cuando el ratón se mueve sobre el control de contenido. Esto ayuda a identificar el control de contenido. El color de resaltar es un poco más suave que el *Color*. Por ejemplo, MS Word destaca el fondo con el color rosa, cuando *Color* Es Red.
2. Cuando interactúa (editar, elegir etc) con el control de contenido, la frontera del control de contenido se colorea con el *Color*.

El siguiente ejemplo de código muestra cómo cambiar el color del control de contenido:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Cómo configurar estilo a formato Texto tipo en el control de contenido

Si desea establecer el estilo de control de contenido, puede utilizar `StructuredDocumentTag.Style` o `StructuredDocumentTag.StyleName` propiedades. Cuando escriba el texto en el control de contenido en el documento de salida, el texto escrito tendrá el estilo "Cot".

{{% alert color="primary" %}}

Tenga en cuenta que sólo los estilos Linked y Character se pueden aplicar al control de contenidos. An InvalidOperationException ("No puede aplicar este estilo al SDT") se lanza cuando se aplica un estilo que existe pero no se está Vinculando o el estilo de carácter.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo establecer el estilo de control de contenido:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Trabajando con Sección de Repetición Control de Contenido

El control de contenido de sección de repetición permite repetir el contenido que contiene. Uso Aspose.Words, se pueden crear los nodos estructurados de la sección de repetición y repetir los tipos de elementos de sección y con este fin, [Tipo de enumeración de SdtType](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) proporciona miembro REPEATING_SECTION_ITEM.

El siguiente ejemplo de código muestra cómo vincular un control de contenido de sección repetido a una tabla:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

