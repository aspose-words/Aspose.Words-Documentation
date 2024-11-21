---
title: Trabajar con Comentarios en Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con Comentarios
linktitle: Trabajar con Comentarios
description: "Trabajar con comentarios utilizando Java."
type: docs
weight: 260
url: /es/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Pruebe en línea**

Puede probar esta funcionalidad con nuestra [Libre en línea eliminar anotaciones](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite a los usuarios trabajar con comentarios – comentarios en un documento Aspose.Words están representados por [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) clase. También use el [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) clases para especificar la región del texto que debe asociarse con un comentario.

## Agregar un comentario

Aspose.Words le permite añadir comentarios de varias maneras:

1. Usando el [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) clase
2. Usando el [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) clases

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo utilizando el **Comment** clase:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo utilizando una región de texto y el **CommentRangeStart** y **CommentRangeEnd** clases:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extraer o eliminar comentarios

Utilizar Comentarios en un documento de Word (además de Track Changes) es una práctica común al revisar los documentos, especialmente cuando hay múltiples revisores. Puede haber situaciones donde lo único que necesitas de un documento son los comentarios. Digamos que desea generar una lista de hallazgos de revisión, o tal vez usted ha recogido toda la información útil del documento y simplemente desea eliminar comentarios innecesarios. Usted puede querer ver o eliminar los comentarios de un revisor en particular.

En esta muestra, vamos a ver algunos métodos simples para recoger información de los comentarios dentro de un documento y para eliminar comentarios de un documento. Específicamente, cubriremos cómo:

- Extraer todos los comentarios de un documento o sólo los de un autor en particular.
- Eliminar todos los comentarios de un documento o sólo de un autor en particular.

### Cómo Extraer o Eliminar Comentarios

El código de esta muestra es bastante simple y todos los métodos se basan en el mismo enfoque. Un comentario en un documento de Word está representado por un `Comment` objeto en el Aspose.Words documento objeto modelo. Para recoger todos los comentarios en un documento utilice el [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) método con el primer parámetro `NodeType.Comment`. Asegúrese de que el segundo parámetro del **getChildNodes** método se establece true: esto obliga a los **getChildNodes** seleccionar de todos los ganglios infantiles recursivamente, en lugar de recoger sólo a los niños inmediatos.

Para ilustrar cómo extraer y eliminar comentarios de un documento, pasaremos por los siguientes pasos:

1. Abrir un documento de Word usando el [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) clase
1. Obtenga todos los comentarios del documento en una colección
1. Para extraer comentarios:
   1. Ir a través de la colección utilizando el para el operador
   1. Extraer y enumerar el nombre del autor, la fecha y el texto de todos los comentarios
   1. Extraer y enumerar el nombre del autor, la fecha y el texto de los comentarios escritos por un autor específico, en este caso, el autor ‘ks’
1. Para eliminar comentarios:
   1. Ir hacia atrás a través de la colección utilizando el para el operador
   1. Eliminar comentarios
1. Guarda los cambios.

Vamos a utilizar el siguiente documento de Word para este ejercicio:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Como puede ver, contiene varios comentarios de dos autores con las iniciales "pm" y "ks".

### Cómo extraer todos los comentarios

El [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) método es muy útil y puede utilizarlo cada vez que necesite obtener una lista de nodos de documentos de cualquier tipo. La colección resultante no crea un sobrecabezamiento inmediato porque los nodos se seleccionan en esta colección sólo cuando enumeras o accedes artículos en ella.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, fecha límite y texto de todos los comentarios en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Cómo Extraer Comentarios de un Autor Especificado

Después de haber seleccionado los nodos de comentario en una colección, todo lo que tienes que hacer es extraer la información que necesitas. En esta muestra, las iniciales del autor, la fecha, el tiempo y el texto llano del comentario se combinan en una cuerda; usted podría elegir almacenarlo de alguna otra manera en su lugar.

El método sobrecargado que extrae los Comentarios de un autor en particular es casi el mismo, sólo revisa el nombre del autor antes de añadir la información a la matriz.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, fecha límite y texto de los comentarios del autor especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Cómo quitar los comentarios

Si está eliminando todos los comentarios, no hay necesidad de pasar por la colección eliminando los comentarios uno por uno; puede eliminarlos llamando [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) sobre la colección de comentarios.

El siguiente ejemplo de código muestra cómo eliminar todos los comentarios en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Cuando usted necesita eliminar selectivamente los comentarios, el proceso se vuelve más similar al código que usamos para la extracción de comentarios.

El siguiente ejemplo de código muestra cómo eliminar los comentarios del autor especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

El punto principal a destacar aquí es el uso del operador. A diferencia de la simple extracción, aquí desea eliminar un comentario. Un truco adecuado es iterar la colección hacia atrás desde el último comentario hasta el primero. La razón de esto si comienzas desde el final y te mueves hacia atrás, el índice de los elementos anteriores sigue sin cambiar, y puedes trabajar tu camino de vuelta al primer artículo de la colección.

El siguiente ejemplo de código muestra los métodos para la extracción y eliminación de comentarios:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Cuando se lanza, la muestra muestra los siguientes resultados. En primer lugar, enumera todos los comentarios de todos los autores, luego enumera los comentarios del autor seleccionado solamente. Finalmente, el código elimina todos los comentarios.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

El documento de salida Word tiene ahora comentarios eliminados de él:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Cómo quitar texto entre comentarioRangeStart y comentarioRangeEnd

Uso Aspose.Words también puede eliminar comentarios entre los nodos CommentRangeStart y CommentRangeEnd.

El siguiente ejemplo de código muestra cómo eliminar texto entre CommentRangeStart y CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Añadir o quitar comentario de la respuesta

El [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) método añade una respuesta a este comentario. Tenga en cuenta que debido a las limitaciones existentes de la Oficina MS sólo se permite un (1) nivel de respuestas en el documento. Una excepción del tipo InvalidOperationException se planteará si este método se llama al comentario de la respuesta existente.

Puedes usar el [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) método para eliminar la respuesta especificada a este comentario.

El siguiente ejemplo de código muestra cómo agregar una respuesta a un comentario y eliminar la respuesta de un comentario:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Leer comentario

Aspose.Words apoyo para leer la respuesta de un comentario. El [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) propiedad devuelve una colección de la [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) objetos que son niños inmediatos del comentario especificado.

El siguiente ejemplo de código muestra cómo se iteran a través de las respuestas de un comentario y las resolvió:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
