---
title: Aspose.Words Modèle d'objet de document (DOM)
second_title: Aspose.Words pour Java
articleTitle: Aspose.Words Modèle d'objet de document (DOM)
linktitle: Aspose.Words Modèle d'objet de document (DOM)
type: docs
description: "Le modèle d'objet de document (DOM) est une représentation en mémoire d'un document Word. Lisez, manipulez et modifiez le contenu et la mise en forme d'un document Word à l'aide de Java."
weight: 10
url: /fr/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Le modèle d'objet de document Aspose.Words (DOM) est une représentation en mémoire d'un document Word. Le Aspose.Words DOM vous permet de lire, manipuler et modifier par programmation le contenu et la mise en forme d'un document Word.

Cette section décrit les principales classes du Aspose.Words DOM et leurs relations. En utilisant les classes Aspose.Words DOM, vous pouvez obtenir un accès par programmation aux éléments et à la mise en forme du document.

## Créer une Arborescence d'Objets de Document {#create-a-document-objects-tree}

Lorsqu'un document est lu dans le Aspose.Words DOM, une arborescence d'objets est construite et différents types d'éléments du document source ont leurs propres objets d'arborescence DOM avec diverses propriétés.

### Construire l'Arborescence des Nœuds de Document {#build-document-nodes-tree}

Lorsque Aspose.Words lit un document Word en mémoire, il crée des objets de différents types qui représentent divers éléments du document. Chaque série de texte, paragraphe, tableau ou section est un nœud, et même le document lui-même est un nœud. Aspose.Words définit une classe pour chaque type de nœud de document.

L'arborescence du document dans Aspose.Words suit le modèle de conception composite:

- Toutes les classes de nœuds dérivent finalement de la classe [Node](https://reference.aspose.com/words/java/com.aspose.words/node/), qui est la classe de base du modèle d'objet de document Aspose.Words.
- Les nœuds qui peuvent contenir d'autres nœuds, par exemple **Section** ou **Paragraph**, dérivent de la classe [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), qui à son tour dérive de la classe **Node**.

Le diagramme fourni ci-dessous montre l'héritage entre les classes de nœuds du modèle d'objet de document Aspose.Words (DOM). Les noms des classes abstraites sont en italique.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Le Aspose.Words DOM contient également les classes non-nœuds, telles que [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) ou [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), qui sont utilisées pour personnaliser l'apparence et les styles d'un document. Ces classes ne sont pas représentées dans ce diagramme car elles ne sont pas héritées de la classe `Node`.

{{% /alert %}}

Regardons un exemple. L'image suivante montre un document Microsoft Word avec différents types de contenu.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Lors de la lecture du document ci-dessus dans le Aspose.Words DOM, l'arborescence des objets est créée, comme indiqué dans le schéma ci-dessous.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), et toutes les autres ellipses du diagramme sont Aspose.Words objets qui représentent des éléments du document Word.

### Obtenez un `Node` de type {#get-a-node-type}

Bien que la classe [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) soit suffisante pour distinguer différents nœuds les uns des autres, Aspose.Words fournit l'énumération [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) pour simplifier certaines tâches API, telles que la sélection de nœuds d'un type spécifique.

Le type de chaque nœud peut être obtenu à l'aide de la propriété [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType). Cette propriété renvoie une valeur d'énumération **NodeType**. Par exemple, un nœud de paragraphe représenté par la classe **Paragraph** renvoie **NodeType**.**Paragraph** et un nœud de table représenté par la classe **Table** renvoie **NodeType**.**Table**.

L'exemple suivant montre comment obtenir un type de nœud à l'aide de l'énumération **NodeType**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Navigation dans l'Arborescence des Documents {#document-tree-navigation}

Aspose.Words représente un document sous la forme d'une arborescence de nœuds, ce qui vous permet de naviguer entre les nœuds. Cette section décrit comment explorer et naviguer dans l'arborescence du document dans Aspose.Words.

Lorsque vous ouvrez l'exemple de document, présenté précédemment, dans l'Explorateur de documents, l'arborescence des nœuds apparaît exactement telle qu'elle est représentée dans Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Vous pouvez apprendre l'exemple de projet "Explorateur de documents" sur le [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Relations de nœud de document {#document-nodes-relationships}

Les nœuds de l'arbre ont des relations entre eux:

- Un nœud contenant un autre nœud est un *parent.*
- Le nœud contenu dans le nœud parent est un *child.* Les nœuds enfants du même parent sont des nœuds *sibling*.
- Le nœud *root* est toujours le nœud [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).

Les nœuds qui peuvent contenir d'autres nœuds dérivent de la classe [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), et tous les nœuds dérivent finalement de la classe [Node](https://reference.aspose.com/words/java/com.aspose.words/node/). Ces deux classes de base fournissent des méthodes et des propriétés communes pour la navigation et la modification de la structure arborescente.

Le diagramme d'objet UML suivant montre plusieurs nœuds de l'exemple de document et leurs relations les uns avec les autres via les propriétés parent, child et sibling:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Le Document est le propriétaire du nœud

Un nœud appartient toujours à un document particulier, même s'il vient d'être créé ou supprimé de l'arborescence, car des structures vitales à l'échelle du document telles que des styles et des listes sont stockées dans le nœud **Document**. Par exemple, il n'est pas possible d'avoir un **Paragraph** sans **Document** car chaque paragraphe a un style attribué qui est défini globalement pour le document. Cette règle est utilisée lors de la création de nouveaux nœuds. L'ajout d'un nouveau **Paragraph** directement au DOM nécessite un objet document transmis au constructeur.

{{% alert color="primary" %}}

La propriété [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) renvoie le document auquel appartient le nœud.

{{% /alert %}}

Lors de la création d'un nouveau paragraphe à l'aide de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), le générateur a toujours une classe **Document** qui lui est liée via la propriété [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document).

L'exemple de code suivant montre que lors de la création d'un nœud, un document qui possédera le nœud est toujours défini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Nœud Parent

Chaque nœud a un parent spécifié par la propriété [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode). Un nœud n'a pas de nœud parent, c'est-à-dire que **ParentNode** est null, dans les cas suivants:

- Le nœud vient d'être créé et n'a pas encore été ajouté à l'arborescence.
- Le nœud a été supprimé de l'arborescence.
- C'est le nœud racine **Document** qui a toujours un nœud parent nul.

Vous pouvez supprimer un nœud de son parent en appelant la méthode [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove).L'exemple de code suivant montre comment accéder au nœud parent:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Nœuds Enfants

Le moyen le plus efficace d'accéder aux nœuds enfants d'un [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) est via les propriétés [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) et [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) qui renvoient respectivement les premier et dernier nœuds enfants. S'il n'y a pas de nœuds enfants, ces propriétés renvoient *null*.

**CompositeNode**

Si un nœud n'a pas d'enfant, la propriété **ChildNodes** renvoie une collection vide. Vous pouvez vérifier si le **CompositeNode** contient des nœuds enfants en utilisant la propriété [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes).

L'exemple de code suivant montre comment énumérer les nœuds enfants immédiats d'un `CompositeNode` à l'aide de l'énumérateur fourni par la collection `ChildNodes`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

L'exemple de code suivant montre comment énumérer les nœuds enfants immédiats d'un `CompositeNode` à l'aide d'un accès indexé:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Nœuds Frères

Vous pouvez obtenir le nœud qui précède ou suit immédiatement un nœud particulier en utilisant les propriétés [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) et [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling), respectivement. Si un nœud est le dernier enfant de son parent, alors la propriété **NextSibling** est *null*. Inversement, si le nœud est le premier enfant de son parent, la propriété **PreviousSibling** est *null*.

L'exemple de code suivant montre comment visiter efficacement tous les nœuds enfants directs et indirects d'un nœud composite:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Accès typé aux Nœuds Enfants et Parents

Jusqu'à présent, nous avons discuté des propriétés qui renvoient l'un des types de base – **Node** ou **CompositeNode**. Mais parfois, il y a des situations où vous pourriez avoir besoin de convertir des valeurs en une classe de nœud spécifique, telle que **Run** ou **Paragraph**. C'est-à-dire que vous ne pouvez pas complètement vous éloigner du casting lorsque vous travaillez avec le Aspose.Words DOM, qui est composite.

Pour réduire le besoin de conversion, la plupart des classes Aspose.Words fournissent des propriétés et des collections qui fournissent un accès fortement typé. Il existe trois modèles de base d'accès typé:

- Un nœud parent expose les propriétés typées **FirstXXX** et **LastXXX**. Par exemple, le **Document** a les propriétés [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) et [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection). De même, **Table** a des propriétés telles que [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow) et autres.
- Un nœud parent expose une collection typée de nœuds enfants, tels que [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs) et autres.
- Un nœud enfant fournit un accès typé à son parent, tel que [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection) et autres.

Les propriétés typées sont simplement des raccourcis utiles qui fournissent parfois un accès plus facile que les propriétés génériques héritées de [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) et [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

L'exemple de code suivant montre comment utiliser les propriétés typées pour accéder aux nœuds de l'arborescence du document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
