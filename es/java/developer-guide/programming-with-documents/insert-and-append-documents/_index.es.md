---
title: Insertar y anexar documentos en Java
second_title: Aspose.Words por Java
articleTitle: Insertar y Adjuntar Documentos
linktitle: Insertar y Adjuntar Documentos
description: "Combine documentos en uno: inserte o agregue un documento a uno nuevo o existente mediante buscar y reemplazar, combinar campo, marcador o simplemente al final del documento en Java."
type: docs
weight: 80
url: /es/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

A veces es necesario combinar varios documentos en uno solo. Puede hacer esto manualmente o puede usar la función Aspose.Words insertar o agregar.

La operación insertar le permite insertar el contenido de documentos creados previamente en uno nuevo o existente.

A su vez, la función anexar le permite agregar un documento solo al final de otro documento.

En este artículo se explica cómo insertar o anexar un documento a otro de diferentes maneras y se describen las propiedades comunes que puede aplicar al insertar o anexar documentos.

## Insertar un Documento

Como se mencionó anteriormente, en Aspose.Words un documento se representa como un árbol de nodos, y la operación de insertar un documento en otro es copiar nodos del primer árbol de documentos al segundo.

Puede insertar documentos en una variedad de ubicaciones de diferentes maneras. Por ejemplo, puede insertar un documento a través de una operación de reemplazo, un campo de combinación durante una operación de combinación o mediante un marcador.

También puede utilizar el método [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) o [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions), que es similar a insertar un documento en Microsoft Word, para insertar un documento completo en la posición actual del cursor sin importar previamente.

El siguiente ejemplo de código muestra cómo insertar un documento utilizando el método **InsertDocument**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

El siguiente ejemplo de código muestra cómo insertar un documento utilizando el método **InsertDocumentInline**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Las siguientes subsecciones describen las opciones durante las cuales puede insertar un documento en otro.

### Insertar un Documento Durante la Operación de Búsqueda y reemplazo {#insert-a-document-during-find-and-replace-operation}

Puede insertar documentos mientras realiza operaciones de búsqueda y reemplazo. Por ejemplo, un documento puede contener párrafos con el texto [INTRODUCTION] y [CONCLUSION]. Pero en el documento final, debe reemplazar esos párrafos con el contenido obtenido de otro documento externo. Para lograrlo, deberá crear un controlador para el evento replace.

El siguiente ejemplo de código muestra cómo crear un controlador para el evento de reemplazo para usarlo más adelante en el proceso de inserción:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

El siguiente ejemplo de código muestra cómo insertar contenido de un documento en otro durante una operación de búsqueda y reemplazo:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Insertar un documento Durante la Operación Mail Merge {#insert-a-document-during-mail-merge-operation}

Puede insertar un documento en un campo de combinación durante una operación Mail Merge. Por ejemplo, una plantilla Mail Merge puede contener un campo de combinación como [Resumen]. Pero en el documento final, debe insertar contenido obtenido de otro documento externo en este campo de combinación. Para lograrlo, deberá crear un controlador para el evento de fusión.

El siguiente ejemplo de código muestra cómo crear un controlador para el evento de fusión para usarlo más adelante en el proceso de inserción:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

El siguiente ejemplo de código muestra cómo insertar un documento en el campo de combinación utilizando el controlador creado:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Insertar un documento en el Marcador

Puede importar un archivo de texto a un documento e insertarlo justo después de un marcador que haya definido en el documento. Para hacer esto, cree un párrafo marcado donde desee insertar el documento.

El siguiente ejemplo de codificación muestra cómo insertar el contenido de un documento en un marcador de otro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta que el marcador no debe incluir varios párrafos o texto que desee que aparezcan en el documento final resultante.

{{% /alert %}}

## Anexar un Documento

Es posible que tenga un caso de uso en el que necesite incluir páginas adicionales de un documento hasta el final de un documento existente. Para hacer esto, solo necesita llamar al método [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) para agregar un documento al final de otro.

{{% alert color="primary" %}}

Tenga en cuenta que [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) es un método a nivel de nodo dentro de un documento. Por ejemplo, puede crear un párrafo, establecer propiedades de formato y luego agregarlo como elemento secundario al cuerpo utilizando el método **AppendChild**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo anexar un documento al final de otro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importar e insertar nodos manualmente {#import-and-insert-nodes-manually}

Aspose.Words le permite insertar y adjuntar documentos automáticamente sin ningún requisito de importación previo. Sin embargo, si necesita insertar o agregar un nodo específico de su documento, como una sección o un párrafo, primero debe importar este nodo manualmente.

Cuando necesite insertar o agregar una sección o párrafo a otra, esencialmente necesita importar los nodos del primer árbol de nodos del documento al segundo utilizando el método [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean). Después de importar sus nodos, debe usar el método [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) para insertar un nuevo nodo después/antes del nodo de referencia. Esto le permite personalizar el proceso de inserción importando nodos de un documento e insertándolo en posiciones determinadas.

También puede usar el método [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) para agregar un nuevo nodo especificado al final de la lista de nodos secundarios, por ejemplo, si desea agregar contenido a nivel de párrafo en lugar de a nivel de sección.

El siguiente ejemplo de código muestra cómo importar nodos manualmente e insertarlos después de un nodo específico usando el método **InsertAfter**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

La importación crea un nuevo nodo que es una copia del nodo original y adecuado para insertarlo en el documento de destino.

{{% /alert %}}

El contenido se importa en el documento de destino sección por sección, lo que significa que la configuración, como la configuración de la página y los encabezados o pies de página, se conservan durante la importación. También es útil tener en cuenta que puede definir la configuración de formato al insertar o anexar un documento para especificar cómo se unen dos documentos.

## Propiedades comunes para Insertar y Anexar documentos {#common-properties-for-insert-and-append-documents}

Ambos métodos [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) y [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) aceptan [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) y [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) como parámetros de entrada. **ImportFormatMode** le permite controlar cómo se fusiona el formato del documento cuando importa contenido de un documento a otro seleccionando diferentes modos de formato, como [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) y [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). **ImportFormatOptions** le permite seleccionar diferentes opciones de importación, como [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), y [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words le permite ajustar la visualización de un documento resultante cuando se agregan dos documentos en una operación de inserción o anexión mediante las propiedades [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) y [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/). La propiedad **PageSetup** contiene todos los atributos de una sección, como [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), y otros. El caso de uso más común es establecer la propiedad **SectionStart** para definir si el contenido agregado aparecerá en la misma página o se dividirá en una nueva.

{{% alert color="primary" %}}

Tenga en cuenta que las propiedades **Section** y **PageSetup** no controlan cómo se insertan/anexan dos documentos juntos. Solo le permiten cambiar la apariencia de su documento de resultados.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo anexar un documento a otro evitando que el contenido se divida en dos páginas:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
