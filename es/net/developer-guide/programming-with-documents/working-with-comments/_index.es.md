---
title: Trabajar con comentarios en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con comentarios
linktitle: Trabajar con comentarios
description: "Trabajar con comentarios usando C#."
type: docs
weight: 260
url: /es/net/working-with-comments/
---

{{% alert color="primary" %}}

**Pruebe en línea**

Puedes probar esta funcionalidad con nuestro [Eliminar anotaciones online gratis](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite a los usuarios trabajar con comentarios: los comentarios en un documento en Aspose.Words están representados por la clase [Comment](https://reference.aspose.com/words/es/net/aspose.words/comment/). Utilice también las clases [CommentRangeStart](https://reference.aspose.com/words/es/net/aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/es/net/aspose.words/commentrangeend/) para especificar la región de texto que debe asociarse con un comentario.

## Añadir un comentario

Aspose.Words le permite agregar comentarios de varias maneras:

1. Usando la clase [Comment](https://reference.aspose.com/words/es/net/aspose.words/comment/)
2. Usando las clases [CommentRangeStart](https://reference.aspose.com/words/es/net/aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/es/net/aspose.words/commentrangeend/)

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo usando la clase **Comment**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo usando una región de texto y las clases **CommentRangeStart** y **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## Extraer o eliminar comentarios

El uso de comentarios en un documento de Word (además del seguimiento de cambios) es una práctica común al revisar documentos, especialmente cuando hay varios revisores. Puede haber situaciones en las que lo único que necesitas de un documento son los comentarios. Supongamos que desea generar una lista de resultados de la revisión, o quizás ha recopilado toda la información útil del documento y simplemente desea eliminar comentarios innecesarios. Es posible que desee ver o eliminar los comentarios de un revisor en particular.

En este ejemplo veremos algunos métodos simples tanto para recopilar información de los comentarios dentro de un documento como para eliminar comentarios de un documento. Específicamente cubriremos cómo:

- Extraer todos los comentarios de un documento o solo los realizados por un autor en particular
- Eliminar todos los comentarios de un documento o solo de un autor en particular

### Cómo extraer o eliminar comentarios

El código de este ejemplo es bastante simple y todos los métodos se basan en el mismo enfoque. Un comentario en un documento de Word está representado por un objeto [Comment](https://reference.aspose.com/words/es/net/aspose.words/comment/) en el modelo de objetos del documento Aspose.Words. Para recopilar todos los comentarios de un documento, utilice el método [GetChildNodes](https://reference.aspose.com/words/es/net/aspose.words/compositenode/getchildnodes/) con el primer parámetro establecido en [NodeType.Comment](https://reference.aspose.com/words/es/net/aspose.words/nodetype/). Asegúrese de que el segundo parámetro del método **GetChildNodes** esté establecido en verdadero: esto obliga al **GetChildNodes** a seleccionar entre todos los nodos secundarios de forma recursiva, en lugar de recopilar solo los nodos secundarios inmediatos.

Para ilustrar cómo extraer y eliminar comentarios de un documento, seguiremos los siguientes pasos:

1. Abra un documento de Word usando la clase [Document](https://reference.aspose.com/words/es/net/aspose.words/document/).
2. Obtenga todos los comentarios del documento en una colección.
3. Para extraer comentarios:
  1. Revisa la colección usando el operador foreach.
  2. Extraiga y enumere el nombre del autor, la fecha y hora y el texto de todos los comentarios.
  3. Extraiga y enumere el nombre del autor, la fecha y hora y el texto de los comentarios escritos por un autor específico, en este caso el autor 'ks'
4. Para eliminar comentarios:
  1. Retroceda por la colección usando el operador for
  2. Eliminar comentarios
5. Guarde los cambios

### Cómo extraer todos los comentarios

El método **GetChildNodes** es muy útil y puedes usarlo cada vez que necesites obtener una lista de nodos de documentos de cualquier tipo. La colección resultante no crea una sobrecarga inmediata porque los nodos se seleccionan en esta colección solo cuando enumera o accede a los elementos que contiene.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, la fecha y hora y el texto de todos los comentarios del documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### Cómo extraer comentarios de un autor específico

Una vez que haya seleccionado nodos **Comment** en una colección, todo lo que tiene que hacer es extraer la información que necesita. En este ejemplo, las iniciales del autor, la fecha, la hora y el texto sin formato del comentario se combinan en una sola cadena; en su lugar, puede optar por almacenarlo de otras formas.

El método sobrecargado que extrae los comentarios de un autor en particular es casi el mismo, solo verifica el nombre del autor antes de agregar la información a la matriz.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, la fecha y hora y el texto de los comentarios del autor especificado:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### Cómo eliminar comentarios

Si está eliminando todos los comentarios, no es necesario desplazarse por la colección eliminando los comentarios uno por uno. Puede eliminarlos llamando al método [Clear](https://reference.aspose.com/words/es/net/aspose.words/nodecollection/clear/) en la colección de comentarios.

El siguiente ejemplo de código muestra cómo eliminar todos los comentarios del documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

Cuando necesita eliminar comentarios de forma selectiva, el proceso se vuelve más similar al código que utilizamos para la extracción de comentarios.

El siguiente ejemplo de código muestra cómo eliminar comentarios del autor especificado:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

El punto principal a destacar aquí es el uso del operador for. A diferencia de la extracción simple, aquí desea eliminar un comentario. Un truco adecuado es iterar la colección hacia atrás desde el último comentario hasta el primero. La razón de esto es que si comienza desde el final y avanza hacia atrás, el índice de los elementos anteriores permanece sin cambios y puede regresar al primer elemento de la colección.

El siguiente ejemplo de código muestra los métodos para la extracción y eliminación de comentarios:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Cómo eliminar un comentario entre CommentRangeStart y CommentRangeEnd

Usando Aspose.Words también puedes eliminar comentarios entre los nodos **CommentRangeStart** y **CommentRangeEnd**.

El siguiente ejemplo de código muestra cómo eliminar texto entre **CommentRangeStart** y **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## Agregar o quitar la respuesta del comentario

El método [AddReply](https://reference.aspose.com/words/es/net/aspose.words/comment/addreply/) agrega una respuesta a este comentario. Tenga en cuenta que debido a las limitaciones existentes de Microsoft Office, solo se permite 1 nivel de respuestas en el documento. Se generará una excepción de tipo *InvalidOperationException* si se llama a este método en el comentario de respuesta existente.

Puede utilizar el método [RemoveReply](https://reference.aspose.com/words/es/net/aspose.words/comment/removereply/) para eliminar la respuesta especificada a este comentario.

El siguiente ejemplo de código muestra cómo agregar una respuesta a un comentario y eliminar la respuesta del comentario:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## Leer la respuesta del comentario

La propiedad [Replies](https://reference.aspose.com/words/es/net/aspose.words/comment/replies/) devuelve una colección de objetos [Comment](https://reference.aspose.com/words/es/net/aspose.words/comment/) que son hijos inmediatos del comentario especificado.

El siguiente ejemplo de código muestra cómo iterar a través de las respuestas de un comentario y resolverlas:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
