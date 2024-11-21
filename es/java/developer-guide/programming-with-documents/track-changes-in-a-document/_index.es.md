---
title: Cambios de pista en un documento en Java
second_title: Aspose.Words para Java
articleTitle: Cambios de pista en un documento
linktitle: Cambios de pista en un documento
description: "Seguimiento de cambios en el contenido y el formato hecho por usted u otros. Acceda a revisiones individuales en un documento y aplique varias propiedades a ellas utilizando Java."
type: docs
weight: 270
url: /es/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

La funcionalidad de los cambios de pista, también conocido como revisión, permite realizar un seguimiento de los cambios en el contenido y el formato realizados por usted u otros usuarios. Esta función de cambios de pista con Aspose.Words soporta cambios de pista Microsoft Word. Con esta funcionalidad, puede acceder a revisiones individuales en su documento y aplicar diferentes propiedades a ellos.

Cuando active la función de cambios de pista, todos los elementos insertados, eliminados y modificados del documento serán resaltados visualmente con información sobre quién, cuándo y qué fue cambiado. Los objetos que llevan información sobre lo que se cambió se denominan "cambios de seguimiento". Por ejemplo, asuma que desea revisar un documento y hacer cambios importantes – esto puede significar que necesita hacer revisiones. Además, es posible que necesite insertar comentarios para discutir algunos de los cambios. Ahí es donde entran los cambios en los documentos.

Este artículo explica cómo gestionar y seguir los cambios creados por muchos revisores en el mismo documento, así como las propiedades para el seguimiento de los cambios.

{{% alert color="primary" %}}

Tenga en cuenta que la función de comentario en Aspose.Words, así como en Microsoft Word, se puede asociar con cambios de rastreo. Sin embargo, recuerde que los comentarios son completamente independientes de los cambios de seguimiento.

{{% /alert %}}

## Lo que es una revisión

Antes de sumergirse en revisiones, expliquemos el significado de las revisiones. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) es un cambio que ocurre en un nodo de documento mientras que un grupo de revisión, representado por el [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) clase, es un grupo de revisiones secuenciales que ocurren en muchos nodos de un documento. Revisión es una herramienta para el seguimiento de los cambios.

Las revisiones se utilizan en la función de seguimiento y dentro de la función de comparación de documentos, donde las revisiones aparecen como resultado de la comparación. Por lo tanto, revisiones dentro de la función de seguimiento de cambios muestra por quién y qué fue cambiado.

{{% alert color="primary" %}}

Note que Microsoft Word no le permite ver las revisiones individuales, sólo le permite ver las revisiones secuenciales como una sola entidad. Pero... Aspose.Words resuelve esta limitación con la **RevisionGroup** clase.

{{% /alert %}}

Aspose.Words apoya diferentes tipos de revisión, así como en Microsoft Word, tales como la inserción, eliminación, formato Cambio, StyleDefinition Cambio y movimiento. Todos los tipos de revisión están representados con [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) enumeración.

{{% alert color="primary" %}}

Note que las revisiones tienen un resultado similar a Microsoft Word pero Aspose.Words no detecta el formato durante el seguimiento de los cambios.

{{% /alert %}}

## Iniciar y dejar de seguir cambios

Editar un documento generalmente no cuenta como una revisión hasta que comience a rastrearlo. Aspose.Words le permite rastrear automáticamente todos los cambios en su documento con pasos simples. Puede iniciar fácilmente el proceso de seguimiento de los cambios utilizando el [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) método. Si necesita detener el proceso de seguimiento de los cambios para que cualquier edición futura no se considere revisiones, necesitará utilizar el [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) método.

{{% alert color="primary" %}}

Note que `StartTrackingRevisions` método no cambia el estado del [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) propiedad y no utiliza su valor para el seguimiento de revisión. Además, si un nodo se trasladó de un lugar a otro dentro del documento rastreado, se crearán revisiones de movimiento, incluyendo el desplazamiento y el movimiento a rango.

{{% /alert %}}

Al final del proceso de seguimiento de cambios en su documento, usted tendrá la capacidad de aceptar todas las revisiones o rechazarlas para revertir el documento a su forma original. Esto se puede lograr utilizando [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) o [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) método. Además, puede aceptar o rechazar cada revisión por separado utilizando la [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) o [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) método.

Todos los cambios serán rastreados por una iteración desde el momento en que comience el proceso hasta el momento en que lo detenga. La conexión entre diferentes iteraciones está representada como el siguiente escenario: completas el proceso de seguimiento, luego haces algunos cambios, y comienzas a seguir los cambios de nuevo. Con este escenario, todos los cambios que no aceptaste o rechazaste serán mostrados de nuevo.

{{% alert color="primary" %}}

Note que `AcceptAllRevisions` método es similar al "Aceptar todos los cambios" en Microsoft Word.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo trabajar con cambios de seguimiento:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

El siguiente ejemplo de código muestra cómo se generan revisiones cuando se mueve un nodo dentro de un documento rastreado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Gestionar y almacenar cambios como revisiones

Con la característica anterior de los cambios de seguimiento, usted puede entender qué cambios se hicieron en su documento y quién hizo esos cambios. Mientras que con el [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) característica, obliga a cualquier cambio dentro de su documento a ser almacenado como revisiones.

Aspose.Words le permite comprobar si un documento tiene una revisión o no usando el [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) propiedad. Si no necesita realizar un seguimiento automático de los cambios en su documento a través de los métodos StartTrackRevisions y StopTrackRevisions, entonces puede utilizar los métodos `TrackRevisions` propiedad para comprobar si los cambios son rastreados mientras se edita un documento Microsoft Word y almacenado como revisiones.

El `TrackRevisions` característica hace revisiones en lugar de real DOM cambios. Pero las propias revisiones son separadas. Por ejemplo, Si eliminas cualquier párrafo, Aspose.Words hacerlo como una revisión, marcando como eliminación, en lugar de borrarlo.

Además, Aspose.Words le permite comprobar si un objeto fue insertado, eliminado o cambiado formato utilizando el [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), y [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) propiedades.

{{% alert color="primary" %}}

Note que no hay conexión entre las revisiones mismas y las `TrackRevisions` propiedad. Además, puede aceptar/rechazar revisiones independientemente de la función de seguimiento de los cambios.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo aplicar diferentes propiedades con revisiones:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
