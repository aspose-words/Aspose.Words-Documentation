---
title: Insertar y enviar documentos en Java
second_title: Aspose.Words para Java
articleTitle: Insertar y apéndice Documentos
linktitle: Insertar y apéndice Documentos
description: "Combine los documentos en uno: insertar o adjuntar un documento en uno nuevo o existente utilizando encontrar y reemplazar, fusionar el campo, marcar o simplemente al final del documento en Java."
type: docs
weight: 80
url: /es/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

A veces se requiere combinar varios documentos en uno. Usted puede hacer esto manualmente o puede utilizar Aspose.Words Introducir o adjuntar.

La operación de inserción le permite insertar el contenido de documentos creados anteriormente en uno nuevo o existente.

A su vez, la función del apéndice le permite añadir un documento sólo al final de otro documento.

Este artículo explica cómo insertar o anexar un documento a otro de diferentes maneras y describe las propiedades comunes que puede aplicar al insertar o apegar documentos.

## Insertar un documento

Como se mencionó anteriormente, en Aspose.Words un documento está representado como un árbol de nodos, y la operación de insertar un documento en otro es copiar nodos del primer árbol de documentos al segundo.

Puede insertar documentos en una variedad de lugares de diferentes maneras. Por ejemplo, puede insertar un documento a través de una operación de sustitución, un campo de fusión durante una operación de fusión, o a través de un marcador.

También puede utilizar el [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) o el [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) método, que es similar a insertar un documento en Microsoft Word, insertar un documento completo en la posición actual del cursor sin importar previamente.

El siguiente ejemplo de código muestra cómo insertar un documento usando el **InsertDocument** método:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

El siguiente ejemplo de código muestra cómo insertar un documento usando el **InsertDocumentInline** método:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Las siguientes subsecciones describen las opciones durante las cuales puede insertar un documento en otro.

### Insertar un documento durante la operación Find and Replace {#insert-a-document-during-find-and-replace-operation}

Puede insertar documentos mientras realiza operaciones de búsqueda y sustitución. Por ejemplo, un documento puede contener párrafos con el texto [INTRODUCCIÓN] y [CONCLUSIÓN]. Pero en el documento final, usted necesita reemplazar esos párrafos con el contenido obtenido de otro documento externo. Para lograrlo, necesitará crear un manejador para el evento de sustitución.

El siguiente ejemplo de código muestra cómo crear un manejador para el evento de sustitución para utilizarlo más adelante en el proceso de inserción:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

El siguiente ejemplo de código muestra cómo insertar el contenido de un documento en otro durante un hallazgo y reemplazar la operación:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Insertar un documento durante Mail Merge Operación {#insert-a-document-during-mail-merge-operation}

Puede insertar un documento en un campo de fusión durante un mail merge operación. Por ejemplo, a mail merge plantilla puede contener un campo de fusión como [Summary]. Pero en el documento final, debe insertar el contenido obtenido de otro documento externo en este campo de fusión. Para lograrlo, necesitará crear un manejador para el evento de fusión.

El siguiente ejemplo de código muestra cómo crear un manejador para el evento fusionado para utilizarlo más adelante en el proceso de inserción:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

El siguiente ejemplo de código muestra cómo insertar un documento en el campo de fusión utilizando el manejador creado:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Insertar un documento en Bookmark

Puede importar un archivo de texto en un documento e insertarlo justo después de un marcador que haya definido en el documento. Para ello, cree un párrafo marcado donde desea insertar el documento.

El siguiente ejemplo de codificación muestra cómo insertar el contenido de un documento a un marcador en otro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta que el marcador no debe adjuntar varios párrafos o texto que desea que aparezcan en su documento final resultante.

{{% /alert %}}

## Apéndice un documento

Usted puede tener un caso de uso donde necesita incluir páginas adicionales de un documento al final de un documento existente. Para hacer esto, solo tienes que llamar al [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) método para añadir un documento al final de otro.

{{% alert color="primary" %}}

Note que [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) es un método de nivel de nodo dentro de un documento. Por ejemplo, puede crear un párrafo, establecer propiedades de formato, y luego apéndice como un niño al cuerpo usando el **AppendChild** método.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo adjuntar un documento al final de otro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importar y insertar los nodos manualmente {#import-and-insert-nodes-manually}

Aspose.Words le permite insertar y anexar documentos automáticamente sin ningún requisito previo de importación. Sin embargo, si necesita insertar o anexar un nodo específico de su documento, como una sección o un párrafo, primero debe importar este nodo manualmente.

Cuando necesite insertar o anexar una sección o párrafo a otra, esencialmente necesita importar los nodos del primer árbol de nodos de documento en el segundo usando el [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) método. Después de importar sus nodos, necesita utilizar el [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) método para insertar un nuevo nodo después/antes del nodo de referencia. Esto le permite personalizar el proceso de inserción al importar nodos de un documento e insertarlo en posiciones dadas.

También puede utilizar el [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) método para añadir un nuevo nodo especificado al final de la lista de nodos infantiles, por ejemplo, si desea incluir contenido en el nivel del párrafo en lugar de en el nivel de sección.

El siguiente ejemplo de código muestra cómo importar manualmente nodos e insertarlos después de un nodo específico utilizando el **InsertAfter** método:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

La importación crea un nuevo nodo que es una copia del nodo original y adecuado para su inserción en el documento de destino.

{{% /alert %}}

El contenido se importa en la sección de documento de destino por sección, lo que significa que los ajustes, como configuración de página y encabezados o pies, se conservan durante la importación. También es útil señalar que puede definir la configuración de formato cuando inserta o anexa un documento para especificar cómo se unen dos documentos.

## Propiedades comunes para insertar y enviar documentos {#common-properties-for-insert-and-append-documents}

Ambos [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) y [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) métodos aceptados [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) y [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) como parámetros de entrada. El **ImportFormatMode** permite controlar cómo se fusiona el formato de documentos cuando importa contenido de un documento a otro seleccionando diferentes modos de formato, como [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), y [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). El **ImportFormatOptions** le permite seleccionar diferentes opciones de importación como [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), y [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words permite ajustar la visualización de un documento resultante cuando se agregan dos documentos juntos en una operación de inserción o apéndice utilizando el [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) y [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) propiedades. El **PageSetup** propiedad contiene todos los atributos de una sección como [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), y otros. El caso de uso más común es establecer el **SectionStart** propiedad para definir si el contenido añadido aparecerá en la misma página o se dividirá en una nueva.

{{% alert color="primary" %}}

Note que **Section** y **PageSetup** las propiedades no controlan cómo se insertan o anexan dos documentos juntos. Sólo te permiten cambiar la apariencia de tu documento de resultado.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo adjuntar un documento a otro manteniendo el contenido de dividirse en dos páginas:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
