---
title: Aspose.Words Modelo de Objetos de documento (DOM) en C++
second_title: Aspose.Words para C++
articleTitle: Aspose.Words Modelo de Objetos de documento (DOM)
linktitle: Aspose.Words Modelo de Objetos de documento (DOM)
type: docs
description: "El Modelo de objetos de documento (DOM) es una representación en memoria de un documento de Word. Lea, manipule y modifique el contenido y el formato de un documento de Word con C++."
weight: 10
url: /es/cpp/aspose-words-document-object-model/
---

El Aspose.Words Document Object Model (DOM) es una representación en memoria de un documento de Word. El Aspose.Words DOM le permite leer, manipular y modificar mediante programación el contenido y el formato de un documento de Word.

Esta sección describe las clases principales del Aspose.Words DOM y sus relaciones. Al usar las clases DOM Aspose.Words, puede obtener acceso programático a los elementos del documento y al formato.

## Crear Árbol de Objetos de Documento {#create-a-document-objects-tree}

Cuando se lee un documento en el DOM Aspose.Words, se crea un árbol de objetos y los diferentes tipos de elementos del documento fuente tienen sus propios objetos de árbol DOM con varias propiedades.

### Construir Árbol de Nodos de Documento {#build-document-nodes-tree}

Cuando Aspose.Words lee un documento de Word en la memoria, crea objetos de diferentes tipos que representan varios elementos del documento. Cada ejecución de un texto, párrafo, tabla o sección es un nodo, e incluso el documento en sí mismo es un nodo. Aspose.Words define una clase para cada tipo de nodo de documento.

El árbol de documentos en Aspose.Words sigue el Patrón de Diseño Compuesto:

- En última instancia, todas las clases de nodo se derivan de la clase [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), que es la clase base en el Modelo de Objetos de documento Aspose.Words.
- Los nodos que pueden contener otros nodos, por ejemplo, **Section** o **Paragraph**, derivan de la clase [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), que a su vez deriva de la clase **Node**.

El diagrama que se proporciona a continuación muestra la herencia entre las clases de nodo del Modelo de Objetos de Documento (DOM) Aspose.Words. Los nombres de las clases abstractas están en cursiva.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

El Aspose.Words DOM también contiene las clases que no son nodos, como [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) o [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), que se utilizan para personalizar la apariencia y los estilos dentro de un documento. Estas clases no se muestran en este diagrama como no heredadas de la clase `Node`.

{{% /alert %}}

Veamos un ejemplo. La siguiente imagen muestra un documento de Microsoft Word con diferentes tipos de contenido.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Al leer el documento anterior en el Aspose.Words DOM, se crea el árbol de objetos, como se muestra en el esquema a continuación.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), y todas las demás elipses en el diagrama son Aspose.Words objetos que representan elementos del documento de Word.

### Obtener un `Node` Tipo {#get-a-node-type}

Aunque la clase [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) es suficiente para distinguir diferentes nodos entre sí, Aspose.Words proporciona la enumeración [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) para simplificar algunas tareas de la API, como seleccionar nodos de un tipo específico.

El tipo de cada nodo se puede obtener utilizando la propiedad [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Esta propiedad devuelve un **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph** y un nodo de tabla representado por el **Table** class returns **NodeType**.**Table**.

El siguiente ejemplo muestra cómo obtener un tipo de nodo usando la enumeración **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Navegación del Árbol de Documentos {#document-tree-navigation}

Aspose.Words representa un documento como un árbol de nodos, lo que le permite navegar entre nodos. En esta sección se describe cómo explorar y navegar por el árbol de documentos en Aspose.Words.

Cuando abre el documento de muestra, presentado anteriormente, en el Explorador de documentos, el árbol de nodos aparece exactamente como está representado en Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Relaciones de Nodos de Documento {#document-nodes-relationships}

Los nodos del árbol tienen relaciones entre ellos:

- Un nodo que contiene otro nodo es un *parent.*
- El nodo contenido en el nodo primario es un *child.* Nodo secundario del mismo padre son *sibling* nodos.
- El nodo *root* es siempre el nodo [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

Los nodos que pueden contener otros nodos derivan de la clase [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) y, en última instancia, todos los nodos derivan de la clase [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Estas dos clases base proporcionan métodos y propiedades comunes para la navegación y modificación de la estructura de árbol.

El siguiente diagrama de objetos UML muestra varios nodos del documento de muestra y sus relaciones entre sí a través de las propiedades padre, hijo y hermano:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### El Documento es Propietario del Nodo

Un nodo siempre pertenece a un documento en particular, incluso si acaba de crearse o eliminarse del árbol, porque las estructuras vitales de todo el documento, como los estilos y las listas, se almacenan en el nodo **Document**. Por ejemplo, no es posible tener un **Paragraph** sin un **Document** porque cada párrafo tiene un estilo asignado que se define globalmente para el documento. Esta regla se usa al crear nuevos nodos. Agregar un nuevo **Paragraph** directamente al DOM requiere que se pase un objeto de documento al constructor.

{{% alert color="primary" %}}

La propiedad [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) devuelve el documento al que pertenece el nodo.

{{% /alert %}}

Al crear un nuevo párrafo usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), el constructor siempre tiene una clase **Document** vinculada a él a través de la propiedad [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

El siguiente ejemplo de código muestra que al crear cualquier nodo, siempre se define un documento que será el propietario del nodo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Nodo Padre

Cada nodo tiene un padre especificado por la propiedad [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Un nodo no tiene nodo padre, es decir, **ParentNode** es nulo, en los siguientes casos:

- El nodo acaba de crearse y aún no se ha agregado al árbol.
- El nodo se ha eliminado del árbol.
- Este es el nodo raíz **Document** que siempre tiene un nodo padre nulo.

Puede eliminar un nodo de su padre llamando al método [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).El siguiente ejemplo de código muestra cómo acceder al nodo principal:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Nodos Secundarios

La forma más eficiente de acceder a los nodos secundarios de a [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) es a través de las propiedades [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) y [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) que devuelven el primer y el último nodo secundario, respectivamente. Si no hay nodos secundarios, estas propiedades devuelven *null*.

**CompositeNode**

Si un nodo no tiene hijos, la propiedad **ChildNodes** devuelve una colección vacía. Puede verificar si **CompositeNode** contiene nodos secundarios utilizando la propiedad [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

El siguiente ejemplo de código muestra cómo enumerar nodos secundarios inmediatos de un `CompositeNode` usando el enumerador proporcionado por la colección `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

El siguiente ejemplo de código muestra cómo enumerar nodos secundarios inmediatos de un `CompositeNode` usando acceso indexado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Nodos Hermanos

Puede obtener el nodo que precede o sigue inmediatamente a un nodo en particular utilizando las propiedades [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) y [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/), respectivamente. Si un nodo es el último hijo de su padre, entonces la propiedad **NextSibling** es *null*. Por el contrario, si el nodo es el primer hijo de su padre, la propiedad **PreviousSibling** es *null*.

El siguiente ejemplo de código muestra cómo visitar de manera eficiente todos los nodos secundarios directos e indirectos de un nodo compuesto:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Acceso escrito a Nodos Secundarios y Primarios

Hasta ahora, hemos discutido las propiedades que devuelven uno de los tipos base: **Node** o **CompositeNode**. Pero a veces hay situaciones en las que es posible que deba convertir valores a una clase de nodo específica, como **Run** o **Paragraph**. Es decir, no puede evitar por completo la conversión cuando trabaja con Aspose.Words DOM, que es compuesto.

Para reducir la necesidad de conversión, la mayoría de las clases Aspose.Words proporcionan propiedades y colecciones que proporcionan acceso fuertemente tipado. Hay tres patrones básicos de acceso mecanografiado:

- Un nodo primario expone las propiedades **FirstXXX** y **LastXXX** escritas. Por ejemplo, **Document** tiene [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) y [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) propiedades. De manera similar, **Table** tiene propiedades como [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) y otras.
- Un nodo primario expone una colección tipificada de nodos secundarios, como [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) y otros.
- Un nodo secundario proporciona acceso escrito a su padre, como [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) y otros.

Las propiedades escritas son simplemente accesos directos útiles que a veces brindan un acceso más fácil que las propiedades genéricas heredadas de [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) y [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

El siguiente ejemplo de código muestra cómo usar propiedades escritas para acceder a nodos del árbol de documentos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
