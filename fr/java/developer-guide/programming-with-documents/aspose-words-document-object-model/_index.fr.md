---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words pour Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) est une représentation en mémoire d'un document Word. Lire, manipuler et modifier le contenu et le formatage d'un document Word en utilisant Java."
weight: 10
url: /fr/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Les Aspose.Words Document Object Model (DOM) est une représentation en mémoire d'un document Word. Les Aspose.Words DOM vous permet de lire, manipuler et modifier programmatiquement le contenu et le formatage d'un document Word.

La présente section décrit les principales classes Aspose.Words DOM et leurs relations. En utilisant Aspose.Words DOM classes, vous pouvez obtenir un accès programmatique aux éléments de document et de formatage.

## Créer un document Arbre d'objet {#create-a-document-objects-tree}

Lorsqu'un document est lu Aspose.Words DOM"> puis un arbre objet est construit et différents types d'éléments du document source ont leur propre DOM objets arborescents avec différentes propriétés.

### Construire un arbre de nœuds de document {#build-document-nodes-tree}

Quand Aspose.Words lit un document Word en mémoire, il crée des objets de différents types qui représentent différents éléments de document. Chaque fois qu'un texte, un paragraphe, une table ou une section est un nœud, et même le document lui-même est un nœud. Aspose.Words définit une classe pour chaque type de noeud document.

L'arbre de document dans Aspose.Words suit le modèle de conception composite:

- Toutes les classes de nœuds dérivent finalement de la [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) classe de base dans la classe Aspose.Words Document Object Model.
- Les nœuds qui peuvent contenir d'autres nœuds, par exemple, **Section** ou **Paragraph**, provenant de [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) classe, qui découle à son tour de la **Node** En cours.

Le diagramme ci-dessous montre l'héritage entre les classes de nœuds Aspose.Words Document Object Model (DOM). Les noms des classes abstraites sont en italique.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Les Aspose.Words DOM contient également les classes non-nœud, telles que [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) ou [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), qui sont utilisés pour personnaliser l'apparence et les styles dans un document. Ces classes ne sont pas présentées dans ce diagramme comme n'ayant pas été héritées de `Node` En cours.

{{% /alert %}}

Voyons un exemple. L'image suivante montre une Microsoft Word document avec différents types de contenu.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Lors de la lecture du document ci-dessus dans le Aspose.Words DOM, l'arborescence des objets est créée, comme indiqué dans le schéma ci-dessous.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), et toutes les autres ellipses du diagramme sont Aspose.Words objets qui représentent des éléments du document Word.

### Prends une `Node` Type {#get-a-node-type}

Bien que [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) la classe est suffisante pour distinguer différents nœuds les uns des autres, Aspose.Words fournit les [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) énumération pour simplifier certains API tâches, telles que la sélection de nœuds d'un type spécifique.

Le type de chaque noeud peut être obtenu en utilisant le [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) propriété. Cette propriété retourne une **NodeType** valeur de dénombrement. Par exemple, un noeud de paragraphe représenté par le **Paragraph** retour des classes **NodeType**.**Paragraph**, et un noeud de table représenté par **Table** retour des classes **NodeType**.**Table**.

L'exemple suivant montre comment obtenir un type de noeud en utilisant le **NodeType** énumération:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Navigation des arbres de documents {#document-tree-navigation}

Aspose.Words représente un document comme un arbre de nœuds, ce qui vous permet de naviguer entre les nœuds. Cette section décrit comment explorer et naviguer l'arbre de document dans Aspose.Words.

Lorsque vous ouvrez l'échantillon de document, présenté plus tôt, dans l'Explorateur de documents, l'arborescence des noeuds apparaît exactement comme elle est représentée dans Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Vous pouvez apprendre l'exemple de projet "Document Explorer" sur le [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Relations avec les nœuds de documents {#document-nodes-relationships}

Les nœuds de l'arbre ont des relations entre eux:

- Un noeud contenant un autre noeud est un *parent.*
- Oui. Le noeud contenu dans le noeud parent est un *child.* Les nœuds du même parent sont *sibling* les noeuds.
- Les *root* le noeud est toujours le [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) noeud.

Les noeuds qui peuvent contenir d'autres noeuds dérivent de la [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) classe, et tous les noeuds dérivent finalement de la [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) En cours. Ces deux classes de base fournissent des méthodes et des propriétés communes pour la navigation et la modification de la structure des arbres.

Le diagramme d'objets UML suivant montre plusieurs nœuds du document d'échantillon et leurs relations les uns avec les autres par l'intermédiaire des propriétés parent, enfant et frère et soeur:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Le document est le propriétaire du nœud

Un noeud appartient toujours à un document particulier, même s'il vient d'être créé ou retiré de l'arbre, parce que les structures vitales du document comme les styles et les listes sont stockées dans le **Document** noeud. Par exemple, il n'est pas possible **Paragraph** sans **Document** parce que chaque paragraphe a un style attribué qui est défini globalement pour le document. Cette règle est utilisée lors de la création de nouveaux nœuds. Ajouter un nouveau **Paragraph** directement au DOM exige un objet de document transmis au constructeur.

{{% alert color="primary" %}}

Les [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) la propriété retourne le document auquel le noeud appartient.

{{% /alert %}}

Lorsque vous créez un nouveau paragraphe en utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), le constructeur a toujours un **Document** classe liée à elle à travers la [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) propriété.

L'exemple de code suivant montre que lors de la création d'un nœud, un document qui sera propriétaire du nœud est toujours défini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Noeud parent

Chaque noeud a un parent spécifié par le [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) propriété. Un noeud n'a pas de nœud parent, c'est-à-dire, **ParentNode** est nul, dans les cas suivants:

- Oui. Le nœud vient d'être créé et n'a pas encore été ajouté à l'arbre.
- Oui. Le nœud a été enlevé de l'arbre.
- Oui. C'est la racine **Document** noeud qui a toujours un noeud parent nul.

Vous pouvez supprimer un noeud de son parent en appelant le [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) méthode. L'exemple de code suivant montre comment accéder au nœud parent:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Nœuds d'enfants

La façon la plus efficace d'accéder aux nœuds d'enfant d'un [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) est via le [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) et [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) propriétés qui renvoient les premier et dernier nœuds enfant, respectivement. S'il n'y a pas de nœud enfant, ces propriétés retournent *null*.

**CompositeNode** fournit également [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) collecte permettant l'accès indexé ou énuméré aux nœuds enfants. Les **ChildNodes** propriété est une collection en direct de nœuds, ce qui signifie que chaque fois que le document est modifié, comme lorsque les nœuds sont supprimés ou ajoutés, **ChildNodes** la collecte est automatiquement mise à jour.

Si un noeud n'a pas d'enfant, **ChildNodes** propriété rend une collecte vide. Vous pouvez vérifier si les **CompositeNode** contient n'importe quel noeud enfant utilisant la [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) propriété.

L'exemple de code suivant montre comment énumérer les nœuds d'un enfant immédiat `CompositeNode` en utilisant le recenseur fourni par `ChildNodes` Recouvrement

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

L'exemple de code suivant montre comment énumérer les nœuds d'un enfant immédiat `CompositeNode` utilisant l'accès indexé & #160;:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Noeuds de sibling

Vous pouvez obtenir le noeud qui précède immédiatement ou suit un noeud particulier en utilisant le [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) et [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) propriétés, respectivement. Si un noeud est le dernier enfant de son parent, alors le **NextSibling** la propriété est *null*. Inversement, si le nœud est le premier enfant de son parent, **PreviousSibling** la propriété est *null*.

L'exemple de code suivant montre comment visiter efficacement tous les nœuds enfants directs et indirects d'un noeud composite:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Accès dactylographié aux nœuds de l ' enfant et des parents

Jusqu'à présent, nous avons discuté des propriétés qui renvoient l'un des types de base – **Node** ou **CompositeNode**. Mais il y a parfois des situations où vous pourriez avoir besoin de jeter des valeurs à une classe de nœuds spécifique, comme **Run** ou **Paragraph**. C'est-à-dire que vous ne pouvez pas vous éloigner complètement du casting quand vous travaillez avec le Aspose.Words DOM, qui est composite.

Pour réduire le besoin de coulée, la plupart Aspose.Words classes fournissent des propriétés et des collections qui fournissent un accès fortement typé. Il existe trois modèles de base d'accès dactylographié:

- Un nœud parent expose dactylographié **FirstXXX** et **LastXXX** propriétés. Par exemple, **Document** a [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) et [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) propriétés. De même, **Table** possède des propriétés telles que [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), et d'autres.
- Un noeud parent expose une collection dactylographiée de nœuds pour enfants, comme [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), et d'autres.
- Un nœud enfant permet un accès dactylographié à son parent, par exemple [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), et d'autres.

Les propriétés dactylographiées sont simplement des raccourcis utiles qui offrent parfois un accès plus facile que les propriétés génériques héritées de [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) et [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

L'exemple de code suivant montre comment utiliser les propriétés dactylographiées pour accéder aux nœuds de l'arborescence des documents:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
