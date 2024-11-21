---
title: Trabajar con comentarios en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con comentarios
linktitle: Trabajar con comentarios
description: "Cómo agregar, eliminar o manipular comentarios en un documento usando Python."
type: docs
weight: 260
url: /es/python-net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Pruebe en línea**

Puedes probar esta funcionalidad con nuestro [Eliminar anotaciones online gratis](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite a los usuarios trabajar con comentarios: los comentarios en un documento en Aspose.Words están representados por la clase [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Utilice también las clases [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) para especificar la región de texto que debe asociarse con un comentario.

## Añadir un comentario

Aspose.Words le permite agregar comentarios de varias maneras:

1. Usando la clase [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. Usando las clases [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) y [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo usando la clase **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

El siguiente ejemplo de código muestra cómo agregar un comentario a un párrafo usando una región de texto y las clases **CommentRangeStart** y **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Extraer o eliminar comentarios

El uso de comentarios en un documento de Word (además del seguimiento de cambios) es una práctica común al revisar documentos, especialmente cuando hay varios revisores. Puede haber situaciones en las que lo único que necesitas de un documento son los comentarios. Supongamos que desea generar una lista de resultados de la revisión, o quizás ha recopilado toda la información útil del documento y simplemente desea eliminar comentarios innecesarios. Es posible que desee ver o eliminar los comentarios de un revisor en particular.

En este ejemplo veremos algunos métodos simples tanto para recopilar información de los comentarios dentro de un documento como para eliminar comentarios de un documento. Específicamente cubriremos cómo:

- Extraer todos los comentarios de un documento o solo los realizados por un autor en particular.
- Eliminar todos los comentarios de un documento o solo de un autor en particular.

### Cómo extraer o eliminar comentarios

El código de este ejemplo es bastante simple y todos los métodos se basan en el mismo enfoque. Un comentario en un documento de Word está representado por un objeto [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) en el modelo de objetos del documento Aspose.Words. Para recopilar todos los comentarios de un documento, utilice el método [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) con el primer parámetro establecido en [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Asegúrese de que el segundo parámetro del método **get_child_nodes** esté establecido en verdadero: esto obliga al **get_child_nodes** a seleccionar entre todos los nodos secundarios de forma recursiva, en lugar de recopilar solo los nodos secundarios inmediatos.

Para ilustrar cómo extraer y eliminar comentarios de un documento, seguiremos los siguientes pasos:

1. Abra un documento de Word usando la clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
1. Obtenga todos los comentarios del documento en una colección.
1. Para extraer comentarios:
  1. Revisa la colección usando el operador foreach.
  1. Extraiga y enumere el nombre del autor, la fecha y hora y el texto de todos los comentarios.
  1. Extraiga y enumere el nombre del autor, la fecha y hora y el texto de los comentarios escritos por un autor específico, en este caso el autor 'ks'
1. Para eliminar comentarios:
  1. Retroceda por la colección usando el operador for
  1. Eliminar comentarios
1. Guarde los cambios

### Cómo extraer todos los comentarios

El método [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) es muy útil y puedes usarlo cada vez que necesites obtener una lista de nodos de documentos de cualquier tipo. La colección resultante no crea una sobrecarga inmediata porque los nodos se seleccionan en esta colección solo cuando enumera o accede a los elementos que contiene.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, la fecha y hora y el texto de todos los comentarios del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Cómo extraer comentarios de un autor específico

Una vez que haya seleccionado nodos [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) en una colección, todo lo que tiene que hacer es extraer la información que necesita. En este ejemplo, las iniciales del autor, la fecha, la hora y el texto sin formato del comentario se combinan en una sola cadena; en su lugar, puede optar por almacenarlo de otras formas.

El método sobrecargado que extrae los comentarios de un autor en particular es casi el mismo, solo verifica el nombre del autor antes de agregar la información a la matriz.

El siguiente ejemplo de código muestra cómo extraer el nombre del autor, la fecha y hora y el texto de los comentarios del autor especificado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Cómo eliminar comentarios

Si está eliminando todos los comentarios, no es necesario desplazarse por la colección eliminando los comentarios uno por uno; puedes eliminarlos llamando a [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) en la colección de comentarios.

El siguiente ejemplo de código muestra cómo eliminar todos los comentarios del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Cuando necesita eliminar comentarios de forma selectiva, el proceso se vuelve más similar al código que utilizamos para la extracción de comentarios.

El siguiente ejemplo de código muestra cómo eliminar comentarios del autor especificado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

El punto principal a destacar aquí es el uso del operador for. A diferencia de la extracción simple, aquí desea eliminar un comentario. Un truco adecuado es iterar la colección hacia atrás desde el último [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) hasta el primero. La razón de esto es que si comienza desde el final y avanza hacia atrás, el índice de los elementos anteriores permanece sin cambios y puede regresar al primer elemento de la colección.

El siguiente ejemplo de código muestra los métodos para la extracción y eliminación de comentarios:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Cómo eliminar un comentario entre CommentRangeStart y CommentRangeEnd

Usando Aspose.Words también puedes eliminar comentarios entre los nodos **CommentRangeStart** y **CommentRangeEnd**.

El siguiente ejemplo de código muestra cómo eliminar texto entre **CommentRangeStart** y **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Agregar o eliminar la respuesta del comentario

El método [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) agrega una respuesta a este comentario. Tenga en cuenta que debido a las limitaciones existentes de Microsoft Office, solo se permite 1 nivel de respuestas en el documento. Se generará una excepción de tipo **InvalidOperationException** si se llama a este método en el comentario de respuesta existente.

Puede utilizar el método [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) para eliminar la respuesta especificada a este comentario.

El siguiente ejemplo de código muestra cómo agregar una respuesta a un comentario y eliminar la respuesta del comentario:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Leer la respuesta del comentario

La propiedad [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) devuelve una colección de objetos [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) que son hijos inmediatos del comentario especificado.

El siguiente ejemplo de código muestra cómo iterar a través de las respuestas de un comentario y resolverlas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}
