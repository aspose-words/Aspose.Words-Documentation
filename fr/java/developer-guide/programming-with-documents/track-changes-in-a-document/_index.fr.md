---
title: Suivre les modifications dans un document dans Java
second_title: Aspose.Words pour Java
articleTitle: Suivre les modifications dans un document
linktitle: Suivre les modifications dans un document
description: "Suivez les modifications apportées au contenu et à la mise en forme par vous ou d'autres personnes. Accédez aux révisions individuelles d'un document et appliquez-leur diverses propriétés à l'aide de Java."
type: docs
weight: 270
url: /fr/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

La fonctionnalité de suivi des modifications, également appelée révision, vous permet de suivre les modifications apportées au contenu et à la mise en forme par vous ou d'autres utilisateurs. Cette fonctionnalité de suivi des modifications avec Aspose.Words prend en charge le suivi des modifications dans Microsoft Word. Avec cette fonctionnalité, vous pouvez accéder aux révisions individuelles de votre document et leur appliquer différentes propriétés.

Lorsque vous activez la fonction de suivi des modifications, tous les éléments insérés, supprimés et modifiés du document seront mis en évidence visuellement avec des informations sur par qui, quand et ce qui a été modifié. Les objets qui contiennent des informations sur ce qui a été modifié sont appelés "suivi des modifications". Par exemple, supposons que vous souhaitiez réviser un document et apporter des modifications importantes – cela peut signifier que vous devez apporter des révisions. De plus, vous devrez peut-être insérer des commentaires pour discuter de certains des changements. C'est là qu'intervient le suivi des modifications apportées aux documents.

Cet article explique comment gérer et suivre les modifications créées par de nombreux réviseurs sur le même document, ainsi que les propriétés de suivi des modifications.

{{% alert color="primary" %}}

Notez que la fonctionnalité de commentaire dans Aspose.Words, ainsi que dans Microsoft Word, peut être associée au suivi des modifications. Cependant, n'oubliez pas que les commentaires sont totalement indépendants du suivi des modifications.

{{% /alert %}}

## Qu'est-ce qu'une Révision

Avant de plonger dans les révisions, expliquons la signification des révisions. Un [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) est un changement qui se produit dans un nœud d'un document tandis qu'un groupe de révisions, représenté par la classe [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/), est un groupe de révisions séquentielles qui se produisent dans de nombreux nœuds d'un document. La révision est un outil de suivi des modifications.

Les révisions sont utilisées dans la fonction Suivi des modifications et dans la fonction Comparer les documents, où les révisions apparaissent à la suite de la comparaison. Ainsi, les révisions dans la fonction de suivi des modifications indiquent par qui et ce qui a été modifié.

{{% alert color="primary" %}}

Notez que Microsoft Word ne vous permet pas d'afficher des révisions individuelles, il vous permet uniquement d'afficher des révisions séquentielles en tant qu'entité unique. Mais Aspose.Words résout cette limitation avec la classe **RevisionGroup**.

{{% /alert %}}

Aspose.Words prend en charge différents types de révision, ainsi que dans Microsoft Word, tels que l'Insertion, la Suppression, FormatChange, StyleDefinitionChange et le déplacement. Tous les types de révision sont représentés avec l'énumération [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/).

{{% alert color="primary" %}}

Notez que les révisions ont un résultat similaire à Microsoft Word mais Aspose.Words ne détecte pas la mise en forme lors du suivi des modifications.

{{% /alert %}}

## Démarrer et Arrêter le suivi des modifications

La modification d'un document ne compte généralement pas comme une révision tant que vous n'avez pas commencé à le suivre. Aspose.Words vous permet de suivre automatiquement toutes les modifications apportées à votre document en quelques étapes simples. Vous pouvez facilement démarrer le processus de suivi des modifications en utilisant la méthode [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String). Si vous devez arrêter le processus de suivi des modifications afin que les modifications futures ne soient pas considérées comme des révisions, vous devrez utiliser la méthode [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions).

{{% alert color="primary" %}}

Notez que la méthode `StartTrackingRevisions` ne modifie pas le statut de la propriété [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) et n'utilise pas sa valeur à des fins de suivi des révisions. De plus, si un nœud a été déplacé d'un emplacement à un autre à l'intérieur du document suivi, des révisions de déplacement seront créées, y compris déplacer de et déplacer vers la plage.

{{% /alert %}}

À la fin du processus de suivi des modifications dans votre document, vous aurez même la possibilité d'accepter toutes les révisions ou de les rejeter pour rétablir le document dans sa forme d'origine. Ceci peut être réalisé en utilisant la méthode [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) ou [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll). De plus, vous pouvez accepter ou rejeter chaque révision séparément en utilisant la méthode [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) ou [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject).

Toutes les modifications seront suivies pendant une itération à partir du moment où vous démarrez le processus jusqu'au moment où vous l'arrêtez. La connexion entre les différentes itérations est représentée par le scénario suivant: vous terminez le processus de suivi, puis apportez des modifications et recommencez à suivre les modifications. Avec ce scénario, toutes les modifications que vous n'avez pas acceptées ou rejetées seront à nouveau affichées.

{{% alert color="primary" %}}

Notez que la méthode `AcceptAllRevisions` est similaire à la méthode "Accepter toutes les modifications" dans Microsoft Word.

{{% /alert %}}

L'exemple de code suivant montre comment travailler avec le suivi des modifications:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

L'exemple de code suivant montre comment les révisions sont générées lorsqu'un nœud est déplacé dans un document suivi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Gérer et stocker les Modifications en tant que Révisions

Avec la fonctionnalité de suivi des modifications précédente, vous pouvez comprendre quelles modifications ont été apportées à votre document et qui a effectué ces modifications. Alors qu'avec la fonctionnalité [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions), vous forcez toutes les modifications de votre document à être stockées en tant que révisions.

Aspose.Words vous permet de vérifier si un document a une révision ou non en utilisant la propriété [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions). Si vous n'avez pas besoin de suivre automatiquement les modifications apportées à votre document via les méthodes StartTrackRevisions et StopTrackRevisions, vous pouvez utiliser la propriété `TrackRevisions` pour vérifier si les modifications sont suivies lors de la modification d'un document dans Microsoft Word et stockées en tant que révisions.

La fonctionnalité `TrackRevisions` effectue des révisions au lieu de véritables modifications DOM. Mais les révisions elles-mêmes sont distinctes. Par exemple, si vous supprimez un paragraphe, Aspose.Words en fait une révision, en le marquant comme suppression, au lieu de le supprimer.

De plus, Aspose.Words vous permet de vérifier si un objet a été inséré, supprimé ou modifié à l'aide de la mise en forme [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), et [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) propriétés.

{{% alert color="primary" %}}

Notez qu'il n'y a aucun lien entre les révisions elles-mêmes et la propriété `TrackRevisions`. De plus, vous pouvez accepter/rejeter les révisions quelle que soit la fonction de suivi des modifications.

{{% /alert %}}

L'exemple de code suivant montre comment appliquer différentes propriétés avec des révisions:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
