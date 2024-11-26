---
title: Aspose.Words DOM
second_title: Aspose.Words para Python via .NET
articleTitle: Modelo de objetos de documento Aspose.Words (DOM)
linktitle: Modelo de objetos de documento Aspose.Words (DOM)
type: docs
description: "El modelo de objetos de documento (DOM) es una representación en memoria de un documento de Word. Leer, manipular y modificar el contenido y el formato de un documento de Word usando Python."
weight: 10
url: /es/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

El modelo de objetos de documento (DOM) Aspose.Words es una representación en memoria de un documento de Word. Aspose.Words DOM le permite leer, manipular y modificar mediante programación el contenido y el formato de un documento de Word.

Esta sección describe las principales clases del Aspose.Words DOM y sus relaciones. Al utilizar las clases Aspose.Words DOM, puede obtener acceso programático a los elementos y el formato del documento.

## Crear un árbol de objetos `Document` {#create-a-document-objects-tree}

Cuando se lee un documento en Aspose.Words DOM, se crea un árbol de objetos y los diferentes tipos de elementos del documento fuente tienen sus propios objetos de árbol DOM con varias propiedades.

### Construir árbol de nodos de documentos {#build-document-nodes-tree}

Cuando Aspose.Words lee un documento de Word en la memoria, crea objetos de diferentes tipos que representan varios elementos del documento. Cada ejecución de un texto, párrafo, tabla o sección es un nodo, e incluso el documento en sí es un nodo. Aspose.Words define una clase para cada tipo de nodo de documento.

El árbol de documentos en Aspose.Words sigue el patrón de diseño compuesto:

- Todas las clases de nodos derivan en última instancia de la clase [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), que es la clase base en el modelo de objetos de documento Aspose.Words.
- Los nodos que pueden contener otros nodos, por ejemplo, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) o [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), derivan de la clase [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), que a su vez deriva de la clase [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

El diagrama que se proporciona a continuación muestra la herencia entre clases de nodos del modelo de objetos de documento (DOM) Aspose.Words. Los nombres de las clases abstractas están en cursiva.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-palabras-dom" style="width:700px"/>

{{% alert color="primary" %}}

El Aspose.Words DOM también contiene clases que no son nodos, como [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) o [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), que se utilizan para personalizar la apariencia y los estilos dentro de un documento. Estas clases no se muestran en este diagrama porque no se heredan de la clase [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

Veamos un ejemplo. La siguiente imagen muestra un documento Microsoft Word con diferentes tipos de contenido.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="documento-ejemplo-aspose-palabras" style="width:700px"/>

Al leer el documento anterior en Aspose.Words DOM, se crea el árbol de objetos, como se muestra en el siguiente esquema.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-palabras" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) y todas las demás elipses del diagrama son objetos Aspose.Words que representan elementos del documento de Word.

### Obtenga un `Node` tipo {#get-a-node-type}

Aunque la clase [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) es suficiente para distinguir diferentes nodos entre sí, Aspose.Words proporciona la enumeración [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) para simplificar algunas tareas API, como seleccionar nodos de un tipo específico.

El tipo de cada nodo se puede obtener utilizando la propiedad [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). Esta propiedad devuelve un valor de enumeración [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). Por ejemplo, un nodo de párrafo representado por la clase [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) devuelve [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph) y un nodo de tabla representado por la clase [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) devuelve [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

El siguiente ejemplo muestra cómo obtener un tipo de nodo utilizando la enumeración [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Navegación por el árbol de documentos {#document-tree-navigation}

Aspose.Words representa un documento como un árbol de nodos, lo que le permite navegar entre nodos. Esta sección describe cómo explorar y navegar por el árbol de documentos en Aspose.Words.

Cuando abre el documento de muestra, presentado anteriormente, en el Explorador de documentos, el árbol de nodos aparece exactamente como está representado en Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="explorador de documentos en documentos" style="width:680px"/>

{{% alert color="primary" %}}

Puede conocer el proyecto de muestra "Document Explorer" en [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Relaciones de nodos de documentos {#document-nodes-relationships}

Los nodos del árbol tienen relaciones entre ellos:

- Un nodo que contiene otro nodo es un *parent.*
- El nodo contenido en el nodo padre es un *child.*. Los nodos secundarios del mismo padre son nodos *sibling*.
- El nodo *root* es siempre el nodo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Los nodos que pueden contener otros nodos derivan de la clase [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) y, en última instancia, todos los nodos derivan de la clase [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Estas dos clases base proporcionan métodos y propiedades comunes para la navegación y modificación de la estructura de árbol.

El siguiente diagrama de objetos UML muestra varios nodos del documento de muestra y sus relaciones entre sí a través de las propiedades padre, hijo y hermano:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="documentos-nodos-relaciones-aspose-palabras" style="width:370px"/>

#### El documento es propietario del nodo

Un nodo siempre pertenece a un documento en particular, incluso si acaba de crearse o eliminarse del árbol, porque las estructuras vitales de todo el documento, como estilos y listas, se almacenan en el nodo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Por ejemplo, no es posible tener un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) sin un [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) porque cada párrafo tiene asignado un estilo que se define globalmente para el documento. Esta regla se utiliza al crear nuevos nodos. Agregar un nuevo [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) directamente al DOM requiere pasar un objeto de documento al constructor.

{{% alert color="primary" %}}

La propiedad [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) devuelve el documento al que pertenece el nodo.

{{% /alert %}}

Al crear un nuevo párrafo usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), el constructor siempre tiene una clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) vinculada a través de la propiedad [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

El siguiente ejemplo de código muestra que al crear cualquier nodo, siempre se define un documento que será propietario del nodo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Nodo principal

Cada nodo tiene un padre especificado por la propiedad [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). Un nodo no tiene nodo padre, es decir, [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) es *None*, en los siguientes casos:

- El nodo acaba de crearse y aún no se ha agregado al árbol.
- El nodo ha sido eliminado del árbol.
- Este es el nodo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) raíz que siempre tiene un nodo principal Ninguno.

Puede eliminar un nodo de su padre llamando al método [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/). El siguiente ejemplo de código muestra cómo acceder al nodo principal:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Nodos secundarios

La forma más eficaz de acceder a los nodos secundarios de un [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) es a través de las propiedades [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) y [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) que devuelven el primer y último nodo secundario, respectivamente. Si no hay nodos secundarios, estas propiedades devuelven *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) también proporciona la colección [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) que permite el acceso indexado o enumerado a los nodos secundarios. El método [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) devuelve una colección activa de nodos, lo que significa que cada vez que se cambia el documento, como cuando se eliminan o agregan nodos, la colección **get_child_nodes** se actualiza automáticamente.

Si un nodo no tiene hijos, el método **get_child_nodes** devuelve una colección vacía. Puede comprobar si el [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) contiene nodos secundarios utilizando la propiedad [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

El siguiente ejemplo de código muestra cómo enumerar nodos secundarios inmediatos de un [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) utilizando el enumerador proporcionado por la colección **get_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Nodos hermanos

Puede obtener el nodo que precede o sigue inmediatamente a un nodo en particular utilizando las propiedades [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) y [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/), respectivamente. Si un nodo es el último hijo de su padre, entonces la propiedad [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) es *None*. Por el contrario, si el nodo es el primer hijo de su padre, la propiedad [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) es *None*.

El siguiente ejemplo de código muestra cómo visitar de manera eficiente todos los nodos secundarios directos e indirectos de un nodo compuesto:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Acceso escrito a nodos secundarios y principales {#typed-access-to-child-and-parent-nodes}

Hasta ahora, hemos analizado las propiedades que devuelven uno de los tipos base: [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) o [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Pero a veces hay situaciones en las que es posible que necesites convertir valores a una clase de nodo específica, como [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) o [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). Es decir, no se puede evitar por completo la conversión cuando se trabaja con Aspose.Words DOM, que es compuesto.

Para reducir la necesidad de conversión, la mayoría de las clases Aspose.Words proporcionan propiedades y colecciones que brindan acceso fuertemente tipado. Hay tres patrones básicos de acceso mecanografiado:

- Un nodo principal expone propiedades **primero_XXX** y **último_XXX** escritas. Por ejemplo, el [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) tiene propiedades [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) y [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/). De manera similar, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) tiene propiedades como [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) y otras.
- Un nodo principal expone una colección escrita de nodos secundarios, como [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) y otros.
- Un nodo secundario proporciona acceso escrito a su padre, como [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) y otros.

Las propiedades escritas son simplemente atajos útiles que a veces proporcionan un acceso más fácil que las propiedades genéricas heredadas de [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) y [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

El siguiente ejemplo de código muestra cómo utilizar propiedades escritas para acceder a los nodos del árbol del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
