---
title: Trabajar con comentarios en Java
second_title: Aspose.Words por Java
articleTitle: Trabajando con Comentarios
linktitle: Trabajando con Comentarios
description: "Trabajando con comentarios usando Java."
type: docs
weight: 260
url: /es/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Pruébalo en línea**

Puede probar esta funcionalidad con nuestro [Eliminar anotaciones en línea gratis](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite a los usuarios trabajar con comentarios: los comentarios en un documento en Aspose.Words están representados por la clase [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/). También use las clases [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) para especificar la región de texto que debe asociarse con un comentario.

## Agregar un Comentario

Aspose.Words le permite agregar comentarios de varias maneras:

1. Usando la clase [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. Usando las clases [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo usando la clase **Comment**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo usando una región de texto y las clases **CommentRangeStart** y **CommentRangeEnd**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extraer o Eliminar Comentarios

El uso de comentarios en un documento de Word (además de realizar un seguimiento de los cambios) es una práctica común al revisar documentos, especialmente cuando hay varios revisores. Puede haber situaciones en las que lo único que necesite de un documento sean los comentarios. Supongamos que desea generar una lista de los hallazgos de la revisión, o tal vez haya recopilado toda la información útil del documento y simplemente desee eliminar los comentarios innecesarios. Es posible que desee ver o eliminar los comentarios de un revisor en particular.

En este ejemplo, veremos algunos métodos simples tanto para recopilar información de los comentarios dentro de un documento como para eliminar comentarios de un documento. Específicamente, cubriremos cómo:

- Extraiga todos los comentarios de un documento o solo los realizados por un autor en particular.
- Elimine todos los comentarios de un documento o solo de un autor en particular.

### Cómo Extraer o Eliminar Comentarios

El código de este ejemplo es bastante simple y todos los métodos se basan en el mismo enfoque. Un comentario en un documento de Word está representado por un objeto `Comment` en el modelo de objetos de documento Aspose.Words. Para recopilar todos los comentarios de un documento, utilice el método [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) con el primer parámetro establecido en `NodeType.Comment`. Asegúrese de que el segundo parámetro del método **getChildNodes** esté establecido en verdadero: esto obliga al **getChildNodes** a seleccionar de todos los nodos secundarios de forma recursiva, en lugar de recopilar solo los secundarios inmediatos.

Para ilustrar cómo extraer y eliminar comentarios de un documento, realizaremos los siguientes pasos:

1. Abra un documento de Word con la clase [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Obtener todos los comentarios del documento en una colección
1. Para extraer comentarios:
   1. Ir a través de la colección usando el para el operador
   1. Extraiga y enumere el nombre del autor, la fecha y hora y el texto de todos los comentarios
   1. Extraiga y enumere el nombre del autor, la fecha y hora y el texto de los comentarios escritos por un autor específico, en este caso, el autor 'ks'
1. Para eliminar comentarios:
   1. Retroceda a través de la colección usando el operador para
   1. Eliminar comentarios
1. Guarde los cambios.

Vamos a utilizar el siguiente documento de Word para este ejercicio:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Como puede ver, contiene varios comentarios de dos autores con las iniciales " pm " y "ks".

### Cómo Extraer Todos los Comentarios

El método [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) es muy útil y puede usarlo cada vez que necesite obtener una lista de nodos de documentos de cualquier tipo. La colección resultante no crea una sobrecarga inmediata porque los nodos se seleccionan en esta colección solo cuando enumera o accede a elementos en ella.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, la fecha y hora y el texto de todos los comentarios del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Cómo Extraer Comentarios de un Autor Específico

Una vez que haya seleccionado nodos de comentarios en una colección, todo lo que tiene que hacer es extraer la información que necesita. En esta muestra, las iniciales del autor, la fecha, la hora y el texto sin formato del comentario se combinan en una cadena; en su lugar, puede optar por almacenarlo de otras maneras.

El método sobrecargado que extrae los comentarios de un autor en particular es casi el mismo, solo verifica el nombre del autor antes de agregar la información a la matriz.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, la fecha y hora y el texto de los comentarios del autor especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Cómo Eliminar Comentarios

Si está eliminando todos los comentarios, no es necesario moverse por la colección eliminando comentarios uno por uno; puede eliminarlos llamando a [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) en la colección de comentarios.

El siguiente ejemplo de código muestra cómo eliminar todos los comentarios del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Cuando necesita eliminar comentarios de forma selectiva, el proceso se vuelve más similar al código que usamos para la extracción de comentarios.

El siguiente ejemplo de código muestra cómo eliminar comentarios del autor especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

El punto principal a destacar aquí es el uso del operador for. A diferencia de la extracción simple, aquí desea eliminar un comentario. Un truco adecuado es iterar la colección hacia atrás desde el último comentario hasta el primero. La razón de esto es que si comienza desde el final y retrocede, el índice de los elementos anteriores permanece sin cambios y puede volver al primer elemento de la colección.

El siguiente ejemplo de código muestra los métodos para la extracción y eliminación de comentarios:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Cuando se inicia, la muestra muestra los siguientes resultados. Primero, enumera todos los comentarios de todos los autores, luego enumera los comentarios solo del autor seleccionado. Finalmente, el código eliminando todos los comentarios.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

El documento de Word de salida ahora tiene comentarios eliminados:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Cómo eliminar texto entre CommentRangeStart y CommentRangeEnd

Usando Aspose.Words también puede eliminar comentarios entre los nodos CommentRangeStart y CommentRangeEnd.

El siguiente ejemplo de código muestra cómo eliminar texto entre CommentRangeStart y CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Agregar o Eliminar la Respuesta del Comentario

El método [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) agrega una respuesta a este comentario. Tenga en cuenta que, debido a las limitaciones existentes de MS Office, solo se permite un (1) nivel de respuestas en el documento. Se generará una excepción de tipo InvalidOperationException si se llama a este método en el comentario de respuesta existente.

Puede usar el método [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) para eliminar la respuesta especificada a este comentario.

El siguiente ejemplo de código muestra cómo agregar una respuesta a un comentario y eliminar la respuesta de un comentario:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Leer la Respuesta del Comentario

Aspose.Words soporte para leer la respuesta de un comentario. La propiedad [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) devuelve una colección de los [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) objetos que son hijos inmediatos del comentario especificado.

El siguiente ejemplo de código muestra cómo iterar a través de las respuestas de un comentario y resolverlas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
