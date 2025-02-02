---
title: Seguimiento de cambios en un documento en C#
second_title: Aspose.Words para .NET
articleTitle: Seguimiento de cambios en un documento
linktitle: Seguimiento de cambios en un documento
description: "Realice un seguimiento de los cambios de contenido y formato realizados por usted u otras personas mediante C#. Acceda a revisiones individuales en un documento y aplíqueles varias propiedades."
type: docs
weight: 270
url: /es/net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

La funcionalidad de seguimiento de cambios, también conocida como revisión, le permite realizar un seguimiento de los cambios en el contenido y el formato realizados por usted u otros usuarios. Esta función de seguimiento de cambios con Aspose.Words admite seguimiento de cambios en Microsoft Word. Con esta funcionalidad, puede acceder a revisiones individuales en su documento y aplicarles diferentes propiedades.

Cuando habilita la función de seguimiento de cambios, todos los elementos insertados, eliminados y modificados del documento se resaltarán visualmente con información sobre quién, cuándo y qué se modificó. Los objetos que contienen información sobre lo que se cambió se denominan "seguimiento de cambios". Por ejemplo, supongamos que desea revisar un documento y realizar cambios importantes; esto puede significar que necesita realizar revisiones. Además, es posible que necesite insertar comentarios para analizar algunos de los cambios. Ahí es donde entra en juego el seguimiento de cambios en los documentos.

Este artículo explica cómo administrar y realizar un seguimiento de los cambios creados por muchos revisores en el mismo documento, así como las propiedades para realizar un seguimiento de los cambios.

{{% alert color="primary" %}}

Tenga en cuenta que la función de comentarios en Aspose.Words, así como en Microsoft Word, se puede asociar con el seguimiento de cambios. Sin embargo, recuerde que los comentarios son completamente independientes del seguimiento de los cambios.

{{% /alert %}}

## ¿Qué es una revisión?

Antes de sumergirnos en las revisiones, expliquemos el significado de las revisiones. Un [revision](https://reference.aspose.com/words/es/net/aspose.words/revision/) es un cambio que ocurre en un nodo de un documento, mientras que un grupo de revisión, representado por la clase [RevisionGroup](https://reference.aspose.com/words/es/net/aspose.words/revision/group/), es un grupo de revisiones secuenciales que ocurren en muchos nodos de un documento. Básicamente, la revisión es una herramienta para rastrear cambios.

Las revisiones se utilizan en la función de seguimiento de cambios y dentro de la función de comparación de documentos, donde las revisiones aparecen como resultado de la comparación. Por lo tanto, las revisiones dentro de la función de seguimiento de cambios muestran quién y qué se modificó.

{{% alert color="primary" %}}

Tenga en cuenta que Microsoft Word no le permite ver revisiones individuales, solo le permite ver revisiones secuenciales como una sola entidad. Pero Aspose.Words soluciona esta limitación con la clase **RevisionGroup**.

{{% /alert %}}

Aspose.Words admite diferentes tipos de revisión, así como en Microsoft Word, como inserción, eliminación, cambio de formato, cambio de definición de estilo y movimiento. Todos los tipos de revisión se representan con la enumeración [RevisionType](https://reference.aspose.com/words/es/net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Tenga en cuenta que las revisiones tienen un resultado similar a Microsoft Word, pero Aspose.Words no detecta el formato durante el seguimiento de los cambios.

{{% /alert %}}

## Iniciar y detener el seguimiento de cambios

Por lo general, la edición de un documento no cuenta como revisión hasta que comienzas a rastrearlo. Aspose.Words le permite realizar un seguimiento automático de todos los cambios en su documento con pasos simples. Puede iniciar fácilmente el proceso de seguimiento de cambios utilizando el método [StartTrackRevisions](https://reference.aspose.com/words/es/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/). Si necesita detener el proceso de seguimiento de cambios para que cualquier edición futura no se considere revisión, deberá utilizar el método [StopTrackRevisions](https://reference.aspose.com/words/es/net/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Tenga en cuenta que el método `StartTrackingRevisions` no cambia el estado de la propiedad [TrackRevisions](https://reference.aspose.com/words/es/net/aspose.words/document/trackrevisions/) y no utiliza su valor con fines de seguimiento de revisiones. Además, si un nodo se movió de una ubicación a otra dentro del documento rastreado, se crearán revisiones de movimiento, incluido el rango de movimiento desde y hacia.

{{% /alert %}}

Al final del proceso de seguimiento de cambios en su documento, podrá incluso aceptar todas las revisiones o rechazarlas para revertir el documento a su forma original. Esto se puede lograr utilizando el método [AcceptAllRevisions](https://reference.aspose.com/words/es/net/aspose.words/document/acceptallrevisions/) o [RejectAll](https://reference.aspose.com/words/es/net/aspose.words/revisioncollection/rejectall/). Además, puede aceptar o rechazar cada revisión por separado utilizando el método [Accept](https://reference.aspose.com/words/es/net/aspose.words/revision/accept/) o [Reject](https://reference.aspose.com/words/es/net/aspose.words/revision/reject/).

Se realizará un seguimiento de todos los cambios durante una iteración desde el momento en que inicia el proceso hasta el momento en que lo detiene. La conexión entre diferentes iteraciones se representa en el siguiente escenario: usted completa el proceso de seguimiento, luego realiza algunos cambios y comienza a realizar el seguimiento de los cambios nuevamente. Con este escenario, todos los cambios que no aceptó o rechazó se mostrarán nuevamente.

{{% alert color="primary" %}}

Tenga en cuenta que el método `AcceptAllRevisions` es similar a "Aceptar todos los cambios" en Microsoft Word.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo trabajar con el seguimiento de cambios:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

El siguiente ejemplo de código muestra cómo se generan las revisiones cuando se mueve un nodo dentro de un documento rastreado:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Administrar y almacenar cambios como revisiones

Con la función de seguimiento de cambios anterior, puede comprender qué cambios se realizaron en su documento y quién los realizó. Mientras utiliza la función [TrackRevisions](https://reference.aspose.com/words/es/net/aspose.words/document/trackrevisions/), fuerza que cualquier cambio dentro de su documento se almacene como revisiones.

Aspose.Words permite comprobar si un documento tiene revisión o no mediante la propiedad [HasRevision](https://reference.aspose.com/words/es/net/aspose.words/document/hasrevisions/). Si no necesita realizar un seguimiento automático de los cambios en su documento a través de los métodos StartTrackRevisions y StopTrackRevisions, puede usar la propiedad `TrackRevisions` para verificar si se realiza un seguimiento de los cambios mientras se edita un documento en Microsoft Word y se almacena como revisiones.

La función `TrackRevisions` realiza revisiones en lugar de cambios reales de DOM. Pero las revisiones en sí son independientes. Por ejemplo, si elimina un párrafo, Aspose.Words lo convierte en una revisión y lo marca como eliminado, en lugar de eliminarlo.

Además, Aspose.Words le permite verificar si un objeto se insertó, eliminó o cambió de formato utilizando las propiedades [IsDeleteRevision](https://reference.aspose.com/words/es/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/es/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/es/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/es/net/aspose.words/inline/ismovefromrevision/) y [IsMoveToRevision](https://reference.aspose.com/words/es/net/aspose.words/inline/ismovetorevision/).

{{% alert color="primary" %}}

Tenga en cuenta que no existe ninguna conexión entre las revisiones mismas y la propiedad `TrackRevisions`. Además, puede aceptar/rechazar revisiones independientemente de la función de seguimiento de cambios.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo aplicar diferentes propiedades con revisiones:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
