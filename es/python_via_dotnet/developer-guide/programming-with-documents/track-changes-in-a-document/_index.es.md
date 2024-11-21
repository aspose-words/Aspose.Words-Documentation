---
title: Seguimiento de cambios en un documento
second_title: Aspose.Words para Python via .NET
articleTitle: Seguimiento de cambios en un documento
linktitle: Seguimiento de cambios en un documento
description: "Realice un seguimiento de los cambios de contenido y formato realizados por usted u otras personas mediante Python. Acceda a revisiones individuales en un documento y aplíqueles varias propiedades."
type: docs
weight: 270
url: /es/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

La funcionalidad de seguimiento de cambios, también conocida como revisión, le permite realizar un seguimiento de los cambios en el contenido y el formato realizados por usted u otros usuarios. Esta función de seguimiento de cambios con Aspose.Words admite seguimiento de cambios en Microsoft Word. Con esta funcionalidad, puede acceder a revisiones individuales en su documento y aplicarles diferentes propiedades.

Cuando habilita la función de seguimiento de cambios, todos los elementos insertados, eliminados y modificados del documento se resaltarán visualmente con información sobre quién, cuándo y qué se modificó. Los objetos que contienen información sobre lo que se cambió se denominan "seguimiento de cambios". Por ejemplo, supongamos que desea revisar un documento y realizar cambios importantes; esto puede significar que necesita realizar revisiones. Además, es posible que necesite insertar comentarios para analizar algunos de los cambios. Ahí es donde entra en juego el seguimiento de cambios en los documentos.

Este artículo explica cómo administrar y realizar un seguimiento de los cambios creados por muchos revisores en el mismo documento, así como las propiedades para realizar un seguimiento de los cambios.

{{% alert color="primary" %}}

Tenga en cuenta que la función de comentarios en Aspose.Words, así como en Microsoft Word, se puede asociar con el seguimiento de cambios. Sin embargo, recuerde que los comentarios son completamente independientes del seguimiento de los cambios.

{{% /alert %}}

## ¿Qué es una revisión?

Antes de sumergirnos en las revisiones, expliquemos el significado de las revisiones. Un [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) es un cambio que ocurre en un nodo de un documento, mientras que un grupo de revisión, representado por la clase [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/), es un grupo de revisiones secuenciales que ocurren en muchos nodos de un documento. Básicamente, la revisión es una herramienta para rastrear cambios.

Las revisiones se utilizan en la función de seguimiento de cambios y dentro de la función de comparación de documentos, donde las revisiones aparecen como resultado de la comparación. Por lo tanto, las revisiones dentro de la función de seguimiento de cambios muestran quién y qué se modificó.

{{% alert color="primary" %}}

Tenga en cuenta que Microsoft Word no le permite ver revisiones individuales, solo le permite ver revisiones secuenciales como una sola entidad. Pero Aspose.Words soluciona esta limitación con la clase [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/).

{{% /alert %}}

Aspose.Words admite diferentes tipos de revisión, así como en Microsoft Word, como inserción, eliminación, cambio de formato, cambio de definición de estilo y movimiento. Todos los tipos de revisión se representan con la enumeración [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Tenga en cuenta que las revisiones tienen un resultado similar a Microsoft Word, pero Aspose.Words no detecta el formato durante el seguimiento de los cambios.

{{% /alert %}}

## Iniciar y detener el seguimiento de cambios

La edición de un documento generalmente no cuenta como revisión hasta que comienzas a realizarle seguimiento. Aspose.Words le permite realizar un seguimiento automático de todos los cambios en su documento con pasos simples. Puede iniciar fácilmente el proceso de seguimiento de cambios utilizando el método [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/). Si necesita detener el proceso de seguimiento de cambios para que cualquier edición futura no se considere revisión, deberá utilizar el método [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/).

{{% alert color="primary" %}}

Tenga en cuenta que el método [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) no cambia el estado de la propiedad [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) y no utiliza su valor con fines de seguimiento de revisiones. Además, si un nodo se movió de una ubicación a otra dentro del documento rastreado, se crearán revisiones de movimiento, incluido el rango de movimiento desde y hacia.

{{% /alert %}}

Al final del proceso de seguimiento de cambios en su documento, podrá incluso aceptar todas las revisiones o rechazarlas para revertir el documento a su forma original. Esto se puede lograr utilizando el método [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) o [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/). Además, puede aceptar o rechazar cada revisión por separado utilizando el método [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) o [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/).

Se realizará un seguimiento de todos los cambios durante una iteración desde el momento en que inicia el proceso hasta el momento en que lo detiene. La conexión entre diferentes iteraciones se representa en el siguiente escenario: usted completa el proceso de seguimiento, luego realiza algunos cambios y comienza a realizar el seguimiento de los cambios nuevamente. Con este escenario, todos los cambios que no aceptó o rechazó se mostrarán nuevamente.

{{% alert color="primary" %}}

Tenga en cuenta que el método [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) es similar a "Aceptar todos los cambios" en Microsoft Word.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo trabajar con el seguimiento de cambios:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

El siguiente ejemplo de código muestra cómo se generan las revisiones cuando se mueve un nodo dentro de un documento rastreado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Administrar y almacenar cambios como revisiones

Con la función de seguimiento de cambios anterior, puede comprender qué cambios se realizaron en su documento y quién los realizó. Mientras utiliza la función [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/), fuerza que cualquier cambio dentro de su documento se almacene como revisiones.

Aspose.Words permite comprobar si un documento tiene revisión o no mediante la propiedad [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/). Si no necesita realizar un seguimiento automático de los cambios en su documento a través de los métodos start_track_revisions y stop_track_revisions, puede utilizar la propiedad [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) para comprobar si se realiza un seguimiento de los cambios mientras se edita un documento en Microsoft Word y se almacena como revisiones.

La función [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) realiza revisiones en lugar de cambios reales de DOM. Pero las revisiones en sí son independientes. Por ejemplo, si elimina un párrafo, Aspose.Words lo convierte en una revisión y lo marca como eliminado, en lugar de eliminarlo.

Además, Aspose.Words le permite verificar si un objeto se insertó, eliminó o cambió de formato utilizando las propiedades [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/) y [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/).

{{% alert color="primary" %}}

Tenga en cuenta que no existe ninguna conexión entre las revisiones mismas y la propiedad [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/). Además, puede aceptar/rechazar revisiones independientemente de la función de seguimiento de cambios.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo aplicar diferentes propiedades con revisiones:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
