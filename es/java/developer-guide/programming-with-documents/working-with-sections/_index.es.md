---
title: Trabajar con secciones en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Secciones
linktitle: Trabajar con Secciones
description: "Comprender los conceptos de la sección del documento y las prácticas de manipulación utilizando Java. Insertar sección en un documento Java. Elimine la sección Java. Copie secciones entre Documentos."
type: docs
weight: 120
url: /es/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

A veces, desea un documento que no tenga el mismo formato en todas las páginas. Por ejemplo, es posible que deba modificar los formatos de los números de página, tener un tamaño y orientación de página diferentes o tener la primera página del documento como portada sin numeración. Puedes lograrlo con secciones.

Las secciones son nodos de nivel que controlan encabezados y pies de página, orientación, columnas, márgenes, formato de números de página y otros.

Aspose.Words le permite administrar secciones, dividir un documento en secciones y realizar cambios de formato que se apliquen solo a una sección específica. Aspose.Words almacena información sobre el formato de la sección, como encabezados y pies de página, configuración de la página y configuración de la columna en el salto de sección.

En este artículo se explica cómo trabajar con secciones y saltos de sección.

## Qué Sección y Salto de Sección Es

Las secciones del documento están representadas por las clases [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) y [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Los objetos de sección son hijos inmediatos del nodo [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) y se puede acceder a ellos a través de la propiedad [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections). Puede administrar esos nodos utilizando algunos métodos, como [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), y otros.

El salto de sección es una opción que divide las páginas del documento en secciones con diseños personalizables.

## Tipos de Salto de Sección

Aspose.Words le permite dividir y formatear documentos utilizando diferentes saltos de sección de la enumeración [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

También puede usar la enumeración [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) para elegir un tipo de interrupción que se aplique solo a la primera sección, como NewColumn, NewPage, EvenPage, y OddPage.

## Administrar una Sección

Dado que una sección es un nodo compuesto normal, toda la manipulación de nodos API se puede utilizar para manipular secciones: para agregar, eliminar y otras operaciones en secciones. Puede leer más sobre los nodos en el artículo [Aspose.Words Modelo de objetos de documento (DOM)](/words/java/aspose-words-document-object-model/).

Por otro lado, también puedes usar el `DocumentBuilder` API para trabajar con secciones. En este artículo, nos centraremos en esta forma particular de trabajar con secciones.

## Insertar o eliminar un salto de Sección

Aspose.Words le permite insertar un salto de sección en el texto utilizando el método [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int).

El siguiente ejemplo de código muestra cómo insertar un salto de sección en un documento:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Utilice el método [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) para eliminar un salto de sección. Si no necesita eliminar un salto de sección específico y, en su lugar, eliminar el contenido de esa sección, puede usar el método [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent).

El siguiente ejemplo de código muestra cómo eliminar saltos de sección:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta que un salto de sección tiene información sobre la sección anterior, no sobre la sección posterior. Entonces, si elimina un salto de sección, el texto antes del salto eliminado obtendrá las propiedades del salto de sección que lo sigue. Esto puede hacer que todo el documento se convierta en horizontal, o que los encabezados y pies de página cambien o desaparezcan por completo.

{{% /alert %}}

## Mover una Sección

Si desea mover una sección de una posición a otra en su documento, necesita obtener el índice de esa sección. Aspose.Words le permite obtener una posición de sección a partir de [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Puede usar la propiedad [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) para obtener todas las secciones de su documento. Pero si desea obtener solo la primera sección, puede usar la propiedad [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection).

El siguiente ejemplo de código muestra cómo acceder a la primera sección e iterar a través de los elementos secundarios de un nodo compuesto:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Especificar un Diseño de Sección

A veces, desea que su documento se vea mejor creando diseños creativos para diferentes secciones del documento. Si desea especificar el tipo de cuadrícula de sección actual, puede elegir un modo de diseño de sección utilizando la enumeración [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/):

- Por defecto
- Cuadrícula
- LineGrid
- SnapToChars

El siguiente ejemplo de código muestra cómo limitar el número de líneas que puede tener cada página:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Editar una Sección

Cuando agregue una nueva sección a su documento, no habrá cuerpo ni párrafo que pueda editar. Aspose.Words le permite garantizar que una sección contenga un cuerpo con al menos un párrafo utilizando el método [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum): agregará automáticamente un nodo de Cuerpo (o HeaderFooter) al documento y luego le agregará un párrafo.

El siguiente ejemplo de código muestra cómo preparar un nuevo nodo de sección usando **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Anexar o Anteponer Contenido

Si desea dibujar alguna forma o agregar texto o imagen al principio/final de una sección, puede usar los métodos [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) y [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) de la clase [Section](https://reference.aspose.com/words/java/com.aspose.words/section/).

El siguiente ejemplo de código muestra cómo anexar contenido de una sección existente:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Clonar una Sección

Aspose.Words le permite duplicar una sección creando una copia completa de la misma utilizando el método [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone).

El siguiente ejemplo de código muestra cómo clonar la primera sección en su documento:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Copiar Secciones entre Documentos

En algunos casos, es posible que tenga documentos grandes con muchas secciones y desee copiar el contenido de una sección de un documento a otro.

Aspose.Words le permite copiar secciones entre documentos utilizando el método [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean).

El siguiente ejemplo de código muestra cómo copiar secciones entre documentos:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Trabajar con Encabezado y Pie de Sección

Las reglas básicas para mostrar un encabezado o pie de página para cada sección son bastante simples:

1. Si la sección no tiene sus propios encabezados/pies de página de cierto tipo, entonces se toma de la sección anterior.
2. El tipo de encabezado / pie de página que se muestra en la página está controlado por la configuración de la sección "Primera Página diferente" y "Páginas Pares e Impares diferentes–; si están deshabilitadas, se ignoran los títulos propios de la sección.

El siguiente ejemplo de código muestra cómo crear 2 secciones con encabezados diferentes:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Si desea eliminar el texto de los encabezados y pies de página sin eliminar los objetos [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) en su documento, puede usar el método [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters). Además, puede utilizar el método [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) para eliminar todas las formas de los encabezados y pies de página del documento.

El siguiente ejemplo de código muestra cómo borrar el contenido de todos los encabezados y pies de página de una sección:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

El siguiente ejemplo de código muestra cómo eliminar todas las formas de todos los pies de página de encabezados en una sección:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Personalizar las Propiedades de la página en una Sección

Antes de imprimir una página o un documento, es posible que desee personalizar y modificar el tamaño y el diseño de una sola página o de todo el documento. Con configuración de página, puede cambiar la configuración de las páginas del documento, como los márgenes, la orientación y el tamaño para imprimir diferentes primeras páginas o páginas impares.

Aspose.Words le permite personalizar las propiedades de la página y la sección utilizando la clase [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/).

El siguiente ejemplo de código muestra cómo establecer propiedades como el tamaño de página y la orientación para la sección actual:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

El siguiente ejemplo de código muestra cómo modificar las propiedades de la página en todas las secciones:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Véase También

- [Niveles Lógicos de Nodos en un Documento](/words/java/logical-levels-of-nodes-in-a-document/)
- [Insertar y Adjuntar Documentos](/words/java/insert-and-append-documents/)
