---
title: Trabajar con secciones en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con secciones
linktitle: Trabajar con secciones
description: "Comprender los conceptos de secciones de documentos y las prácticas de manipulación utilizando C#. Insertar sección en un documento C#. Eliminar la sección C#. Copie secciones entre documentos."
type: docs
weight: 120
url: /es/net/working-with-sections/
---

A veces desea un documento que no tenga el mismo formato en todas las páginas. Por ejemplo, es posible que necesite modificar los formatos de los números de página, tener un tamaño y orientación de página diferentes, o tener la primera página del documento como portada sin ninguna numeración. Puedes lograrlo con secciones.

Las secciones son nodos de nivel que controlan los encabezados y pies de página, la orientación, las columnas, los márgenes, el formato del número de página y otros.

Aspose.Words le permite administrar secciones, dividir un documento en secciones y realizar cambios de formato que se aplican sólo a una sección específica. Aspose.Words almacena información sobre el formato de las secciones, como encabezados y pies de página, configuración de página y configuración de columnas en el salto de sección.

Este artículo explica cómo trabajar con secciones y saltos de sección.

## ¿Qué es la sección y el salto de sección?

Las secciones del documento están representadas por las clases [Section](https://apireference.aspose.com/words/net/aspose.words/section) y [SectionCollection](https://apireference.aspose.com/words/net/aspose.words/sectioncollection). Los objetos de sección son hijos inmediatos del nodo [Document](https://apireference.aspose.com/words/net/aspose.words/document) y se puede acceder a ellos a través de la propiedad [Sections](https://apireference.aspose.com/words/net/aspose.words/document/properties/sections). Puede administrar esos nodos utilizando algunos métodos como [Remove](https://apireference.aspose.com/words/net/aspose.words/nodecollection/methods/remove), [Add](https://apireference.aspose.com/words/net/aspose.words/nodecollection/methods/add), [IndexOf](https://apireference.aspose.com/words/net/aspose.words/nodecollection/methods/indexof) y otros.

El salto de sección es una opción que divide las páginas del documento en secciones con diseños personalizables.

## Tipos de salto de sección

Aspose.Words le permite dividir y formatear documentos utilizando diferentes saltos de sección de la enumeración [BreakType](https://apireference.aspose.com/words/net/aspose.words/breaktype):

* Salto de secciónContinuo
* SecciónSalirNuevaColumna
* SecciónSalirNuevaPágina
* SecciónBreakEvenPage
* SecciónBreakOddPage

También puede utilizar la enumeración [SectionStart](https://apireference.aspose.com/words/net/aspose.words/sectionstart) para elegir un tipo de interrupción que se aplique solo a la primera sección, como NewColumn, NewPage, EvenPage y OddPage.

## Administrar una sección

Dado que una sección es un nodo compuesto normal, todo el API de manipulación de nodos se puede utilizar para manipular secciones: para agregar, eliminar y otras operaciones en secciones. Puedes leer más sobre los nodos en el artículo [Modelo de objetos de documento Aspose.Words (DOM)](/words/es/net/aspose-words-document-object-model/).

Por otro lado, también puedes utilizar el `DocumentBuilder` API para trabajar con secciones. En este artículo, nos centraremos en esta forma particular de trabajar con secciones.

## Insertar o eliminar un salto de sección

Aspose.Words le permite insertar un salto de sección en el texto utilizando el método [InsertBreak](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertbreak).

El siguiente ejemplo de código muestra cómo insertar un salto de sección en un documento:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Utilice el método [Remove](https://apireference.aspose.com/words/net/aspose.words/node/methods/remove) para eliminar un salto de sección. Si no necesita eliminar un salto de sección específico y, en su lugar, eliminar el contenido de esa sección, puede utilizar el método [ClearContent](https://apireference.aspose.com/words/net/aspose.words/section/methods/clearcontent).

El siguiente ejemplo de código muestra cómo eliminar saltos de sección:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Tenga en cuenta que un salto de sección tiene información sobre la sección que le precede, no la sección que le sigue. Entonces, si elimina un salto de sección, el texto anterior al salto eliminado obtendrá las propiedades del salto de sección que le sigue. Esto puede hacer que todo el documento se vuelva horizontal, o que los encabezados y pies de página cambien o desaparezcan por completo.

{{% /alert %}}

## Mover una sección

Si desea mover una sección de una posición a otra en su documento, necesita obtener el índice de esa sección. Aspose.Words le permite obtener la posición de una sección de un [SectionCollection](https://apireference.aspose.com/words/net/aspose.words/sectioncollection) utilizando la propiedad [Item](https://apireference.aspose.com/words/net/aspose.words/sectioncollection/properties/item). Puede utilizar la propiedad [Sections](https://apireference.aspose.com/words/net/aspose.words/document/properties/sections) para obtener todas las secciones de su documento. Pero si desea obtener sólo la primera sección, puede utilizar la propiedad [FirstSection](https://apireference.aspose.com/words/net/aspose.words/document/properties/firstsection).

El siguiente ejemplo de código muestra cómo acceder a la primera sección e iterar a través de los hijos de un nodo compuesto:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Especificar un diseño de sección

A veces desea que su documento se vea mejor creando diseños creativos para diferentes secciones del documento. Si desea especificar el tipo de cuadrícula de la sección actual, puede elegir un modo de diseño de sección usando la enumeración [SectionLayoutMode](https://apireference.aspose.com/words/net/aspose.words/sectionlayoutmode):

* Por defecto
* Red
* Línea de cuadrícula
* Ajustar a caracteres

El siguiente ejemplo de código muestra cómo limitar el número de líneas que puede tener cada página:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Editar una sección

Cuando agregas una nueva sección a tu documento, no habrá ningún cuerpo o párrafo que puedas editar. Aspose.Words le permite garantizar que una sección contenga un cuerpo con al menos un párrafo utilizando el método [EnsureMinimum](https://apireference.aspose.com/words/net/aspose.words/section/methods/ensureminimum): agregará automáticamente un nodo Cuerpo (o Encabezado y pie de página) al documento y luego le agregará un Párrafo.

El siguiente ejemplo de código muestra cómo preparar un nuevo nodo de sección usando **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Agregar o anteponer contenido

Si desea dibujar alguna forma o agregar texto o imagen al principio/final de una sección, puede usar los métodos [AppendContent](https://apireference.aspose.com/words/net/aspose.words/section/methods/appendcontent) y [PrependContent](https://apireference.aspose.com/words/net/aspose.words/section/methods/prependcontent) de la clase [Section](https://apireference.aspose.com/words/net/aspose.words/section).

El siguiente ejemplo de código muestra cómo agregar contenido de una sección existente:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Clonar una sección

Aspose.Words le permite duplicar una sección creando una copia completa utilizando el método [Clone](https://apireference.aspose.com/words/net/aspose.words/section/methods/clone/index).

El siguiente ejemplo de código muestra cómo clonar la primera sección de su documento:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Copiar secciones entre documentos

En algunos casos, es posible que tenga documentos grandes con muchas secciones y desee copiar el contenido de una sección de un documento a otro.

Aspose.Words le permite copiar secciones entre documentos utilizando el método [ImportNode](https://apireference.aspose.com/words/net/aspose.words/nodeimporter/methods/importnode).

El siguiente ejemplo de código muestra cómo copiar secciones entre documentos:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Trabajar con encabezado y pie de página de sección

Las reglas básicas para mostrar un encabezado o pie de página para cada sección son bastante simples:

1. Si la sección no tiene encabezados/pies de página propios de un tipo determinado, se toma de la sección anterior.
2. El tipo de encabezado/pie de página que se muestra en la página está controlado por las configuraciones de las secciones "Primera página diferente" y "Páginas pares e impares diferentes"; si están deshabilitadas, los títulos propios de la sección se ignoran.

El siguiente ejemplo de código muestra cómo crear 2 secciones con encabezados diferentes:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Si desea eliminar el texto de los encabezados y pies de página sin eliminar los objetos [HeaderFooter](https://apireference.aspose.com/words/net/aspose.words/headerfooter) de su documento, puede utilizar el método [ClearHeadersFooters](https://apireference.aspose.com/words/net/aspose.words/section/methods/clearheadersfooters). Además, puede utilizar el método [DeleteHeaderFooterShapes](https://apireference.aspose.com/words/net/aspose.words/section/methods/deleteheaderfootershapes) para eliminar todas las formas de los encabezados y pies de página de su documento.

El siguiente ejemplo de código muestra cómo borrar el contenido de todos los encabezados y pies de página de una sección:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

El siguiente ejemplo de código muestra cómo eliminar todas las formas de todos los pies de página de los encabezados en una sección:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Personalizar las propiedades de la página en una sección

Antes de imprimir una página o un documento, es posible que desee personalizar y modificar el tamaño y el diseño de una sola página o de todo el documento. Con la configuración de página, puede cambiar la configuración de las páginas del documento, como los márgenes, la orientación y el tamaño, para imprimir primeras páginas diferentes o páginas impares.

Aspose.Words le permite personalizar las propiedades de la página y la sección utilizando la clase [PageSetup](https://apireference.aspose.com/words/net/aspose.words/pagesetup).

El siguiente ejemplo de código muestra cómo establecer propiedades como el tamaño de página y la orientación de la sección actual:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

El siguiente ejemplo de código muestra cómo modificar las propiedades de la página en todas las secciones:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Ver también

* ["Niveles lógicos de nodos en un documento"](https://docs.aspose.com/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Insertar y adjuntar documentos](/words/es/net/insert-and-append-documents/)

