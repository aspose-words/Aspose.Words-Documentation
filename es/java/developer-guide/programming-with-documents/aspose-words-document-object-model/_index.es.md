---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words para Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (G)DOM) es una representación en memoria de un documento de Word. Leer, manipular y modificar el contenido y formato de un documento de Word utilizando Java."
weight: 10
url: /es/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

El Aspose.Words Document Object Model (G)DOM) es una representación en memoria de un documento de Word. El Aspose.Words DOM le permite leer, manipular y modificar programáticamente el contenido y formato de un documento de Word.

Esta sección describe las principales clases de Aspose.Words DOM y sus relaciones. Usando el Aspose.Words DOM clases, puede obtener acceso programático a elementos de documento y formato.

## Crear documento Árbol de objetos {#create-a-document-objects-tree}

Cuando se lee un documento Aspose.Words <span notrans="<span notrans=" DOM"=""></span>," entonces se construye un árbol de objetos y diferentes tipos de elementos del documento fuente tienen su propio DOM objetos de árboles con varias propiedades.

### Build Document Nodes Tree {#build-document-nodes-tree}

Cuando Aspose.Words lee un documento de Word en memoria, crea objetos de diferentes tipos que representan varios elementos de documentos. Cada trama de un texto, párrafo, tabla o sección es un nodo, e incluso el documento mismo es un nodo. Aspose.Words define una clase para cada tipo de nodo de documento.

El árbol de documentos en Aspose.Words sigue el patrón de diseño compuesto:

- Todas las clases de nodos se derivan finalmente de la [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) clase, que es la clase base en la Aspose.Words Document Object Model.
- Nodos que pueden contener otros nodos, por ejemplo, **Section** o **Paragraph**, derivado del [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) clase, que a su vez deriva de la **Node** clase.

El diagrama que figura a continuación muestra la herencia entre las clases de nodos Aspose.Words Document Object Model (G)DOM). Los nombres de las clases abstractas están en Italics.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

El Aspose.Words DOM también contiene las clases no prohibidas, como [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) o [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), que se utilizan para personalizar el aspecto y estilos dentro de un documento. Estas clases no se muestran en este diagrama como no heredado de `Node` clase.

{{% /alert %}}

Veamos un ejemplo. La siguiente imagen muestra una Microsoft Word documento con diferentes tipos de contenido.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Al leer el documento anterior en el Aspose.Words DOM, el árbol de objetos se crea, como se muestra en el esquema de abajo.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), y todos los demás elipses en el diagrama son Aspose.Words objetos que representan elementos del documento de Word.

### Consigue un `Node` Tipo {#get-a-node-type}

Aunque el [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) la clase es suficiente para distinguir diferentes nodos entre sí, Aspose.Words proporciona el [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) enumeración para simplificar algunos API tareas, como seleccionar los nodos de un tipo específico.

El tipo de cada nodo se puede obtener utilizando el [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) propiedad. Esta propiedad devuelve a **NodeType** Valor de enumeración. Por ejemplo, un nodo del párrafo representado por el **Paragraph** retornos de clase **NodeType**.**Paragraph**, y un nodo de mesa representado por **Table** retornos de clase **NodeType**.**Table**.

El siguiente ejemplo muestra cómo conseguir un tipo de nodo usando el **NodeType** enumeración:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Document Tree Navigation {#document-tree-navigation}

Aspose.Words representa un documento como un árbol de nodos, que le permite navegar entre los nodos. Esta sección describe cómo explorar y navegar el árbol de documentos en Aspose.Words.

Cuando abre el documento de la muestra, presentado anteriormente, en el Explorador del documento, el árbol del nodo aparece exactamente como está representado en Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Usted puede aprender el proyecto de muestra "Document Explorer" en el [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Relación de los ganglios {#document-nodes-relationships}

Los nudos del árbol tienen relaciones entre ellos:

- Un nodo que contiene otro nodo es un *parent.*
- El nodo contenido en el nodo padre es un *child.* Nodos infantiles del mismo padre son *sibling* nodos.
- El *root* el nodo es siempre [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Nodo.

Los nodos que pueden contener otros nodos derivan de los [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) clase, y todos los nodos finalmente se derivan de [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) clase. Estas dos clases base proporcionan métodos y propiedades comunes para la navegación y modificación de la estructura del árbol.

El siguiente diagrama de objetos UML muestra varios nodos del documento de muestra y sus relaciones entre sí a través de las propiedades padre, niño y hermano:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### El documento es Node Owner

Un nodo siempre pertenece a un documento particular, incluso si ha sido creado o eliminado del árbol, porque estructuras vitales de documentos como estilos y listas se almacenan en los **Document** Nodo. Por ejemplo, no es posible tener un **Paragraph** sin un **Document** porque cada párrafo tiene un estilo asignado que se define globalmente para el documento. Esta regla se utiliza cuando se crean nuevos nodos. Agregar un nuevo **Paragraph** directamente al DOM requiere un objeto de documento pasado al constructor.

{{% alert color="primary" %}}

El [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) propiedad devuelve el documento al que pertenece el nodo.

{{% /alert %}}

Al crear un nuevo párrafo utilizando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), el constructor siempre tiene un **Document** clase vinculada a ella a través de [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) propiedad.

El siguiente ejemplo de código muestra que al crear cualquier nodo, siempre se define un documento que poseerá el nodo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Parent Node

Cada nodo tiene un padre especificado por el [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) propiedad. Un nodo no tiene padre nodo, es decir, **ParentNode** es nulo, en los siguientes casos:

- El nodo acaba de ser creado y aún no se ha añadido al árbol.
- El nodo ha sido quitado del árbol.
- Esta es la raíz **Document** nodo que siempre tiene un nulo padre nodo.

Usted puede quitar un nodo de su padre llamando al [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) método. El siguiente ejemplo de código muestra cómo acceder al nodo padre:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Nodos infantiles

La forma más eficiente de acceder a los ganglios infantiles [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) es a través de [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) y [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) propiedades que devuelven los primeros y últimos ganglios infantiles, respectivamente. Si no hay ganglios infantiles, estas propiedades regresan *null*.

**CompositeNode** también proporciona el [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) colección que permite el acceso indexado o enumerado a los nodos infantiles. El **ChildNodes** propiedad es una colección en vivo de nodos, lo que significa que cada vez que se cambia el documento, como cuando se eliminan o agregan los nodos, **ChildNodes** la colección se actualiza automáticamente.

Si un nodo no tiene hijo, entonces el **ChildNodes** propiedad devuelve una colección vacía. Puedes comprobar si **CompositeNode** contiene ningún niño nodo usando [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) propiedad.

El siguiente ejemplo de código muestra cómo enumerar los ganglios infantiles inmediatos de un `CompositeNode` utilizando el enumerador proporcionado por el `ChildNodes` colección:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

El siguiente ejemplo de código muestra cómo enumerar los ganglios infantiles inmediatos de un `CompositeNode` utilizando acceso indexado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Nodos hermanos

Usted puede obtener el nodo que precede inmediatamente o sigue un nodo particular utilizando el [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) y [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) propiedades, respectivamente. Si un nodo es el último hijo de su padre, entonces el **NextSibling** propiedad *null*. Por el contrario, si el nodo es el primer hijo de su padre, el **PreviousSibling** propiedad *null*.

El siguiente ejemplo de código muestra cómo visitar eficientemente todos los ganglios infantiles directos e indirectos de un nodo compuesto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Acceso a los Nodos de Niños y Padres

Hasta ahora hemos discutido las propiedades que devuelven uno de los tipos de base – **Node** o **CompositeNode**. Pero a veces hay situaciones en las que es posible que necesites lanzar valores a una clase específica de nodos, como **Run** o **Paragraph**. Es decir, no puedes alejarte completamente del casting cuando trabajas con el Aspose.Words DOM, que es composite.

Para reducir la necesidad de fundición, la mayoría Aspose.Words las clases proporcionan propiedades y colecciones que proporcionan un acceso de tipo fuerte. Hay tres patrones básicos de acceso tipo:

- Un nodo padre expone el tipo **FirstXXX** y **LastXXX** propiedades. Por ejemplo, el **Document** tiene [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) y [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) propiedades. Análogamente, **Table** tiene propiedades como [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), y otros.
- Un nodo padre expone una colección de nodos infantiles, como [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), y otros.
- Un nodo infantil proporciona acceso tipo a su padre, como [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), y otros.

Las propiedades clasificadas son simplemente atajos útiles que a veces proporcionan un acceso más fácil que las propiedades genéricas heredadas de [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) y [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

El siguiente ejemplo de código muestra cómo utilizar propiedades tipodas para acceder a los nodos del árbol de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
