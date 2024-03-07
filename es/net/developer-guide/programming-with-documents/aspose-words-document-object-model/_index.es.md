---
title: Modelo de objetos de documento Aspose.Words (DOM) en C#
second_title: Aspose.Words para .NET
articleTitle: Modelo de objetos de documento Aspose.Words (DOM)
linktitle: Modelo de objetos de documento Aspose.Words (DOM)
type: docs
description: "El modelo de objetos de documento (DOM) es una representación en memoria de un documento de Word. Leer, manipular y modificar el contenido y el formato de un documento de Word usando C#."
weight: 10
url: /es/net/aspose-words-document-object-model/
---

El modelo de objetos de documento (DOM) Aspose.Words es una representación en memoria de un documento de Word. Aspose.Words DOM le permite leer, manipular y modificar mediante programación el contenido y el formato de un documento de Word.

Esta sección describe las principales clases del Aspose.Words DOM y sus relaciones. Al utilizar las clases Aspose.Words DOM, puede obtener acceso programático a los elementos y el formato del documento.

## Crear un árbol de objetos `Document` {#create-a-document-objects-tree}

Cuando se lee un documento en Aspose.Words DOM, se crea un árbol de objetos y los diferentes tipos de elementos del documento fuente tienen sus propios objetos de árbol DOM con varias propiedades.

### Construir árbol de nodos de documentos {#build-document-nodes-tree}

Cuando Aspose.Words lee un documento de Word en la memoria, crea objetos de diferentes tipos que representan varios elementos del documento. Cada ejecución de un texto, párrafo, tabla o sección es un nodo, e incluso el documento en sí es un nodo. Aspose.Words define una clase para cada tipo de nodo de documento.

El árbol de documentos en Aspose.Words sigue el patrón de diseño compuesto:

- Todas las clases de nodos derivan en última instancia de la clase [Node](https://reference.aspose.com/words/es/net/aspose.words/node/), que es la clase base en el modelo de objetos de documento Aspose.Words.
- Los nodos que pueden contener otros nodos, por ejemplo, **Section** o **Paragraph**, derivan de la clase [CompositeNode](https://reference.aspose.com/words/es/net/aspose.words/compositenode/), que a su vez deriva de la clase **Node**.

El diagrama que se proporciona a continuación muestra la herencia entre clases de nodos del modelo de objetos de documento (DOM) Aspose.Words. Los nombres de las clases abstractas están en cursiva.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-palabras-dom" style="width:700px"/>

{{% alert color="primary" %}}

El Aspose.Words DOM también contiene clases que no son nodos, como [Style](https://reference.aspose.com/words/es/net/aspose.words/style/) o [Font](https://reference.aspose.com/words/es/net/aspose.words/font/), que se utilizan para personalizar la apariencia y los estilos dentro de un documento. Estas clases no se muestran en este diagrama porque no se heredan de la clase `Node`.

{{% /alert %}}

Veamos un ejemplo. La siguiente imagen muestra un documento Microsoft Word con diferentes tipos de contenido.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="documento-ejemplo-aspose-palabras" style="width:700px"/>

Al leer el documento anterior en Aspose.Words DOM, se crea el árbol de objetos, como se muestra en el siguiente esquema.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-palabras" style="width:700px"/>

[Document](https://reference.aspose.com/words/es/net/aspose.words/document/), [Section](https://reference.aspose.com/words/es/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/es/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/es/net/aspose.words/run/) y todas las demás elipses del diagrama son objetos Aspose.Words que representan elementos del documento de Word.

### Obtenga un `Node` tipo {#get-a-node-type}

Aunque la clase [Node](https://reference.aspose.com/words/es/net/aspose.words/node/) es suficiente para distinguir diferentes nodos entre sí, Aspose.Words proporciona la enumeración [NodeType](https://reference.aspose.com/words/es/net/aspose.words/node/nodetype/) para simplificar algunas tareas API, como seleccionar nodos de un tipo específico.

El tipo de cada nodo se puede obtener utilizando la propiedad [NodeType](https://reference.aspose.com/words/es/net/aspose.words/node/nodetype/). Esta propiedad devuelve un valor de enumeración **NodeType**. Por ejemplo, un nodo de párrafo representado por la clase **Paragraph** devuelve **NodeType**.**Paragraph** y un nodo de tabla representado por la clase **Table** devuelve **NodeType**.**Table**.

El siguiente ejemplo muestra cómo obtener un tipo de nodo utilizando la enumeración **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Navegación por el árbol de documentos {#document-tree-navigation}

Aspose.Words representa un documento como un árbol de nodos, lo que le permite navegar entre nodos. Esta sección describe cómo explorar y navegar por el árbol de documentos en Aspose.Words.

Cuando abre el documento de muestra, presentado anteriormente, en el Explorador de documentos, el árbol de nodos aparece exactamente como está representado en Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="explorador de documentos en documentos" style="width:680px"/>

{{% alert color="primary" %}}

Puede conocer el proyecto de muestra "Document Explorer" en [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Relaciones de nodo de documento {#document-nodes-relationships}

Los nodos del árbol tienen relaciones entre ellos:

- Un nodo que contiene otro nodo es un *parent.*
- El nodo contenido en el nodo padre es un *child.*. Los nodos secundarios del mismo padre son nodos *sibling*.
- El nodo *root* es siempre el nodo [Document](https://reference.aspose.com/words/es/net/aspose.words/document/).

Los nodos que pueden contener otros nodos derivan de la clase [CompositeNode](https://reference.aspose.com/words/es/net/aspose.words/compositenode/) y, en última instancia, todos los nodos derivan de la clase [Node](https://reference.aspose.com/words/es/net/aspose.words/node/). Estas dos clases base proporcionan métodos y propiedades comunes para la navegación y modificación de la estructura de árbol.

El siguiente diagrama de objetos UML muestra varios nodos del documento de muestra y sus relaciones entre sí a través de las propiedades padre, hijo y hermano:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="documentos-nodos-relaciones-aspose-palabras" style="width:370px"/>

#### El documento es propietario del nodo

Un nodo siempre pertenece a un documento en particular, incluso si acaba de crearse o eliminarse del árbol, porque las estructuras vitales de todo el documento, como estilos y listas, se almacenan en el nodo **Document**. Por ejemplo, no es posible tener un **Paragraph** sin un **Document** porque cada párrafo tiene asignado un estilo que se define globalmente para el documento. Esta regla se utiliza al crear nuevos nodos. Agregar un nuevo **Paragraph** directamente al DOM requiere pasar un objeto de documento al constructor.

{{% alert color="primary" %}}

La propiedad [Node.Document](https://reference.aspose.com/words/es/net/aspose.words/node/document/) devuelve el documento al que pertenece el nodo.

{{% /alert %}}

Al crear un nuevo párrafo usando [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/), el constructor siempre tiene una clase **Document** vinculada a través de la propiedad [DocumentBuilder.Document](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/document/).

El siguiente ejemplo de código muestra que al crear cualquier nodo, siempre se define un documento que será propietario del nodo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Nodo principal

Cada nodo tiene un padre especificado por la propiedad [ParentNode](https://reference.aspose.com/words/es/net/aspose.words/node/parentnode/). Un nodo no tiene nodo padre, es decir, **ParentNode** es nulo, en los siguientes casos:

- El nodo acaba de crearse y aún no se ha agregado al árbol.
- El nodo ha sido eliminado del árbol.
- Este es el nodo **Document** raíz que siempre tiene un nodo principal nulo.

Puede eliminar un nodo de su padre llamando al método [Remove](https://reference.aspose.com/words/es/net/aspose.words/node/remove/). El siguiente ejemplo de código muestra cómo acceder al nodo principal:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Nodos secundarios

La forma más eficaz de acceder a los nodos secundarios de un [CompositeNode](https://reference.aspose.com/words/es/net/aspose.words/compositenode/) es a través de las propiedades [FirstChild](https://reference.aspose.com/words/es/net/aspose.words/compositenode/firstchild/) y [LastChild](https://reference.aspose.com/words/es/net/aspose.words/compositenode/lastchild/) que devuelven el primer y último nodo secundario, respectivamente. Si no hay nodos secundarios, estas propiedades devuelven *null*.

**CompositeNode** también proporciona el método [GetChildNodes](https://reference.aspose.com/words/es/net/aspose.words/compositenode/getchildnodes/) que permite el acceso indexado o enumerado a los nodos secundarios. La propiedad **ChildNodes** es una colección activa de nodos, lo que significa que cada vez que se cambia el documento, como cuando se eliminan o agregan nodos, la colección **ChildNodes** se actualiza automáticamente.

Si un nodo no tiene hijos, la propiedad **ChildNodes** devuelve una colección vacía. Puede comprobar si el **CompositeNode** contiene nodos secundarios utilizando la propiedad [HasChildNodes](https://reference.aspose.com/words/es/net/aspose.words/compositenode/haschildnodes/).

El siguiente ejemplo de código muestra cómo enumerar nodos secundarios inmediatos de un `CompositeNode` utilizando el enumerador proporcionado por la colección `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

El siguiente ejemplo de código muestra cómo enumerar nodos secundarios inmediatos de un `CompositeNode` mediante acceso indexado:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Nodos hermanos

Puede obtener el nodo que precede o sigue inmediatamente a un nodo en particular utilizando las propiedades [PreviousSibling](https://reference.aspose.com/words/es/net/aspose.words/node/previoussibling/) y [NextSibling](https://reference.aspose.com/words/es/net/aspose.words/node/nextsibling/), respectivamente. Si un nodo es el último hijo de su padre, entonces la propiedad **NextSibling** es *null*. Por el contrario, si el nodo es el primer hijo de su padre, la propiedad **PreviousSibling** es *null*.

El siguiente ejemplo de código muestra cómo visitar de manera eficiente todos los nodos secundarios directos e indirectos de un nodo compuesto:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Acceso escrito a nodos secundarios y principales {#typed-access-to-child-and-parent-nodes}

Hasta ahora, hemos analizado las propiedades que devuelven uno de los tipos base: **Node** o **CompositeNode**. Pero a veces hay situaciones en las que es posible que necesites convertir valores a una clase de nodo específica, como **Run** o **Paragraph**. Es decir, no se puede evitar por completo la conversión cuando se trabaja con Aspose.Words DOM, que es compuesto.

Para reducir la necesidad de conversión, la mayoría de las clases Aspose.Words proporcionan propiedades y colecciones que brindan acceso fuertemente tipado. Hay tres patrones básicos de acceso mecanografiado:

- Un nodo principal expone propiedades **FirstXXX** y **LastXXX** escritas. Por ejemplo, el **Document** tiene propiedades [FirstSection](https://reference.aspose.com/words/es/net/aspose.words/document/firstsection/) y [LastSection](https://reference.aspose.com/words/es/net/aspose.words/document/lastsection/). De manera similar, **Table** tiene propiedades como [FirstRow](https://reference.aspose.com/words/es/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/es/net/aspose.words.tables/table/lastrow/) y otras.
- Un nodo principal expone una colección escrita de nodos secundarios, como [Document.Sections](https://reference.aspose.com/words/es/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/es/net/aspose.words/story/paragraphs/) y otros.
- Un nodo secundario proporciona acceso escrito a su padre, como [Run.ParentParagraph](https://reference.aspose.com/words/es/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/es/net/aspose.words/paragraph/parentsection/) y otros.

Las propiedades escritas son simplemente atajos útiles que a veces proporcionan un acceso más fácil que las propiedades genéricas heredadas de [Node.ParentNode](https://reference.aspose.com/words/es/net/aspose.words/node/parentnode/) y [CompositeNode.FirstChild](https://reference.aspose.com/words/es/net/aspose.words/compositenode/firstchild/).

El siguiente ejemplo de código muestra cómo utilizar propiedades escritas para acceder a los nodos del árbol del documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
