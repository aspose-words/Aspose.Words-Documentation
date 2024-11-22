---
title: Insertar y adjuntar documentos en C#
second_title: Aspose.Words para .NET
articleTitle: Insertar y adjuntar documentos
linktitle: Insertar y adjuntar documentos
description: "Combine documentos en uno: inserte o agregue un documento a uno nuevo o existente usando buscar y reemplazar, fusionar campos, marcadores o simplemente al final del documento en C#."
type: docs
weight: 80
url: /es/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

A veces es necesario combinar varios documentos en uno. Puede hacer esto manualmente o puede usar la función de inserción o adición de Aspose.Words.

La operación de inserción le permite insertar el contenido de documentos creados previamente en uno nuevo o existente.

A su vez, la función de agregar le permite agregar un documento solo al final de otro documento.

Este artículo explica cómo insertar o adjuntar un documento a otro de diferentes maneras y describe las propiedades comunes que puede aplicar al insertar o agregar documentos.

## Insertar un documento {#insert-a-document}

Como se mencionó anteriormente, en Aspose.Words un documento se representa como un árbol de nodos, y la operación de insertar un documento en otro es copiar nodos del primer árbol de documentos al segundo.

Puede insertar documentos en una variedad de ubicaciones de diferentes maneras. Por ejemplo, puede insertar un documento mediante una operación de reemplazo, un campo de combinación durante una operación de combinación o mediante un marcador.

También puede utilizar el método [InsertDocument](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) o [InsertDocumentInline](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertdocumentinline/), que es similar a insertar un documento en Microsoft Word, para insertar un documento completo en la posición actual del cursor sin ninguna importación previa.

El siguiente ejemplo de código muestra cómo insertar un documento utilizando el método **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

El siguiente ejemplo de código muestra cómo insertar un documento utilizando el método **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Las siguientes subsecciones describen las opciones durante las cuales puede insertar un documento en otro.

### Insertar un documento durante la operación de buscar y reemplazar {#insert-a-document-during-find-and-replace-operation}

Puede insertar documentos mientras realiza operaciones de búsqueda y reemplazo. Por ejemplo, un documento puede contener párrafos con el texto [INTRODUCCIÓN] y [CONCLUSIÓN]. Pero en el documento final es necesario sustituir esos párrafos por el contenido obtenido de otro documento externo. Para lograrlo, necesitará crear un controlador para el evento de reemplazo.

El siguiente ejemplo de código muestra cómo crear un controlador para el evento de reemplazo para usarlo más adelante en el proceso de inserción:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

El siguiente ejemplo de código muestra cómo insertar el contenido de un documento en otro durante una operación de búsqueda y reemplazo:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Insertar un documento durante la operación Mail Merge {#insert-a-document-during-mail-merge-operation}

Puede insertar un documento en un campo de combinación durante una operación mail merge. Por ejemplo, una plantilla Mail Merge puede contener un campo de combinación como [Resumen]. Pero en el documento final, debe insertar contenido obtenido de otro documento externo en este campo de combinación. Para lograrlo, necesitará crear un controlador para el evento de fusión.

El siguiente ejemplo de código muestra cómo crear un controlador para el evento de fusión para usarlo más adelante en el proceso de inserción:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

El siguiente ejemplo de código muestra cómo insertar un documento en el campo de combinación utilizando el controlador creado:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Insertar un documento en Marcador {#insert-a-document-at-bookmark}

Puede importar un archivo de texto a un documento e insertarlo justo después de un marcador que haya definido en el documento. Para hacer esto, cree un párrafo marcado donde desea insertar el documento.

El siguiente ejemplo de codificación muestra cómo insertar el contenido de un documento en un marcador de otro documento:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Tenga en cuenta que el marcador no debe incluir varios párrafos o texto que desee que aparezcan en el documento final.

{{% /alert %}}

## Adjuntar un documento {#append-a-document}

Es posible que tenga un caso de uso en el que necesite incluir páginas adicionales de un documento hasta el final de un documento existente. Para hacer esto, solo necesitas llamar al método [AppendDocument](https://reference.aspose.com/words/es/net/aspose.words/document/appenddocument/) para agregar un documento al final de otro.

{{% alert color="primary" %}}

Tenga en cuenta que [AppendChild](https://reference.aspose.com/words/es/net/aspose.words/compositenode/appendchild/) es un método a nivel de nodo dentro de un documento. Por ejemplo, puede crear un párrafo, establecer propiedades de formato y luego agregarlo como elemento secundario al cuerpo usando el método **AppendChild**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar un documento al final de otro documento:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Importar e insertar nodos manualmente {#import-and-insert-nodes-manually}

Aspose.Words le permite insertar y adjuntar documentos automáticamente sin ningún requisito de importación previo. Sin embargo, si necesita insertar o agregar un nodo específico de su documento, como una sección o un párrafo, primero debe importar este nodo manualmente.

Cuando necesite insertar o agregar una sección o párrafo a otro, básicamente necesita importar los nodos del primer árbol de nodos del documento al segundo usando el método [ImportNode](https://reference.aspose.com/words/es/net/aspose.words/nodeimporter/importnode/). Después de importar sus nodos, debe utilizar el método [InsertAfter](https://reference.aspose.com/words/es/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/es/net/aspose.words/compositenode/insertbefore/) para insertar un nuevo nodo después/antes del nodo de referencia. Esto le permite personalizar el proceso de inserción importando nodos de un documento e insertándolos en posiciones determinadas.

También puede utilizar el método [AppendChild](https://reference.aspose.com/words/es/net/aspose.words/compositenode/appendchild/) para agregar un nuevo nodo especificado al final de la lista de nodos secundarios, por ejemplo, si desea agregar contenido a nivel de párrafo en lugar de a nivel de sección.

El siguiente ejemplo de código muestra cómo importar nodos manualmente e insertarlos después de un nodo específico usando el método **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

La importación crea un nuevo nodo que es una copia del nodo original y adecuado para su inserción en el documento de destino.

{{% /alert %}}

El contenido se importa al documento de destino sección por sección, lo que significa que la configuración, como la configuración de página y los encabezados o pies de página, se conservan durante la importación. También es útil tener en cuenta que puede definir configuraciones de formato cuando inserta o adjunta un documento para especificar cómo se unen dos documentos.

## Propiedades comunes para insertar y anexar documentos {#common-properties-for-insert-and-append-documents}

Tanto el método [InsertDocument](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertdocument/) como el [AppendDocument](https://reference.aspose.com/words/es/net/aspose.words/document/appenddocument/) aceptan [ImportFormatMode](https://reference.aspose.com/words/es/net/aspose.words/importformatmode/) y [ImportFormatOptions](https://reference.aspose.com/words/es/net/aspose.words/importformatoptions/) como parámetros de entrada. **ImportFormatMode** le permite controlar cómo se combina el formato del documento cuando importa contenido de un documento a otro seleccionando diferentes modos de formato, como [UseDestinationStyles](https://reference.aspose.com/words/es/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/es/net/aspose.words/importformatmode/) y [KeepDifferentStyles](https://reference.aspose.com/words/es/net/aspose.words/importformatmode/). El **ImportFormatOptions** le permite seleccionar diferentes opciones de importación como [IgnoreHeaderFooter](https://reference.aspose.com/words/es/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/es/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/es/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/es/net/aspose.words/importformatoptions/mergepastedlists/) y [SmartStyleBehavior](https://reference.aspose.com/words/es/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words le permite ajustar la visualización de un documento resultante cuando se agregan dos documentos en una operación de inserción o adición mediante el uso de las propiedades [Section](https://reference.aspose.com/words/es/net/aspose.words/section/) y [PageSetup](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/pagesetup/). La propiedad **PageSetup** contiene todos los atributos de una sección como [SectionStart](https://reference.aspose.com/words/es/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/es/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/es/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/es/net/aspose.words/pagesetup/orientation/) y otros. El caso de uso más común es establecer la propiedad **SectionStart** para definir si el contenido agregado aparecerá en la misma página o se dividirá en una nueva.

{{% alert color="primary" %}}

Tenga en cuenta que las propiedades **Section** y **PageSetup** no controlan cómo se insertan/añaden dos documentos juntos. Sólo le permiten cambiar la apariencia de su documento de resultados.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo adjuntar un documento a otro evitando que el contenido se divida en dos páginas:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
