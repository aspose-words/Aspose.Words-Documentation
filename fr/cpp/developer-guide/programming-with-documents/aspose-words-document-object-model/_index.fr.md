---
title: Aspose.Words Modèle d'objet de document (DOM) en C++
second_title: Aspose.Words pour C++
articleTitle: Aspose.Words Modèle d'objet de document (DOM)
linktitle: Aspose.Words Modèle d'objet de document (DOM)
type: docs
description: "Le modèle d'objet de document (DOM) est une représentation en mémoire d'un document Word. Lisez, manipulez et modifiez le contenu et la mise en forme d'un document Word à l'aide de C++."
weight: 10
url: /fr/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Le Aspose.Words Modèle d'objet de document (DOM) est une représentation en mémoire d'un document Word. Le DOM Aspose.Words vous permet de lire, manipuler et modifier par programmation le contenu et la mise en forme d'un document Word.

Cette section décrit les principales classes du DOM Aspose.Words et leurs relations. En utilisant les classes DOM Aspose.Words, vous pouvez obtenir un accès par programmation aux éléments et à la mise en forme du document.

## Créer une Arborescence d'Objets de Document {#create-a-document-objects-tree}

Lorsqu'un document est lu dans le DOM Aspose.Words, une arborescence d'objets est construite et différents types d'éléments du document source ont leurs propres objets d'arborescence DOM avec diverses propriétés.

### Construire l'Arborescence des Nœuds de Document {#build-document-nodes-tree}

Lorsque Aspose.Words lit un document Word en mémoire, il crée des objets de différents types qui représentent divers éléments du document. Chaque série de texte, paragraphe, tableau ou section est un nœud, et même le document lui-même est un nœud. Aspose.Words définit une classe pour chaque type de nœud de document.

L'arborescence du document dans Aspose.Words suit le modèle de conception composite:

- Toutes les classes de nœuds dérivent finalement de la classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), qui est la classe de base du modèle d'objet de document Aspose.Words.
- Les nœuds qui peuvent contenir d'autres nœuds, par exemple **Section** ou **Paragraph**, dérivent de la classe [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), qui à son tour dérive de la classe **Node**.

Le diagramme fourni ci-dessous montre l'héritage entre les classes de nœuds du Aspose.Words Document Object Model (DOM). Les noms des classes abstraites sont en italique.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Le DOM Aspose.Words contient également les classes non-nœuds, telles que [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) ou [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), qui sont utilisées pour personnaliser l'apparence et les styles d'un document. Ces classes ne sont pas représentées dans ce diagramme car elles ne sont pas héritées de la classe `Node`.

{{% /alert %}}

Regardons un exemple. L'image suivante montre un document Microsoft Word avec différents types de contenu.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Lors de la lecture du document ci-dessus dans le DOM Aspose.Words, l'arborescence des objets est créée, comme indiqué dans le schéma ci-dessous.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), et toutes les autres ellipses du diagramme sont Aspose.Words objets qui représentent des éléments du document Word.

### Obtenez un `Node` de type {#get-a-node-type}

Bien que la classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) soit suffisante pour distinguer différents nœuds les uns des autres, Aspose.Words fournit l'énumération [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) pour simplifier certaines tâches de l'API, telles que la sélection de nœuds d'un type spécifique.

Le type de chaque nœud peut être obtenu à l'aide de la propriété [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Cette propriété renvoie un **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph** et un nœud de table représenté par le **Table** class returns **NodeType**.**Table**.

L'exemple suivant montre comment obtenir un type de nœud à l'aide de l'énumération **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Navigation dans l'Arborescence des Documents {#document-tree-navigation}

Aspose.Words représente un document sous la forme d'une arborescence de nœuds, ce qui vous permet de naviguer entre les nœuds. Cette section décrit comment explorer et naviguer dans l'arborescence du document dans Aspose.Words.

Lorsque vous ouvrez l'exemple de document, présenté précédemment, dans l'Explorateur de documents, l'arborescence des nœuds apparaît exactement telle qu'elle est représentée dans Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Relations de nœud de document {#document-nodes-relationships}

Les nœuds de l'arbre ont des relations entre eux:

- Un nœud contenant un autre nœud est un *parent.*
- Le nœud contenu dans le nœud parent est un *child.* Les nœuds enfants du même parent sont des nœuds *sibling*.
- Le nœud *root* est toujours le nœud [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

Les nœuds qui peuvent contenir d'autres nœuds dérivent de la classe [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode), et tous les nœuds dérivent finalement de la classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Ces deux classes de base fournissent des méthodes et des propriétés communes pour la navigation et la modification de la structure arborescente.

Le diagramme d'objet UML suivant montre plusieurs nœuds de l'exemple de document et leurs relations les uns avec les autres via les propriétés parent, child et sibling:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Le Document est le propriétaire du nœud

Un nœud appartient toujours à un document particulier, même s'il vient d'être créé ou supprimé de l'arborescence, car des structures vitales à l'échelle du document telles que des styles et des listes sont stockées dans le nœud **Document**. Par exemple, il n'est pas possible d'avoir un **Paragraph** sans **Document** car chaque paragraphe a un style attribué qui est défini globalement pour le document. Cette règle est utilisée lors de la création de nouveaux nœuds. L'ajout d'un nouveau **Paragraph** directement au DOM nécessite un objet document transmis au constructeur.

{{% alert color="primary" %}}

La propriété [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) renvoie le document auquel appartient le nœud.

{{% /alert %}}

Lors de la création d'un nouveau paragraphe à l'aide de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), le générateur a toujours une classe **Document** qui lui est liée via la propriété [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

L'exemple de code suivant montre que lors de la création d'un nœud, un document qui possédera le nœud est toujours défini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Nœud Parent

Chaque nœud a un parent spécifié par la propriété [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Un nœud n'a pas de nœud parent, c'est-à-dire que **ParentNode** est null, dans les cas suivants:

- Le nœud vient d'être créé et n'a pas encore été ajouté à l'arborescence.
- Le nœud a été supprimé de l'arborescence.
- C'est le nœud racine **Document** qui a toujours un nœud parent nul.

Vous pouvez supprimer un nœud de son parent en appelant la méthode [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).L'exemple de code suivant montre comment accéder au nœud parent:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Nœuds Enfants

Le moyen le plus efficace d'accéder aux nœuds enfants d'un [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) est via les propriétés [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) et [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) qui renvoient respectivement les premier et dernier nœuds enfants. S'il n'y a pas de nœuds enfants, ces propriétés renvoient *null*.

**CompositeNode**

Si un nœud n'a pas d'enfant, la propriété **ChildNodes** renvoie une collection vide. Vous pouvez vérifier si le **CompositeNode** contient des nœuds enfants en utilisant la propriété [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

L'exemple de code suivant montre comment énumérer les nœuds enfants immédiats d'un `CompositeNode` à l'aide de l'énumérateur fourni par la collection `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

L'exemple de code suivant montre comment énumérer les nœuds enfants immédiats d'un `CompositeNode` à l'aide d'un accès indexé:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Nœuds Frères

Vous pouvez obtenir le nœud qui précède ou suit immédiatement un nœud particulier en utilisant les propriétés [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) et [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/), respectivement. Si un nœud est le dernier enfant de son parent, alors la propriété **NextSibling** est *null*. Inversement, si le nœud est le premier enfant de son parent, la propriété **PreviousSibling** est *null*.

L'exemple de code suivant montre comment visiter efficacement tous les nœuds enfants directs et indirects d'un nœud composite:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Accès typé aux Nœuds Enfants et Parents

Jusqu'à présent, nous avons discuté des propriétés qui renvoient l'un des types de base – **Node** ou **CompositeNode**. Mais parfois, il y a des situations où vous pourriez avoir besoin de convertir des valeurs en une classe de nœud spécifique, telle que **Run** ou **Paragraph**. C'est-à-dire que vous ne pouvez pas complètement vous éloigner du casting lorsque vous travaillez avec le Aspose.Words DOM, qui est composite.

Pour réduire le besoin de conversion, la plupart des classes Aspose.Words fournissent des propriétés et des collections qui fournissent un accès fortement typé. Il existe trois modèles de base d'accès typé:

- Un nœud parent expose les propriétés typées **FirstXXX** et **LastXXX**. Par exemple, le **Document** a les propriétés [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) et [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). De même, **Table** a des propriétés telles que [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) et autres.
- Un nœud parent expose une collection typée de nœuds enfants, tels que [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) et autres.
- Un nœud enfant fournit un accès typé à son parent, tel que [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) et autres.

Les propriétés typées sont simplement des raccourcis utiles qui fournissent parfois un accès plus facile que les propriétés génériques héritées de [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) et [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

L'exemple de code suivant montre comment utiliser les propriétés typées pour accéder aux nœuds de l'arborescence du document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
