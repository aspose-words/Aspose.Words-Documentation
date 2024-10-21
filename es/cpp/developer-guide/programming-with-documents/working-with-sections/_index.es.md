---
title: Trabajar con secciones en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Secciones
linktitle: Trabajar con Secciones
description: "Comprender los conceptos de secciones de documentos y las prácticas de manipulación utilizando C++. Insertar sección en un documento C++. Elimine la sección C++. Copie secciones entre Documentos."
type: docs
weight: 120
url: /es/cpp/working-with-sections/
---

A veces, desea un documento que no tenga el mismo formato en todas las páginas. Por ejemplo, es posible que deba modificar los formatos de los números de página, tener un tamaño y orientación de página diferentes o tener la primera página del documento como portada sin numeración. Puedes lograrlo con secciones.

Las secciones son nodos de nivel que controlan encabezados y pies de página, orientación, columnas, márgenes, formato de números de página y otros.

Aspose.Words le permite administrar secciones, dividir un documento en secciones y realizar cambios de formato que se apliquen solo a una sección específica. Aspose.Words almacena información sobre el formato de la sección, como encabezados y pies de página, configuración de la página y configuración de la columna en el salto de sección.

En este artículo se explica cómo trabajar con secciones y saltos de sección.

## Qué Sección y Salto de Sección Es

Las secciones del documento están representadas por las clases [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) y [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Los objetos de sección son hijos inmediatos del nodo [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) y se puede acceder a ellos a través de la propiedad [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Puede administrar esos nodos utilizando algunos métodos, como [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), y otros.

El salto de sección es una opción que divide las páginas del documento en secciones con diseños personalizables.

## Tipos de Salto de Sección

Aspose.Words le permite dividir y formatear documentos utilizando diferentes saltos de sección de la enumeración [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

También puede usar la enumeración [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) para elegir un tipo de interrupción que se aplique solo a la primera sección, como NewColumn, NewPage, EvenPage, y OddPage.

## Administrar una Sección

Dado que una sección es un nodo compuesto normal, toda la API de manipulación de nodos se puede utilizar para manipular secciones: para agregar, eliminar y otras operaciones en secciones. Puede leer más sobre los nodos en el artículo [Aspose.Words Modelo de Objetos de documento (DOM)](/words/cpp/aspose-words-document-object-model/).

Por otro lado, también puedes usar la API `DocumentBuilder` para trabajar con secciones. En este artículo, nos centraremos en esta forma particular de trabajar con secciones.

## Insertar o eliminar un salto de Sección

Aspose.Words le permite insertar un salto de sección en el texto utilizando el método [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

El siguiente ejemplo de código muestra cómo insertar un salto de sección en un documento:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Utilice el método [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) para eliminar un salto de sección. Si no necesita eliminar un salto de sección específico y, en su lugar, eliminar el contenido de esa sección, puede usar el método [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

El siguiente ejemplo de código muestra cómo eliminar saltos de sección:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Tenga en cuenta que un salto de sección tiene información sobre la sección anterior, no sobre la sección posterior. Entonces, si elimina un salto de sección, el texto antes del salto eliminado obtendrá las propiedades del salto de sección que lo sigue. Esto puede hacer que todo el documento se convierta en horizontal, o que los encabezados y pies de página cambien o desaparezcan por completo.

{{% /alert %}}

## Mover una Sección

Si desea mover una sección de una posición a otra en su documento, necesita obtener el índice de esa sección. Aspose.Words le permite obtener una posición de sección a partir de [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Puede usar la propiedad [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) para obtener todas las secciones de su documento. Pero si desea obtener solo la primera sección, puede usar la propiedad [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

El siguiente ejemplo de código muestra cómo acceder a la primera sección e iterar a través de los elementos secundarios de un nodo compuesto:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Especificar un Diseño de Sección

A veces, desea que su documento se vea mejor creando diseños creativos para diferentes secciones del documento. Si desea especificar el tipo de cuadrícula de sección actual, puede elegir un modo de diseño de sección utilizando la enumeración [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- Por defecto
- Cuadrícula
- LineGrid
- SnapToChars

El siguiente ejemplo de código muestra cómo limitar el número de líneas que puede tener cada página:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Editar una Sección

Cuando agregue una nueva sección a su documento, no habrá cuerpo ni párrafo que pueda editar. Aspose.Words le permite garantizar que una sección contenga un cuerpo con al menos un párrafo utilizando el método [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/): agregará automáticamente un nodo de Cuerpo (o HeaderFooter) al documento y luego le agregará un párrafo.

El siguiente ejemplo de código muestra cómo preparar un nuevo nodo de sección usando **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Anexar o Anteponer Contenido

Si desea dibujar alguna forma o agregar texto o imagen al principio/final de una sección, puede usar los métodos [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) y [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) de la clase [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

El siguiente ejemplo de código muestra cómo anexar contenido de una sección existente:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Clonar una Sección

Aspose.Words le permite duplicar una sección creando una copia completa de la misma utilizando el método [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

El siguiente ejemplo de código muestra cómo clonar la primera sección en su documento:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Copiar Secciones entre Documentos

En algunos casos, es posible que tenga documentos grandes con muchas secciones y desee copiar el contenido de una sección de un documento a otro.

Aspose.Words le permite copiar secciones entre documentos utilizando el método [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

El siguiente ejemplo de código muestra cómo copiar secciones entre documentos:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Trabajar con Encabezado y Pie de Sección

Las reglas básicas para mostrar un encabezado o pie de página para cada sección son bastante simples:

1. Si la sección no tiene sus propios encabezados/pies de página de cierto tipo, entonces se toma de la sección anterior.
2. El tipo de encabezado / pie de página que se muestra en la página está controlado por la configuración de la sección "Primera Página diferente" y "Páginas Pares e Impares diferentes–; si están deshabilitadas, se ignoran los títulos propios de la sección.

El siguiente ejemplo de código muestra cómo crear secciones 2 con diferentes encabezados:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Si desea eliminar el texto de los encabezados y pies de página sin eliminar los objetos [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) en su documento, puede usar el método [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Además, puede utilizar el método [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) para eliminar todas las formas de los encabezados y pies de página del documento.

El siguiente ejemplo de código muestra cómo borrar el contenido de todos los encabezados y pies de página de una sección:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

El siguiente ejemplo de código muestra cómo eliminar todas las formas de todos los pies de página de encabezados en una sección:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Personalizar las Propiedades de la página en una Sección

Antes de imprimir una página o un documento, es posible que desee personalizar y modificar el tamaño y el diseño de una sola página o de todo el documento. Con configuración de página, puede cambiar la configuración de las páginas del documento, como los márgenes, la orientación y el tamaño para imprimir diferentes primeras páginas o páginas impares.

Aspose.Words le permite personalizar las propiedades de la página y la sección utilizando la clase [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

El siguiente ejemplo de código muestra cómo establecer propiedades como el tamaño de página y la orientación para la sección actual:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

El siguiente ejemplo de código muestra cómo modificar las propiedades de la página en todas las secciones:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Véase También

- [Niveles Lógicos de Nodos en un Documento](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Insertar y Adjuntar Documentos](/words/cpp/insert-and-append-documents/)