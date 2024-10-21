---
title: Trabajando con Control de Contenido SDT
second_title: Aspose.Words para C++
articleTitle: Trabajando con Control de Contenido SDT
linktitle: Trabajando con Control de Contenido SDT
type: docs
description: "Gestión avanzada de contenido de documentos, cómo crear y manipular controles de contenido (Etiquetas de Documentos Estructurados) usando C++."
weight: 390
url: /es/cpp/structured-document-tags-or-content-control/
---

En Microsoft Word, puede crear un formulario comenzando con una plantilla y agregando controles de contenido, incluidas casillas de verificación, cuadros de texto, selectores de fecha y listas desplegables. En Aspose.Words, una Etiqueta de Documento estructurado o un control de contenido de cualquier documento cargado en Aspose.Words se importa como un nodo StructuredDocumentTag. Las etiquetas de documentos estructurados (SDT o content control) permiten incrustar semánticas definidas por el cliente, así como su comportamiento y apariencia en un documento. StructuredDocumentTag puede aparecer en un documento en los siguientes lugares:

- Nivel de bloque: entre párrafos y tablas, como elemento secundario de un Cuerpo, HeaderFooter, Comentario, Nota al pie o un nodo de Forma
- Nivel de fila: entre las filas de una tabla, como elemento secundario de un nodo de tabla
- Nivel de celda: entre las celdas de una fila de tabla, como elemento secundario de un nodo de fila
- Nivel en línea: Entre el contenido en línea dentro, como elemento secundario de un párrafo
- Anidado dentro de otro StructuredDocumentTag

## Cómo Establecer el Estilo para Formatear el Texto Escrito en el Control de Contenido

Si desea establecer el estilo del control de contenido, puede usar las propiedades `StructuredDocumentTag.Style` o `StructuredDocumentTag.StyleName`. Cuando escriba el texto en el control de contenido en el documento de salida, el texto escrito tendrá el estilo "Cita".

{{% alert color="primary" %}}

Tenga en cuenta que solo se pueden aplicar estilos vinculados y de caracteres al control de contenido. Se genera un InvalidOperationException ("No se puede aplicar este estilo al SDT") cuando se aplica un estilo que existe pero que no está vinculado o un estilo de carácter.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo establecer el estilo del control de contenido:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Trabajar con el Control de Contenido de Secciones Repetidas

El control de contenido de la sección repetición permite repetir el contenido que contiene. Usando Aspose.Words, se pueden crear los nodos de etiqueta de documento estructurado de los tipos sección repetitiva y elemento de sección repetitiva y, para este propósito, el tipo de enumeración SdtType proporciona la propiedad **RepeatingSectionItem**.

El siguiente ejemplo de código muestra cómo vincular un control de contenido de sección repetitiva a una tabla:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
