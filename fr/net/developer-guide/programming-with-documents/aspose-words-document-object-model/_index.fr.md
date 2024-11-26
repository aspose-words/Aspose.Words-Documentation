---
title: Aspose.Words Document Object Model (DOM) en C#
second_title: Aspose.Words pour .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) est une représentation en mémoire d'un document Word. Lisez, manipulez et modifiez le contenu et la mise en forme d'un document Word à l'aide de C#."
weight: 10
url: /fr/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Le Aspose.Words Document Object Model (DOM) est une représentation en mémoire d'un document Word. Le Aspose.Words DOM vous permet de lire, manipuler et modifier par programme le contenu et le formatage d'un document Word.

Cette section décrit les principales classes du Aspose.Words DOM et leurs relations. En utilisant les classes Aspose.Words DOM, vous pouvez obtenir un accès par programmation aux éléments et au formatage du document.

## Créer une arborescence d'objets `Document` {#create-a-document-objects-tree}

Lorsqu'un document est lu dans le Aspose.Words DOM, une arborescence d'objets est construite et différents types d'éléments du document source ont leurs propres objets d'arborescence DOM avec diverses propriétés.

### Construire l'arborescence des nœuds de document {#build-document-nodes-tree}

Lorsque Aspose.Words lit un document Word en mémoire, il crée des objets de différents types qui représentent divers éléments du document. Chaque passage d'un texte, d'un paragraphe, d'un tableau ou d'une section est un nœud, et même le document lui-même est un nœud. Aspose.Words définit une classe pour chaque type de nœud de document.

L'arborescence des documents dans Aspose.Words suit le modèle de conception composite:

- Toutes les classes de nœuds dérivent en fin de compte de la classe [Node](https://reference.aspose.com/words/fr/net/aspose.words/node/), qui est la classe de base du Document Object Model Aspose.Words.
- Les nœuds pouvant contenir d'autres nœuds, par exemple **Section** ou **Paragraph**, dérivent de la classe [CompositeNode](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/), qui à son tour dérive de la classe **Node**.

Le diagramme fourni ci-dessous montre l'héritage entre les classes de nœuds du Aspose.Words Document Object Model (DOM). Les noms des classes abstraites sont en italique.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-mots-dom" style="width:700px"/>

{{% alert color="primary" %}}

Le Aspose.Words DOM contient également des classes sans nœud, telles que [Style](https://reference.aspose.com/words/fr/net/aspose.words/style/) ou [Font](https://reference.aspose.com/words/fr/net/aspose.words/font/), qui sont utilisées pour personnaliser l'apparence et les styles d'un document. Ces classes ne sont pas affichées dans ce diagramme car elles ne sont pas héritées de la classe `Node`.

{{% /alert %}}

Regardons un exemple. L'image suivante montre un document Microsoft Word avec différents types de contenu.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="document-exemple-aspose-mots" style="width:700px"/>

Lors de la lecture du document ci-dessus dans le Aspose.Words DOM, l'arborescence des objets est créée, comme indiqué dans le schéma ci-dessous.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-mots" style="width:700px"/>

[Document](https://reference.aspose.com/words/fr/net/aspose.words/document/), [Section](https://reference.aspose.com/words/fr/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/fr/net/aspose.words/run/) et toutes les autres ellipses du diagramme sont des objets Aspose.Words qui représentent des éléments du document Word.

### Obtenez un {#get-a-node-type} de type `Node`

Bien que la classe [Node](https://reference.aspose.com/words/fr/net/aspose.words/node/) soit suffisante pour distinguer les différents nœuds les uns des autres, Aspose.Words fournit l'énumération [NodeType](https://reference.aspose.com/words/fr/net/aspose.words/node/nodetype/) pour simplifier certaines tâches API, telles que la sélection de nœuds d'un type spécifique.

Le type de chaque nœud peut être obtenu à l'aide de la propriété [NodeType](https://reference.aspose.com/words/fr/net/aspose.words/node/nodetype/). Cette propriété renvoie une valeur d'énumération **NodeType**. Par exemple, un nœud de paragraphe représenté par la classe **Paragraph** renvoie **NodeType**.**Paragraph** et un nœud de table représenté par la classe **Table** renvoie **NodeType**.**Table**.

L'exemple suivant montre comment obtenir un type de nœud à l'aide de l'énumération **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Navigation dans l'arborescence des documents {#document-tree-navigation}

Aspose.Words représente un document sous la forme d'une arborescence de nœuds, qui vous permet de naviguer entre les nœuds. Cette section décrit comment explorer et parcourir l'arborescence des documents dans Aspose.Words.

Lorsque vous ouvrez l'exemple de document présenté précédemment dans l'Explorateur de documents, l'arborescence des nœuds apparaît exactement telle qu'elle est représentée dans Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-dans-document-explorateur" style="width:680px"/>

{{% alert color="primary" %}}

Vous pouvez apprendre l'exemple de projet "Document Explorer" sur le [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Relations entre les nœuds de document {#document-nodes-relationships}

Les nœuds de l'arborescence ont des relations entre eux:

- Un nœud contenant un autre nœud est un *parent.*
- Le nœud contenu dans le nœud parent est un nœud *child.*. Les nœuds enfants du même parent sont des nœuds *sibling*.
- Le nœud *root* est toujours le nœud [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/).

Les nœuds pouvant contenir d'autres nœuds dérivent de la classe [CompositeNode](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/), et tous les nœuds dérivent finalement de la classe [Node](https://reference.aspose.com/words/fr/net/aspose.words/node/). Ces deux classes de base fournissent des méthodes et des propriétés communes pour la navigation et la modification de l'arborescence.

Le diagramme d'objets UML suivant montre plusieurs nœuds de l'exemple de document et leurs relations les uns avec les autres via les propriétés parent, enfant et frère:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nœuds-relations-aspose-mots" style="width:370px"/>

#### Le document est propriétaire du nœud

Un nœud appartient toujours à un document particulier, même s'il vient d'être créé ou supprimé de l'arborescence, car les structures vitales à l'échelle du document, telles que les styles et les listes, sont stockées dans le nœud **Document**. Par exemple, il n'est pas possible d'avoir un **Paragraph** sans un **Document** car chaque paragraphe a un style attribué qui est défini globalement pour le document. Cette règle est utilisée lors de la création de nouveaux nœuds. L'ajout d'un nouveau **Paragraph** directement au DOM nécessite un objet document transmis au constructeur.

{{% alert color="primary" %}}

La propriété [Node.Document](https://reference.aspose.com/words/fr/net/aspose.words/node/document/) renvoie le document auquel appartient le nœud.

{{% /alert %}}

Lors de la création d'un nouveau paragraphe à l'aide de [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/), le générateur dispose toujours d'une classe **Document** qui lui est liée via la propriété [DocumentBuilder.Document](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/document/).

L'exemple de code suivant montre que lors de la création d'un nœud, un document qui sera propriétaire du nœud est toujours défini:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Nœud parent

Chaque nœud a un parent spécifié par la propriété [ParentNode](https://reference.aspose.com/words/fr/net/aspose.words/node/parentnode/). Un nœud n'a pas de nœud parent, c'est-à-dire que **ParentNode** est nul, dans les cas suivants:

- Le nœud vient d'être créé et n'a pas encore été ajouté à l'arborescence.
- Le nœud a été supprimé de l'arborescence.
- Il s'agit du nœud racine **Document** qui a toujours un nœud parent nul.

Vous pouvez supprimer un nœud de son parent en appelant la méthode [Remove](https://reference.aspose.com/words/fr/net/aspose.words/node/remove/). L'exemple de code suivant montre comment accéder au nœud parent:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Nœuds enfants

Le moyen le plus efficace d'accéder aux nœuds enfants d'un [CompositeNode](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/) consiste à utiliser les propriétés [FirstChild](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/firstchild/) et [LastChild](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/lastchild/) qui renvoient respectivement le premier et le dernier nœuds enfants. S'il n'y a pas de nœuds enfants, ces propriétés renvoient *null*.

**CompositeNode** fournit également la méthode [GetChildNodes](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/getchildnodes/) permettant un accès indexé ou énuméré aux nœuds enfants. La propriété **ChildNodes** est une collection dynamique de nœuds, ce qui signifie que chaque fois que le document est modifié, par exemple lorsque des nœuds sont supprimés ou ajoutés, la collection **ChildNodes** est automatiquement mise à jour.

Si un nœud n'a pas d'enfant, la propriété **ChildNodes** renvoie une collection vide. Vous pouvez vérifier si le **CompositeNode** contient des nœuds enfants à l'aide de la propriété [HasChildNodes](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/haschildnodes/).

L'exemple de code suivant montre comment énumérer les nœuds enfants immédiats d'un `CompositeNode` à l'aide de l'énumérateur fourni par la collection `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

L'exemple de code suivant montre comment énumérer les nœuds enfants immédiats d'un `CompositeNode` à l'aide d'un accès indexé:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Nœuds frères

Vous pouvez obtenir le nœud qui précède ou suit immédiatement un nœud particulier en utilisant respectivement les propriétés [PreviousSibling](https://reference.aspose.com/words/fr/net/aspose.words/node/previoussibling/) et [NextSibling](https://reference.aspose.com/words/fr/net/aspose.words/node/nextsibling/). Si un nœud est le dernier enfant de son parent, alors la propriété **NextSibling** est *null*. A l'inverse, si le nœud est le premier enfant de son parent, la propriété **PreviousSibling** est *null*.

L'exemple de code suivant montre comment visiter efficacement tous les nœuds enfants directs et indirects d'un nœud composite:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Accès typé aux nœuds enfants et parents {#typed-access-to-child-and-parent-nodes}

Jusqu'à présent, nous avons discuté des propriétés qui renvoient l'un des types de base – **Node** ou **CompositeNode**. Mais il arrive parfois que vous deviez convertir des valeurs vers une classe de nœud spécifique, telle que **Run** ou **Paragraph**. Autrement dit, vous ne pouvez pas complètement échapper au casting lorsque vous travaillez avec le Aspose.Words DOM, qui est composite.

Pour réduire le besoin de conversion, la plupart des classes Aspose.Words fournissent des propriétés et des collections qui fournissent un accès fortement typé. Il existe trois modèles de base d’accès typé:

- Un nœud parent expose les propriétés typées **FirstXXX** et **LastXXX**. Par exemple, le **Document** possède des propriétés [FirstSection](https://reference.aspose.com/words/fr/net/aspose.words/document/firstsection/) et [LastSection](https://reference.aspose.com/words/fr/net/aspose.words/document/lastsection/). De même, **Table** possède des propriétés telles que [FirstRow](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/lastrow/) et autres.
- Un nœud parent expose une collection typée de nœuds enfants, tels que [Document.Sections](https://reference.aspose.com/words/fr/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/fr/net/aspose.words/story/paragraphs/) et autres.
- Un nœud enfant fournit un accès typé à son parent, tel que [Run.ParentParagraph](https://reference.aspose.com/words/fr/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/parentsection/) et autres.

Les propriétés typées ne sont que des raccourcis utiles qui offrent parfois un accès plus facile que les propriétés génériques héritées de [Node.ParentNode](https://reference.aspose.com/words/fr/net/aspose.words/node/parentnode/) et [CompositeNode.FirstChild](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/firstchild/).

L'exemple de code suivant montre comment utiliser les propriétés typées pour accéder aux nœuds de l'arborescence du document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
