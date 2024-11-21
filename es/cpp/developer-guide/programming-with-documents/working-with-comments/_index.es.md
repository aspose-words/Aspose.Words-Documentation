---
title: Trabajar con comentarios en C++
second_title: Aspose.Words para C++
articleTitle: Trabajando con Comentarios
linktitle: Trabajando con Comentarios
description: "Trabajar con comentarios usando C++."
type: docs
weight: 260
url: /es/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Pruébalo en línea**

Puede probar esta funcionalidad con nuestro [Eliminar anotaciones en línea gratis](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite a los usuarios trabajar con comentarios: los comentarios en un documento en Aspose.Words están representados por la clase [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/). También use las clases [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) para especificar la región de texto que debe asociarse con un comentario.

## Agregar un Comentario

Aspose.Words le permite agregar comentarios de varias maneras:

1. Usando la clase [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)
2. Usando las clases [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo usando la clase **Comment**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo usando una región de texto y las clases **CommentRangeStart** y **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Extraer o Eliminar Comentarios

El uso de comentarios en un documento de Word (además de realizar un seguimiento de los cambios) es una práctica común al revisar documentos, especialmente cuando hay varios revisores. Puede haber situaciones en las que lo único que necesite de un documento sean los comentarios. Supongamos que desea generar una lista de los hallazgos de la revisión, o tal vez haya recopilado toda la información útil del documento y simplemente desee eliminar los comentarios innecesarios. Es posible que desee ver o eliminar los comentarios de un revisor en particular.

En este ejemplo, veremos algunos métodos simples tanto para recopilar información de los comentarios dentro de un documento como para eliminar comentarios de un documento. Específicamente, cubriremos cómo:

- Extraiga todos los comentarios de un documento o solo los realizados por un autor en particular.
- Elimine todos los comentarios de un documento o solo de un autor en particular.

### Cómo Extraer o Eliminar Comentarios

El código de este ejemplo es bastante simple y todos los métodos se basan en el mismo enfoque. Un comentario en un documento de Word está representado por un objeto [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) en el modelo de objetos de documento Aspose.Words. Para recopilar todos los comentarios en un documento, use el método [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) con el primer parámetro establecido en [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). Asegúrese de que el segundo parámetro del método **GetChildNodes** esté establecido en verdadero: esto obliga al **GetChildNodes** a seleccionar de todos los nodos secundarios de forma recursiva, en lugar de recopilar solo los secundarios inmediatos.

Para ilustrar cómo extraer y eliminar comentarios de un documento, realizaremos los siguientes pasos:

1. Abra un documento de Word con la clase [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. Obtener todos los comentarios del documento en una colección
1. Para extraer comentarios:
   1. Ir a través de la colección usando el operador foreach
   1. Extraiga y enumere el nombre del autor, la fecha y hora y el texto de todos los comentarios
   1. Extraiga y enumere el nombre del autor, la fecha y hora y el texto de los comentarios escritos por un autor específico, en este caso, el autor 'ks'
1. Para eliminar comentarios:
   1. Retroceda a través de la colección usando el operador para
   1. Eliminar comentarios
1. Guarde los cambios

### Cómo Extraer Todos los Comentarios

El método **GetChildNodes** es muy útil y puede usarlo cada vez que necesite obtener una lista de nodos de documentos de cualquier tipo. La colección resultante no crea una sobrecarga inmediata porque los nodos se seleccionan en esta colección solo cuando enumera o accede a elementos en ella.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, la fecha y hora y el texto de todos los comentarios del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Cómo Extraer Comentarios de un Autor Específico

Una vez que haya seleccionado nodos de comentarios en una colección, todo lo que tiene que hacer es extraer la información que necesita. En este ejemplo, las iniciales del autor, la fecha, la hora y el texto sin formato del comentario se combinan en una cadena; en su lugar, puede optar por almacenarlo de otras maneras.

El método sobrecargado que extrae los comentarios de un autor en particular es casi el mismo, solo verifica el nombre del autor antes de agregar la información a la matriz.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, la fecha y hora y el texto de los comentarios del autor especificado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Cómo Eliminar Comentarios

Si está eliminando todos los comentarios, no es necesario moverse por la colección eliminando comentarios uno por uno; puede eliminarlos llamando a `NodeCollection.Clear` en la colección de comentarios.

El siguiente ejemplo de código muestra cómo eliminar todos los comentarios del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Cuando necesita eliminar comentarios de forma selectiva, el proceso se vuelve más similar al código que usamos para la extracción de comentarios.

El siguiente ejemplo de código muestra cómo eliminar comentarios del autor especificado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

El punto principal a destacar aquí es el uso del operador for. A diferencia de la extracción simple, aquí desea eliminar un comentario. Un truco adecuado es iterar la colección hacia atrás desde el último comentario hasta el primero. La razón de esto es que si comienza desde el final y retrocede, el índice de los elementos anteriores permanece sin cambios y puede volver al primer elemento de la colección.

El siguiente ejemplo de código muestra los métodos para la extracción y eliminación de comentarios:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Cómo eliminar un comentario entre CommentRangeStart y CommentRangeEnd

Usando Aspose.Words también puede eliminar comentarios entre los nodos **CommentRangeStart** y **CommentRangeEnd**.

El siguiente ejemplo de código muestra cómo eliminar texto entre **CommentRangeStart** y **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Agregar y Eliminar la Respuesta del Comentario

El método [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) agrega una respuesta a este comentario. Tenga en cuenta que, debido a las limitaciones existentes de Microsoft Office, solo se permite el nivel 1 de respuestas en el documento. Se generará una excepción de tipo *InvalidOperationException* si se llama a este método en el comentario de respuesta existente.

Puede usar el método [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) para eliminar la respuesta especificada a este comentario.

El siguiente ejemplo de código muestra cómo agregar una respuesta al comentario y eliminar la respuesta del comentario:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Leer la Respuesta del Comentario

La propiedad [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) devuelve una colección de los **Comment** objetos que son hijos inmediatos del comentario especificado.

El siguiente ejemplo de código muestra cómo iterar a través de las respuestas de un comentario y resolverlas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
