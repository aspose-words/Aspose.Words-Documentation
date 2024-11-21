---
title: Trabajando con Marcas en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Marcas
linktitle: Trabajando con Marcas
description: "Entender conceptos de marcadores y cómo se puede utilizar marcadores en su programa Java."
type: docs
weight: 180
url: /es/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Marcas identificadas en un Microsoft Word documentar los lugares o fragmentos que usted nombre e identifique para referencia futura. Por ejemplo, podría utilizar un marcador para identificar texto que desea revisar más adelante. En lugar de desplazarse a través del documento para localizar el texto, puede ir a él utilizando el cuadro de diálogo Bookmark.

Con Aspose.Words, puede utilizar marcadores en informes o documentos para insertar algunos datos en el marcador o aplicar formato especial a su contenido. También puede utilizar marcadores para recuperar texto de una determinada ubicación en su documento.

Las acciones que se pueden realizar con marcadores utilizando Aspose.Words son los mismos que los que puedes realizar usando Microsoft Word. Puede insertar un nuevo marcador, eliminar, mover a un marcador, obtener o establecer un nombre de marcadores, obtener o establecer texto adjunto en él.

## Insertar un marcador

Uso [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) y [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) crear un marcador marcando su inicio y fin, respectivamente. No te olvides de pasar el mismo nombre marcador a ambos métodos. Los marcadores en un documento pueden superponerse y abarcar cualquier rango. Los marcadores o marcadores mal formados con nombres duplicados serán ignorados cuando se guarda el documento.

{{% alert color="primary" %}}

Todos los espacios blancos en los marcadores fueron reemplazados por subrayados. Esta restricción proviene de formatos MS Word, ya que marcadores en formatos MS Word, como DOCX o DOC, no pueden tener espacios blancos. Sin embargo, PDF permite tales marcadores. Así que ahora, si necesitas usar marcadores en PDF, XPS o contornos SWF, puede utilizarlos con espacios blancos.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear un nuevo marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Obtenga marcadores

A veces es necesario obtener una colección de marcadores para iterar a través de marcadores o para otros fines. Usar el **Node.getRange** propiedad expuesta por cualquier nodo de documento que devuelva **Range** objeto que representa la parte del documento contenida en este nodo. Utilice este objeto para recuperar un **BookmarkCollection** y luego utilizar el indexador de la colección para obtener un marcador específico.

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de los siguientes ejemplos [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo obtener marcadores de una colección de marcadores:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

El siguiente ejemplo de código muestra cómo obtener o establecer un nombre y texto marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

El siguiente ejemplo de código muestra cómo marcar una tabla:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Si cambia el nombre de un marcador a un nombre que ya existe en el documento, no se generará ningún error y sólo se almacenará el primer marcador cuando guarde el documento.

Tenga en cuenta que algunos marcadores en el documento se asignan a campos de forma. Moviéndose a tal marcador e insertando texto, inserta el texto en el código de campo de formularios. Aunque esto no invalidará el campo de forma, el texto insertado no será visible porque se convierte en parte del código de campo.

El siguiente ejemplo de código muestra cómo acceder a las columnas de la tabla reservada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Muévete a un marcador

Si necesita insertar contenido rico (no sólo texto simple) en un marcador, debe utilizar [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) para mover el cursor al marcador y luego utilizar **DocumentBuilder** métodos y propiedades para insertar contenido.

## Mostrar Ocultar el contenido de Bookmark

Todo el Bookmark (* incluyendo el contenido marcado*) puede ser encapsulado dentro de la parte Verdadera de la `IF` campo utilizando Aspose.Words. Puede ser de tal manera que `IF` campo contiene un campo de fusión anidado en la expresión (*izquierda de operador*) y dependiendo del valor del campo de fusión, el `IF` campo muestra o oculta el contenido de Bookmark en Word Document.

El siguiente ejemplo de código muestra cómo mostrar/ ocultar marcadores.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
