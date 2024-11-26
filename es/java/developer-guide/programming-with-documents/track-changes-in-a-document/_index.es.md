---
title: Realizar un seguimiento de los cambios en un documento en Java
second_title: Aspose.Words por Java
articleTitle: Realizar un seguimiento de los Cambios en un Documento
linktitle: Realizar un seguimiento de los Cambios en un Documento
description: "Realice un seguimiento de los cambios en el contenido y el formato realizados por usted u otros. Acceda a revisiones individuales en un documento y aplíqueles varias propiedades usando Java."
type: docs
weight: 270
url: /es/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

La funcionalidad de seguimiento de cambios, también conocida como revisión, le permite realizar un seguimiento de los cambios en el contenido y el formato realizados por usted u otros usuarios. Esta función de seguimiento de cambios con Aspose.Words admite el seguimiento de cambios en Microsoft Word. Con esta funcionalidad, puede acceder a revisiones individuales en su documento y aplicarles diferentes propiedades.

Cuando habilita la función Realizar un seguimiento de los cambios, todos los elementos insertados, eliminados y modificados del documento se resaltarán visualmente con información sobre quién, cuándo y qué se modificó. Los objetos que contienen información sobre lo que se cambió se denominan "seguimiento de cambios". Por ejemplo, suponga que desea revisar un documento y realizar cambios importantes; esto puede significar que necesita realizar revisiones. Además, es posible que deba insertar comentarios para analizar algunos de los cambios. Ahí es donde entra el seguimiento de los cambios en los documentos.

En este artículo se explica cómo administrar y realizar un seguimiento de los cambios creados por muchos revisores en el mismo documento, así como las propiedades para realizar un seguimiento de los cambios.

{{% alert color="primary" %}}

Tenga en cuenta que la función de comentarios en Aspose.Words, así como en Microsoft Word, se puede asociar con el seguimiento de cambios. Sin embargo, recuerde que los comentarios son completamente independientes del seguimiento de los cambios.

{{% /alert %}}

## Qué es una Revisión

Antes de sumergirnos en las revisiones, expliquemos el significado de las revisiones. Un [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) es un cambio que ocurre en un nodo de un documento, mientras que un grupo de revisiones, representado por la clase [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/), es un grupo de revisiones secuenciales que ocurren en muchos nodos de un documento. La revisión es una herramienta para rastrear cambios.

Las revisiones se utilizan en la función seguimiento de cambios y dentro de la función comparar documentos, donde aparecen revisiones como resultado de la comparación. Por lo tanto, las revisiones dentro de la función de seguimiento de cambios muestran quién y qué cambió.

{{% alert color="primary" %}}

Tenga en cuenta que Microsoft Word no le permite ver revisiones individuales, solo le permite ver revisiones secuenciales como una sola entidad. Pero Aspose.Words resuelve esta limitación con la clase **RevisionGroup**.

{{% /alert %}}

Aspose.Words admite diferentes tipos de revisión, así como en Microsoft Word, como Inserción, Eliminación, FormatChange, StyleDefinitionChange y Movimiento. Todos los tipos de revisión se representan con la enumeración [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/).

{{% alert color="primary" %}}

Tenga en cuenta que las revisiones tienen un resultado similar a Microsoft Word pero Aspose.Words no detecta el formato durante el seguimiento de los cambios.

{{% /alert %}}

## Iniciar y Detener el Seguimiento de Cambios

Editar un documento generalmente no cuenta como revisión hasta que comience a rastrearlo. Aspose.Words le permite realizar un seguimiento automático de todos los cambios en su documento con pasos simples. Puede iniciar fácilmente el proceso de seguimiento de cambios utilizando el método [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String). Si necesita detener el proceso de seguimiento de los cambios para que las ediciones futuras no se consideren revisiones, deberá utilizar el método [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions).

{{% alert color="primary" %}}

Tenga en cuenta que el método `StartTrackingRevisions` no cambia el estado de la propiedad [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) y no utiliza su valor para el seguimiento de revisiones. Además, si un nodo se movió de una ubicación a otra dentro del documento rastreado, se crearán revisiones de movimiento, incluido el rango de movimiento desde y hacia.

{{% /alert %}}

Al final del proceso de seguimiento de cambios en su documento, tendrá la posibilidad incluso de aceptar todas las revisiones o rechazarlas para revertir el documento a su forma original. Esto se puede lograr utilizando el método [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) o [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll). Además, puede aceptar o rechazar cada revisión por separado utilizando el método [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) o [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject).

Se realizará un seguimiento de todos los cambios durante una iteración desde el momento en que inicie el proceso hasta el momento en que lo detenga. La conexión entre diferentes iteraciones se representa como el siguiente escenario: completa el proceso de seguimiento, luego realiza algunos cambios y comienza a realizar el seguimiento de los cambios nuevamente. Con este escenario, todos los cambios que no aceptó o rechazó se mostrarán nuevamente.

{{% alert color="primary" %}}

Tenga en cuenta que el método `AcceptAllRevisions` es similar al método" Aceptar todos los cambios " en Microsoft Word.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo trabajar con el seguimiento de cambios:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

El siguiente ejemplo de código muestra cómo se generan las revisiones cuando se mueve un nodo dentro de un documento con seguimiento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Administre y Almacene los Cambios como Revisiones

Con la función de seguimiento de cambios anterior, puede comprender qué cambios se realizaron en su documento y quién los realizó. Mientras que con la función [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions), fuerza que cualquier cambio dentro de su documento se almacene como revisiones.

Aspose.Words le permite verificar si un documento tiene una revisión o no utilizando la propiedad [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions). Si no necesita realizar un seguimiento automático de los cambios en su documento a través de los métodos StartTrackRevisions y StopTrackRevisions, puede usar la propiedad `TrackRevisions` para verificar si se realiza un seguimiento de los cambios mientras edita un documento en Microsoft Word y se almacenan como revisiones.

La característica `TrackRevisions` realiza revisiones en lugar de cambios reales DOM. Pero las revisiones en sí mismas son independientes. Por ejemplo, si elimina un párrafo, Aspose.Words conviértalo en una revisión y márquelo como eliminación, en lugar de eliminarlo.

Además, Aspose.Words le permite comprobar si se insertó, eliminó o cambió el formato de un objeto mediante el [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), y [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) propiedades.

{{% alert color="primary" %}}

Tenga en cuenta que no hay conexión entre las revisiones mismas y la propiedad `TrackRevisions`. Además, puede aceptar / rechazar revisiones independientemente de la función de seguimiento de cambios.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo aplicar diferentes propiedades con revisiones:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
