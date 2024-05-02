---
title: Trabajando con las secciones en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con las secciones
linktitle: Trabajando con las secciones
description: "Comprensión de conceptos de sección de documentos y prácticas de manipulación Java. Insertar la sección en un documento Java. Quitar la sección Java. Copiar secciones entre Documentos."
type: docs
weight: 120
url: /es/java/working-with-sections/
---

A veces quieres un documento que no tenga el mismo formato en todas las páginas. Por ejemplo, es posible que necesite modificar los formatos de número de página, tener diferentes tamaños de página y orientación, o tener la primera página de documento como una página de portada sin numeración. Puedes lograrlo con secciones.

Las secciones son nodos de nivel que controlan los encabezados y los pies, orientación, columnas, márgenes, formato de página y otros.

Aspose.Words le permite gestionar secciones, dividir un documento en secciones, y hacer cambios de formato que se aplican sólo a una sección específica. Aspose.Words almacena información sobre el formato de sección, como cabeceras y calzados, configuración de página y configuración de columna en el descanso de la sección.

Este artículo explica cómo trabajar con secciones y cortes de sección.

## ¿Qué sección y sección se rompen es

Las secciones de documentos están representadas por [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) y [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) clases. Los objetos de sección son niños inmediatos [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) nodo y se puede acceder a través del [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) propiedad. Usted puede manejar esos nodos utilizando algunos métodos como [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), y otros.

El descanso de la sección es una opción que divide las páginas de documentos en secciones con diseños personalizables.

## Tipos de ruptura de una sección

Aspose.Words permite dividir y formatear documentos utilizando diferentes secciones de los [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) enumeración:

- SecciónBreakContínua
- SecciónBreakNewColumn
- SecciónBreakNewPage
- SecciónBreakEvenPage
- SecciónBreakOddPage

También puede utilizar el [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) enumeración para elegir un tipo de descanso que se aplica sólo para la primera sección como NewColumn, NewPage, EvenPage y OddPage.

## Gestionar una sección

Puesto que una sección es un nodo compuesto normal, toda la manipulación del nodo API se puede utilizar para manipular secciones: añadir, eliminar y otras operaciones en secciones. Puede leer más sobre los nodos en el artículo [Aspose.Words Document Object Model (DOM)](/words/es/java/aspose-words-document-object-model/).

Por otro lado, también puede utilizar el `DocumentBuilder` API trabajar con secciones. En este artículo, nos centraremos en esta manera particular de trabajar con secciones.

## Insertar o quitar una sección Break

Aspose.Words permite insertar un fragmento de sección en texto usando el [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) método.

El siguiente ejemplo de código muestra cómo insertar una sección en un documento:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Usar el [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) método para eliminar una ruptura de sección. Si no necesita eliminar una ruptura de sección específica y, en cambio, eliminar el contenido de esa sección, puede utilizar el [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) método.

El siguiente ejemplo de código muestra cómo eliminar las secciones rompe:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta que un descanso de sección tiene información sobre la sección que va antes, no la sección que va después de ella. Así que si se elimina una ruptura de sección, el texto antes de la pausa eliminada obtendrá las propiedades de la sección romper después de ella. Esto puede hacer que todo el documento se convierta en paisaje, o cabeceras y calzados para cambiar o desaparecer completamente.

{{% /alert %}}

## Mover una sección

Si desea mover una sección de una posición a otra en su documento, necesita obtener el índice de esa sección. Aspose.Words le permite obtener una posición de sección de a [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Puedes usar el [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) propiedad para conseguir todas las secciones en su documento. Pero si quieres obtener sólo la primera sección, puedes usar la [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) propiedad.

El siguiente ejemplo de código muestra cómo acceder a la primera sección e iterar a través de los niños de un nodo compuesto:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Especifique un diseño de sección

A veces quieres que tu documento se vea mejor haciendo diseños creativos para diferentes secciones de documentos. Si desea especificar el tipo de la red de sección actual, puede elegir un modo de diseño de sección utilizando el [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) enumeración:

- Default
- Grid
- LineGrid
- SnapToChars

El siguiente ejemplo de código muestra cómo limitar el número de líneas que cada página puede tener:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Editar una sección

Cuando agregue una nueva sección a su documento, no habrá ningún cuerpo o párrafo que pueda editar. Aspose.Words le permite garantizar que una sección contiene un cuerpo con al menos un párrafo usando el [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) método – añadirá automáticamente un nodo Cuerpo (o HeaderFooter) al documento y luego añadirá un párrafo a él.

El siguiente ejemplo de código muestra cómo preparar un nuevo nodo de sección utilizando **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Apéndice o contenido prependido

Si desea dibujar alguna forma o añadir texto o imagen al principio/fin de una sección, puede utilizar la [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) y [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) métodos de los [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) clase.

El siguiente ejemplo de código muestra cómo apéndice el contenido de una sección existente:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Cerrar una sección

Aspose.Words permite duplicar una sección mediante la creación de una copia completa de ella utilizando [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) método.

El siguiente ejemplo de código muestra cómo clonar la primera sección en su documento:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Copiar secciones entre documentos

En algunos casos, puede tener documentos grandes con muchas secciones y desea copiar el contenido de una sección de un documento a otro.

Aspose.Words permite copiar secciones entre documentos utilizando [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) método.

El siguiente ejemplo de código muestra cómo copiar secciones entre documentos:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Trabajar con Header Sección y Footer

Las reglas básicas para mostrar un encabezado o un pie de página para cada sección son bastante simples:

1. Si la sección no tiene sus propios cabeceras / pies de cierto tipo, entonces se toma de la sección anterior.
2. El tipo de cabecera/pieza que se muestra en la página es controlado por la configuración de sección "Diferente Primera página" y "Diferente Odd &amp; Even pages" – si están deshabilitados, entonces los propios títulos de la sección son ignorados.

El siguiente ejemplo de código muestra cómo crear 2 secciones con diferentes encabezados:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Si desea eliminar el texto de los encabezados y los pies sin quitar [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) objetos en su documento, puede utilizar el [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) método. Además, puede utilizar el [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) método para eliminar todas las formas de los encabezados y los pies en su documento.

El siguiente ejemplo de código muestra cómo despejar el contenido de todos los encabezados y pies en una sección:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

El siguiente ejemplo de código cómo eliminar todas las formas de todas las cabeceras en una sección:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Personalizar las propiedades de página en una sección

Antes de imprimir una página o un documento que desee personalizar y modificar el tamaño y el diseño de una sola página o todo el documento. Con la configuración de la página, puede cambiar la configuración de páginas de documentos como márgenes, orientación y tamaño para imprimir diferentes primeras páginas o páginas extrañas.

Aspose.Words le permite personalizar las propiedades de página y sección utilizando [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) clase.

El siguiente ejemplo de código muestra cómo establecer tales propiedades como tamaño de página y orientación para la sección actual:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

El siguiente ejemplo de código muestra cómo modificar las propiedades de la página en todas las secciones:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Vea también

- [Niveles lógicos de los ganglios en un documento](/words/es/java/logical-levels-of-nodes-in-a-document/)
- [Insertar y apéndice Documentos](/words/es/java/insert-and-append-documents/)