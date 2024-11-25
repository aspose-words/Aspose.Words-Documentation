---
title: Trabajar con marcadores en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Marcadores
linktitle: Trabajar con Marcadores
description: "Comprender los conceptos de marcadores y cómo se pueden usar los marcadores en su programa usando Java."
type: docs
weight: 180
url: /es/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Los marcadores identifican en un documento Microsoft Word las ubicaciones o fragmentos que nombra e identifica para referencia futura. Por ejemplo, puede usar un marcador para identificar el texto que desea revisar más adelante. En lugar de desplazarse por el documento para localizar el texto, puede acceder a él utilizando el cuadro de diálogo Marcador.

Con Aspose.Words, puede usar marcadores en informes o documentos para insertar algunos datos en el marcador o aplicar un formato especial a su contenido. También puede usar marcadores para recuperar texto de una ubicación determinada en su documento.

Las acciones que se pueden realizar con marcadores usando Aspose.Words son las mismas que puede realizar usando Microsoft Word. Puede insertar un nuevo marcador, eliminarlo, moverlo a un marcador, obtener o establecer un nombre de marcador, obtener o establecer texto encerrado en él.

## Insertar un Marcador

Use [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) y [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) para crear un marcador marcando su inicio y final, respectivamente. No olvide pasar el mismo nombre de marcador a ambos métodos. Los marcadores de un documento pueden superponerse y abarcar cualquier rango. Los marcadores mal formados o los marcadores con nombres duplicados se ignorarán cuando se guarde el documento.

{{% alert color="primary" %}}

Todos los espacios en blanco en los marcadores fueron reemplazados por guiones bajos. Esta restricción provino de los formatos de MS Word, ya que los marcadores en formatos de MS Word, como DOCX o DOC, no pueden tener espacios en blanco. Sin embargo, PDF permite tales marcadores. Entonces, si necesita usar marcadores en contornos PDF, XPS o SWF, puede usarlos con espacios en blanco.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear un nuevo marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Obtener Marcadores

A veces es necesario obtener una colección de marcadores para iterar a través de los marcadores o para otros fines. Utilice la propiedad **Node.getRange** expuesta por cualquier nodo de documento que devuelva un objeto **Range** que represente la parte del documento contenida en este nodo. Use este objeto para recuperar un **BookmarkCollection** y luego use el indexador de colecciones para obtener un marcador específico.

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de los siguientes ejemplos de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo obtener marcadores de una colección de marcadores:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

El siguiente ejemplo de código muestra cómo obtener o establecer un nombre y texto de marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

El siguiente ejemplo de código muestra cómo marcar una tabla:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Si cambia el nombre de un marcador a un nombre que ya existe en el documento, no se generará ningún error y solo se almacenará el primer marcador cuando guarde el documento.

Tenga en cuenta que algunos marcadores del documento están asignados a campos de formulario. Moverse a dicho marcador e insertar texto allí inserta el texto en el código del campo del formulario. Aunque esto no invalidará el campo del formulario, el texto insertado no será visible porque se convierte en parte del código del campo.

El siguiente ejemplo de código muestra cómo acceder a las columnas de la tabla marcada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Mover a un marcador

Si necesita insertar contenido enriquecido (no solo texto sin formato) en un marcador, debe usar [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) para mover el cursor al marcador y luego usar **DocumentBuilder** métodos y propiedades para insertar contenido.

## Mostrar Ocultar Contenido de Marcadores

Todo el marcador (*including the bookmarked content*) se puede encapsular dentro de la parte Verdadera del campo `IF` usando Aspose.Words. Puede ser de tal manera que el campo `IF` contenga un Campo de combinación anidado en la expresión (*Left of Operator*) y, según el valor del Campo de combinación, el campo `IF` muestre u oculte el contenido del marcador en el documento de Word.

El siguiente ejemplo de código muestra cómo mostrar / ocultar marcadores.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
