---
title: Insertar y adjuntar documentos
second_title: Aspose.Words para Python via .NET
articleTitle: Insertar y adjuntar documentos
linktitle: Insertar y adjuntar documentos
description: "Combine documentos en uno: inserte o agregue un documento a uno nuevo o existente usando buscar y reemplazar, fusionar campos, marcadores o simplemente al final del documento en Python."
type: docs
weight: 80
url: /es/python-net/insert-and-append-documents/
---

A veces es necesario combinar varios documentos en uno. Puede hacer esto manualmente o puede usar la función de inserción o adición de Aspose.Words.

La operación de inserción le permite insertar el contenido de documentos creados previamente en uno nuevo o existente.

A su vez, la función de agregar le permite agregar un documento solo al final de otro documento.

Este artículo explica cómo insertar o adjuntar un documento a otro de diferentes maneras y describe las propiedades comunes que puede aplicar al insertar o agregar documentos.

## Insertar un documento

Como se mencionó anteriormente, en Aspose.Words un documento se representa como un árbol de nodos, y la operación de insertar un documento en otro es copiar nodos del primer árbol de documentos al segundo.

Puede insertar documentos en una variedad de ubicaciones de diferentes maneras. Por ejemplo, puede insertar un documento mediante una operación de reemplazo, un campo de combinación durante una operación de combinación o mediante un marcador.

También puede utilizar el método [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) o [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), que es similar a insertar un documento en Microsoft Word, para insertar un documento completo en la posición actual del cursor sin ninguna importación previa.

El siguiente ejemplo de código muestra cómo insertar un documento utilizando el método **insertar_documento**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

El siguiente ejemplo de código muestra cómo insertar un documento utilizando el método **insertar_documento_en línea**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Las siguientes subsecciones describen las opciones durante las cuales puede insertar un documento en otro.

### Insertar un documento en marcador

Puede importar un archivo de texto a un documento e insertarlo justo después de un marcador que haya definido en el documento. Para hacer esto, cree un párrafo marcado donde desea insertar el documento.

El siguiente ejemplo de codificación muestra cómo insertar el contenido de un documento en un marcador de otro documento:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Tenga en cuenta que el marcador no debe incluir varios párrafos o texto que desee que aparezcan en el documento final.

{{% /alert %}}

## Agregar un documento

Es posible que tenga un caso de uso en el que necesite incluir páginas adicionales de un documento hasta el final de un documento existente. Para hacer esto, solo necesitas llamar al método [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) para agregar un documento al final de otro.

{{% alert color="primary" %}}

Tenga en cuenta que [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) es un método a nivel de nodo dentro de un documento. Por ejemplo, puede crear un párrafo, establecer propiedades de formato y luego agregarlo como elemento secundario al cuerpo usando el método [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo agregar un documento al final de otro documento:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Importar e insertar nodos manualmente

Aspose.Words le permite insertar y adjuntar documentos automáticamente sin ningún requisito de importación previo. Sin embargo, si necesita insertar o agregar un nodo específico de su documento, como una sección o un párrafo, primero debe importar este nodo manualmente.

Cuando necesite insertar o agregar una sección o párrafo a otro, básicamente necesita importar los nodos del primer árbol de nodos del documento al segundo usando el método [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). Después de importar sus nodos, debe utilizar el método [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) para insertar un nuevo nodo después/antes del nodo de referencia. Esto le permite personalizar el proceso de inserción importando nodos de un documento e insertándolos en posiciones determinadas.

También puede utilizar el método [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) para agregar un nuevo nodo especificado al final de la lista de nodos secundarios, por ejemplo, si desea agregar contenido a nivel de párrafo en lugar de a nivel de sección.

El siguiente ejemplo de código muestra cómo importar nodos manualmente e insertarlos después de un nodo específico usando el método [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

La importación crea un nuevo nodo que es una copia del nodo original y adecuado para su inserción en el documento de destino.

{{% /alert %}}

El contenido se importa al documento de destino sección por sección, lo que significa que la configuración, como la configuración de página y los encabezados o pies de página, se conservan durante la importación. También es útil tener en cuenta que puede definir configuraciones de formato cuando inserta o adjunta un documento para especificar cómo se unen dos documentos.

## Propiedades comunes para insertar y anexar documentos

Tanto el método [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) como el [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) aceptan [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) y [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) como parámetros de entrada. [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) le permite controlar cómo se combina el formato del documento cuando importa contenido de un documento a otro seleccionando diferentes modos de formato, como [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) y [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). El [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) le permite seleccionar diferentes opciones de importación como [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) y [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words le permite ajustar la visualización de un documento resultante cuando se agregan dos documentos en una operación de inserción o adición utilizando [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) y [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). La propiedad [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) contiene todos los atributos de una sección como [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) y otros. El caso de uso más común es establecer la propiedad [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) para definir si el contenido agregado aparecerá en la misma página o se dividirá en una nueva.

{{% alert color="primary" %}}

Tenga en cuenta que [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) y [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) no controlan cómo se insertan o adjuntan dos documentos. Sólo le permiten cambiar la apariencia de su documento de resultados.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo adjuntar un documento a otro evitando que el contenido se divida en dos páginas:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
