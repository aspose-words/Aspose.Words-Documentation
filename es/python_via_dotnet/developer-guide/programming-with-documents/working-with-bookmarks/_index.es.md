---
title: Trabajar con marcadores en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con marcadores
linktitle: Trabajar con marcadores
description: "Cómo insertar, obtener, mover, mostrar u ocultar marcadores usando Python."
type: docs
weight: 180
url: /es/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Los marcadores identifican en un documento Microsoft Word las ubicaciones o fragmentos que usted nombra e identifica para referencia futura. Por ejemplo, puede utilizar un marcador para identificar el texto que desea revisar más adelante. En lugar de desplazarse por el documento para localizar el texto, puede acceder a él utilizando el cuadro de diálogo Marcador.

Las acciones que se pueden realizar con marcadores usando Aspose.Words son las mismas que puedes realizar usando Microsoft Word. Puede insertar un nuevo marcador, eliminarlo, moverse a un marcador, obtener o establecer el nombre de un marcador, obtener o configurar el texto incluido en él. Con Aspose.Words, también puede utilizar marcadores en informes o documentos para insertar algunos datos en el marcador o aplicar un formato especial a su contenido. También puede utilizar marcadores para recuperar texto de una ubicación determinada en su documento.

## Insertar un marcador

Utilice [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) y [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) para crear un marcador marcando su inicio y final, respectivamente. No olvide pasar el mismo nombre de marcador a ambos métodos. Los marcadores de un documento pueden superponerse y abarcar cualquier rango. Los marcadores mal formados o con nombres duplicados se ignorarán cuando se guarde el documento.

{{% alert color="primary" %}}

Todos los espacios en blanco en los marcadores fueron reemplazados por guiones bajos. Esta restricción proviene de los formatos de MS Word, ya que los marcadores en formatos de MS Word, como DOCX o DOC, no pueden tener espacios en blanco. Sin embargo, PDF permite dichos marcadores. Entonces, si necesita usar marcadores en esquemas PDF o XPS, puede usarlos con espacios en blanco.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear un nuevo marcador:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Obtener marcadores

A veces es necesario obtener una colección de marcadores para recorrer los marcadores o para otros fines. Utilice la propiedad [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) expuesta por cualquier nodo de documento que devuelva un objeto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) que represente la parte del documento contenida en este nodo. Utilice este objeto para recuperar un [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) y luego utilice el indexador de colección para obtener un marcador específico.

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de estos ejemplos desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo obtener marcadores de una colección de marcadores:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

El siguiente ejemplo de código muestra cómo obtener o establecer un nombre y texto de marcador:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

El siguiente ejemplo de código muestra cómo marcar una tabla:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Si cambia el nombre de un marcador a un nombre que ya existe en el documento, no se generará ningún error y solo se almacenará el primer marcador cuando guarde el documento.

Tenga en cuenta que algunos marcadores del documento están asignados a campos de formulario. Moverse a dicho marcador e insertar texto allí inserta el texto en el código del campo del formulario. Aunque esto no invalidará el campo del formulario, el texto insertado no será visible porque pasa a formar parte del código del campo.

El siguiente ejemplo de código muestra cómo acceder a las columnas de la tabla marcada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Mover a un marcador

Si necesita insertar contenido enriquecido (no solo texto sin formato) en un marcador, debe usar [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) para mover el cursor al marcador y luego usar métodos y propiedades [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para insertar contenido.

## Mostrar Ocultar contenido de marcador

Todo el marcador (*incluido el contenido marcado*) se puede encapsular dentro de la parte Verdadero del campo `IF` usando Aspose.Words. Puede ser de tal manera que el campo `IF` contenga un campo de combinación anidado en la expresión (*A la izquierda del operador*) y, dependiendo del valor del campo de combinación, el campo `IF` muestra u oculta el contenido del marcador en el documento de Word.

El siguiente ejemplo de código muestra cómo mostrar/ocultar marcadores:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
