---
title: Trabajar con marcadores en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con marcadores
linktitle: Trabajar con marcadores
description: "Comprender los conceptos de marcadores y cómo se pueden utilizar los marcadores en su programa utilizando C#."
type: docs
weight: 180
url: /es/net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Los marcadores identifican en un documento Microsoft Word las ubicaciones o fragmentos que usted nombra e identifica para referencia futura. Por ejemplo, puede utilizar un marcador para identificar el texto que desea revisar más adelante. En lugar de desplazarse por el documento para localizar el texto, puede acceder a él utilizando el cuadro de diálogo Marcador.

Las acciones que se pueden realizar con marcadores usando Aspose.Words son las mismas que puedes realizar usando Microsoft Word. Puede insertar un nuevo marcador, eliminarlo, moverse a un marcador, obtener o establecer el nombre de un marcador, obtener o configurar el texto incluido en él.

## Insertar un marcador

Utilice [StartBookmark](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/startbookmark/) y [EndBookmark](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/endbookmark/) para crear un marcador marcando su inicio y final, respectivamente. No olvide pasar el mismo nombre de marcador a ambos métodos. Los marcadores de un documento pueden superponerse y abarcar cualquier rango. Los marcadores mal formados o con nombres duplicados se ignorarán cuando se guarde el documento.

{{% alert color="primary" %}}

Todos los espacios en blanco en los marcadores fueron reemplazados por guiones bajos. Esta restricción proviene de los formatos Microsoft Word, ya que los marcadores en formatos Word como DOCX o DOC no pueden tener espacios en blanco. Sin embargo, PDF permite dichos marcadores. Ahora, si necesita utilizar marcadores en esquemas PDF o XPS, puede utilizarlos con espacios en blanco.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear un nuevo marcador:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Obtener marcadores

A veces es necesario obtener una colección de marcadores para recorrer los marcadores o para otros fines. Utilice la propiedad [Node.Range](https://reference.aspose.com/words/es/net/aspose.words/node/range/) expuesta por cualquier nodo de documento que devuelva un objeto [Range](https://reference.aspose.com/words/es/net/aspose.words/range/) que represente la parte del documento contenida en este nodo. Utilice este objeto para recuperar un [BookmarkCollection](https://reference.aspose.com/words/es/net/aspose.words/bookmarkcollection/) y luego utilice el indexador de colección para obtener un marcador específico.

El siguiente ejemplo de código muestra cómo obtener marcadores de una colección de marcadores:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


El siguiente ejemplo de código muestra cómo obtener o establecer un nombre y texto de marcador:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo marcar una tabla:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Si cambia el nombre de un marcador a un nombre que ya existe en el documento, no se generará ningún error y solo se almacenará el primer marcador cuando guarde el documento.

Tenga en cuenta que algunos marcadores del documento están asignados a campos de formulario. Moverse a dicho marcador e insertar texto allí inserta el texto en el código de campo del formulario. Aunque esto no invalidará el campo del formulario, el texto insertado no será visible porque pasa a formar parte del código del campo.

El siguiente ejemplo de código muestra cómo acceder a las columnas de la tabla marcada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Mover a un marcador

Si necesita insertar contenido enriquecido (no solo texto sin formato) en un marcador, debe usar [MoveToBookmark](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetobookmark/) para mover el cursor al marcador y luego usar métodos y propiedades [DocumentBuilder's](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) para insertar contenido.

## Mostrar Ocultar contenido de marcador

Todo el marcador (*incluido el contenido marcado*) se puede encapsular dentro de la parte Verdadero del campo `IF` usando Aspose.Words. Puede ser de tal manera que el campo `IF` contenga un campo de combinación anidado en la expresión (*A la izquierda del operador*) y, dependiendo del valor del campo de combinación, el campo `IF` muestra u oculta el contenido del marcador en el documento de Word.

El siguiente ejemplo de código muestra cómo mostrar/ocultar marcadores:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
